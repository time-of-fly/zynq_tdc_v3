`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/10 01:31:41
// Design Name: 
// Module Name: native2axis
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module native2axis#(
    parameter DATA_WIDTH = 64,
    parameter KEEP_WIDTH = 8,  // Typically DATA_WIDTH/8
    parameter FIFO_DEPTH = 1024
) (
    // System signals
    input wire aclk,
    input wire aresetn,
    //input wire axi_fifo_almost_full,
    //input wire axi_fifo_almost_empty,
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
               TRANSFER1 = 3'd2,
               LAST_TRANSFER0 = 3'd3,
               LAST_TRANSFER1 = 3'd4;
    
    reg [2:0] state;
    reg [15:0] transfer_count;  // Adjust width as needed
    localparam [15:0] TRANSFER_LIMIT = 2048;
    assign m_axis_tkeep = {KEEP_WIDTH{1'b1}};
    localparam CHANNEL0 = 1'b0;
    localparam CHANNEL1 = 1'b1;
    
    wire [63:0] TDC_data_0;
    wire [63:0] TDC_data_1;
    assign TDC_data_0 = {CHANNEL0,fifo_rd_data_0[62:0]};
    assign TDC_data_1 = {CHANNEL1,fifo_rd_data_1[62:0]};
    //assign m_axis_tlast = axi_fifo_almost_full;

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

                    if(m_axis_tready && axi_fifo_almost_empty)begin
                        if (fifo_prog_full_0) begin
                            state <= TRANSFER0;
                            fifo_rd_en_0 <= 1'b1;
                            transfer_count <= 16'd0;
                        end else if (fifo_prog_full_1) begin
                            state <= TRANSFER1;
                            fifo_rd_en_1 <= 1'b1;
                            transfer_count <= 16'd0;
                        end
                    end else begin
                        m_axis_tlast <= 1'b0;
                        m_axis_tvalid <= 1'b0;
                        m_axis_tdata <= {DATA_WIDTH{1'b0}};
                    end
                end
                
                TRANSFER0: begin
                    if(m_axis_tready)begin
                        if (!fifo_empty_0) begin
                            m_axis_tvalid <= 1'b1;
                            m_axis_tdata <= TDC_data_0;
                            // All bytes valid
                        end else begin
                            state <= IDLE;
                            fifo_rd_en_0 <= 1'b0;
                        end
                    end else begin
                        state <= IDLE;
                        fifo_rd_en_0 <= 1'b0;
                    end
                    if(axi_fifo_almost_full==1)begin
                        m_axis_tlast <= 1'b1;

                    end else begin
                        m_axis_tlast <= 1'b0;
                    end
                end
                
                TRANSFER1: begin
                    if(m_axis_tready)begin
                        if (!fifo_empty_1) begin
                            m_axis_tvalid <= 1'b1;
                            m_axis_tdata <= TDC_data_1;
                        end else begin

                            state <= IDLE;
                            fifo_rd_en_1 <= 1'b0;
                        end
                    end else begin
                        state <= IDLE;
                        fifo_rd_en_0 <= 1'b0;
                    end
                    if(axi_fifo_almost_full==1)begin
                        m_axis_tlast <= 1'b1;

                    end else begin
                        m_axis_tlast <= 1'b0;
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end
endmodule


