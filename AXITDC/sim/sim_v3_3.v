`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/13 17:14:40
// Design Name: 
// Module Name: sim_v3_3
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


module sim_v3_3(

    );
      // Parameters
  localparam COARSE_WIDTH = 56;
  localparam NTaps = 192;
    
    
  reg clk;
  reg hit;
  reg run;
  reg clr;
  reg rd_en;
  reg rd_clk;

  // Outputs
  wire rdy;
  wire overflow;
  wire [63:0] data;
  wire fifo_empty;
  wire fifo_prog_full;
  
  TDCchannel2 #(
    .COARSE_WIDTH(COARSE_WIDTH),
    .NTaps(NTaps)
  ) uut (
    .clk(clk),
    .hit(hit),
    .run(run),
    .clr(clr),
    .rdy(rdy),
    .overflow(overflow),
    .data(data),
    .rd_en(rd_en),
    .rd_clk(rd_clk),
    .fifo_empty(fifo_empty),
    .fifo_prog_full(fifo_prog_full)
  );
  
  // 350 MHz clock generation
  initial begin
    clk = 0;
    forever #1.428 clk = ~clk;  // 350 MHz clock (period = 2857 ps)
  end
  
    // Read clock generation (keeping it at 50 MHz for this example)
  initial begin
    hit = 0;
    forever #50 hit = ~hit;  // 50 MHz read clock
  end 
  initial begin
    rd_clk = 0;
    forever #5 rd_clk = ~rd_clk;  // 50 MHz read clock
  end
  initial begin

    run = 1;
    clr = 0;
    rd_en = 0;
    
    while (!fifo_empty) begin
    rd_en = 1;
    #10;
    rd_en = 0;
    #20;
    end
   end

    
endmodule
