`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/12 18:11:22
// Design Name: 
// Module Name: control2
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


module control2#(

    parameter COARSE_WIDTH = 56
)(
    input wire clk,
    input wire [63:0] timestamp,  // incoming timestamp
    input wire valid,             // TDC valid
    //output wire DLenable,         // delay line enable
    //input wire rst,

    output wire [63:0] data,             // FIFO data dout
    input wire rd_en,                // read enable
    input wire rd_clk,
    //input wire AXIS_FIFO_ready,         //fifo ready
    output wire fifo_empty,
    output wire fifo_prog_full,
    
    // control & stats signals
    //input wire run,   // collect data
    input wire clr,   // clear BRAM
    output wire running,  // FSM ready
    output reg overflow_reg  // BRAM full
);

    //localparam ADDR_MAX = (1 << ADDR_WIDTH) - 1;  // highest address
    //wire [31-ADDR_WIDTH:0] emptyBits = {(32-ADDR_WIDTH){1'b0}};   // zeros to fill out the remaining data bits
    //reg [ADDR_WIDTH-1:0] addr_cnt = 0;  // address counter 
    // extra clock cycle latency for BRAM signals
    //reg [ADDR_WIDTH-1:0] addr_e;
    wire [63:0] data_e;
    wire fifo_write_en;
    //reg valid_e;
    wire fifo_full;
    //wire rst;
    //assign rst = clr;
        // State definition
    localparam IDLE = 2'b00;
    localparam RUNNINGs = 2'b01;
    localparam OVERFLOW = 2'b10;

    reg [1:0] state = IDLE , next_state;
    //reg overflow_reg;
    
    always @(posedge clk ) begin
        state <= next_state;
        if (state == OVERFLOW)
            overflow_reg <= 1'b1;
        else if (clr)
            overflow_reg <= 1'b0;
    end
    
    always @(*) begin
        next_state = state;
        case (state)
            IDLE: 
                if (!clr) next_state = RUNNINGs;
            RUNNINGs: 
                if (clr) next_state = IDLE;
                else if (fifo_full && valid) next_state = OVERFLOW;
            OVERFLOW:
                if (!fifo_prog_full) next_state = RUNNINGs;
        endcase
    end

    //assign addr = addr_e;
    //assign we = we_e;
    //assign data = (state_e == RUNNING && valid_e) ? {emptyBits, trigger_in, data_e} : 64'b0;
    
    timestamp_short_fifo fifo_inst(
    .full(fifo_full),
    .din(data_e),
    .wr_en(fifo_write_en),
    .empty(fifo_empty),
    .dout(data),
    .rd_en(rd_en),
    .wr_clk(clk),
    .rd_clk(rd_clk),
    .rst(clr),
    .prog_full(fifo_prog_full)
    );
    assign fifo_write_en =  valid;
    assign data_e = timestamp;
    assign running = (state == RUNNINGs);
    //assign DLenable = (state == RUNNING) ? 1'b1 : 1'b0;

endmodule
