#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <math.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <inttypes.h>
#include <pthread.h>
#include <semaphore.h>

#define CLR 0
#define RUN 1
// read masks
#define RDY 1  // 0b01
#define FULL 2 // 0b10

// GPIO address offsets
#define READ 0  // GPIO
#define WRITE 2 // GPIO2 (2*4 = 8 bytes offset)

#define BRAMsize 2048 // 2Kpoints BRAM implemented per channel
#define BUFFERSize 65536
#define Nch 2 // 2 implemented TDC channels
#define SINGLE_BUFFER_SIZE 0x1000000
#define BUFFER_BASE 0xa000000

// ... (keep existing definitions)
#define BUFFER_COUNT 2
typedef struct
{
    uint32_t *conf; // TCD channel HW configuration pointer
    int enabled;    // the channel is operational
    int clearing;   // BRAM is clearing, don't touch!
} TDCchannel;

TDCchannel TDC[Nch];         // array of TDC channels
int pairedTDCs[] = {-1, -1}; // indices of paired TDC channels

// function for rearming cleared single TDCs
typedef struct
{
    int w_FLAG;
    uint32_t data_bytes[2];

} dma_buffer_info;

typedef struct
{
    uint32_t *DMA_reg;
    uint64_t *buffers[BUFFER_COUNT];
    int current_buffer;
    sem_t empty_buffers;
    sem_t full_buffers;
    pthread_mutex_t buffer_mutex;
    volatile int running;
    uint32_t data_bytes[BUFFER_COUNT];
} dma_transfer_info;

void *dma_transfer_thread(void *arg)
{
    dma_transfer_info *info = (dma_transfer_info *)arg;
    uint32_t next_addr = BUFFER_BASE;
    uint32_t data_transfered = 0;
    while (info->running)
    {
        // sem_wait(&info->empty_buffers);

        // Start DMA transfer

        // Wait for DMA transfer to complete
        while ((info->DMA_reg[13] != 0x1002) || (info->DMA_reg[12] != 0x10003))
        {
            // printf("DMA status: 0x%x, 0x%x\n",info->DMA_reg[12], info->DMA_reg[13]);
            usleep(5);
        }

        // Update data_bytes for the current buffer
        data_transfered = info->DMA_reg[22];
        info->data_bytes[info->current_buffer] = info->data_bytes[info->current_buffer] + data_transfered;

        // Update next address
        next_addr = next_addr + data_transfered;
        if (next_addr + 0x1f40 > BUFFER_BASE + BUFFER_COUNT * SINGLE_BUFFER_SIZE)
        {
            pthread_mutex_lock(&info->buffer_mutex);
            info->current_buffer = 0;
            next_addr = BUFFER_BASE;
            info->data_bytes[info->current_buffer] = 0;
            pthread_mutex_unlock(&info->buffer_mutex);
        }
        else if ((next_addr + 0x1f40 > BUFFER_BASE + SINGLE_BUFFER_SIZE) && (next_addr < BUFFER_BASE + SINGLE_BUFFER_SIZE))
        {
            pthread_mutex_lock(&info->buffer_mutex);
            info->current_buffer = 1;
            next_addr = BUFFER_BASE + SINGLE_BUFFER_SIZE;
            info->data_bytes[info->current_buffer] = 0;
            pthread_mutex_unlock(&info->buffer_mutex);
        }
        else if (next_addr < BUFFER_BASE)
        {
            pthread_mutex_lock(&info->buffer_mutex);
            next_addr = BUFFER_BASE;
            info->current_buffer = 0;
            info->data_bytes[info->current_buffer] = 0;
            pthread_mutex_unlock(&info->buffer_mutex);
        }
        // printf("transfering \n");
        info->DMA_reg[12] = 0x1;
        // usleep(1);
        info->DMA_reg[18] = next_addr;
        // usleep(1);
        info->DMA_reg[22] = 8000;
        // usleep(1);
        //  info->current_buffer = (info->current_buffer + 1) % BUFFER_COUNT;

        sem_post(&info->full_buffers);
    }

    return NULL;
}

int initialize_dma_transfer(dma_transfer_info *info, uint32_t *DMA_reg, int HW)
{
    info->DMA_reg = DMA_reg;
    info->current_buffer = 0;
    info->running = 1;

    for (int i = 0; i < BUFFER_COUNT; i++)
    {
        info->buffers[i] = mmap(NULL, SINGLE_BUFFER_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, HW, BUFFER_BASE + i * SINGLE_BUFFER_SIZE);
        if (info->buffers[i] == MAP_FAILED)
        {
            perror("mmap");
            return -1;
        }
        info->data_bytes[i] = 0;
    }

    sem_init(&info->empty_buffers, 0, BUFFER_COUNT);
    sem_init(&info->full_buffers, 0, 0);
    pthread_mutex_init(&info->buffer_mutex, NULL);

    return 0;
}

int start_dma_transfer(dma_transfer_info *info)
{
    pthread_t transfer_thread;

    if (pthread_create(&transfer_thread, NULL, dma_transfer_thread, info) != 0)
    {
        perror("pthread_create");
        return -1;
    }

    return 0;
}

void stop_dma_transfer(dma_transfer_info *info)
{
    info->running = 0;
    // Wait for thread to finish and clean up resources
    // (You may want to add proper thread joining here)
    sem_destroy(&info->empty_buffers);
    sem_destroy(&info->full_buffers);
    pthread_mutex_destroy(&info->buffer_mutex);
}

// ... (keep other functions)
int dma_init(dma_buffer_info *buf_info, uint32_t *DMA_reg)
{
    DMA_reg[12] = 1;
    DMA_reg[18] = BUFFER_BASE;

    // DMA_reg[22] = (uint32_t)0x0;

    DMA_reg[22] = (uint32_t)0x20000;
    buf_info->w_FLAG = 0;
    buf_info->data_bytes[0] = 0;
    buf_info->data_bytes[1] = 0;
    usleep(1);
    return 0;
}
int main(void)
{
    // ... (keep existing initialization code)
    printf("\n*** TDC Server Online ***\n");

    // TDC --------------------------------------------------------------------------------------------------------
    int HW;
    if ((HW = open("/dev/mem", O_RDWR)) < 0) // open Zynq memory
    {
        perror("open");
        return EXIT_FAILURE;
    }

    // channel 0
    TDC[0].conf = (uint32_t *)mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ | PROT_WRITE, MAP_SHARED, HW, 0x43C00000); // 4K
    TDC[0].enabled = 0;                                                                                              // 1 - single, free running; 2 - paired, running in tandem
    TDC[0].clearing = 0;

    // channel 1
    TDC[1].conf = (uint32_t *)mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ | PROT_WRITE, MAP_SHARED, HW, 0x43C10000); // 4K
    TDC[1].enabled = 0;                                                                                              // 1 - single, free running; 2 - paired, running in tandem
    TDC[1].clearing = 0;

    int TDCindex, TDCindexSTART, TDCindexSTOP; // selected TDC channels
    int full1, full2;
    int speedtest = 0;   // speedtest flag
    uint64_t Nspeed = 0; // benchmarking (number of collected stamps)

    uint32_t *DMA_reg = (uint32_t *)mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ | PROT_WRITE, MAP_SHARED, HW, 0x40400000);
    uint32_t *fifo_status = (uint32_t *)mmap(NULL, sysconf(_SC_PAGESIZE), PROT_READ | PROT_WRITE, MAP_SHARED, HW, 0x41200000);
    // SERVER -----------------------------------------------------------------------------------------------------
    int sock_server, sock_client, yes = 1; // server stuff
    struct sockaddr_in addr;

    int rx; // number of bytes received
    int tx; // number of bytes sent
    int op; // requested operation

    uint16_t command = 0;          // input buffer (2 bytes)
    uint64_t dataBuffer[BRAMsize]; // output buffer = the size of BRAM
    uint64_t emptyWord = 0;        // empty 64-bit word
    uint64_t Nstamps;              // number of sent data

    dma_buffer_info buf_info;
    buf_info.w_FLAG = 0;
    buf_info.data_bytes[1] = 0;
    buf_info.data_bytes[0] = 0;

    int raw_temp; // chip temperature raw reading
    FILE *xadc;   // raw temp file pointer for iio XADC

    if ((sock_server = socket(AF_INET, SOCK_STREAM, 0)) < 0) // create TCP socket
    {
        perror("socket"); // error
        return EXIT_FAILURE;
    }

    setsockopt(sock_server, SOL_SOCKET, SO_REUSEADDR, (void *)&yes, sizeof(yes)); // socket options

    /* setup listening address */
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = htonl(INADDR_ANY);
    addr.sin_port = htons(1001); // port 1001

    if (bind(sock_server, (struct sockaddr *)&addr, sizeof(addr)) < 0) // assign address to the socket
    {
        perror("bind");
        return EXIT_FAILURE;
    }

    listen(sock_server, 1024); // listen for connections to the server
    printf("Listening on port 1001 ...\n");
    // ----------------------------------------------------------------------------------------------------------------
    // create data buffer
    int data;
    int r_FLAG;
    dma_init(&buf_info, DMA_reg);
    for (int i = 12; i < 23; i++)
    {
        uint32_t DregData;
        DregData = DMA_reg[i]; // fetch 64-bit BRAM data at address 'addr'
        printf("DMA reg(2) at %d: 0x%x \n", i, DregData);
    }
    sleep(1);

    dma_transfer_info transfer_info;
    if (initialize_dma_transfer(&transfer_info, DMA_reg, HW) < 0)
    {
        printf("Failed to initialize DMA transfer\n");
        return EXIT_FAILURE;
    }

    if (start_dma_transfer(&transfer_info) < 0)
    {
        printf("Failed to start DMA transfer\n");
        return EXIT_FAILURE;
    }

    // ... (keep existing server setup code)
    int exit_cmd = 0;
    int full_buffers_count = 0;
    while (1)
    { // server online
        // ... (keep existing connection acceptance code)
        if ((sock_client = accept(sock_server, NULL, NULL)) < 0) // wait and accept client connections
        {
            perror("accept");
            return EXIT_FAILURE;
        }
        printf("Connection accepted!\n");
        while (1)
        { // main program loop
            if (TDC[0].enabled == 1)
            {
                /*// Check DMA status periodically
                pthread_mutex_lock(&transfer_info.buffer_mutex);
                printf("Current buffer: %d, Data bytes: %d\n",
                       transfer_info.current_buffer,
                       transfer_info.data_bytes[transfer_info.current_buffer]);
                pthread_mutex_unlock(&transfer_info.buffer_mutex);

                // Check if data is available
                sem_getvalue(&transfer_info.full_buffers, &full_buffers_count);
                if (full_buffers_count > 0)
                {
                    printf("Data available in buffer\n");
                }*/
            }
            rx = recv(sock_client, &command, 2, MSG_DONTWAIT); // read commands from client (don't wait)
            if (rx == 0)
            { // client disconnected
                break;
            }
            if (rx > 0)
            { // received command

                TDCindex = command & 0xFF; // lower byte
                op = command >> 8;         // upper byte
                switch (op)
                {

                case 0:                                           // disable channel
                    *(TDC[TDCindex].conf + WRITE) &= ~(1 << RUN); // set RUN=0
                    TDC[TDCindex].enabled = 0;
                    // send(sock_client, &emptyWord, 8, MSG_NOSIGNAL); // confirm back to the client
                    break;

                case 1:                                          // enable channel to run continuously
                    *(TDC[TDCindex].conf + WRITE) |= (1 << RUN); // set RUN=1
                    TDC[TDCindex].enabled = 1;
                    printf("start signal received\n");
                    // send(sock_client, &emptyWord, 8, MSG_NOSIGNAL); // confirm back to the client
                    for (int i = 0; i < 23; i++)
                    {
                        uint32_t DregData;
                        DregData = DMA_reg[i]; // fetch 64-bit BRAM data at address 'addr'
                        printf("DMA reg(start) at %d: 0x%x \n", i, DregData);
                    }
                    break;

                // ... (keep existing command handling code)

                // Modify the case 2 (read TDC channel) to use the new buffer system:
                case 2: // read TDC channel
                    pthread_mutex_lock(&transfer_info.buffer_mutex);
                    int read_buffer = (transfer_info.current_buffer - 1 + BUFFER_COUNT) % BUFFER_COUNT;
                    uint32_t available_bytes = transfer_info.data_bytes[read_buffer];
                    transfer_info.data_bytes[read_buffer] = 0;
                    //pthread_mutex_unlock(&transfer_info.buffer_mutex);

                    if (available_bytes > 0)
                    {
                        //
                        uint64_t Nstamps = available_bytes / 8;
                        send(sock_client, &Nstamps, 8, MSG_NOSIGNAL);
                        //pthread_mutex_lock(&transfer_info.buffer_mutex);
                        send(sock_client, transfer_info.buffers[read_buffer], available_bytes, MSG_NOSIGNAL);
                        pthread_mutex_unlock(&transfer_info.buffer_mutex);
                        printf("sending %d bytes data from %d\n", available_bytes, read_buffer);
                        sem_post(&transfer_info.empty_buffers);
                    }
                    else
                    {
                        pthread_mutex_unlock(&transfer_info.buffer_mutex);
                        send(sock_client, &emptyWord, 8, MSG_NOSIGNAL);
                        

                    }
                    break;
                case 3:
                    exit_cmd = 1;
                    break;
                }

                if (exit_cmd)
                {
                    break;
                }
                // ... (keep rest of the code)
            }
        }
        // ... (keep existing client disconnection handling)
        close(sock_client); // terminate connection with the client
        printf("Disconnected.\n");

        if (exit_cmd)
        {
            break;
        }
    }
    stop_dma_transfer(&transfer_info);
    close(sock_server);
    return EXIT_SUCCESS;
}