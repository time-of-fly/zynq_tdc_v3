`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/17 04:00:22
// Design Name: 
// Module Name: native2dma
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


module native2dma#(
    parameter DATA_WIDTH = 64,
    parameter KEEP_WIDTH = DATA_WIDTH/8
) (
    // System signals
    input  wire                     aclk,
    input  wire                     aresetn,
    
    // Native FIFO interface 0
    output wire                     fifo_rd_en_0,
    input  wire [DATA_WIDTH-1:0]    fifo_rd_data_0,
    input  wire                     fifo_empty_0,
    
    // Native FIFO interface 1
    output wire                     fifo_rd_en_1,
    input  wire [DATA_WIDTH-1:0]    fifo_rd_data_1,
    input  wire                     fifo_empty_1,
    // AXI DMA S2MM Slave interface

    output wire [DATA_WIDTH-1:0]    s_axis_s2mm_tdata,
    output wire [KEEP_WIDTH-1:0]    s_axis_s2mm_tkeep,
    output wire                     s_axis_s2mm_tlast,
    output wire                     s_axis_s2mm_tvalid,
    input  wire                     s_axis_s2mm_tready
);

    // Internal signals
    reg [15:0] transfer_count;
    reg        tlast_gen;
    wire       transfer_done;

    // Constants
    localparam TRANSFER_LIMIT = 1024; // Adjust as needed for your packet size

    //state
    reg [2:0] current_state;
    reg [2:0] next_state;
    localparam IDLE = 3'd0,
            TRANSFER0 = 3'd1,
            TRANSFER1 = 3'd2,
            LAST_TRANSFER0 = 3'd3,
            LAST_TRANSFER1 = 3'd4;

    // Assign outputs
    always @(*) begin
        case (current_state)
            : 
            default: 
        endcase


        
    end
    assign s_axis_s2mm_tdata  = fifo_rd_data;
    assign s_axis_s2mm_tkeep  = {KEEP_WIDTH{1'b1}}; // All bytes valid
    assign s_axis_s2mm_tlast  = tlast_gen;
    assign s_axis_s2mm_tvalid = ~fifo_empty;
    assign fifo_rd_en         = s_axis_s2mm_tready & ~fifo_empty;

    // Transfer counter and TLAST generation logic
    always @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            transfer_count <= 16'd0;
            tlast_gen <= 1'b0;
        end else if (fifo_rd_en) begin
            if (transfer_count == TRANSFER_LIMIT - 1) begin
                transfer_count <= 16'd0;
                tlast_gen <= 1'b1;
            end else begin
                transfer_count <= transfer_count + 1'b1;
                tlast_gen <= 1'b0;
            end
        end else begin
            tlast_gen <= 1'b0;
        end
    end

endmodule