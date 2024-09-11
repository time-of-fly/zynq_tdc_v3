module dual_fifo_to_axi_dma_s2mm #(
    parameter DATA_WIDTH = 64,
    parameter KEEP_WIDTH = DATA_WIDTH/8
) (
    // System signals
    input  wire                     aclk,
    input  wire                     aresetn,
    
    // Native FIFO interface 0
    output reg                      fifo_rd_en_0,
    input  wire [DATA_WIDTH-1:0]    fifo_rd_data_0,
    input  wire                     fifo_empty_0,
    input  wire                     prog_full_0,
    
    // Native FIFO interface 1
    output reg                      fifo_rd_en_1,
    input  wire [DATA_WIDTH-1:0]    fifo_rd_data_1,
    input  wire                     fifo_empty_1,
    input  wire                     prog_full_1,
    
    // AXI DMA S2MM Slave interface
    output reg  [DATA_WIDTH-1:0]    s_axis_s2mm_tdata,
    output wire [KEEP_WIDTH-1:0]    s_axis_s2mm_tkeep,
    output reg                      s_axis_s2mm_tlast,
    output reg                      s_axis_s2mm_tvalid,
    input  wire                     s_axis_s2mm_tready
);

    // Internal signals
    reg [15:0] transfer_count;
    reg [1:0]  current_fifo; // 0: FIFO 0, 1: FIFO 1, 2: Idle
    reg        last_transfer;

    // Constants
    localparam TRANSFER_LIMIT = 512; // Adjust as needed for your packet size

    // Assign constant outputs
    assign s_axis_s2mm_tkeep = {KEEP_WIDTH{1'b1}}; // All bytes valid

    // FIFO selection and data transfer logic


    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            current_fifo <= 2'd2; // Start in idle state
            transfer_count <= 16'd0;
            s_axis_s2mm_tlast <= 1'b0;
            s_axis_s2mm_tvalid <= 1'b0;
            fifo_rd_en_0 <= 1'b0;
            fifo_rd_en_1 <= 1'b0;
            last_transfer <= 1'b0;
        end else begin
            case (current_fifo)
                2'd0: begin // Reading from FIFO 0
                    if (!fifo_empty_0 && s_axis_s2mm_tready) begin
                        s_axis_s2mm_tdata <= fifo_rd_data_0;
                        s_axis_s2mm_tvalid <= 1'b1;
                        fifo_rd_en_0 <= 1'b1;
                        
                        if (transfer_count == TRANSFER_LIMIT - 1) begin
                            last_transfer <= 1'b1;
                            s_axis_s2mm_tlast <= 1'b1;
                        end else if (last_transfer) begin
                            transfer_count <= 16'd0;
                            current_fifo <= 2'd2; // Go to idle state
                            last_transfer <= 1'b0;
                            s_axis_s2mm_tlast <= 1'b0;
                        end else begin
                            transfer_count <= transfer_count + 1'b1;
                            s_axis_s2mm_tlast <= 1'b0;
                        end
                    end else if (fifo_empty_0) begin
                        current_fifo <= 2'd2;
                        fifo_rd_en_0 <= 1'b0;
                        s_axis_s2mm_tlast <= 1'b1;
                        s_axis_s2mm_tdata <= 64'hffff_ffff_ffff_ffff;
                    end else begin
                        s_axis_s2mm_tvalid <= 1'b0;
                        fifo_rd_en_0 <= 1'b0;
                        s_axis_s2mm_tlast <= 1'b0;
                    end
                end
                
                2'd1: begin // Reading from FIFO 1
                    if (!fifo_empty_1 && s_axis_s2mm_tready) begin
                        s_axis_s2mm_tdata <= fifo_rd_data_1;
                        s_axis_s2mm_tvalid <= 1'b1;
                        fifo_rd_en_1 <= 1'b1;
                        
                        if (transfer_count == TRANSFER_LIMIT - 1) begin
                            last_transfer <= 1'b1;
                            s_axis_s2mm_tlast <= 1'b1;
                        end else if (last_transfer) begin
                            transfer_count <= 16'd0;
                            current_fifo <= 2'd2; // Go to idle state
                            last_transfer <= 1'b0;
                            s_axis_s2mm_tlast <= 1'b0;
                        end else begin
                            transfer_count <= transfer_count + 1'b1;
                            s_axis_s2mm_tlast <= 1'b0;
                        end
                    end else if (fifo_empty_1) begin
                        current_fifo <= 2'd2;
                        s_axis_s2mm_tlast <= 1'b1;
                        fifo_rd_en_1 <= 1'b0;
                        s_axis_s2mm_tdata <= 64'hffff_ffff_ffff_ffff;
                    end else begin
                        s_axis_s2mm_tvalid <= 1'b0;
                        fifo_rd_en_1 <= 1'b0;
                        s_axis_s2mm_tlast <= 1'b0;
                    end
                end
                
                2'd2: begin // Idle state, choose next FIFO
                    s_axis_s2mm_tvalid <= 1'b1;
                    fifo_rd_en_0 <= 1'b0;
                    fifo_rd_en_1 <= 1'b0;
                    s_axis_s2mm_tlast <= 1'b1;
                    transfer_count <= 16'd0;
                    s_axis_s2mm_tdata <= 64'hffff_ffff_ffff_ffff;
                    
                    if (prog_full_0) begin
                        current_fifo <= 2'd0;
                    end else if (prog_full_1) begin
                        current_fifo <= 2'd1;
                    end
                    // Stay in idle if both FIFOs are empty
                end
            endcase
        end
    end

endmodule