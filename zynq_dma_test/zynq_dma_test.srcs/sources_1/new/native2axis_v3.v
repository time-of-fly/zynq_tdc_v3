module native2axis_v3#(
    parameter DATA_WIDTH = 64,
    parameter KEEP_WIDTH = 8,  // Typically DATA_WIDTH/8
    parameter FIFO_DEPTH = 1024
) (
    // System signals
    input wire aclk,
    input wire aresetn,
    
    // Native FIFO interface 1
    output reg fifo_rd_en_0,
    input wire [DATA_WIDTH-1:0] fifo_rd_data_0,
    input wire fifo_empty_0,
    input wire fifo_prog_full_0,
    
    // Native FIFO interface 2
    output reg fifo_rd_en_1,
    input wire [DATA_WIDTH-1:0] fifo_rd_data_1,
    input wire fifo_empty_1,
    input wire fifo_prog_full_1,   
    
    // AXI Stream interface
    output reg m_axis_tvalid,
    input wire m_axis_tready,
    output reg [DATA_WIDTH-1:0] m_axis_tdata,
    output wire [KEEP_WIDTH-1:0] m_axis_tkeep,
    output reg m_axis_tlast
);

    // State machine states
    localparam IDLE = 3'd0,
               TRANSFER0 = 3'd1,
               TRANSFER1 = 3'd2;
    
    reg [2:0] state;
    reg [15:0] transfer_count;
    localparam [15:0] TRANSFER_LIMIT = 1000;
    
    assign m_axis_tkeep = {KEEP_WIDTH{1'b1}};
    
    localparam CHANNEL0 = 1'b0;
    localparam CHANNEL1 = 1'b1;
    
    wire [63:0] TDC_data_0;
    wire [63:0] TDC_data_1;
    assign TDC_data_0 = {CHANNEL0,fifo_rd_data_0[62:0]};
    assign TDC_data_1 = {CHANNEL1,fifo_rd_data_1[62:0]};

    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            state <= IDLE;
            m_axis_tvalid <= 1'b0;
            m_axis_tdata <= {DATA_WIDTH{1'b0}};
            m_axis_tlast <= 1'b0;
            fifo_rd_en_0 <= 1'b0;
            fifo_rd_en_1 <= 1'b0;
            transfer_count <= 16'd0;
        end else begin
            case (state)
                IDLE: begin
                    m_axis_tvalid <= 1'b0;
                    m_axis_tlast <= 1'b0;
                    fifo_rd_en_0 <= 1'b0;
                    fifo_rd_en_1 <= 1'b0;
                    m_axis_tdata <= {DATA_WIDTH{1'b0}};
                    if (fifo_prog_full_0 && m_axis_tready) begin
                        state <= TRANSFER0;
                        fifo_rd_en_0 <= 1'b1;
                    end else if (fifo_prog_full_1 && m_axis_tready) begin
                        state <= TRANSFER1;
                        fifo_rd_en_1 <= 1'b1;
                    end
                    
                end
                
                TRANSFER0: begin
                    if (!fifo_empty_0 && m_axis_tready) begin
                        m_axis_tvalid <= 1'b1;
                        m_axis_tdata <= TDC_data_0;
                        fifo_rd_en_0 <= 1'b1;
                        
                        if (transfer_count == TRANSFER_LIMIT - 1) begin
                            m_axis_tlast <= 1'b1;
                            state <= IDLE;
                            transfer_count <= 16'd0;
                            fifo_rd_en_0 <= 1'b0;
                        end else begin
                            transfer_count <= transfer_count + 1;
                        end
                    end else begin
                        //m_axis_tvalid <= 1'b0;
                        m_axis_tdata <= TDC_data_0;
                        fifo_rd_en_0 <= 1'b0;
                        state <= IDLE;
                        if (fifo_empty_0) begin
                            state <= IDLE;
                        end
                    end
                end
                
                TRANSFER1: begin
                    if (!fifo_empty_1 && m_axis_tready) begin
                        m_axis_tvalid <= 1'b1;
                        m_axis_tdata <= TDC_data_1;
                        fifo_rd_en_1 <= 1'b1;
                        
                        if (transfer_count == TRANSFER_LIMIT - 1) begin
                            m_axis_tlast <= 1'b1;
                            state <= IDLE;
                            transfer_count <= 16'd0;
                            fifo_rd_en_0 <= 1'b0;
                        end else begin
                            transfer_count <= transfer_count + 1;
                        end
                    end else begin
                        //m_axis_tvalid <= 1'b0;
                        m_axis_tdata <= TDC_data_0;
                        fifo_rd_en_1 <= 1'b0;
                        state <= IDLE;
                        if (fifo_empty_1) begin
                            state <= IDLE;
                        end
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end
endmodule