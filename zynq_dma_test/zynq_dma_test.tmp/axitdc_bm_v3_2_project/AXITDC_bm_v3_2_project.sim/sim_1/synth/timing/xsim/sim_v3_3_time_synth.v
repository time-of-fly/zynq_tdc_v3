// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Aug 13 23:36:41 2024
// Host        : DESKTOP-Q5FQ0UQ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               F:/Users/wen02/Documents/GitHub/zynq_dma_test/zynq_dma_test.tmp/axitdc_bm_v3_2_project/AXITDC_bm_v3_2_project.sim/sim_1/synth/timing/xsim/sim_v3_3_time_synth.v
// Design      : AXITDC
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD10
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD2
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD4
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD5
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD6
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD7
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD8
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD9
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

(* COARSE_WIDTH = "56" *) (* NTaps = "192" *) 
(* NotValidForBitStream *)
module AXITDC
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    clk,
    hit,
    data,
    rd_en,
    rd_clk,
    fifo_empty,
    fifo_prog_full);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input clk;
  input hit;
  output [63:0]data;
  input rd_en;
  input rd_clk;
  output fifo_empty;
  output fifo_prog_full;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clr;
  wire [63:0]data;
  wire [63:0]data_OBUF;
  wire fifo_empty;
  wire fifo_empty_OBUF;
  wire fifo_prog_full;
  wire fifo_prog_full_OBUF;
  wire full;
  wire [1:0]gpio_in;
  wire [0:0]gpio_out;
  wire hit;
  wire hit_IBUF;
  wire rd_clk;
  wire rd_clk_IBUF;
  wire rd_clk_IBUF_BUFG;
  wire rd_en;
  wire rd_en_IBUF;
  wire rdy;
  wire s_axi_aclk;
  wire s_axi_aclk_IBUF;
  wire s_axi_aclk_IBUF_BUFG;
  wire [8:0]s_axi_araddr;
  wire [8:2]s_axi_araddr_IBUF;
  wire s_axi_aresetn;
  wire s_axi_aresetn_IBUF;
  wire s_axi_arready;
  wire s_axi_arready_OBUF;
  wire s_axi_arvalid;
  wire s_axi_arvalid_IBUF;
  wire [8:0]s_axi_awaddr;
  wire [8:2]s_axi_awaddr_IBUF;
  wire s_axi_awready;
  wire s_axi_awready_OBUF;
  wire s_axi_awvalid;
  wire s_axi_awvalid_IBUF;
  wire s_axi_bready;
  wire s_axi_bready_IBUF;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_bvalid_OBUF;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_rdata_OBUF;
  wire s_axi_rready;
  wire s_axi_rready_IBUF;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_rvalid_OBUF;
  wire [31:0]s_axi_wdata;
  wire [1:0]s_axi_wdata_IBUF;
  wire s_axi_wready;
  wire s_axi_wready_OBUF;
  wire s_axi_wvalid;
  wire s_axi_wvalid_IBUF;
  wire [1:1]NLW_AXI_control_gpio2_io_o_UNCONNECTED;
  wire [1:0]NLW_AXI_control_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_AXI_control_s_axi_rresp_UNCONNECTED;

initial begin
 $sdf_annotate("sim_v3_3_time_synth.sdf",,,,"tool_control");
end
  (* CHECK_LICENSE_TYPE = "axi_gpio_0,axi_gpio,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "axi_gpio,Vivado 2023.2" *) 
  axi_gpio_0 AXI_control
       (.gpio2_io_o({NLW_AXI_control_gpio2_io_o_UNCONNECTED[1],gpio_out}),
        .gpio_io_i(gpio_in),
        .s_axi_aclk(s_axi_aclk_IBUF_BUFG),
        .s_axi_araddr({s_axi_araddr_IBUF[8],1'b0,1'b0,1'b0,1'b0,s_axi_araddr_IBUF[3:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn_IBUF),
        .s_axi_arready(s_axi_arready_OBUF),
        .s_axi_arvalid(s_axi_arvalid_IBUF),
        .s_axi_awaddr({s_axi_awaddr_IBUF[8],1'b0,1'b0,1'b0,1'b0,s_axi_awaddr_IBUF[3:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready_OBUF),
        .s_axi_awvalid(s_axi_awvalid_IBUF),
        .s_axi_bready(s_axi_bready_IBUF),
        .s_axi_bresp(NLW_AXI_control_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid_OBUF),
        .s_axi_rdata(s_axi_rdata_OBUF),
        .s_axi_rready(s_axi_rready_IBUF),
        .s_axi_rresp(NLW_AXI_control_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid_OBUF),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata_IBUF}),
        .s_axi_wready(s_axi_wready_OBUF),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid_IBUF));
  TDCchannel2 TDCv2
       (.asyn(full),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data(data_OBUF),
        .fifo_empty(fifo_empty_OBUF),
        .fifo_prog_full(fifo_prog_full_OBUF),
        .hit_IBUF(hit_IBUF),
        .rd_clk(rd_clk_IBUF_BUFG),
        .rd_en(rd_en_IBUF),
        .rdy(rdy),
        .syn(clr));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \data_OBUF[0]_inst 
       (.I(data_OBUF[0]),
        .O(data[0]));
  OBUF \data_OBUF[10]_inst 
       (.I(data_OBUF[10]),
        .O(data[10]));
  OBUF \data_OBUF[11]_inst 
       (.I(data_OBUF[11]),
        .O(data[11]));
  OBUF \data_OBUF[12]_inst 
       (.I(data_OBUF[12]),
        .O(data[12]));
  OBUF \data_OBUF[13]_inst 
       (.I(data_OBUF[13]),
        .O(data[13]));
  OBUF \data_OBUF[14]_inst 
       (.I(data_OBUF[14]),
        .O(data[14]));
  OBUF \data_OBUF[15]_inst 
       (.I(data_OBUF[15]),
        .O(data[15]));
  OBUF \data_OBUF[16]_inst 
       (.I(data_OBUF[16]),
        .O(data[16]));
  OBUF \data_OBUF[17]_inst 
       (.I(data_OBUF[17]),
        .O(data[17]));
  OBUF \data_OBUF[18]_inst 
       (.I(data_OBUF[18]),
        .O(data[18]));
  OBUF \data_OBUF[19]_inst 
       (.I(data_OBUF[19]),
        .O(data[19]));
  OBUF \data_OBUF[1]_inst 
       (.I(data_OBUF[1]),
        .O(data[1]));
  OBUF \data_OBUF[20]_inst 
       (.I(data_OBUF[20]),
        .O(data[20]));
  OBUF \data_OBUF[21]_inst 
       (.I(data_OBUF[21]),
        .O(data[21]));
  OBUF \data_OBUF[22]_inst 
       (.I(data_OBUF[22]),
        .O(data[22]));
  OBUF \data_OBUF[23]_inst 
       (.I(data_OBUF[23]),
        .O(data[23]));
  OBUF \data_OBUF[24]_inst 
       (.I(data_OBUF[24]),
        .O(data[24]));
  OBUF \data_OBUF[25]_inst 
       (.I(data_OBUF[25]),
        .O(data[25]));
  OBUF \data_OBUF[26]_inst 
       (.I(data_OBUF[26]),
        .O(data[26]));
  OBUF \data_OBUF[27]_inst 
       (.I(data_OBUF[27]),
        .O(data[27]));
  OBUF \data_OBUF[28]_inst 
       (.I(data_OBUF[28]),
        .O(data[28]));
  OBUF \data_OBUF[29]_inst 
       (.I(data_OBUF[29]),
        .O(data[29]));
  OBUF \data_OBUF[2]_inst 
       (.I(data_OBUF[2]),
        .O(data[2]));
  OBUF \data_OBUF[30]_inst 
       (.I(data_OBUF[30]),
        .O(data[30]));
  OBUF \data_OBUF[31]_inst 
       (.I(data_OBUF[31]),
        .O(data[31]));
  OBUF \data_OBUF[32]_inst 
       (.I(data_OBUF[32]),
        .O(data[32]));
  OBUF \data_OBUF[33]_inst 
       (.I(data_OBUF[33]),
        .O(data[33]));
  OBUF \data_OBUF[34]_inst 
       (.I(data_OBUF[34]),
        .O(data[34]));
  OBUF \data_OBUF[35]_inst 
       (.I(data_OBUF[35]),
        .O(data[35]));
  OBUF \data_OBUF[36]_inst 
       (.I(data_OBUF[36]),
        .O(data[36]));
  OBUF \data_OBUF[37]_inst 
       (.I(data_OBUF[37]),
        .O(data[37]));
  OBUF \data_OBUF[38]_inst 
       (.I(data_OBUF[38]),
        .O(data[38]));
  OBUF \data_OBUF[39]_inst 
       (.I(data_OBUF[39]),
        .O(data[39]));
  OBUF \data_OBUF[3]_inst 
       (.I(data_OBUF[3]),
        .O(data[3]));
  OBUF \data_OBUF[40]_inst 
       (.I(data_OBUF[40]),
        .O(data[40]));
  OBUF \data_OBUF[41]_inst 
       (.I(data_OBUF[41]),
        .O(data[41]));
  OBUF \data_OBUF[42]_inst 
       (.I(data_OBUF[42]),
        .O(data[42]));
  OBUF \data_OBUF[43]_inst 
       (.I(data_OBUF[43]),
        .O(data[43]));
  OBUF \data_OBUF[44]_inst 
       (.I(data_OBUF[44]),
        .O(data[44]));
  OBUF \data_OBUF[45]_inst 
       (.I(data_OBUF[45]),
        .O(data[45]));
  OBUF \data_OBUF[46]_inst 
       (.I(data_OBUF[46]),
        .O(data[46]));
  OBUF \data_OBUF[47]_inst 
       (.I(data_OBUF[47]),
        .O(data[47]));
  OBUF \data_OBUF[48]_inst 
       (.I(data_OBUF[48]),
        .O(data[48]));
  OBUF \data_OBUF[49]_inst 
       (.I(data_OBUF[49]),
        .O(data[49]));
  OBUF \data_OBUF[4]_inst 
       (.I(data_OBUF[4]),
        .O(data[4]));
  OBUF \data_OBUF[50]_inst 
       (.I(data_OBUF[50]),
        .O(data[50]));
  OBUF \data_OBUF[51]_inst 
       (.I(data_OBUF[51]),
        .O(data[51]));
  OBUF \data_OBUF[52]_inst 
       (.I(data_OBUF[52]),
        .O(data[52]));
  OBUF \data_OBUF[53]_inst 
       (.I(data_OBUF[53]),
        .O(data[53]));
  OBUF \data_OBUF[54]_inst 
       (.I(data_OBUF[54]),
        .O(data[54]));
  OBUF \data_OBUF[55]_inst 
       (.I(data_OBUF[55]),
        .O(data[55]));
  OBUF \data_OBUF[56]_inst 
       (.I(data_OBUF[56]),
        .O(data[56]));
  OBUF \data_OBUF[57]_inst 
       (.I(data_OBUF[57]),
        .O(data[57]));
  OBUF \data_OBUF[58]_inst 
       (.I(data_OBUF[58]),
        .O(data[58]));
  OBUF \data_OBUF[59]_inst 
       (.I(data_OBUF[59]),
        .O(data[59]));
  OBUF \data_OBUF[5]_inst 
       (.I(data_OBUF[5]),
        .O(data[5]));
  OBUF \data_OBUF[60]_inst 
       (.I(data_OBUF[60]),
        .O(data[60]));
  OBUF \data_OBUF[61]_inst 
       (.I(data_OBUF[61]),
        .O(data[61]));
  OBUF \data_OBUF[62]_inst 
       (.I(data_OBUF[62]),
        .O(data[62]));
  OBUF \data_OBUF[63]_inst 
       (.I(data_OBUF[63]),
        .O(data[63]));
  OBUF \data_OBUF[6]_inst 
       (.I(data_OBUF[6]),
        .O(data[6]));
  OBUF \data_OBUF[7]_inst 
       (.I(data_OBUF[7]),
        .O(data[7]));
  OBUF \data_OBUF[8]_inst 
       (.I(data_OBUF[8]),
        .O(data[8]));
  OBUF \data_OBUF[9]_inst 
       (.I(data_OBUF[9]),
        .O(data[9]));
  OBUF fifo_empty_OBUF_inst
       (.I(fifo_empty_OBUF),
        .O(fifo_empty));
  OBUF fifo_prog_full_OBUF_inst
       (.I(fifo_prog_full_OBUF),
        .O(fifo_prog_full));
  IBUF hit_IBUF_inst
       (.I(hit),
        .O(hit_IBUF));
  BUFG rd_clk_IBUF_BUFG_inst
       (.I(rd_clk_IBUF),
        .O(rd_clk_IBUF_BUFG));
  IBUF rd_clk_IBUF_inst
       (.I(rd_clk),
        .O(rd_clk_IBUF));
  IBUF rd_en_IBUF_inst
       (.I(rd_en),
        .O(rd_en_IBUF));
  BUFG s_axi_aclk_IBUF_BUFG_inst
       (.I(s_axi_aclk_IBUF),
        .O(s_axi_aclk_IBUF_BUFG));
  IBUF s_axi_aclk_IBUF_inst
       (.I(s_axi_aclk),
        .O(s_axi_aclk_IBUF));
  IBUF \s_axi_araddr_IBUF[2]_inst 
       (.I(s_axi_araddr[2]),
        .O(s_axi_araddr_IBUF[2]));
  IBUF \s_axi_araddr_IBUF[3]_inst 
       (.I(s_axi_araddr[3]),
        .O(s_axi_araddr_IBUF[3]));
  IBUF \s_axi_araddr_IBUF[8]_inst 
       (.I(s_axi_araddr[8]),
        .O(s_axi_araddr_IBUF[8]));
  IBUF s_axi_aresetn_IBUF_inst
       (.I(s_axi_aresetn),
        .O(s_axi_aresetn_IBUF));
  OBUF s_axi_arready_OBUF_inst
       (.I(s_axi_arready_OBUF),
        .O(s_axi_arready));
  IBUF s_axi_arvalid_IBUF_inst
       (.I(s_axi_arvalid),
        .O(s_axi_arvalid_IBUF));
  IBUF \s_axi_awaddr_IBUF[2]_inst 
       (.I(s_axi_awaddr[2]),
        .O(s_axi_awaddr_IBUF[2]));
  IBUF \s_axi_awaddr_IBUF[3]_inst 
       (.I(s_axi_awaddr[3]),
        .O(s_axi_awaddr_IBUF[3]));
  IBUF \s_axi_awaddr_IBUF[8]_inst 
       (.I(s_axi_awaddr[8]),
        .O(s_axi_awaddr_IBUF[8]));
  OBUF s_axi_awready_OBUF_inst
       (.I(s_axi_awready_OBUF),
        .O(s_axi_awready));
  IBUF s_axi_awvalid_IBUF_inst
       (.I(s_axi_awvalid),
        .O(s_axi_awvalid_IBUF));
  IBUF s_axi_bready_IBUF_inst
       (.I(s_axi_bready),
        .O(s_axi_bready_IBUF));
  OBUF \s_axi_bresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s_axi_bresp[0]));
  OBUF \s_axi_bresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s_axi_bresp[1]));
  OBUF s_axi_bvalid_OBUF_inst
       (.I(s_axi_bvalid_OBUF),
        .O(s_axi_bvalid));
  OBUF \s_axi_rdata_OBUF[0]_inst 
       (.I(s_axi_rdata_OBUF[0]),
        .O(s_axi_rdata[0]));
  OBUF \s_axi_rdata_OBUF[10]_inst 
       (.I(s_axi_rdata_OBUF[10]),
        .O(s_axi_rdata[10]));
  OBUF \s_axi_rdata_OBUF[11]_inst 
       (.I(s_axi_rdata_OBUF[11]),
        .O(s_axi_rdata[11]));
  OBUF \s_axi_rdata_OBUF[12]_inst 
       (.I(s_axi_rdata_OBUF[12]),
        .O(s_axi_rdata[12]));
  OBUF \s_axi_rdata_OBUF[13]_inst 
       (.I(s_axi_rdata_OBUF[13]),
        .O(s_axi_rdata[13]));
  OBUF \s_axi_rdata_OBUF[14]_inst 
       (.I(s_axi_rdata_OBUF[14]),
        .O(s_axi_rdata[14]));
  OBUF \s_axi_rdata_OBUF[15]_inst 
       (.I(s_axi_rdata_OBUF[15]),
        .O(s_axi_rdata[15]));
  OBUF \s_axi_rdata_OBUF[16]_inst 
       (.I(s_axi_rdata_OBUF[16]),
        .O(s_axi_rdata[16]));
  OBUF \s_axi_rdata_OBUF[17]_inst 
       (.I(s_axi_rdata_OBUF[17]),
        .O(s_axi_rdata[17]));
  OBUF \s_axi_rdata_OBUF[18]_inst 
       (.I(s_axi_rdata_OBUF[18]),
        .O(s_axi_rdata[18]));
  OBUF \s_axi_rdata_OBUF[19]_inst 
       (.I(s_axi_rdata_OBUF[19]),
        .O(s_axi_rdata[19]));
  OBUF \s_axi_rdata_OBUF[1]_inst 
       (.I(s_axi_rdata_OBUF[1]),
        .O(s_axi_rdata[1]));
  OBUF \s_axi_rdata_OBUF[20]_inst 
       (.I(s_axi_rdata_OBUF[20]),
        .O(s_axi_rdata[20]));
  OBUF \s_axi_rdata_OBUF[21]_inst 
       (.I(s_axi_rdata_OBUF[21]),
        .O(s_axi_rdata[21]));
  OBUF \s_axi_rdata_OBUF[22]_inst 
       (.I(s_axi_rdata_OBUF[22]),
        .O(s_axi_rdata[22]));
  OBUF \s_axi_rdata_OBUF[23]_inst 
       (.I(s_axi_rdata_OBUF[23]),
        .O(s_axi_rdata[23]));
  OBUF \s_axi_rdata_OBUF[24]_inst 
       (.I(s_axi_rdata_OBUF[24]),
        .O(s_axi_rdata[24]));
  OBUF \s_axi_rdata_OBUF[25]_inst 
       (.I(s_axi_rdata_OBUF[25]),
        .O(s_axi_rdata[25]));
  OBUF \s_axi_rdata_OBUF[26]_inst 
       (.I(s_axi_rdata_OBUF[26]),
        .O(s_axi_rdata[26]));
  OBUF \s_axi_rdata_OBUF[27]_inst 
       (.I(s_axi_rdata_OBUF[27]),
        .O(s_axi_rdata[27]));
  OBUF \s_axi_rdata_OBUF[28]_inst 
       (.I(s_axi_rdata_OBUF[28]),
        .O(s_axi_rdata[28]));
  OBUF \s_axi_rdata_OBUF[29]_inst 
       (.I(s_axi_rdata_OBUF[29]),
        .O(s_axi_rdata[29]));
  OBUF \s_axi_rdata_OBUF[2]_inst 
       (.I(s_axi_rdata_OBUF[2]),
        .O(s_axi_rdata[2]));
  OBUF \s_axi_rdata_OBUF[30]_inst 
       (.I(s_axi_rdata_OBUF[30]),
        .O(s_axi_rdata[30]));
  OBUF \s_axi_rdata_OBUF[31]_inst 
       (.I(s_axi_rdata_OBUF[31]),
        .O(s_axi_rdata[31]));
  OBUF \s_axi_rdata_OBUF[3]_inst 
       (.I(s_axi_rdata_OBUF[3]),
        .O(s_axi_rdata[3]));
  OBUF \s_axi_rdata_OBUF[4]_inst 
       (.I(s_axi_rdata_OBUF[4]),
        .O(s_axi_rdata[4]));
  OBUF \s_axi_rdata_OBUF[5]_inst 
       (.I(s_axi_rdata_OBUF[5]),
        .O(s_axi_rdata[5]));
  OBUF \s_axi_rdata_OBUF[6]_inst 
       (.I(s_axi_rdata_OBUF[6]),
        .O(s_axi_rdata[6]));
  OBUF \s_axi_rdata_OBUF[7]_inst 
       (.I(s_axi_rdata_OBUF[7]),
        .O(s_axi_rdata[7]));
  OBUF \s_axi_rdata_OBUF[8]_inst 
       (.I(s_axi_rdata_OBUF[8]),
        .O(s_axi_rdata[8]));
  OBUF \s_axi_rdata_OBUF[9]_inst 
       (.I(s_axi_rdata_OBUF[9]),
        .O(s_axi_rdata[9]));
  IBUF s_axi_rready_IBUF_inst
       (.I(s_axi_rready),
        .O(s_axi_rready_IBUF));
  OBUF \s_axi_rresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s_axi_rresp[0]));
  OBUF \s_axi_rresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s_axi_rresp[1]));
  OBUF s_axi_rvalid_OBUF_inst
       (.I(s_axi_rvalid_OBUF),
        .O(s_axi_rvalid));
  IBUF \s_axi_wdata_IBUF[0]_inst 
       (.I(s_axi_wdata[0]),
        .O(s_axi_wdata_IBUF[0]));
  IBUF \s_axi_wdata_IBUF[1]_inst 
       (.I(s_axi_wdata[1]),
        .O(s_axi_wdata_IBUF[1]));
  OBUF s_axi_wready_OBUF_inst
       (.I(s_axi_wready_OBUF),
        .O(s_axi_wready));
  IBUF s_axi_wvalid_IBUF_inst
       (.I(s_axi_wvalid),
        .O(s_axi_wvalid_IBUF));
  sync sync_0
       (.asyn(gpio_out),
        .syn(clr),
        .target_clk(clk_IBUF_BUFG));
  sync_0 sync_2
       (.asyn(rdy),
        .syn(gpio_in[0]),
        .target_clk(s_axi_aclk_IBUF_BUFG));
  sync_1 sync_3
       (.asyn(full),
        .syn(gpio_in[1]),
        .target_clk(s_axi_aclk_IBUF_BUFG));
endmodule

module GPIO_Core
   (reg3,
    gpio2_io_o,
    reg1,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0 ,
    s_axi_aclk,
    SR,
    bus2ip_cs,
    bus2ip_rnw,
    gpio_io_i,
    E,
    s_axi_wdata,
    \Dual.gpio2_Data_Out_reg[0]_0 ,
    Q);
  output [1:0]reg3;
  output [0:0]gpio2_io_o;
  output [1:0]reg1;
  output GPIO_xferAck_i;
  output gpio_xferAck_Reg;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0 ;
  input s_axi_aclk;
  input [0:0]SR;
  input bus2ip_cs;
  input bus2ip_rnw;
  input [1:0]gpio_io_i;
  input [0:0]E;
  input [1:0]s_axi_wdata;
  input [0:0]\Dual.gpio2_Data_Out_reg[0]_0 ;
  input [2:0]Q;

  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0 ;
  wire [0:0]\Dual.gpio2_Data_Out_reg[0]_0 ;
  wire \Dual.gpio2_Data_Out_reg_n_0_[0] ;
  wire \Dual.gpio_OE_reg_n_0_[0] ;
  wire \Dual.gpio_OE_reg_n_0_[1] ;
  wire [0:0]E;
  wire GPIO_xferAck_i;
  wire [2:0]Q;
  wire [0:1]Read_Reg_In;
  wire [0:0]SR;
  wire bus2ip_cs;
  wire bus2ip_rnw;
  wire [0:0]gpio2_io_o;
  wire [0:1]gpio_Data_In;
  wire [1:0]gpio_io_i;
  wire [0:1]gpio_io_i_d2;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire [1:0]reg1;
  wire [1:0]reg3;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \/i_ 
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  LUT5 #(
    .INIT(32'h03020002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1 
       (.I0(gpio_Data_In[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\Dual.gpio_OE_reg_n_0_[0] ),
        .O(Read_Reg_In[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[0]),
        .Q(reg1[1]),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0 ));
  LUT5 #(
    .INIT(32'h03020002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1[31]_i_1 
       (.I0(gpio_Data_In[1]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\Dual.gpio_OE_reg_n_0_[1] ),
        .O(Read_Reg_In[1]));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Read_Reg_In[1]),
        .Q(reg1[0]),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_Data_Out_reg_n_0_[0] ),
        .Q(reg3[1]),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o),
        .Q(reg3[0]),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0 ));
  cdc_sync \Dual.INPUT_DOUBLE_REGS4 
       (.gpio_io_i(gpio_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio_io_i_d2[0],gpio_io_i_d2[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio2_Data_Out_reg[0]_0 ),
        .D(s_axi_wdata[1]),
        .Q(\Dual.gpio2_Data_Out_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio2_Data_Out_reg[0]_0 ),
        .D(s_axi_wdata[0]),
        .Q(gpio2_io_o),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(gpio_Data_In[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(gpio_Data_In[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(\Dual.gpio_OE_reg_n_0_[0] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(\Dual.gpio_OE_reg_n_0_[1] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_rdack_i));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_wrack_i));
endmodule

module TDCchannel2
   (data,
    fifo_empty,
    fifo_prog_full,
    rdy,
    asyn,
    clk_IBUF_BUFG,
    syn,
    rd_clk,
    rd_en,
    hit_IBUF);
  output [63:0]data;
  output fifo_empty;
  output fifo_prog_full;
  output rdy;
  output asyn;
  input clk_IBUF_BUFG;
  input syn;
  input rd_clk;
  input rd_en;
  input hit_IBUF;

  wire asyn;
  wire clk_IBUF_BUFG;
  wire [55:0]coarse;
  wire [63:0]data;
  wire fifo_empty;
  wire fifo_prog_full;
  wire [7:0]fine;
  wire hit_IBUF;
  wire rd_clk;
  wire rd_en;
  wire rdy;
  wire syn;
  wire [191:0]thermo;
  wire validIn;
  wire validOut;

  delayLine Delay_line
       (.Q(thermo),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .hit_IBUF(hit_IBUF),
        .validIn(validIn));
  control2 controlv2
       (.\FSM_onehot_state_reg[1]_0 (rdy),
        .asyn(asyn),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .data(data),
        .din({coarse,fine}),
        .fifo_empty(fifo_empty),
        .fifo_prog_full(fifo_prog_full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .syn(syn),
        .validOut(validOut));
  counter counter
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(coarse));
  encoder encoder
       (.Q(thermo),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\ones_reg[7]_0 (fine),
        .validIn(validIn),
        .validOut(validOut));
endmodule

module adderTreeLegacy
   (\thermo_s_reg[0] ,
    sum,
    validIn,
    clk_IBUF_BUFG,
    D);
  output \thermo_s_reg[0] ;
  output [7:0]sum;
  input validIn;
  input clk_IBUF_BUFG;
  input [95:0]D;

  wire [95:0]D;
  wire clk_IBUF_BUFG;
  wire [2:0]p_0_in20_in;
  wire [2:0]p_0_in23_in;
  wire [2:0]p_0_in26_in;
  wire [2:0]p_0_in29_in;
  wire [2:0]p_0_in32_in;
  wire [2:0]p_0_in35_in;
  wire [2:0]p_0_in38_in;
  wire [2:0]p_0_in41_in;
  wire [2:0]p_1_in21_in;
  wire [2:0]p_1_in24_in;
  wire [2:0]p_1_in27_in;
  wire [2:0]p_1_in30_in;
  wire [2:0]p_1_in33_in;
  wire [2:0]p_1_in36_in;
  wire [2:0]p_1_in39_in;
  wire [2:0]p_1_in42_in;
  wire [7:0]sum;
  wire \thermo_s_reg[0] ;
  wire validIn;
  wire \x[0]_i_1_n_0 ;
  wire \x[10]_i_1_n_0 ;
  wire \x[11]_i_1_n_0 ;
  wire \x[12]_i_1_n_0 ;
  wire \x[13]_i_1_n_0 ;
  wire \x[14]_i_1_n_0 ;
  wire \x[15]_i_1_n_0 ;
  wire \x[16]_i_1_n_0 ;
  wire \x[17]_i_1_n_0 ;
  wire \x[18]_i_1_n_0 ;
  wire \x[19]_i_1_n_0 ;
  wire \x[1]_i_1_n_0 ;
  wire \x[20]_i_1_n_0 ;
  wire \x[21]_i_1_n_0 ;
  wire \x[22]_i_1_n_0 ;
  wire \x[23]_i_1_n_0 ;
  wire \x[24]_i_1_n_0 ;
  wire \x[25]_i_1_n_0 ;
  wire \x[26]_i_1_n_0 ;
  wire \x[27]_i_1_n_0 ;
  wire \x[28]_i_1_n_0 ;
  wire \x[29]_i_1_n_0 ;
  wire \x[2]_i_1_n_0 ;
  wire \x[30]_i_1_n_0 ;
  wire \x[31]_i_1_n_0 ;
  wire \x[3]_i_1_n_0 ;
  wire \x[4]_i_1_n_0 ;
  wire \x[5]_i_1_n_0 ;
  wire \x[6]_i_1_n_0 ;
  wire \x[7]_i_1_n_0 ;
  wire \x[8]_i_1_n_0 ;
  wire \x[9]_i_1_n_0 ;
  wire [3:0]x_in022_out;
  wire [3:0]x_in025_out;
  wire [3:0]x_in028_out;
  wire [3:0]x_in031_out;
  wire [3:0]x_in034_out;
  wire [3:0]x_in037_out;
  wire [3:0]x_in040_out;
  wire [3:0]x_in043_out;
  wire \x_reg_n_0_[0] ;
  wire \x_reg_n_0_[10] ;
  wire \x_reg_n_0_[11] ;
  wire \x_reg_n_0_[12] ;
  wire \x_reg_n_0_[13] ;
  wire \x_reg_n_0_[14] ;
  wire \x_reg_n_0_[15] ;
  wire \x_reg_n_0_[16] ;
  wire \x_reg_n_0_[17] ;
  wire \x_reg_n_0_[18] ;
  wire \x_reg_n_0_[19] ;
  wire \x_reg_n_0_[1] ;
  wire \x_reg_n_0_[20] ;
  wire \x_reg_n_0_[21] ;
  wire \x_reg_n_0_[22] ;
  wire \x_reg_n_0_[23] ;
  wire \x_reg_n_0_[24] ;
  wire \x_reg_n_0_[25] ;
  wire \x_reg_n_0_[26] ;
  wire \x_reg_n_0_[27] ;
  wire \x_reg_n_0_[28] ;
  wire \x_reg_n_0_[29] ;
  wire \x_reg_n_0_[2] ;
  wire \x_reg_n_0_[30] ;
  wire \x_reg_n_0_[31] ;
  wire \x_reg_n_0_[32] ;
  wire \x_reg_n_0_[33] ;
  wire \x_reg_n_0_[34] ;
  wire \x_reg_n_0_[35] ;
  wire \x_reg_n_0_[36] ;
  wire \x_reg_n_0_[37] ;
  wire \x_reg_n_0_[38] ;
  wire \x_reg_n_0_[39] ;
  wire \x_reg_n_0_[3] ;
  wire \x_reg_n_0_[40] ;
  wire \x_reg_n_0_[41] ;
  wire \x_reg_n_0_[42] ;
  wire \x_reg_n_0_[43] ;
  wire \x_reg_n_0_[44] ;
  wire \x_reg_n_0_[45] ;
  wire \x_reg_n_0_[46] ;
  wire \x_reg_n_0_[47] ;
  wire \x_reg_n_0_[4] ;
  wire \x_reg_n_0_[5] ;
  wire \x_reg_n_0_[6] ;
  wire \x_reg_n_0_[7] ;
  wire \x_reg_n_0_[8] ;
  wire \x_reg_n_0_[9] ;

  adderTreeLegacy__parameterized0 \RECURSE.NEXT_LEVEL 
       (.D({x_in043_out,x_in040_out,x_in037_out,x_in034_out,x_in031_out,x_in028_out,x_in025_out,x_in022_out,\x[31]_i_1_n_0 ,\x[30]_i_1_n_0 ,\x[29]_i_1_n_0 ,\x[28]_i_1_n_0 ,\x[27]_i_1_n_0 ,\x[26]_i_1_n_0 ,\x[25]_i_1_n_0 ,\x[24]_i_1_n_0 ,\x[23]_i_1_n_0 ,\x[22]_i_1_n_0 ,\x[21]_i_1_n_0 ,\x[20]_i_1_n_0 ,\x[19]_i_1_n_0 ,\x[18]_i_1_n_0 ,\x[17]_i_1_n_0 ,\x[16]_i_1_n_0 ,\x[15]_i_1_n_0 ,\x[14]_i_1_n_0 ,\x[13]_i_1_n_0 ,\x[12]_i_1_n_0 ,\x[11]_i_1_n_0 ,\x[10]_i_1_n_0 ,\x[9]_i_1_n_0 ,\x[8]_i_1_n_0 ,\x[7]_i_1_n_0 ,\x[6]_i_1_n_0 ,\x[5]_i_1_n_0 ,\x[4]_i_1_n_0 ,\x[3]_i_1_n_0 ,\x[2]_i_1_n_0 ,\x[1]_i_1_n_0 ,\x[0]_i_1_n_0 }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sum(sum),
        .\thermo_s_reg[0] (\thermo_s_reg[0] ),
        .validIn(validIn));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[0]_i_1 
       (.I0(\x_reg_n_0_[0] ),
        .I1(\x_reg_n_0_[3] ),
        .O(\x[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[10]_i_1 
       (.I0(\x_reg_n_0_[15] ),
        .I1(\x_reg_n_0_[12] ),
        .I2(\x_reg_n_0_[13] ),
        .I3(\x_reg_n_0_[16] ),
        .I4(\x_reg_n_0_[17] ),
        .I5(\x_reg_n_0_[14] ),
        .O(\x[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[11]_i_1 
       (.I0(\x_reg_n_0_[17] ),
        .I1(\x_reg_n_0_[14] ),
        .I2(\x_reg_n_0_[15] ),
        .I3(\x_reg_n_0_[12] ),
        .I4(\x_reg_n_0_[13] ),
        .I5(\x_reg_n_0_[16] ),
        .O(\x[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[12]_i_1 
       (.I0(\x_reg_n_0_[18] ),
        .I1(\x_reg_n_0_[21] ),
        .O(\x[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[13]_i_1 
       (.I0(\x_reg_n_0_[18] ),
        .I1(\x_reg_n_0_[21] ),
        .I2(\x_reg_n_0_[22] ),
        .I3(\x_reg_n_0_[19] ),
        .O(\x[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[14]_i_1 
       (.I0(\x_reg_n_0_[21] ),
        .I1(\x_reg_n_0_[18] ),
        .I2(\x_reg_n_0_[19] ),
        .I3(\x_reg_n_0_[22] ),
        .I4(\x_reg_n_0_[23] ),
        .I5(\x_reg_n_0_[20] ),
        .O(\x[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[15]_i_1 
       (.I0(\x_reg_n_0_[23] ),
        .I1(\x_reg_n_0_[20] ),
        .I2(\x_reg_n_0_[21] ),
        .I3(\x_reg_n_0_[18] ),
        .I4(\x_reg_n_0_[19] ),
        .I5(\x_reg_n_0_[22] ),
        .O(\x[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[16]_i_1 
       (.I0(\x_reg_n_0_[24] ),
        .I1(\x_reg_n_0_[27] ),
        .O(\x[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[17]_i_1 
       (.I0(\x_reg_n_0_[24] ),
        .I1(\x_reg_n_0_[27] ),
        .I2(\x_reg_n_0_[28] ),
        .I3(\x_reg_n_0_[25] ),
        .O(\x[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[18]_i_1 
       (.I0(\x_reg_n_0_[27] ),
        .I1(\x_reg_n_0_[24] ),
        .I2(\x_reg_n_0_[25] ),
        .I3(\x_reg_n_0_[28] ),
        .I4(\x_reg_n_0_[29] ),
        .I5(\x_reg_n_0_[26] ),
        .O(\x[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[19]_i_1 
       (.I0(\x_reg_n_0_[29] ),
        .I1(\x_reg_n_0_[26] ),
        .I2(\x_reg_n_0_[27] ),
        .I3(\x_reg_n_0_[24] ),
        .I4(\x_reg_n_0_[25] ),
        .I5(\x_reg_n_0_[28] ),
        .O(\x[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[1]_i_1 
       (.I0(\x_reg_n_0_[0] ),
        .I1(\x_reg_n_0_[3] ),
        .I2(\x_reg_n_0_[4] ),
        .I3(\x_reg_n_0_[1] ),
        .O(\x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[20]_i_1 
       (.I0(\x_reg_n_0_[30] ),
        .I1(\x_reg_n_0_[33] ),
        .O(\x[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[21]_i_1 
       (.I0(\x_reg_n_0_[30] ),
        .I1(\x_reg_n_0_[33] ),
        .I2(\x_reg_n_0_[34] ),
        .I3(\x_reg_n_0_[31] ),
        .O(\x[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[22]_i_1 
       (.I0(\x_reg_n_0_[33] ),
        .I1(\x_reg_n_0_[30] ),
        .I2(\x_reg_n_0_[31] ),
        .I3(\x_reg_n_0_[34] ),
        .I4(\x_reg_n_0_[35] ),
        .I5(\x_reg_n_0_[32] ),
        .O(\x[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[23]_i_1 
       (.I0(\x_reg_n_0_[35] ),
        .I1(\x_reg_n_0_[32] ),
        .I2(\x_reg_n_0_[33] ),
        .I3(\x_reg_n_0_[30] ),
        .I4(\x_reg_n_0_[31] ),
        .I5(\x_reg_n_0_[34] ),
        .O(\x[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[24]_i_1 
       (.I0(\x_reg_n_0_[36] ),
        .I1(\x_reg_n_0_[39] ),
        .O(\x[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[25]_i_1 
       (.I0(\x_reg_n_0_[36] ),
        .I1(\x_reg_n_0_[39] ),
        .I2(\x_reg_n_0_[40] ),
        .I3(\x_reg_n_0_[37] ),
        .O(\x[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[26]_i_1 
       (.I0(\x_reg_n_0_[39] ),
        .I1(\x_reg_n_0_[36] ),
        .I2(\x_reg_n_0_[37] ),
        .I3(\x_reg_n_0_[40] ),
        .I4(\x_reg_n_0_[41] ),
        .I5(\x_reg_n_0_[38] ),
        .O(\x[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[27]_i_1 
       (.I0(\x_reg_n_0_[41] ),
        .I1(\x_reg_n_0_[38] ),
        .I2(\x_reg_n_0_[39] ),
        .I3(\x_reg_n_0_[36] ),
        .I4(\x_reg_n_0_[37] ),
        .I5(\x_reg_n_0_[40] ),
        .O(\x[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[28]_i_1 
       (.I0(\x_reg_n_0_[42] ),
        .I1(\x_reg_n_0_[45] ),
        .O(\x[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[29]_i_1 
       (.I0(\x_reg_n_0_[42] ),
        .I1(\x_reg_n_0_[45] ),
        .I2(\x_reg_n_0_[46] ),
        .I3(\x_reg_n_0_[43] ),
        .O(\x[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[2]_i_1 
       (.I0(\x_reg_n_0_[3] ),
        .I1(\x_reg_n_0_[0] ),
        .I2(\x_reg_n_0_[1] ),
        .I3(\x_reg_n_0_[4] ),
        .I4(\x_reg_n_0_[5] ),
        .I5(\x_reg_n_0_[2] ),
        .O(\x[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[30]_i_1 
       (.I0(\x_reg_n_0_[45] ),
        .I1(\x_reg_n_0_[42] ),
        .I2(\x_reg_n_0_[43] ),
        .I3(\x_reg_n_0_[46] ),
        .I4(\x_reg_n_0_[47] ),
        .I5(\x_reg_n_0_[44] ),
        .O(\x[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[31]_i_1 
       (.I0(\x_reg_n_0_[47] ),
        .I1(\x_reg_n_0_[44] ),
        .I2(\x_reg_n_0_[45] ),
        .I3(\x_reg_n_0_[42] ),
        .I4(\x_reg_n_0_[43] ),
        .I5(\x_reg_n_0_[46] ),
        .O(\x[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[32]_i_1 
       (.I0(p_1_in21_in[0]),
        .I1(p_0_in20_in[0]),
        .O(x_in022_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[33]_i_1 
       (.I0(p_1_in21_in[0]),
        .I1(p_0_in20_in[0]),
        .I2(p_0_in20_in[1]),
        .I3(p_1_in21_in[1]),
        .O(x_in022_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[34]_i_1 
       (.I0(p_0_in20_in[0]),
        .I1(p_1_in21_in[0]),
        .I2(p_1_in21_in[1]),
        .I3(p_0_in20_in[1]),
        .I4(p_0_in20_in[2]),
        .I5(p_1_in21_in[2]),
        .O(x_in022_out[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[35]_i_1 
       (.I0(p_0_in20_in[2]),
        .I1(p_1_in21_in[2]),
        .I2(p_0_in20_in[0]),
        .I3(p_1_in21_in[0]),
        .I4(p_1_in21_in[1]),
        .I5(p_0_in20_in[1]),
        .O(x_in022_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[36]_i_1 
       (.I0(p_1_in24_in[0]),
        .I1(p_0_in23_in[0]),
        .O(x_in025_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[37]_i_1 
       (.I0(p_1_in24_in[0]),
        .I1(p_0_in23_in[0]),
        .I2(p_0_in23_in[1]),
        .I3(p_1_in24_in[1]),
        .O(x_in025_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[38]_i_1 
       (.I0(p_0_in23_in[0]),
        .I1(p_1_in24_in[0]),
        .I2(p_1_in24_in[1]),
        .I3(p_0_in23_in[1]),
        .I4(p_0_in23_in[2]),
        .I5(p_1_in24_in[2]),
        .O(x_in025_out[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[39]_i_1 
       (.I0(p_0_in23_in[2]),
        .I1(p_1_in24_in[2]),
        .I2(p_0_in23_in[0]),
        .I3(p_1_in24_in[0]),
        .I4(p_1_in24_in[1]),
        .I5(p_0_in23_in[1]),
        .O(x_in025_out[3]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[3]_i_1 
       (.I0(\x_reg_n_0_[5] ),
        .I1(\x_reg_n_0_[2] ),
        .I2(\x_reg_n_0_[3] ),
        .I3(\x_reg_n_0_[0] ),
        .I4(\x_reg_n_0_[1] ),
        .I5(\x_reg_n_0_[4] ),
        .O(\x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[40]_i_1 
       (.I0(p_1_in27_in[0]),
        .I1(p_0_in26_in[0]),
        .O(x_in028_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[41]_i_1 
       (.I0(p_1_in27_in[0]),
        .I1(p_0_in26_in[0]),
        .I2(p_0_in26_in[1]),
        .I3(p_1_in27_in[1]),
        .O(x_in028_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[42]_i_1 
       (.I0(p_0_in26_in[0]),
        .I1(p_1_in27_in[0]),
        .I2(p_1_in27_in[1]),
        .I3(p_0_in26_in[1]),
        .I4(p_0_in26_in[2]),
        .I5(p_1_in27_in[2]),
        .O(x_in028_out[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[43]_i_1 
       (.I0(p_0_in26_in[2]),
        .I1(p_1_in27_in[2]),
        .I2(p_0_in26_in[0]),
        .I3(p_1_in27_in[0]),
        .I4(p_1_in27_in[1]),
        .I5(p_0_in26_in[1]),
        .O(x_in028_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[44]_i_1 
       (.I0(p_1_in30_in[0]),
        .I1(p_0_in29_in[0]),
        .O(x_in031_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[45]_i_1 
       (.I0(p_1_in30_in[0]),
        .I1(p_0_in29_in[0]),
        .I2(p_0_in29_in[1]),
        .I3(p_1_in30_in[1]),
        .O(x_in031_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[46]_i_1 
       (.I0(p_0_in29_in[0]),
        .I1(p_1_in30_in[0]),
        .I2(p_1_in30_in[1]),
        .I3(p_0_in29_in[1]),
        .I4(p_0_in29_in[2]),
        .I5(p_1_in30_in[2]),
        .O(x_in031_out[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[47]_i_1 
       (.I0(p_0_in29_in[2]),
        .I1(p_1_in30_in[2]),
        .I2(p_0_in29_in[0]),
        .I3(p_1_in30_in[0]),
        .I4(p_1_in30_in[1]),
        .I5(p_0_in29_in[1]),
        .O(x_in031_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[48]_i_1 
       (.I0(p_1_in33_in[0]),
        .I1(p_0_in32_in[0]),
        .O(x_in034_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[49]_i_1 
       (.I0(p_1_in33_in[0]),
        .I1(p_0_in32_in[0]),
        .I2(p_0_in32_in[1]),
        .I3(p_1_in33_in[1]),
        .O(x_in034_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[4]_i_1 
       (.I0(\x_reg_n_0_[6] ),
        .I1(\x_reg_n_0_[9] ),
        .O(\x[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[50]_i_1 
       (.I0(p_0_in32_in[0]),
        .I1(p_1_in33_in[0]),
        .I2(p_1_in33_in[1]),
        .I3(p_0_in32_in[1]),
        .I4(p_0_in32_in[2]),
        .I5(p_1_in33_in[2]),
        .O(x_in034_out[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[51]_i_1 
       (.I0(p_0_in32_in[2]),
        .I1(p_1_in33_in[2]),
        .I2(p_0_in32_in[0]),
        .I3(p_1_in33_in[0]),
        .I4(p_1_in33_in[1]),
        .I5(p_0_in32_in[1]),
        .O(x_in034_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[52]_i_1 
       (.I0(p_1_in36_in[0]),
        .I1(p_0_in35_in[0]),
        .O(x_in037_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[53]_i_1 
       (.I0(p_1_in36_in[0]),
        .I1(p_0_in35_in[0]),
        .I2(p_0_in35_in[1]),
        .I3(p_1_in36_in[1]),
        .O(x_in037_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[54]_i_1 
       (.I0(p_0_in35_in[0]),
        .I1(p_1_in36_in[0]),
        .I2(p_1_in36_in[1]),
        .I3(p_0_in35_in[1]),
        .I4(p_0_in35_in[2]),
        .I5(p_1_in36_in[2]),
        .O(x_in037_out[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[55]_i_1 
       (.I0(p_0_in35_in[2]),
        .I1(p_1_in36_in[2]),
        .I2(p_0_in35_in[0]),
        .I3(p_1_in36_in[0]),
        .I4(p_1_in36_in[1]),
        .I5(p_0_in35_in[1]),
        .O(x_in037_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[56]_i_1 
       (.I0(p_1_in39_in[0]),
        .I1(p_0_in38_in[0]),
        .O(x_in040_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[57]_i_1 
       (.I0(p_1_in39_in[0]),
        .I1(p_0_in38_in[0]),
        .I2(p_0_in38_in[1]),
        .I3(p_1_in39_in[1]),
        .O(x_in040_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[58]_i_1 
       (.I0(p_0_in38_in[0]),
        .I1(p_1_in39_in[0]),
        .I2(p_1_in39_in[1]),
        .I3(p_0_in38_in[1]),
        .I4(p_0_in38_in[2]),
        .I5(p_1_in39_in[2]),
        .O(x_in040_out[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[59]_i_1 
       (.I0(p_0_in38_in[2]),
        .I1(p_1_in39_in[2]),
        .I2(p_0_in38_in[0]),
        .I3(p_1_in39_in[0]),
        .I4(p_1_in39_in[1]),
        .I5(p_0_in38_in[1]),
        .O(x_in040_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[5]_i_1 
       (.I0(\x_reg_n_0_[6] ),
        .I1(\x_reg_n_0_[9] ),
        .I2(\x_reg_n_0_[10] ),
        .I3(\x_reg_n_0_[7] ),
        .O(\x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[60]_i_1 
       (.I0(p_1_in42_in[0]),
        .I1(p_0_in41_in[0]),
        .O(x_in043_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[61]_i_1 
       (.I0(p_1_in42_in[0]),
        .I1(p_0_in41_in[0]),
        .I2(p_0_in41_in[1]),
        .I3(p_1_in42_in[1]),
        .O(x_in043_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[62]_i_1 
       (.I0(p_0_in41_in[0]),
        .I1(p_1_in42_in[0]),
        .I2(p_1_in42_in[1]),
        .I3(p_0_in41_in[1]),
        .I4(p_0_in41_in[2]),
        .I5(p_1_in42_in[2]),
        .O(x_in043_out[2]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[63]_i_1 
       (.I0(p_0_in41_in[2]),
        .I1(p_1_in42_in[2]),
        .I2(p_0_in41_in[0]),
        .I3(p_1_in42_in[0]),
        .I4(p_1_in42_in[1]),
        .I5(p_0_in41_in[1]),
        .O(x_in043_out[3]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[6]_i_1 
       (.I0(\x_reg_n_0_[9] ),
        .I1(\x_reg_n_0_[6] ),
        .I2(\x_reg_n_0_[7] ),
        .I3(\x_reg_n_0_[10] ),
        .I4(\x_reg_n_0_[11] ),
        .I5(\x_reg_n_0_[8] ),
        .O(\x[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[7]_i_1 
       (.I0(\x_reg_n_0_[11] ),
        .I1(\x_reg_n_0_[8] ),
        .I2(\x_reg_n_0_[9] ),
        .I3(\x_reg_n_0_[6] ),
        .I4(\x_reg_n_0_[7] ),
        .I5(\x_reg_n_0_[10] ),
        .O(\x[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[8]_i_1 
       (.I0(\x_reg_n_0_[12] ),
        .I1(\x_reg_n_0_[15] ),
        .O(\x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[9]_i_1 
       (.I0(\x_reg_n_0_[12] ),
        .I1(\x_reg_n_0_[15] ),
        .I2(\x_reg_n_0_[16] ),
        .I3(\x_reg_n_0_[13] ),
        .O(\x[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(\x_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(\x_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(\x_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(\x_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(\x_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(\x_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(\x_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(\x_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(\x_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(\x_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(\x_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(\x_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(\x_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(\x_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[24]),
        .Q(\x_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[25]),
        .Q(\x_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[26]),
        .Q(\x_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[27]),
        .Q(\x_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[28]),
        .Q(\x_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[29]),
        .Q(\x_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\x_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[30]),
        .Q(\x_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[31]),
        .Q(\x_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[32]),
        .Q(\x_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[33]),
        .Q(\x_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[34]),
        .Q(\x_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[35]),
        .Q(\x_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[36]),
        .Q(\x_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[37]),
        .Q(\x_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[38]),
        .Q(\x_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[39]),
        .Q(\x_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\x_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[40]),
        .Q(\x_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[41]),
        .Q(\x_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[42]),
        .Q(\x_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[43]),
        .Q(\x_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[44]),
        .Q(\x_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[45]),
        .Q(\x_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[46]),
        .Q(\x_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[47]),
        .Q(\x_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[48]),
        .Q(p_1_in21_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[49]),
        .Q(p_1_in21_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(\x_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[50]),
        .Q(p_1_in21_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[51]),
        .Q(p_0_in20_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[52]),
        .Q(p_0_in20_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[53]),
        .Q(p_0_in20_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[54]),
        .Q(p_1_in24_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[55]),
        .Q(p_1_in24_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[56]),
        .Q(p_1_in24_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[57]),
        .Q(p_0_in23_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[58]),
        .Q(p_0_in23_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[59]),
        .Q(p_0_in23_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(\x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[60]),
        .Q(p_1_in27_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[61]),
        .Q(p_1_in27_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[62]),
        .Q(p_1_in27_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[63]),
        .Q(p_0_in26_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[64]),
        .Q(p_0_in26_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[65]),
        .Q(p_0_in26_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[66]),
        .Q(p_1_in30_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[67]),
        .Q(p_1_in30_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[68]),
        .Q(p_1_in30_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[69]),
        .Q(p_0_in29_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(\x_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[70]),
        .Q(p_0_in29_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[71]),
        .Q(p_0_in29_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[72]),
        .Q(p_1_in33_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[73]),
        .Q(p_1_in33_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[74]),
        .Q(p_1_in33_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[75]),
        .Q(p_0_in32_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[76]),
        .Q(p_0_in32_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[77]),
        .Q(p_0_in32_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[78]),
        .Q(p_1_in36_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[79]),
        .Q(p_1_in36_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(\x_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[80]),
        .Q(p_1_in36_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[81]),
        .Q(p_0_in35_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[82]),
        .Q(p_0_in35_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[83]),
        .Q(p_0_in35_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[84]),
        .Q(p_1_in39_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[85]),
        .Q(p_1_in39_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[86]),
        .Q(p_1_in39_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[87]),
        .Q(p_0_in38_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[88]),
        .Q(p_0_in38_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[89]),
        .Q(p_0_in38_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(\x_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[90]),
        .Q(p_1_in42_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[91]),
        .Q(p_1_in42_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[92]),
        .Q(p_1_in42_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[93]),
        .Q(p_0_in41_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[94]),
        .Q(p_0_in41_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[95]),
        .Q(p_0_in41_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(\x_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "adderTreeLegacy" *) 
module adderTreeLegacy__parameterized0
   (\thermo_s_reg[0] ,
    sum,
    validIn,
    clk_IBUF_BUFG,
    D);
  output \thermo_s_reg[0] ;
  output [7:0]sum;
  input validIn;
  input clk_IBUF_BUFG;
  input [63:0]D;

  wire [63:0]D;
  wire clk_IBUF_BUFG;
  wire [3:0]p_0_in11_in;
  wire [3:0]p_0_in14_in;
  wire [3:0]p_0_in17_in;
  wire [3:0]p_0_in8_in;
  wire [3:0]p_1_in12_in;
  wire [3:0]p_1_in15_in;
  wire [3:0]p_1_in18_in;
  wire [3:0]p_1_in9_in;
  wire [7:0]sum;
  wire \thermo_s_reg[0] ;
  wire validIn;
  wire \x[0]_i_1_n_0 ;
  wire \x[1]_i_1_n_0 ;
  wire \x[2]_i_1_n_0 ;
  wire \x[3]_i_1_n_0 ;
  wire \x[4]_i_1_n_0 ;
  wire \x[4]_i_2_n_0 ;
  wire [4:0]x_in010_out;
  wire [4:0]x_in013_out;
  wire [4:0]x_in016_out;
  wire [4:0]x_in019_out;
  wire \x_in0_inferred__0/x[5]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[6]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[7]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[8]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[9]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[9]_i_2_n_0 ;
  wire \x_in0_inferred__1/x[10]_i_1_n_0 ;
  wire \x_in0_inferred__1/x[11]_i_1_n_0 ;
  wire \x_in0_inferred__1/x[12]_i_1_n_0 ;
  wire \x_in0_inferred__1/x[13]_i_1_n_0 ;
  wire \x_in0_inferred__1/x[14]_i_1_n_0 ;
  wire \x_in0_inferred__1/x[14]_i_2_n_0 ;
  wire \x_in0_inferred__2/x[15]_i_1_n_0 ;
  wire \x_in0_inferred__2/x[16]_i_1_n_0 ;
  wire \x_in0_inferred__2/x[17]_i_1_n_0 ;
  wire \x_in0_inferred__2/x[18]_i_1_n_0 ;
  wire \x_in0_inferred__2/x[19]_i_1_n_0 ;
  wire \x_in0_inferred__2/x[19]_i_2_n_0 ;
  wire \x_in0_inferred__3/x[24]_i_2_n_0 ;
  wire \x_in0_inferred__4/x[29]_i_2_n_0 ;
  wire \x_in0_inferred__5/x[34]_i_2_n_0 ;
  wire \x_in0_inferred__6/x[39]_i_2_n_0 ;
  wire \x_reg_n_0_[0] ;
  wire \x_reg_n_0_[10] ;
  wire \x_reg_n_0_[11] ;
  wire \x_reg_n_0_[12] ;
  wire \x_reg_n_0_[13] ;
  wire \x_reg_n_0_[14] ;
  wire \x_reg_n_0_[15] ;
  wire \x_reg_n_0_[16] ;
  wire \x_reg_n_0_[17] ;
  wire \x_reg_n_0_[18] ;
  wire \x_reg_n_0_[19] ;
  wire \x_reg_n_0_[1] ;
  wire \x_reg_n_0_[20] ;
  wire \x_reg_n_0_[21] ;
  wire \x_reg_n_0_[22] ;
  wire \x_reg_n_0_[23] ;
  wire \x_reg_n_0_[24] ;
  wire \x_reg_n_0_[25] ;
  wire \x_reg_n_0_[26] ;
  wire \x_reg_n_0_[27] ;
  wire \x_reg_n_0_[28] ;
  wire \x_reg_n_0_[29] ;
  wire \x_reg_n_0_[2] ;
  wire \x_reg_n_0_[30] ;
  wire \x_reg_n_0_[31] ;
  wire \x_reg_n_0_[3] ;
  wire \x_reg_n_0_[4] ;
  wire \x_reg_n_0_[5] ;
  wire \x_reg_n_0_[6] ;
  wire \x_reg_n_0_[7] ;
  wire \x_reg_n_0_[8] ;
  wire \x_reg_n_0_[9] ;

  adderTreeLegacy__parameterized1 \RECURSE.NEXT_LEVEL 
       (.D({x_in019_out,x_in016_out,x_in013_out,x_in010_out,\x_in0_inferred__2/x[19]_i_1_n_0 ,\x_in0_inferred__2/x[18]_i_1_n_0 ,\x_in0_inferred__2/x[17]_i_1_n_0 ,\x_in0_inferred__2/x[16]_i_1_n_0 ,\x_in0_inferred__2/x[15]_i_1_n_0 ,\x_in0_inferred__1/x[14]_i_1_n_0 ,\x_in0_inferred__1/x[13]_i_1_n_0 ,\x_in0_inferred__1/x[12]_i_1_n_0 ,\x_in0_inferred__1/x[11]_i_1_n_0 ,\x_in0_inferred__1/x[10]_i_1_n_0 ,\x_in0_inferred__0/x[9]_i_1_n_0 ,\x_in0_inferred__0/x[8]_i_1_n_0 ,\x_in0_inferred__0/x[7]_i_1_n_0 ,\x_in0_inferred__0/x[6]_i_1_n_0 ,\x_in0_inferred__0/x[5]_i_1_n_0 ,\x[4]_i_1_n_0 ,\x[3]_i_1_n_0 ,\x[2]_i_1_n_0 ,\x[1]_i_1_n_0 ,\x[0]_i_1_n_0 }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sum(sum),
        .\thermo_s_reg[0] (\thermo_s_reg[0] ),
        .validIn(validIn));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[0]_i_1 
       (.I0(\x_reg_n_0_[0] ),
        .I1(\x_reg_n_0_[4] ),
        .O(\x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[1]_i_1 
       (.I0(\x_reg_n_0_[0] ),
        .I1(\x_reg_n_0_[4] ),
        .I2(\x_reg_n_0_[5] ),
        .I3(\x_reg_n_0_[1] ),
        .O(\x[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[2]_i_1 
       (.I0(\x_reg_n_0_[4] ),
        .I1(\x_reg_n_0_[0] ),
        .I2(\x_reg_n_0_[1] ),
        .I3(\x_reg_n_0_[5] ),
        .I4(\x_reg_n_0_[6] ),
        .I5(\x_reg_n_0_[2] ),
        .O(\x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x[3]_i_1 
       (.I0(\x[4]_i_2_n_0 ),
        .I1(\x_reg_n_0_[7] ),
        .I2(\x_reg_n_0_[3] ),
        .O(\x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \x[4]_i_1 
       (.I0(\x_reg_n_0_[7] ),
        .I1(\x_reg_n_0_[3] ),
        .I2(\x[4]_i_2_n_0 ),
        .O(\x[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[4]_i_2 
       (.I0(\x_reg_n_0_[6] ),
        .I1(\x_reg_n_0_[2] ),
        .I2(\x_reg_n_0_[4] ),
        .I3(\x_reg_n_0_[0] ),
        .I4(\x_reg_n_0_[1] ),
        .I5(\x_reg_n_0_[5] ),
        .O(\x[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__0/x[5]_i_1 
       (.I0(\x_reg_n_0_[8] ),
        .I1(\x_reg_n_0_[12] ),
        .O(\x_in0_inferred__0/x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__0/x[6]_i_1 
       (.I0(\x_reg_n_0_[8] ),
        .I1(\x_reg_n_0_[12] ),
        .I2(\x_reg_n_0_[13] ),
        .I3(\x_reg_n_0_[9] ),
        .O(\x_in0_inferred__0/x[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__0/x[7]_i_1 
       (.I0(\x_reg_n_0_[12] ),
        .I1(\x_reg_n_0_[8] ),
        .I2(\x_reg_n_0_[9] ),
        .I3(\x_reg_n_0_[13] ),
        .I4(\x_reg_n_0_[14] ),
        .I5(\x_reg_n_0_[10] ),
        .O(\x_in0_inferred__0/x[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__0/x[8]_i_1 
       (.I0(\x_in0_inferred__0/x[9]_i_2_n_0 ),
        .I1(\x_reg_n_0_[15] ),
        .I2(\x_reg_n_0_[11] ),
        .O(\x_in0_inferred__0/x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \x_in0_inferred__0/x[9]_i_1 
       (.I0(\x_reg_n_0_[15] ),
        .I1(\x_reg_n_0_[11] ),
        .I2(\x_in0_inferred__0/x[9]_i_2_n_0 ),
        .O(\x_in0_inferred__0/x[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__0/x[9]_i_2 
       (.I0(\x_reg_n_0_[14] ),
        .I1(\x_reg_n_0_[10] ),
        .I2(\x_reg_n_0_[12] ),
        .I3(\x_reg_n_0_[8] ),
        .I4(\x_reg_n_0_[9] ),
        .I5(\x_reg_n_0_[13] ),
        .O(\x_in0_inferred__0/x[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__1/x[10]_i_1 
       (.I0(\x_reg_n_0_[16] ),
        .I1(\x_reg_n_0_[20] ),
        .O(\x_in0_inferred__1/x[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__1/x[11]_i_1 
       (.I0(\x_reg_n_0_[16] ),
        .I1(\x_reg_n_0_[20] ),
        .I2(\x_reg_n_0_[21] ),
        .I3(\x_reg_n_0_[17] ),
        .O(\x_in0_inferred__1/x[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__1/x[12]_i_1 
       (.I0(\x_reg_n_0_[20] ),
        .I1(\x_reg_n_0_[16] ),
        .I2(\x_reg_n_0_[17] ),
        .I3(\x_reg_n_0_[21] ),
        .I4(\x_reg_n_0_[22] ),
        .I5(\x_reg_n_0_[18] ),
        .O(\x_in0_inferred__1/x[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__1/x[13]_i_1 
       (.I0(\x_in0_inferred__1/x[14]_i_2_n_0 ),
        .I1(\x_reg_n_0_[23] ),
        .I2(\x_reg_n_0_[19] ),
        .O(\x_in0_inferred__1/x[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \x_in0_inferred__1/x[14]_i_1 
       (.I0(\x_reg_n_0_[23] ),
        .I1(\x_reg_n_0_[19] ),
        .I2(\x_in0_inferred__1/x[14]_i_2_n_0 ),
        .O(\x_in0_inferred__1/x[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__1/x[14]_i_2 
       (.I0(\x_reg_n_0_[22] ),
        .I1(\x_reg_n_0_[18] ),
        .I2(\x_reg_n_0_[20] ),
        .I3(\x_reg_n_0_[16] ),
        .I4(\x_reg_n_0_[17] ),
        .I5(\x_reg_n_0_[21] ),
        .O(\x_in0_inferred__1/x[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__2/x[15]_i_1 
       (.I0(\x_reg_n_0_[24] ),
        .I1(\x_reg_n_0_[28] ),
        .O(\x_in0_inferred__2/x[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__2/x[16]_i_1 
       (.I0(\x_reg_n_0_[24] ),
        .I1(\x_reg_n_0_[28] ),
        .I2(\x_reg_n_0_[29] ),
        .I3(\x_reg_n_0_[25] ),
        .O(\x_in0_inferred__2/x[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__2/x[17]_i_1 
       (.I0(\x_reg_n_0_[28] ),
        .I1(\x_reg_n_0_[24] ),
        .I2(\x_reg_n_0_[25] ),
        .I3(\x_reg_n_0_[29] ),
        .I4(\x_reg_n_0_[30] ),
        .I5(\x_reg_n_0_[26] ),
        .O(\x_in0_inferred__2/x[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__2/x[18]_i_1 
       (.I0(\x_in0_inferred__2/x[19]_i_2_n_0 ),
        .I1(\x_reg_n_0_[31] ),
        .I2(\x_reg_n_0_[27] ),
        .O(\x_in0_inferred__2/x[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \x_in0_inferred__2/x[19]_i_1 
       (.I0(\x_reg_n_0_[31] ),
        .I1(\x_reg_n_0_[27] ),
        .I2(\x_in0_inferred__2/x[19]_i_2_n_0 ),
        .O(\x_in0_inferred__2/x[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__2/x[19]_i_2 
       (.I0(\x_reg_n_0_[30] ),
        .I1(\x_reg_n_0_[26] ),
        .I2(\x_reg_n_0_[28] ),
        .I3(\x_reg_n_0_[24] ),
        .I4(\x_reg_n_0_[25] ),
        .I5(\x_reg_n_0_[29] ),
        .O(\x_in0_inferred__2/x[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__3/x[20]_i_1 
       (.I0(p_1_in9_in[0]),
        .I1(p_0_in8_in[0]),
        .O(x_in010_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__3/x[21]_i_1 
       (.I0(p_1_in9_in[0]),
        .I1(p_0_in8_in[0]),
        .I2(p_0_in8_in[1]),
        .I3(p_1_in9_in[1]),
        .O(x_in010_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__3/x[22]_i_1 
       (.I0(p_0_in8_in[0]),
        .I1(p_1_in9_in[0]),
        .I2(p_1_in9_in[1]),
        .I3(p_0_in8_in[1]),
        .I4(p_0_in8_in[2]),
        .I5(p_1_in9_in[2]),
        .O(x_in010_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__3/x[23]_i_1 
       (.I0(\x_in0_inferred__3/x[24]_i_2_n_0 ),
        .I1(p_0_in8_in[3]),
        .I2(p_1_in9_in[3]),
        .O(x_in010_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \x_in0_inferred__3/x[24]_i_1 
       (.I0(p_0_in8_in[3]),
        .I1(p_1_in9_in[3]),
        .I2(\x_in0_inferred__3/x[24]_i_2_n_0 ),
        .O(x_in010_out[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__3/x[24]_i_2 
       (.I0(p_0_in8_in[2]),
        .I1(p_1_in9_in[2]),
        .I2(p_0_in8_in[0]),
        .I3(p_1_in9_in[0]),
        .I4(p_1_in9_in[1]),
        .I5(p_0_in8_in[1]),
        .O(\x_in0_inferred__3/x[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__4/x[25]_i_1 
       (.I0(p_1_in12_in[0]),
        .I1(p_0_in11_in[0]),
        .O(x_in013_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__4/x[26]_i_1 
       (.I0(p_1_in12_in[0]),
        .I1(p_0_in11_in[0]),
        .I2(p_0_in11_in[1]),
        .I3(p_1_in12_in[1]),
        .O(x_in013_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__4/x[27]_i_1 
       (.I0(p_0_in11_in[0]),
        .I1(p_1_in12_in[0]),
        .I2(p_1_in12_in[1]),
        .I3(p_0_in11_in[1]),
        .I4(p_0_in11_in[2]),
        .I5(p_1_in12_in[2]),
        .O(x_in013_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__4/x[28]_i_1 
       (.I0(\x_in0_inferred__4/x[29]_i_2_n_0 ),
        .I1(p_0_in11_in[3]),
        .I2(p_1_in12_in[3]),
        .O(x_in013_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \x_in0_inferred__4/x[29]_i_1 
       (.I0(p_0_in11_in[3]),
        .I1(p_1_in12_in[3]),
        .I2(\x_in0_inferred__4/x[29]_i_2_n_0 ),
        .O(x_in013_out[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__4/x[29]_i_2 
       (.I0(p_0_in11_in[2]),
        .I1(p_1_in12_in[2]),
        .I2(p_0_in11_in[0]),
        .I3(p_1_in12_in[0]),
        .I4(p_1_in12_in[1]),
        .I5(p_0_in11_in[1]),
        .O(\x_in0_inferred__4/x[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__5/x[30]_i_1 
       (.I0(p_1_in15_in[0]),
        .I1(p_0_in14_in[0]),
        .O(x_in016_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__5/x[31]_i_1 
       (.I0(p_1_in15_in[0]),
        .I1(p_0_in14_in[0]),
        .I2(p_0_in14_in[1]),
        .I3(p_1_in15_in[1]),
        .O(x_in016_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__5/x[32]_i_1 
       (.I0(p_0_in14_in[0]),
        .I1(p_1_in15_in[0]),
        .I2(p_1_in15_in[1]),
        .I3(p_0_in14_in[1]),
        .I4(p_0_in14_in[2]),
        .I5(p_1_in15_in[2]),
        .O(x_in016_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__5/x[33]_i_1 
       (.I0(\x_in0_inferred__5/x[34]_i_2_n_0 ),
        .I1(p_0_in14_in[3]),
        .I2(p_1_in15_in[3]),
        .O(x_in016_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \x_in0_inferred__5/x[34]_i_1 
       (.I0(p_0_in14_in[3]),
        .I1(p_1_in15_in[3]),
        .I2(\x_in0_inferred__5/x[34]_i_2_n_0 ),
        .O(x_in016_out[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__5/x[34]_i_2 
       (.I0(p_0_in14_in[2]),
        .I1(p_1_in15_in[2]),
        .I2(p_0_in14_in[0]),
        .I3(p_1_in15_in[0]),
        .I4(p_1_in15_in[1]),
        .I5(p_0_in14_in[1]),
        .O(\x_in0_inferred__5/x[34]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__6/x[35]_i_1 
       (.I0(p_1_in18_in[0]),
        .I1(p_0_in17_in[0]),
        .O(x_in019_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__6/x[36]_i_1 
       (.I0(p_1_in18_in[0]),
        .I1(p_0_in17_in[0]),
        .I2(p_0_in17_in[1]),
        .I3(p_1_in18_in[1]),
        .O(x_in019_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__6/x[37]_i_1 
       (.I0(p_0_in17_in[0]),
        .I1(p_1_in18_in[0]),
        .I2(p_1_in18_in[1]),
        .I3(p_0_in17_in[1]),
        .I4(p_0_in17_in[2]),
        .I5(p_1_in18_in[2]),
        .O(x_in019_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__6/x[38]_i_1 
       (.I0(\x_in0_inferred__6/x[39]_i_2_n_0 ),
        .I1(p_0_in17_in[3]),
        .I2(p_1_in18_in[3]),
        .O(x_in019_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \x_in0_inferred__6/x[39]_i_1 
       (.I0(p_0_in17_in[3]),
        .I1(p_1_in18_in[3]),
        .I2(\x_in0_inferred__6/x[39]_i_2_n_0 ),
        .O(x_in019_out[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__6/x[39]_i_2 
       (.I0(p_0_in17_in[2]),
        .I1(p_1_in18_in[2]),
        .I2(p_0_in17_in[0]),
        .I3(p_1_in18_in[0]),
        .I4(p_1_in18_in[1]),
        .I5(p_0_in17_in[1]),
        .O(\x_in0_inferred__6/x[39]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(\x_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(\x_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(\x_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(\x_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(\x_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(\x_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(\x_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(\x_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(\x_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(\x_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(\x_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(\x_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(\x_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(\x_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[24]),
        .Q(\x_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[25]),
        .Q(\x_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[26]),
        .Q(\x_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[27]),
        .Q(\x_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[28]),
        .Q(\x_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[29]),
        .Q(\x_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\x_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[30]),
        .Q(\x_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[31]),
        .Q(\x_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[32]),
        .Q(p_1_in9_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[33]),
        .Q(p_1_in9_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[34]),
        .Q(p_1_in9_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[35]),
        .Q(p_1_in9_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[36]),
        .Q(p_0_in8_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[37]),
        .Q(p_0_in8_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[38]),
        .Q(p_0_in8_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[39]),
        .Q(p_0_in8_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\x_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[40]),
        .Q(p_1_in12_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[41]),
        .Q(p_1_in12_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[42]),
        .Q(p_1_in12_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[43]),
        .Q(p_1_in12_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[44]),
        .Q(p_0_in11_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[45]),
        .Q(p_0_in11_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[46]),
        .Q(p_0_in11_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[47]),
        .Q(p_0_in11_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[48]),
        .Q(p_1_in15_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[49]),
        .Q(p_1_in15_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(\x_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[50]),
        .Q(p_1_in15_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[51]),
        .Q(p_1_in15_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[52]),
        .Q(p_0_in14_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[53]),
        .Q(p_0_in14_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[54]),
        .Q(p_0_in14_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[55]),
        .Q(p_0_in14_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[56]),
        .Q(p_1_in18_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[57]),
        .Q(p_1_in18_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[58]),
        .Q(p_1_in18_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[59]),
        .Q(p_1_in18_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(\x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[60]),
        .Q(p_0_in17_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[61]),
        .Q(p_0_in17_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[62]),
        .Q(p_0_in17_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[63]),
        .Q(p_0_in17_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(\x_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(\x_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(\x_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(\x_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "adderTreeLegacy" *) 
module adderTreeLegacy__parameterized1
   (\thermo_s_reg[0] ,
    sum,
    validIn,
    clk_IBUF_BUFG,
    D);
  output \thermo_s_reg[0] ;
  output [7:0]sum;
  input validIn;
  input clk_IBUF_BUFG;
  input [39:0]D;

  wire [39:0]D;
  wire clk_IBUF_BUFG;
  wire [4:0]p_0_in2_in;
  wire [4:0]p_0_in5_in;
  wire [4:0]p_1_in3_in;
  wire [4:0]p_1_in6_in;
  wire [7:0]sum;
  wire \thermo_s_reg[0] ;
  wire validIn;
  wire \x[0]_i_1_n_0 ;
  wire \x[1]_i_1_n_0 ;
  wire \x[2]_i_1_n_0 ;
  wire \x[3]_i_1_n_0 ;
  wire \x[4]_i_1_n_0 ;
  wire \x[5]_i_1_n_0 ;
  wire \x[5]_i_2_n_0 ;
  wire [5:0]x_in04_out;
  wire [5:0]x_in07_out;
  wire \x_in0_inferred__0/x[10]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[11]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[11]_i_2_n_0 ;
  wire \x_in0_inferred__0/x[6]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[7]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[8]_i_1_n_0 ;
  wire \x_in0_inferred__0/x[9]_i_1_n_0 ;
  wire \x_in0_inferred__1/x[17]_i_2_n_0 ;
  wire \x_in0_inferred__2/x[23]_i_2_n_0 ;
  wire \x_reg_n_0_[0] ;
  wire \x_reg_n_0_[10] ;
  wire \x_reg_n_0_[11] ;
  wire \x_reg_n_0_[12] ;
  wire \x_reg_n_0_[13] ;
  wire \x_reg_n_0_[14] ;
  wire \x_reg_n_0_[15] ;
  wire \x_reg_n_0_[16] ;
  wire \x_reg_n_0_[17] ;
  wire \x_reg_n_0_[18] ;
  wire \x_reg_n_0_[19] ;
  wire \x_reg_n_0_[1] ;
  wire \x_reg_n_0_[2] ;
  wire \x_reg_n_0_[3] ;
  wire \x_reg_n_0_[4] ;
  wire \x_reg_n_0_[5] ;
  wire \x_reg_n_0_[6] ;
  wire \x_reg_n_0_[7] ;
  wire \x_reg_n_0_[8] ;
  wire \x_reg_n_0_[9] ;

  adderTreeLegacy__parameterized2 \RECURSE.NEXT_LEVEL 
       (.D({x_in07_out,x_in04_out,\x_in0_inferred__0/x[11]_i_1_n_0 ,\x_in0_inferred__0/x[10]_i_1_n_0 ,\x_in0_inferred__0/x[9]_i_1_n_0 ,\x_in0_inferred__0/x[8]_i_1_n_0 ,\x_in0_inferred__0/x[7]_i_1_n_0 ,\x_in0_inferred__0/x[6]_i_1_n_0 ,\x[5]_i_1_n_0 ,\x[4]_i_1_n_0 ,\x[3]_i_1_n_0 ,\x[2]_i_1_n_0 ,\x[1]_i_1_n_0 ,\x[0]_i_1_n_0 }),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sum(sum),
        .\thermo_s_reg[0] (\thermo_s_reg[0] ),
        .validIn(validIn));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x[0]_i_1 
       (.I0(\x_reg_n_0_[0] ),
        .I1(\x_reg_n_0_[5] ),
        .O(\x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x[1]_i_1 
       (.I0(\x_reg_n_0_[0] ),
        .I1(\x_reg_n_0_[5] ),
        .I2(\x_reg_n_0_[6] ),
        .I3(\x_reg_n_0_[1] ),
        .O(\x[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x[2]_i_1 
       (.I0(\x_reg_n_0_[5] ),
        .I1(\x_reg_n_0_[0] ),
        .I2(\x_reg_n_0_[1] ),
        .I3(\x_reg_n_0_[6] ),
        .I4(\x_reg_n_0_[7] ),
        .I5(\x_reg_n_0_[2] ),
        .O(\x[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x[3]_i_1 
       (.I0(\x[5]_i_2_n_0 ),
        .I1(\x_reg_n_0_[8] ),
        .I2(\x_reg_n_0_[3] ),
        .O(\x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \x[4]_i_1 
       (.I0(\x[5]_i_2_n_0 ),
        .I1(\x_reg_n_0_[3] ),
        .I2(\x_reg_n_0_[8] ),
        .I3(\x_reg_n_0_[9] ),
        .I4(\x_reg_n_0_[4] ),
        .O(\x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \x[5]_i_1 
       (.I0(\x_reg_n_0_[9] ),
        .I1(\x_reg_n_0_[4] ),
        .I2(\x[5]_i_2_n_0 ),
        .I3(\x_reg_n_0_[3] ),
        .I4(\x_reg_n_0_[8] ),
        .O(\x[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x[5]_i_2 
       (.I0(\x_reg_n_0_[7] ),
        .I1(\x_reg_n_0_[2] ),
        .I2(\x_reg_n_0_[5] ),
        .I3(\x_reg_n_0_[0] ),
        .I4(\x_reg_n_0_[1] ),
        .I5(\x_reg_n_0_[6] ),
        .O(\x[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \x_in0_inferred__0/x[10]_i_1 
       (.I0(\x_in0_inferred__0/x[11]_i_2_n_0 ),
        .I1(\x_reg_n_0_[13] ),
        .I2(\x_reg_n_0_[18] ),
        .I3(\x_reg_n_0_[19] ),
        .I4(\x_reg_n_0_[14] ),
        .O(\x_in0_inferred__0/x[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \x_in0_inferred__0/x[11]_i_1 
       (.I0(\x_reg_n_0_[19] ),
        .I1(\x_reg_n_0_[14] ),
        .I2(\x_in0_inferred__0/x[11]_i_2_n_0 ),
        .I3(\x_reg_n_0_[13] ),
        .I4(\x_reg_n_0_[18] ),
        .O(\x_in0_inferred__0/x[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__0/x[11]_i_2 
       (.I0(\x_reg_n_0_[17] ),
        .I1(\x_reg_n_0_[12] ),
        .I2(\x_reg_n_0_[15] ),
        .I3(\x_reg_n_0_[10] ),
        .I4(\x_reg_n_0_[11] ),
        .I5(\x_reg_n_0_[16] ),
        .O(\x_in0_inferred__0/x[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__0/x[6]_i_1 
       (.I0(\x_reg_n_0_[10] ),
        .I1(\x_reg_n_0_[15] ),
        .O(\x_in0_inferred__0/x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__0/x[7]_i_1 
       (.I0(\x_reg_n_0_[10] ),
        .I1(\x_reg_n_0_[15] ),
        .I2(\x_reg_n_0_[16] ),
        .I3(\x_reg_n_0_[11] ),
        .O(\x_in0_inferred__0/x[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__0/x[8]_i_1 
       (.I0(\x_reg_n_0_[15] ),
        .I1(\x_reg_n_0_[10] ),
        .I2(\x_reg_n_0_[11] ),
        .I3(\x_reg_n_0_[16] ),
        .I4(\x_reg_n_0_[17] ),
        .I5(\x_reg_n_0_[12] ),
        .O(\x_in0_inferred__0/x[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__0/x[9]_i_1 
       (.I0(\x_in0_inferred__0/x[11]_i_2_n_0 ),
        .I1(\x_reg_n_0_[18] ),
        .I2(\x_reg_n_0_[13] ),
        .O(\x_in0_inferred__0/x[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__1/x[12]_i_1 
       (.I0(p_1_in3_in[0]),
        .I1(p_0_in2_in[0]),
        .O(x_in04_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__1/x[13]_i_1 
       (.I0(p_1_in3_in[0]),
        .I1(p_0_in2_in[0]),
        .I2(p_0_in2_in[1]),
        .I3(p_1_in3_in[1]),
        .O(x_in04_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__1/x[14]_i_1 
       (.I0(p_0_in2_in[0]),
        .I1(p_1_in3_in[0]),
        .I2(p_1_in3_in[1]),
        .I3(p_0_in2_in[1]),
        .I4(p_0_in2_in[2]),
        .I5(p_1_in3_in[2]),
        .O(x_in04_out[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__1/x[15]_i_1 
       (.I0(\x_in0_inferred__1/x[17]_i_2_n_0 ),
        .I1(p_0_in2_in[3]),
        .I2(p_1_in3_in[3]),
        .O(x_in04_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \x_in0_inferred__1/x[16]_i_1 
       (.I0(\x_in0_inferred__1/x[17]_i_2_n_0 ),
        .I1(p_1_in3_in[3]),
        .I2(p_0_in2_in[3]),
        .I3(p_0_in2_in[4]),
        .I4(p_1_in3_in[4]),
        .O(x_in04_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \x_in0_inferred__1/x[17]_i_1 
       (.I0(p_0_in2_in[4]),
        .I1(p_1_in3_in[4]),
        .I2(\x_in0_inferred__1/x[17]_i_2_n_0 ),
        .I3(p_1_in3_in[3]),
        .I4(p_0_in2_in[3]),
        .O(x_in04_out[5]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__1/x[17]_i_2 
       (.I0(p_0_in2_in[2]),
        .I1(p_1_in3_in[2]),
        .I2(p_0_in2_in[0]),
        .I3(p_1_in3_in[0]),
        .I4(p_1_in3_in[1]),
        .I5(p_0_in2_in[1]),
        .O(\x_in0_inferred__1/x[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_in0_inferred__2/x[18]_i_1 
       (.I0(p_1_in6_in[0]),
        .I1(p_0_in5_in[0]),
        .O(x_in07_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \x_in0_inferred__2/x[19]_i_1 
       (.I0(p_1_in6_in[0]),
        .I1(p_0_in5_in[0]),
        .I2(p_0_in5_in[1]),
        .I3(p_1_in6_in[1]),
        .O(x_in07_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \x_in0_inferred__2/x[20]_i_1 
       (.I0(p_0_in5_in[0]),
        .I1(p_1_in6_in[0]),
        .I2(p_1_in6_in[1]),
        .I3(p_0_in5_in[1]),
        .I4(p_0_in5_in[2]),
        .I5(p_1_in6_in[2]),
        .O(x_in07_out[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \x_in0_inferred__2/x[21]_i_1 
       (.I0(\x_in0_inferred__2/x[23]_i_2_n_0 ),
        .I1(p_0_in5_in[3]),
        .I2(p_1_in6_in[3]),
        .O(x_in07_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \x_in0_inferred__2/x[22]_i_1 
       (.I0(\x_in0_inferred__2/x[23]_i_2_n_0 ),
        .I1(p_1_in6_in[3]),
        .I2(p_0_in5_in[3]),
        .I3(p_0_in5_in[4]),
        .I4(p_1_in6_in[4]),
        .O(x_in07_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \x_in0_inferred__2/x[23]_i_1 
       (.I0(p_0_in5_in[4]),
        .I1(p_1_in6_in[4]),
        .I2(\x_in0_inferred__2/x[23]_i_2_n_0 ),
        .I3(p_1_in6_in[3]),
        .I4(p_0_in5_in[3]),
        .O(x_in07_out[5]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \x_in0_inferred__2/x[23]_i_2 
       (.I0(p_0_in5_in[2]),
        .I1(p_1_in6_in[2]),
        .I2(p_0_in5_in[0]),
        .I3(p_1_in6_in[0]),
        .I4(p_1_in6_in[1]),
        .I5(p_0_in5_in[1]),
        .O(\x_in0_inferred__2/x[23]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(\x_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(\x_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(\x_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(\x_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(\x_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(\x_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(\x_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(\x_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(\x_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(\x_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(p_1_in3_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(p_1_in3_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(p_1_in3_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(p_1_in3_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[24]),
        .Q(p_1_in3_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[25]),
        .Q(p_0_in2_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[26]),
        .Q(p_0_in2_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[27]),
        .Q(p_0_in2_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[28]),
        .Q(p_0_in2_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[29]),
        .Q(p_0_in2_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\x_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[30]),
        .Q(p_1_in6_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[31]),
        .Q(p_1_in6_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[32]),
        .Q(p_1_in6_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[33]),
        .Q(p_1_in6_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[34]),
        .Q(p_1_in6_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[35]),
        .Q(p_0_in5_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[36]),
        .Q(p_0_in5_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[37]),
        .Q(p_0_in5_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[38]),
        .Q(p_0_in5_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[39]),
        .Q(p_0_in5_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\x_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(\x_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(\x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(\x_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(\x_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(\x_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(\x_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "adderTreeLegacy" *) 
module adderTreeLegacy__parameterized2
   (\thermo_s_reg[0] ,
    sum,
    validIn,
    clk_IBUF_BUFG,
    D);
  output \thermo_s_reg[0] ;
  output [7:0]sum;
  input validIn;
  input clk_IBUF_BUFG;
  input [23:0]D;

  wire [23:0]D;
  wire clk_IBUF_BUFG;
  wire [5:0]p_0_in0_in;
  wire [5:0]p_1_in;
  wire [7:0]sum;
  wire \thermo_s_reg[0] ;
  wire validIn;
  wire \x[10]_i_2_n_0 ;
  wire \x[10]_i_3_n_0 ;
  wire \x[10]_i_4_n_0 ;
  wire \x[10]_i_5_n_0 ;
  wire \x[13]_i_2_n_0 ;
  wire \x[13]_i_3_n_0 ;
  wire \x[3]_i_2_n_0 ;
  wire \x[3]_i_3_n_0 ;
  wire \x[3]_i_4_n_0 ;
  wire \x[3]_i_5_n_0 ;
  wire \x[6]_i_2_n_0 ;
  wire \x[6]_i_3_n_0 ;
  wire [6:0]x_in0;
  wire [6:0]x_in01_out;
  wire \x_reg[10]_i_1_n_0 ;
  wire \x_reg[10]_i_1_n_1 ;
  wire \x_reg[10]_i_1_n_2 ;
  wire \x_reg[10]_i_1_n_3 ;
  wire \x_reg[13]_i_1_n_3 ;
  wire \x_reg[3]_i_1_n_0 ;
  wire \x_reg[3]_i_1_n_1 ;
  wire \x_reg[3]_i_1_n_2 ;
  wire \x_reg[3]_i_1_n_3 ;
  wire \x_reg[6]_i_1_n_3 ;
  wire \x_reg_n_0_[0] ;
  wire \x_reg_n_0_[10] ;
  wire \x_reg_n_0_[11] ;
  wire \x_reg_n_0_[1] ;
  wire \x_reg_n_0_[2] ;
  wire \x_reg_n_0_[3] ;
  wire \x_reg_n_0_[4] ;
  wire \x_reg_n_0_[5] ;
  wire \x_reg_n_0_[6] ;
  wire \x_reg_n_0_[7] ;
  wire \x_reg_n_0_[8] ;
  wire \x_reg_n_0_[9] ;
  wire [3:1]\NLW_x_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_x_reg[13]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_x_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_x_reg[6]_i_1_O_UNCONNECTED ;

  adderTreeLegacy__parameterized3 \RECURSE.NEXT_LEVEL 
       (.D({x_in01_out,x_in0}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sum(sum),
        .\thermo_s_reg[0] (\thermo_s_reg[0] ),
        .validIn(validIn));
  LUT2 #(
    .INIT(4'h6)) 
    \x[10]_i_2 
       (.I0(p_1_in[3]),
        .I1(p_0_in0_in[3]),
        .O(\x[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[10]_i_3 
       (.I0(p_1_in[2]),
        .I1(p_0_in0_in[2]),
        .O(\x[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[10]_i_4 
       (.I0(p_1_in[1]),
        .I1(p_0_in0_in[1]),
        .O(\x[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[10]_i_5 
       (.I0(p_1_in[0]),
        .I1(p_0_in0_in[0]),
        .O(\x[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[13]_i_2 
       (.I0(p_1_in[5]),
        .I1(p_0_in0_in[5]),
        .O(\x[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[13]_i_3 
       (.I0(p_1_in[4]),
        .I1(p_0_in0_in[4]),
        .O(\x[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[3]_i_2 
       (.I0(\x_reg_n_0_[3] ),
        .I1(\x_reg_n_0_[9] ),
        .O(\x[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[3]_i_3 
       (.I0(\x_reg_n_0_[2] ),
        .I1(\x_reg_n_0_[8] ),
        .O(\x[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[3]_i_4 
       (.I0(\x_reg_n_0_[1] ),
        .I1(\x_reg_n_0_[7] ),
        .O(\x[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[3]_i_5 
       (.I0(\x_reg_n_0_[0] ),
        .I1(\x_reg_n_0_[6] ),
        .O(\x[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[6]_i_2 
       (.I0(\x_reg_n_0_[5] ),
        .I1(\x_reg_n_0_[11] ),
        .O(\x[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x[6]_i_3 
       (.I0(\x_reg_n_0_[4] ),
        .I1(\x_reg_n_0_[10] ),
        .O(\x[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(\x_reg_n_0_[10] ),
        .R(1'b0));
  CARRY4 \x_reg[10]_i_1 
       (.CI(1'b0),
        .CO({\x_reg[10]_i_1_n_0 ,\x_reg[10]_i_1_n_1 ,\x_reg[10]_i_1_n_2 ,\x_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_1_in[3:0]),
        .O(x_in01_out[3:0]),
        .S({\x[10]_i_2_n_0 ,\x[10]_i_3_n_0 ,\x[10]_i_4_n_0 ,\x[10]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(\x_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(p_1_in[1]),
        .R(1'b0));
  CARRY4 \x_reg[13]_i_1 
       (.CI(\x_reg[10]_i_1_n_0 ),
        .CO({\NLW_x_reg[13]_i_1_CO_UNCONNECTED [3],x_in01_out[6],\NLW_x_reg[13]_i_1_CO_UNCONNECTED [1],\x_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_1_in[5:4]}),
        .O({\NLW_x_reg[13]_i_1_O_UNCONNECTED [3:2],x_in01_out[5:4]}),
        .S({1'b0,1'b1,\x[13]_i_2_n_0 ,\x[13]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(p_0_in0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(p_0_in0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(p_0_in0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(p_0_in0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(p_0_in0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(p_0_in0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\x_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\x_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \x_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\x_reg[3]_i_1_n_0 ,\x_reg[3]_i_1_n_1 ,\x_reg[3]_i_1_n_2 ,\x_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_reg_n_0_[3] ,\x_reg_n_0_[2] ,\x_reg_n_0_[1] ,\x_reg_n_0_[0] }),
        .O(x_in0[3:0]),
        .S({\x[3]_i_2_n_0 ,\x[3]_i_3_n_0 ,\x[3]_i_4_n_0 ,\x[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(\x_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(\x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(\x_reg_n_0_[6] ),
        .R(1'b0));
  CARRY4 \x_reg[6]_i_1 
       (.CI(\x_reg[3]_i_1_n_0 ),
        .CO({\NLW_x_reg[6]_i_1_CO_UNCONNECTED [3],x_in0[6],\NLW_x_reg[6]_i_1_CO_UNCONNECTED [1],\x_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\x_reg_n_0_[5] ,\x_reg_n_0_[4] }),
        .O({\NLW_x_reg[6]_i_1_O_UNCONNECTED [3:2],x_in0[5:4]}),
        .S({1'b0,1'b1,\x[6]_i_2_n_0 ,\x[6]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(\x_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(\x_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(\x_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "adderTreeLegacy" *) 
module adderTreeLegacy__parameterized3
   (\thermo_s_reg[0] ,
    sum,
    validIn,
    clk_IBUF_BUFG,
    D);
  output \thermo_s_reg[0] ;
  output [7:0]sum;
  input validIn;
  input clk_IBUF_BUFG;
  input [13:0]D;

  wire [13:0]D;
  wire clk_IBUF_BUFG;
  wire \ones[3]_i_2_n_0 ;
  wire \ones[3]_i_3_n_0 ;
  wire \ones[3]_i_4_n_0 ;
  wire \ones[3]_i_5_n_0 ;
  wire \ones[7]_i_2_n_0 ;
  wire \ones[7]_i_3_n_0 ;
  wire \ones[7]_i_4_n_0 ;
  wire \ones_reg[3]_i_1_n_0 ;
  wire \ones_reg[3]_i_1_n_1 ;
  wire \ones_reg[3]_i_1_n_2 ;
  wire \ones_reg[3]_i_1_n_3 ;
  wire \ones_reg[7]_i_1_n_2 ;
  wire \ones_reg[7]_i_1_n_3 ;
  wire [6:0]p_0_in;
  wire [7:0]sum;
  wire \thermo_s_reg[0] ;
  wire validIn;
  wire \x_reg_n_0_[0] ;
  wire \x_reg_n_0_[1] ;
  wire \x_reg_n_0_[2] ;
  wire \x_reg_n_0_[3] ;
  wire \x_reg_n_0_[4] ;
  wire \x_reg_n_0_[5] ;
  wire \x_reg_n_0_[6] ;
  wire [2:2]\NLW_ones_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ones_reg[7]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \ones[3]_i_2 
       (.I0(\x_reg_n_0_[3] ),
        .I1(p_0_in[3]),
        .O(\ones[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ones[3]_i_3 
       (.I0(\x_reg_n_0_[2] ),
        .I1(p_0_in[2]),
        .O(\ones[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ones[3]_i_4 
       (.I0(\x_reg_n_0_[1] ),
        .I1(p_0_in[1]),
        .O(\ones[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ones[3]_i_5 
       (.I0(\x_reg_n_0_[0] ),
        .I1(p_0_in[0]),
        .O(\ones[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ones[7]_i_2 
       (.I0(\x_reg_n_0_[6] ),
        .I1(p_0_in[6]),
        .O(\ones[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ones[7]_i_3 
       (.I0(\x_reg_n_0_[5] ),
        .I1(p_0_in[5]),
        .O(\ones[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ones[7]_i_4 
       (.I0(\x_reg_n_0_[4] ),
        .I1(p_0_in[4]),
        .O(\ones[7]_i_4_n_0 ));
  CARRY4 \ones_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\ones_reg[3]_i_1_n_0 ,\ones_reg[3]_i_1_n_1 ,\ones_reg[3]_i_1_n_2 ,\ones_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\x_reg_n_0_[3] ,\x_reg_n_0_[2] ,\x_reg_n_0_[1] ,\x_reg_n_0_[0] }),
        .O(sum[3:0]),
        .S({\ones[3]_i_2_n_0 ,\ones[3]_i_3_n_0 ,\ones[3]_i_4_n_0 ,\ones[3]_i_5_n_0 }));
  CARRY4 \ones_reg[7]_i_1 
       (.CI(\ones_reg[3]_i_1_n_0 ),
        .CO({sum[7],\NLW_ones_reg[7]_i_1_CO_UNCONNECTED [2],\ones_reg[7]_i_1_n_2 ,\ones_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\x_reg_n_0_[6] ,\x_reg_n_0_[5] ,\x_reg_n_0_[4] }),
        .O({\NLW_ones_reg[7]_i_1_O_UNCONNECTED [3],sum[6:4]}),
        .S({1'b1,\ones[7]_i_2_n_0 ,\ones[7]_i_3_n_0 ,\ones[7]_i_4_n_0 }));
  (* srl_name = "\\TDCv2/encoder/Adder_tree/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/valid_reg_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    valid_reg_srl5
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(validIn),
        .Q(\thermo_s_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(\x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(\x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(\x_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(\x_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(\x_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(\x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(\x_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(p_0_in[2]),
        .R(1'b0));
endmodule

module address_decoder
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    E,
    bus2ip_rnw_i_reg,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg_0,
    D,
    Q,
    s_axi_aclk,
    \Dual.gpio_OE_reg[0] ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30] ,
    s_axi_aresetn,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    ip2bus_rdack_i_D1,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    ip2bus_wrack_i_D1,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ,
    reg3,
    reg1);
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg_0;
  output [2:0]D;
  input Q;
  input s_axi_aclk;
  input [2:0]\Dual.gpio_OE_reg[0] ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30] ;
  input s_axi_aresetn;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input ip2bus_rdack_i_D1;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input [3:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input ip2bus_wrack_i_D1;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  input [1:0]reg3;
  input [1:0]reg1;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire [2:0]D;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30] ;
  wire [2:0]\Dual.gpio_OE_reg[0] ;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire [3:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  wire Q;
  wire [0:3]bus2ip_rdce;
  wire [0:0]bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire [1:0]reg1;
  wire [1:0]reg3;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30] ),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3[31]_i_1 
       (.I0(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30] ),
        .I1(GPIO_xferAck_i),
        .I2(gpio_xferAck_Reg),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(bus2ip_rnw_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \Dual.gpio2_Data_Out[1]_i_1 
       (.I0(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30] ),
        .I1(\Dual.gpio_OE_reg[0] [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(\Dual.gpio_OE_reg[0] [0]),
        .I4(\Dual.gpio_OE_reg[0] [1]),
        .O(bus2ip_rnw_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \Dual.gpio_OE[0]_i_1 
       (.I0(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30] ),
        .I1(\Dual.gpio_OE_reg[0] [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(\Dual.gpio_OE_reg[0] [1]),
        .I4(\Dual.gpio_OE_reg[0] [0]),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\Dual.gpio_OE_reg[0] [0]),
        .I1(\Dual.gpio_OE_reg[0] [1]),
        .O(ce_expnd_i_2));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\Dual.gpio_OE_reg[0] [1]),
        .I1(\Dual.gpio_OE_reg[0] [0]),
        .O(ce_expnd_i_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\Dual.gpio_OE_reg[0] [1:0]),
        .ce_expnd_i_3(ce_expnd_i_3));
  pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\Dual.gpio_OE_reg[0] [1:0]),
        .ce_expnd_i_1(ce_expnd_i_1));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001400)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0005054A0000054A)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(bus2ip_rdce[3]),
        .I1(reg3[1]),
        .I2(bus2ip_rdce[2]),
        .I3(bus2ip_rdce[1]),
        .I4(bus2ip_rdce[0]),
        .I5(reg1[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ip2bus_data_i_D1[30]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_rdce[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ip2bus_data_i_D1[30]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_rdce[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ip2bus_data_i_D1[30]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_rdce[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ip2bus_data_i_D1[30]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_rdce[0]));
  LUT6 #(
    .INIT(64'h0005054A0000054A)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(bus2ip_rdce[3]),
        .I1(reg3[0]),
        .I2(bus2ip_rdce[2]),
        .I3(bus2ip_rdce[1]),
        .I4(bus2ip_rdce[0]),
        .I5(reg1[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I5(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [3]),
        .I5(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 [0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* C_ALL_INPUTS = "1" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "0" *) 
(* C_ALL_OUTPUTS_2 = "1" *) (* C_DOUT_DEFAULT = "32'b00000000000000000000000000000000" *) (* C_DOUT_DEFAULT_2 = "32'b00000000000000000000000000000000" *) 
(* C_FAMILY = "zynq" *) (* C_GPIO2_WIDTH = "2" *) (* C_GPIO_WIDTH = "2" *) 
(* C_INTERRUPT_PRESENT = "0" *) (* C_IS_DUAL = "1" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "32'b11111111111111111111111111111111" *) (* C_TRI_DEFAULT_2 = "32'b11111111111111111111111111111111" *) 
(* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [1:0]gpio_io_i;
  output [1:0]gpio_io_o;
  output [1:0]gpio_io_t;
  input [1:0]gpio2_io_i;
  output [1:0]gpio2_io_o;
  output [1:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_12;
  wire AXI_LITE_IPIF_I_n_8;
  wire AXI_LITE_IPIF_I_n_9;
  wire GPIO_xferAck_i;
  wire [0:6]bus2ip_addr;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [0:0]\^gpio2_io_o ;
  wire [1:0]gpio_io_i;
  wire gpio_xferAck_Reg;
  wire [0:31]ip2bus_data;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire [30:31]reg1;
  wire [30:31]reg3;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [30:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  assign gpio2_io_o[1] = \<const0> ;
  assign gpio2_io_o[0] = \^gpio2_io_o [0];
  assign gpio2_io_t[1] = \<const0> ;
  assign gpio2_io_t[0] = \<const0> ;
  assign gpio_io_o[1] = \<const0> ;
  assign gpio_io_o[0] = \<const0> ;
  assign gpio_io_t[1] = \<const0> ;
  assign gpio_io_t[0] = \<const0> ;
  assign ip2intc_irpt = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [30];
  assign s_axi_rdata[30] = \^s_axi_rdata [30];
  assign s_axi_rdata[29] = \^s_axi_rdata [30];
  assign s_axi_rdata[28] = \^s_axi_rdata [30];
  assign s_axi_rdata[27] = \^s_axi_rdata [30];
  assign s_axi_rdata[26] = \^s_axi_rdata [30];
  assign s_axi_rdata[25] = \^s_axi_rdata [30];
  assign s_axi_rdata[24] = \^s_axi_rdata [30];
  assign s_axi_rdata[23] = \^s_axi_rdata [30];
  assign s_axi_rdata[22] = \^s_axi_rdata [30];
  assign s_axi_rdata[21] = \^s_axi_rdata [30];
  assign s_axi_rdata[20] = \^s_axi_rdata [30];
  assign s_axi_rdata[19] = \^s_axi_rdata [30];
  assign s_axi_rdata[18] = \^s_axi_rdata [30];
  assign s_axi_rdata[17] = \^s_axi_rdata [30];
  assign s_axi_rdata[16] = \^s_axi_rdata [30];
  assign s_axi_rdata[15] = \^s_axi_rdata [30];
  assign s_axi_rdata[14] = \^s_axi_rdata [30];
  assign s_axi_rdata[13] = \^s_axi_rdata [30];
  assign s_axi_rdata[12] = \^s_axi_rdata [30];
  assign s_axi_rdata[11] = \^s_axi_rdata [30];
  assign s_axi_rdata[10] = \^s_axi_rdata [30];
  assign s_axi_rdata[9] = \^s_axi_rdata [30];
  assign s_axi_rdata[8] = \^s_axi_rdata [30];
  assign s_axi_rdata[7] = \^s_axi_rdata [30];
  assign s_axi_rdata[6] = \^s_axi_rdata [30];
  assign s_axi_rdata[5] = \^s_axi_rdata [30];
  assign s_axi_rdata[4] = \^s_axi_rdata [30];
  assign s_axi_rdata[3] = \^s_axi_rdata [30];
  assign s_axi_rdata[2] = \^s_axi_rdata [30];
  assign s_axi_rdata[1:0] = \^s_axi_rdata [1:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  axi_lite_ipif AXI_LITE_IPIF_I
       (.D({ip2bus_data[0],ip2bus_data[30],ip2bus_data[31]}),
        .E(AXI_LITE_IPIF_I_n_8),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({bus2ip_addr[0],bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_9),
        .bus2ip_rnw_i_reg_0(AXI_LITE_IPIF_I_n_12),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(s_axi_arready),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(s_axi_awready),
        .reg1({reg1[30],reg1[31]}),
        .reg3({reg3[30],reg3[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8],s_axi_araddr[3:2]}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8],s_axi_awaddr[3:2]}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [30],\^s_axi_rdata [1:0]}),
        .\s_axi_rdata_i_reg[31] ({ip2bus_data_i_D1[0],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  GPIO_Core gpio_core_1
       (.\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0 (AXI_LITE_IPIF_I_n_12),
        .\Dual.gpio2_Data_Out_reg[0]_0 (AXI_LITE_IPIF_I_n_9),
        .E(AXI_LITE_IPIF_I_n_8),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({bus2ip_addr[0],bus2ip_addr[5],bus2ip_addr[6]}),
        .SR(bus2ip_reset),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio2_io_o(\^gpio2_io_o ),
        .gpio_io_i(gpio_io_i),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .reg1({reg1[30],reg1[31]}),
        .reg3({reg3[30],reg3[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[1:0]));
  FDRE #(
    .INIT(1'b0)) 
    \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[0]),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

(* CHECK_LICENSE_TYPE = "axi_gpio_0,axi_gpio,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_gpio,Vivado 2023.2" *) 
module axi_gpio_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio2_io_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [1:0]gpio_io_i;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) output [1:0]gpio2_io_o;

  wire \<const0> ;
  wire [0:0]\^gpio2_io_o ;
  wire [1:0]gpio_io_i;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire NLW_U0_ip2intc_irpt_UNCONNECTED;
  wire [1:1]NLW_U0_gpio2_io_o_UNCONNECTED;
  wire [1:0]NLW_U0_gpio2_io_t_UNCONNECTED;
  wire [1:0]NLW_U0_gpio_io_o_UNCONNECTED;
  wire [1:0]NLW_U0_gpio_io_t_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign gpio2_io_o[1] = \<const0> ;
  assign gpio2_io_o[0] = \^gpio2_io_o [0];
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ALL_INPUTS = "1" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "0" *) 
  (* C_ALL_OUTPUTS_2 = "1" *) 
  (* C_DOUT_DEFAULT = "32'b00000000000000000000000000000000" *) 
  (* C_DOUT_DEFAULT_2 = "32'b00000000000000000000000000000000" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPIO2_WIDTH = "2" *) 
  (* C_GPIO_WIDTH = "2" *) 
  (* C_INTERRUPT_PRESENT = "0" *) 
  (* C_IS_DUAL = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "32'b11111111111111111111111111111111" *) 
  (* C_TRI_DEFAULT_2 = "32'b11111111111111111111111111111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  axi_gpio U0
       (.gpio2_io_i({1'b0,1'b0}),
        .gpio2_io_o({NLW_U0_gpio2_io_o_UNCONNECTED[1],\^gpio2_io_o }),
        .gpio2_io_t(NLW_U0_gpio2_io_t_UNCONNECTED[1:0]),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(NLW_U0_gpio_io_o_UNCONNECTED[1:0]),
        .gpio_io_t(NLW_U0_gpio_io_t_UNCONNECTED[1:0]),
        .ip2intc_irpt(NLW_U0_ip2intc_irpt_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8],1'b0,1'b0,1'b0,1'b0,s_axi_araddr[3:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8],1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[3:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[1:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module axi_lite_ipif
   (bus2ip_reset,
    Q,
    bus2ip_rnw,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    bus2ip_cs,
    E,
    bus2ip_rnw_i_reg,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg_0,
    s_axi_rdata,
    D,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[31] ,
    reg3,
    reg1,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset;
  output [2:0]Q;
  output bus2ip_rnw;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output bus2ip_cs;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg_0;
  output [2:0]s_axi_rdata;
  output [2:0]D;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [2:0]\s_axi_rdata_i_reg[31] ;
  input [1:0]reg3;
  input [1:0]reg1;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire [2:0]D;
  wire [0:0]E;
  wire GPIO_xferAck_i;
  wire [2:0]Q;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [0:0]bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire [1:0]reg1;
  wire [1:0]reg3;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [2:0]s_axi_rdata;
  wire [2:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire s_axi_wvalid;

  slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (bus2ip_cs),
        .Q(Q),
        .SR(bus2ip_reset),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw),
        .bus2ip_rnw_i_reg_1(bus2ip_rnw_i_reg),
        .bus2ip_rnw_i_reg_2(bus2ip_rnw_i_reg_0),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .reg1(reg1),
        .reg3(reg3),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module cdc_sync
   (scndry_vect_out,
    gpio_io_i,
    s_axi_aclk);
  output [1:0]scndry_vect_out;
  input [1:0]gpio_io_i;
  input s_axi_aclk;

  wire \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ;
  wire [1:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 ;
  wire [1:0]\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 ;
  wire Q;
  wire [1:0]gpio_io_i;
  wire s_axi_aclk;
  wire [1:0]scndry_vect_out;

  initial assign \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 .notifier = 1'bx;
(* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [0]),
        .R(1'b0));
  initial assign \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 .notifier = 1'bx;
(* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [1]),
        .R(1'b0));
  initial assign \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 .notifier = 1'bx;
(* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [0]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [0]),
        .R(1'b0));
  initial assign \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 .notifier = 1'bx;
(* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d2 [1]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [1]),
        .R(1'b0));
  initial assign \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 .notifier = 1'bx;
(* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [0]),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  initial assign \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 .notifier = 1'bx;
(* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.s_level_out_bus_d3 [1]),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  initial assign \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to .notifier = 1'bx;
(* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[0]),
        .Q(Q),
        .R(1'b0));
  initial assign \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to .notifier = 1'bx;
(* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[1]),
        .Q(\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to_n_0 ),
        .R(1'b0));
endmodule

module control2
   (data,
    fifo_empty,
    fifo_prog_full,
    asyn,
    \FSM_onehot_state_reg[1]_0 ,
    syn,
    clk_IBUF_BUFG,
    rd_clk,
    din,
    rd_en,
    validOut);
  output [63:0]data;
  output fifo_empty;
  output fifo_prog_full;
  output asyn;
  output \FSM_onehot_state_reg[1]_0 ;
  input syn;
  input clk_IBUF_BUFG;
  input rd_clk;
  input [63:0]din;
  input rd_en;
  input validOut;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire asyn;
  wire clk_IBUF_BUFG;
  wire [63:0]data;
  wire [63:0]din;
  wire fifo_empty;
  wire fifo_full;
  wire fifo_prog_full;
  wire fifo_write_en__0;
  wire overflow_reg_i_1_n_0;
  wire rd_clk;
  wire rd_en;
  wire syn;
  wire validOut;

  LUT6 #(
    .INIT(64'hFCECECECE8E8E8E8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(syn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(fifo_full),
        .I4(validOut),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABBBBBBA2A2A2A2)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(syn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(fifo_full),
        .I4(validOut),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3332323210101010)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(syn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(fifo_full),
        .I4(validOut),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RUNNING:010,OVERFLOW:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RUNNING:010,OVERFLOW:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[1]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RUNNING:010,OVERFLOW:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "timestamp_short_fifo,fifo_generator_v13_2_9,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
  timestamp_short_fifo fifo_inst
       (.din(din),
        .dout(data),
        .empty(fifo_empty),
        .full(fifo_full),
        .prog_full(fifo_prog_full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(syn),
        .wr_clk(clk_IBUF_BUFG),
        .wr_en(fifo_write_en__0));
  LUT3 #(
    .INIT(8'h20)) 
    fifo_write_en
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(fifo_full),
        .I2(validOut),
        .O(fifo_write_en__0));
  LUT3 #(
    .INIT(8'hF4)) 
    overflow_reg_i_1
       (.I0(syn),
        .I1(asyn),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(overflow_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    overflow_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(overflow_reg_i_1_n_0),
        .Q(asyn),
        .R(1'b0));
endmodule

module counter
   (out,
    clk_IBUF_BUFG);
  output [55:0]out;
  input clk_IBUF_BUFG;

  wire clk_IBUF_BUFG;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_0 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[32]_i_1_n_0 ;
  wire \count_reg[32]_i_1_n_1 ;
  wire \count_reg[32]_i_1_n_2 ;
  wire \count_reg[32]_i_1_n_3 ;
  wire \count_reg[32]_i_1_n_4 ;
  wire \count_reg[32]_i_1_n_5 ;
  wire \count_reg[32]_i_1_n_6 ;
  wire \count_reg[32]_i_1_n_7 ;
  wire \count_reg[36]_i_1_n_0 ;
  wire \count_reg[36]_i_1_n_1 ;
  wire \count_reg[36]_i_1_n_2 ;
  wire \count_reg[36]_i_1_n_3 ;
  wire \count_reg[36]_i_1_n_4 ;
  wire \count_reg[36]_i_1_n_5 ;
  wire \count_reg[36]_i_1_n_6 ;
  wire \count_reg[36]_i_1_n_7 ;
  wire \count_reg[40]_i_1_n_0 ;
  wire \count_reg[40]_i_1_n_1 ;
  wire \count_reg[40]_i_1_n_2 ;
  wire \count_reg[40]_i_1_n_3 ;
  wire \count_reg[40]_i_1_n_4 ;
  wire \count_reg[40]_i_1_n_5 ;
  wire \count_reg[40]_i_1_n_6 ;
  wire \count_reg[40]_i_1_n_7 ;
  wire \count_reg[44]_i_1_n_0 ;
  wire \count_reg[44]_i_1_n_1 ;
  wire \count_reg[44]_i_1_n_2 ;
  wire \count_reg[44]_i_1_n_3 ;
  wire \count_reg[44]_i_1_n_4 ;
  wire \count_reg[44]_i_1_n_5 ;
  wire \count_reg[44]_i_1_n_6 ;
  wire \count_reg[44]_i_1_n_7 ;
  wire \count_reg[48]_i_1_n_0 ;
  wire \count_reg[48]_i_1_n_1 ;
  wire \count_reg[48]_i_1_n_2 ;
  wire \count_reg[48]_i_1_n_3 ;
  wire \count_reg[48]_i_1_n_4 ;
  wire \count_reg[48]_i_1_n_5 ;
  wire \count_reg[48]_i_1_n_6 ;
  wire \count_reg[48]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[52]_i_1_n_1 ;
  wire \count_reg[52]_i_1_n_2 ;
  wire \count_reg[52]_i_1_n_3 ;
  wire \count_reg[52]_i_1_n_4 ;
  wire \count_reg[52]_i_1_n_5 ;
  wire \count_reg[52]_i_1_n_6 ;
  wire \count_reg[52]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [55:0]out;
  wire [3:3]\NLW_count_reg[52]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(out[0]),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(out[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({out[3:1],\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(out[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(out[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(out[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(out[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(out[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(out[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(out[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(out[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(out[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(out[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(out[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(out[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(out[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(out[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(out[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(out[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(out[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(out[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\count_reg[28]_i_1_n_0 ,\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(out[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(out[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(out[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(out[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[32]_i_1_n_7 ),
        .Q(out[32]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[32]_i_1 
       (.CI(\count_reg[28]_i_1_n_0 ),
        .CO({\count_reg[32]_i_1_n_0 ,\count_reg[32]_i_1_n_1 ,\count_reg[32]_i_1_n_2 ,\count_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[32]_i_1_n_4 ,\count_reg[32]_i_1_n_5 ,\count_reg[32]_i_1_n_6 ,\count_reg[32]_i_1_n_7 }),
        .S(out[35:32]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[32]_i_1_n_6 ),
        .Q(out[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[32]_i_1_n_5 ),
        .Q(out[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[32]_i_1_n_4 ),
        .Q(out[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[36]_i_1_n_7 ),
        .Q(out[36]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[36]_i_1 
       (.CI(\count_reg[32]_i_1_n_0 ),
        .CO({\count_reg[36]_i_1_n_0 ,\count_reg[36]_i_1_n_1 ,\count_reg[36]_i_1_n_2 ,\count_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[36]_i_1_n_4 ,\count_reg[36]_i_1_n_5 ,\count_reg[36]_i_1_n_6 ,\count_reg[36]_i_1_n_7 }),
        .S(out[39:36]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[36]_i_1_n_6 ),
        .Q(out[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[36]_i_1_n_5 ),
        .Q(out[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[36]_i_1_n_4 ),
        .Q(out[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[40]_i_1_n_7 ),
        .Q(out[40]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[40]_i_1 
       (.CI(\count_reg[36]_i_1_n_0 ),
        .CO({\count_reg[40]_i_1_n_0 ,\count_reg[40]_i_1_n_1 ,\count_reg[40]_i_1_n_2 ,\count_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[40]_i_1_n_4 ,\count_reg[40]_i_1_n_5 ,\count_reg[40]_i_1_n_6 ,\count_reg[40]_i_1_n_7 }),
        .S(out[43:40]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[40]_i_1_n_6 ),
        .Q(out[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[40]_i_1_n_5 ),
        .Q(out[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[40]_i_1_n_4 ),
        .Q(out[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[44]_i_1_n_7 ),
        .Q(out[44]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[44]_i_1 
       (.CI(\count_reg[40]_i_1_n_0 ),
        .CO({\count_reg[44]_i_1_n_0 ,\count_reg[44]_i_1_n_1 ,\count_reg[44]_i_1_n_2 ,\count_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[44]_i_1_n_4 ,\count_reg[44]_i_1_n_5 ,\count_reg[44]_i_1_n_6 ,\count_reg[44]_i_1_n_7 }),
        .S(out[47:44]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[44]_i_1_n_6 ),
        .Q(out[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[44]_i_1_n_5 ),
        .Q(out[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[44]_i_1_n_4 ),
        .Q(out[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[48]_i_1_n_7 ),
        .Q(out[48]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[48]_i_1 
       (.CI(\count_reg[44]_i_1_n_0 ),
        .CO({\count_reg[48]_i_1_n_0 ,\count_reg[48]_i_1_n_1 ,\count_reg[48]_i_1_n_2 ,\count_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[48]_i_1_n_4 ,\count_reg[48]_i_1_n_5 ,\count_reg[48]_i_1_n_6 ,\count_reg[48]_i_1_n_7 }),
        .S(out[51:48]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[48]_i_1_n_6 ),
        .Q(out[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(out[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(out[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[48]_i_1_n_5 ),
        .Q(out[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[48]_i_1_n_4 ),
        .Q(out[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[52]_i_1_n_7 ),
        .Q(out[52]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[52]_i_1 
       (.CI(\count_reg[48]_i_1_n_0 ),
        .CO({\NLW_count_reg[52]_i_1_CO_UNCONNECTED [3],\count_reg[52]_i_1_n_1 ,\count_reg[52]_i_1_n_2 ,\count_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[52]_i_1_n_4 ,\count_reg[52]_i_1_n_5 ,\count_reg[52]_i_1_n_6 ,\count_reg[52]_i_1_n_7 }),
        .S(out[55:52]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[52]_i_1_n_6 ),
        .Q(out[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[52]_i_1_n_5 ),
        .Q(out[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[52]_i_1_n_4 ),
        .Q(out[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(out[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(out[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(out[9]),
        .R(1'b0));
endmodule

module delayLine
   (Q,
    validIn,
    clk_IBUF_BUFG,
    hit_IBUF);
  output [191:0]Q;
  output validIn;
  input clk_IBUF_BUFG;
  input hit_IBUF;

  wire CI;
  wire [3:0]CO;
  wire CYINIT;
  wire \GEN_CarryChain[10].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[10].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[10].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[10].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[11].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[11].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[11].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[11].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[12].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[12].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[12].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[12].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[13].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[13].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[13].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[13].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[14].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[14].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[14].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[14].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[15].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[15].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[15].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[15].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[16].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[16].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[16].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[16].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[17].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[17].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[17].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[17].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[18].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[18].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[18].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[18].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[19].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[19].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[19].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[19].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[1].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[1].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[1].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[1].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[20].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[20].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[20].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[20].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[21].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[21].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[21].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[21].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[22].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[22].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[22].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[22].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[23].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[23].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[23].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[23].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[24].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[24].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[24].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[24].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[25].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[25].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[25].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[25].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[26].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[26].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[26].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[26].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[27].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[27].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[27].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[27].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[28].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[28].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[28].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[28].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[29].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[29].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[29].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[29].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[2].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[2].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[2].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[2].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[30].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[30].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[30].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[30].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[31].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[31].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[31].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[31].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[32].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[32].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[32].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[32].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[33].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[33].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[33].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[33].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[34].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[34].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[34].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[34].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[35].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[35].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[35].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[35].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[36].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[36].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[36].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[36].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[37].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[37].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[37].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[37].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[38].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[38].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[38].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[38].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[39].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[39].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[39].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[39].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[3].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[3].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[3].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[3].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[40].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[40].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[40].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[40].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[41].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[41].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[41].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[41].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[42].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[42].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[42].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[42].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[43].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[43].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[43].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[43].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[44].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[44].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[44].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[44].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[45].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[45].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[45].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[45].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[46].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[46].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[46].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[46].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[4].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[4].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[4].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[4].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[5].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[5].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[5].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[5].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[6].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[6].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[6].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[6].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[7].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[7].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[7].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[7].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[8].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[8].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[8].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[8].CARRY4_inst_n_3 ;
  wire \GEN_CarryChain[9].CARRY4_inst_n_0 ;
  wire \GEN_CarryChain[9].CARRY4_inst_n_1 ;
  wire \GEN_CarryChain[9].CARRY4_inst_n_2 ;
  wire \GEN_CarryChain[9].CARRY4_inst_n_3 ;
  wire [191:0]Q;
  wire clk_IBUF_BUFG;
  wire firstCarry_n_1;
  wire firstCarry_n_2;
  wire firstCarry_n_3;
  wire hitQ2;
  wire hit_IBUF;
  wire [191:0]metaThermo;
  wire validIn;
  wire [3:0]\NLW_GEN_CarryChain[10].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[11].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[12].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[13].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[14].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[15].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[16].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[17].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[18].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[19].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[1].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[20].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[21].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[22].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[23].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[24].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[25].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[26].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[27].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[28].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[29].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[2].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[30].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[31].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[32].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[33].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[34].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[35].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[36].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[37].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[38].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[39].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[3].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[40].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[41].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[42].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[43].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[44].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[45].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[46].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[47].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[4].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[5].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[6].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[7].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[8].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_CarryChain[9].CARRY4_inst_O_UNCONNECTED ;
  wire [3:0]NLW_firstCarry_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[10].CARRY4_inst 
       (.CI(\GEN_CarryChain[9].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[10].CARRY4_inst_n_0 ,\GEN_CarryChain[10].CARRY4_inst_n_1 ,\GEN_CarryChain[10].CARRY4_inst_n_2 ,\GEN_CarryChain[10].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[10].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[11].CARRY4_inst 
       (.CI(\GEN_CarryChain[10].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[11].CARRY4_inst_n_0 ,\GEN_CarryChain[11].CARRY4_inst_n_1 ,\GEN_CarryChain[11].CARRY4_inst_n_2 ,\GEN_CarryChain[11].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[11].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[12].CARRY4_inst 
       (.CI(\GEN_CarryChain[11].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[12].CARRY4_inst_n_0 ,\GEN_CarryChain[12].CARRY4_inst_n_1 ,\GEN_CarryChain[12].CARRY4_inst_n_2 ,\GEN_CarryChain[12].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[12].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[13].CARRY4_inst 
       (.CI(\GEN_CarryChain[12].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[13].CARRY4_inst_n_0 ,\GEN_CarryChain[13].CARRY4_inst_n_1 ,\GEN_CarryChain[13].CARRY4_inst_n_2 ,\GEN_CarryChain[13].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[13].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[14].CARRY4_inst 
       (.CI(\GEN_CarryChain[13].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[14].CARRY4_inst_n_0 ,\GEN_CarryChain[14].CARRY4_inst_n_1 ,\GEN_CarryChain[14].CARRY4_inst_n_2 ,\GEN_CarryChain[14].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[14].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[15].CARRY4_inst 
       (.CI(\GEN_CarryChain[14].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[15].CARRY4_inst_n_0 ,\GEN_CarryChain[15].CARRY4_inst_n_1 ,\GEN_CarryChain[15].CARRY4_inst_n_2 ,\GEN_CarryChain[15].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[15].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[16].CARRY4_inst 
       (.CI(\GEN_CarryChain[15].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[16].CARRY4_inst_n_0 ,\GEN_CarryChain[16].CARRY4_inst_n_1 ,\GEN_CarryChain[16].CARRY4_inst_n_2 ,\GEN_CarryChain[16].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[16].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[17].CARRY4_inst 
       (.CI(\GEN_CarryChain[16].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[17].CARRY4_inst_n_0 ,\GEN_CarryChain[17].CARRY4_inst_n_1 ,\GEN_CarryChain[17].CARRY4_inst_n_2 ,\GEN_CarryChain[17].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[17].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[18].CARRY4_inst 
       (.CI(\GEN_CarryChain[17].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[18].CARRY4_inst_n_0 ,\GEN_CarryChain[18].CARRY4_inst_n_1 ,\GEN_CarryChain[18].CARRY4_inst_n_2 ,\GEN_CarryChain[18].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[18].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[19].CARRY4_inst 
       (.CI(\GEN_CarryChain[18].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[19].CARRY4_inst_n_0 ,\GEN_CarryChain[19].CARRY4_inst_n_1 ,\GEN_CarryChain[19].CARRY4_inst_n_2 ,\GEN_CarryChain[19].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[19].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[1].CARRY4_inst 
       (.CI(CI),
        .CO({\GEN_CarryChain[1].CARRY4_inst_n_0 ,\GEN_CarryChain[1].CARRY4_inst_n_1 ,\GEN_CarryChain[1].CARRY4_inst_n_2 ,\GEN_CarryChain[1].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[1].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[20].CARRY4_inst 
       (.CI(\GEN_CarryChain[19].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[20].CARRY4_inst_n_0 ,\GEN_CarryChain[20].CARRY4_inst_n_1 ,\GEN_CarryChain[20].CARRY4_inst_n_2 ,\GEN_CarryChain[20].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[20].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[21].CARRY4_inst 
       (.CI(\GEN_CarryChain[20].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[21].CARRY4_inst_n_0 ,\GEN_CarryChain[21].CARRY4_inst_n_1 ,\GEN_CarryChain[21].CARRY4_inst_n_2 ,\GEN_CarryChain[21].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[21].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[22].CARRY4_inst 
       (.CI(\GEN_CarryChain[21].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[22].CARRY4_inst_n_0 ,\GEN_CarryChain[22].CARRY4_inst_n_1 ,\GEN_CarryChain[22].CARRY4_inst_n_2 ,\GEN_CarryChain[22].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[22].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[23].CARRY4_inst 
       (.CI(\GEN_CarryChain[22].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[23].CARRY4_inst_n_0 ,\GEN_CarryChain[23].CARRY4_inst_n_1 ,\GEN_CarryChain[23].CARRY4_inst_n_2 ,\GEN_CarryChain[23].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[23].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[24].CARRY4_inst 
       (.CI(\GEN_CarryChain[23].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[24].CARRY4_inst_n_0 ,\GEN_CarryChain[24].CARRY4_inst_n_1 ,\GEN_CarryChain[24].CARRY4_inst_n_2 ,\GEN_CarryChain[24].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[24].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[25].CARRY4_inst 
       (.CI(\GEN_CarryChain[24].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[25].CARRY4_inst_n_0 ,\GEN_CarryChain[25].CARRY4_inst_n_1 ,\GEN_CarryChain[25].CARRY4_inst_n_2 ,\GEN_CarryChain[25].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[25].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[26].CARRY4_inst 
       (.CI(\GEN_CarryChain[25].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[26].CARRY4_inst_n_0 ,\GEN_CarryChain[26].CARRY4_inst_n_1 ,\GEN_CarryChain[26].CARRY4_inst_n_2 ,\GEN_CarryChain[26].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[26].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[27].CARRY4_inst 
       (.CI(\GEN_CarryChain[26].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[27].CARRY4_inst_n_0 ,\GEN_CarryChain[27].CARRY4_inst_n_1 ,\GEN_CarryChain[27].CARRY4_inst_n_2 ,\GEN_CarryChain[27].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[27].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[28].CARRY4_inst 
       (.CI(\GEN_CarryChain[27].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[28].CARRY4_inst_n_0 ,\GEN_CarryChain[28].CARRY4_inst_n_1 ,\GEN_CarryChain[28].CARRY4_inst_n_2 ,\GEN_CarryChain[28].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[28].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[29].CARRY4_inst 
       (.CI(\GEN_CarryChain[28].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[29].CARRY4_inst_n_0 ,\GEN_CarryChain[29].CARRY4_inst_n_1 ,\GEN_CarryChain[29].CARRY4_inst_n_2 ,\GEN_CarryChain[29].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[29].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[2].CARRY4_inst 
       (.CI(\GEN_CarryChain[1].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[2].CARRY4_inst_n_0 ,\GEN_CarryChain[2].CARRY4_inst_n_1 ,\GEN_CarryChain[2].CARRY4_inst_n_2 ,\GEN_CarryChain[2].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[2].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[30].CARRY4_inst 
       (.CI(\GEN_CarryChain[29].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[30].CARRY4_inst_n_0 ,\GEN_CarryChain[30].CARRY4_inst_n_1 ,\GEN_CarryChain[30].CARRY4_inst_n_2 ,\GEN_CarryChain[30].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[30].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[31].CARRY4_inst 
       (.CI(\GEN_CarryChain[30].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[31].CARRY4_inst_n_0 ,\GEN_CarryChain[31].CARRY4_inst_n_1 ,\GEN_CarryChain[31].CARRY4_inst_n_2 ,\GEN_CarryChain[31].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[31].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[32].CARRY4_inst 
       (.CI(\GEN_CarryChain[31].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[32].CARRY4_inst_n_0 ,\GEN_CarryChain[32].CARRY4_inst_n_1 ,\GEN_CarryChain[32].CARRY4_inst_n_2 ,\GEN_CarryChain[32].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[32].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[33].CARRY4_inst 
       (.CI(\GEN_CarryChain[32].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[33].CARRY4_inst_n_0 ,\GEN_CarryChain[33].CARRY4_inst_n_1 ,\GEN_CarryChain[33].CARRY4_inst_n_2 ,\GEN_CarryChain[33].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[33].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[34].CARRY4_inst 
       (.CI(\GEN_CarryChain[33].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[34].CARRY4_inst_n_0 ,\GEN_CarryChain[34].CARRY4_inst_n_1 ,\GEN_CarryChain[34].CARRY4_inst_n_2 ,\GEN_CarryChain[34].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[34].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[35].CARRY4_inst 
       (.CI(\GEN_CarryChain[34].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[35].CARRY4_inst_n_0 ,\GEN_CarryChain[35].CARRY4_inst_n_1 ,\GEN_CarryChain[35].CARRY4_inst_n_2 ,\GEN_CarryChain[35].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[35].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[36].CARRY4_inst 
       (.CI(\GEN_CarryChain[35].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[36].CARRY4_inst_n_0 ,\GEN_CarryChain[36].CARRY4_inst_n_1 ,\GEN_CarryChain[36].CARRY4_inst_n_2 ,\GEN_CarryChain[36].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[36].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[37].CARRY4_inst 
       (.CI(\GEN_CarryChain[36].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[37].CARRY4_inst_n_0 ,\GEN_CarryChain[37].CARRY4_inst_n_1 ,\GEN_CarryChain[37].CARRY4_inst_n_2 ,\GEN_CarryChain[37].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[37].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[38].CARRY4_inst 
       (.CI(\GEN_CarryChain[37].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[38].CARRY4_inst_n_0 ,\GEN_CarryChain[38].CARRY4_inst_n_1 ,\GEN_CarryChain[38].CARRY4_inst_n_2 ,\GEN_CarryChain[38].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[38].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[39].CARRY4_inst 
       (.CI(\GEN_CarryChain[38].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[39].CARRY4_inst_n_0 ,\GEN_CarryChain[39].CARRY4_inst_n_1 ,\GEN_CarryChain[39].CARRY4_inst_n_2 ,\GEN_CarryChain[39].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[39].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[3].CARRY4_inst 
       (.CI(\GEN_CarryChain[2].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[3].CARRY4_inst_n_0 ,\GEN_CarryChain[3].CARRY4_inst_n_1 ,\GEN_CarryChain[3].CARRY4_inst_n_2 ,\GEN_CarryChain[3].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[3].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[40].CARRY4_inst 
       (.CI(\GEN_CarryChain[39].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[40].CARRY4_inst_n_0 ,\GEN_CarryChain[40].CARRY4_inst_n_1 ,\GEN_CarryChain[40].CARRY4_inst_n_2 ,\GEN_CarryChain[40].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[40].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[41].CARRY4_inst 
       (.CI(\GEN_CarryChain[40].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[41].CARRY4_inst_n_0 ,\GEN_CarryChain[41].CARRY4_inst_n_1 ,\GEN_CarryChain[41].CARRY4_inst_n_2 ,\GEN_CarryChain[41].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[41].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[42].CARRY4_inst 
       (.CI(\GEN_CarryChain[41].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[42].CARRY4_inst_n_0 ,\GEN_CarryChain[42].CARRY4_inst_n_1 ,\GEN_CarryChain[42].CARRY4_inst_n_2 ,\GEN_CarryChain[42].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[42].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[43].CARRY4_inst 
       (.CI(\GEN_CarryChain[42].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[43].CARRY4_inst_n_0 ,\GEN_CarryChain[43].CARRY4_inst_n_1 ,\GEN_CarryChain[43].CARRY4_inst_n_2 ,\GEN_CarryChain[43].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[43].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[44].CARRY4_inst 
       (.CI(\GEN_CarryChain[43].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[44].CARRY4_inst_n_0 ,\GEN_CarryChain[44].CARRY4_inst_n_1 ,\GEN_CarryChain[44].CARRY4_inst_n_2 ,\GEN_CarryChain[44].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[44].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[45].CARRY4_inst 
       (.CI(\GEN_CarryChain[44].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[45].CARRY4_inst_n_0 ,\GEN_CarryChain[45].CARRY4_inst_n_1 ,\GEN_CarryChain[45].CARRY4_inst_n_2 ,\GEN_CarryChain[45].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[45].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[46].CARRY4_inst 
       (.CI(\GEN_CarryChain[45].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[46].CARRY4_inst_n_0 ,\GEN_CarryChain[46].CARRY4_inst_n_1 ,\GEN_CarryChain[46].CARRY4_inst_n_2 ,\GEN_CarryChain[46].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[46].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[47].CARRY4_inst 
       (.CI(\GEN_CarryChain[46].CARRY4_inst_n_0 ),
        .CO(CO),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[47].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[4].CARRY4_inst 
       (.CI(\GEN_CarryChain[3].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[4].CARRY4_inst_n_0 ,\GEN_CarryChain[4].CARRY4_inst_n_1 ,\GEN_CarryChain[4].CARRY4_inst_n_2 ,\GEN_CarryChain[4].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[4].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[5].CARRY4_inst 
       (.CI(\GEN_CarryChain[4].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[5].CARRY4_inst_n_0 ,\GEN_CarryChain[5].CARRY4_inst_n_1 ,\GEN_CarryChain[5].CARRY4_inst_n_2 ,\GEN_CarryChain[5].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[5].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[6].CARRY4_inst 
       (.CI(\GEN_CarryChain[5].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[6].CARRY4_inst_n_0 ,\GEN_CarryChain[6].CARRY4_inst_n_1 ,\GEN_CarryChain[6].CARRY4_inst_n_2 ,\GEN_CarryChain[6].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[6].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[7].CARRY4_inst 
       (.CI(\GEN_CarryChain[6].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[7].CARRY4_inst_n_0 ,\GEN_CarryChain[7].CARRY4_inst_n_1 ,\GEN_CarryChain[7].CARRY4_inst_n_2 ,\GEN_CarryChain[7].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[7].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[8].CARRY4_inst 
       (.CI(\GEN_CarryChain[7].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[8].CARRY4_inst_n_0 ,\GEN_CarryChain[8].CARRY4_inst_n_1 ,\GEN_CarryChain[8].CARRY4_inst_n_2 ,\GEN_CarryChain[8].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[8].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \GEN_CarryChain[9].CARRY4_inst 
       (.CI(\GEN_CarryChain[8].CARRY4_inst_n_0 ),
        .CO({\GEN_CarryChain[9].CARRY4_inst_n_0 ,\GEN_CarryChain[9].CARRY4_inst_n_1 ,\GEN_CarryChain[9].CARRY4_inst_n_2 ,\GEN_CarryChain[9].CARRY4_inst_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_CarryChain[9].CARRY4_inst_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  risingEdgeDetector RED
       (.Q(Q[0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .validIn(validIn));
  (* box_type = "PRIMITIVE" *) 
  CARRY4 firstCarry
       (.CI(1'b0),
        .CO({CI,firstCarry_n_1,firstCarry_n_2,firstCarry_n_3}),
        .CYINIT(CYINIT),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_firstCarry_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    firstCarry_i_1
       (.I0(hit_IBUF),
        .I1(hitQ2),
        .O(CYINIT));
  FDRE #(
    .INIT(1'b0)) 
    hitQ2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(hit_IBUF),
        .Q(hitQ2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(firstCarry_n_3),
        .Q(metaThermo[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[25].CARRY4_inst_n_3 ),
        .Q(metaThermo[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[25].CARRY4_inst_n_2 ),
        .Q(metaThermo[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[25].CARRY4_inst_n_1 ),
        .Q(metaThermo[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[25].CARRY4_inst_n_0 ),
        .Q(metaThermo[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[26].CARRY4_inst_n_3 ),
        .Q(metaThermo[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[26].CARRY4_inst_n_2 ),
        .Q(metaThermo[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[26].CARRY4_inst_n_1 ),
        .Q(metaThermo[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[26].CARRY4_inst_n_0 ),
        .Q(metaThermo[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[27].CARRY4_inst_n_3 ),
        .Q(metaThermo[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[27].CARRY4_inst_n_2 ),
        .Q(metaThermo[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[2].CARRY4_inst_n_1 ),
        .Q(metaThermo[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[27].CARRY4_inst_n_1 ),
        .Q(metaThermo[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[27].CARRY4_inst_n_0 ),
        .Q(metaThermo[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[28].CARRY4_inst_n_3 ),
        .Q(metaThermo[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[28].CARRY4_inst_n_2 ),
        .Q(metaThermo[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[28].CARRY4_inst_n_1 ),
        .Q(metaThermo[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[28].CARRY4_inst_n_0 ),
        .Q(metaThermo[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[29].CARRY4_inst_n_3 ),
        .Q(metaThermo[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[29].CARRY4_inst_n_2 ),
        .Q(metaThermo[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[29].CARRY4_inst_n_1 ),
        .Q(metaThermo[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[29].CARRY4_inst_n_0 ),
        .Q(metaThermo[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[2].CARRY4_inst_n_0 ),
        .Q(metaThermo[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[30].CARRY4_inst_n_3 ),
        .Q(metaThermo[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[30].CARRY4_inst_n_2 ),
        .Q(metaThermo[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[30].CARRY4_inst_n_1 ),
        .Q(metaThermo[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[30].CARRY4_inst_n_0 ),
        .Q(metaThermo[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[31].CARRY4_inst_n_3 ),
        .Q(metaThermo[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[31].CARRY4_inst_n_2 ),
        .Q(metaThermo[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[31].CARRY4_inst_n_1 ),
        .Q(metaThermo[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[31].CARRY4_inst_n_0 ),
        .Q(metaThermo[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[128] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[32].CARRY4_inst_n_3 ),
        .Q(metaThermo[128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[129] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[32].CARRY4_inst_n_2 ),
        .Q(metaThermo[129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[3].CARRY4_inst_n_3 ),
        .Q(metaThermo[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[130] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[32].CARRY4_inst_n_1 ),
        .Q(metaThermo[130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[131] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[32].CARRY4_inst_n_0 ),
        .Q(metaThermo[131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[132] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[33].CARRY4_inst_n_3 ),
        .Q(metaThermo[132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[133] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[33].CARRY4_inst_n_2 ),
        .Q(metaThermo[133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[134] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[33].CARRY4_inst_n_1 ),
        .Q(metaThermo[134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[135] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[33].CARRY4_inst_n_0 ),
        .Q(metaThermo[135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[136] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[34].CARRY4_inst_n_3 ),
        .Q(metaThermo[136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[137] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[34].CARRY4_inst_n_2 ),
        .Q(metaThermo[137]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[138] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[34].CARRY4_inst_n_1 ),
        .Q(metaThermo[138]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[139] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[34].CARRY4_inst_n_0 ),
        .Q(metaThermo[139]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[3].CARRY4_inst_n_2 ),
        .Q(metaThermo[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[140] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[35].CARRY4_inst_n_3 ),
        .Q(metaThermo[140]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[141] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[35].CARRY4_inst_n_2 ),
        .Q(metaThermo[141]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[142] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[35].CARRY4_inst_n_1 ),
        .Q(metaThermo[142]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[143] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[35].CARRY4_inst_n_0 ),
        .Q(metaThermo[143]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[144] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[36].CARRY4_inst_n_3 ),
        .Q(metaThermo[144]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[145] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[36].CARRY4_inst_n_2 ),
        .Q(metaThermo[145]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[146] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[36].CARRY4_inst_n_1 ),
        .Q(metaThermo[146]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[147] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[36].CARRY4_inst_n_0 ),
        .Q(metaThermo[147]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[148] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[37].CARRY4_inst_n_3 ),
        .Q(metaThermo[148]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[149] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[37].CARRY4_inst_n_2 ),
        .Q(metaThermo[149]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[3].CARRY4_inst_n_1 ),
        .Q(metaThermo[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[150] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[37].CARRY4_inst_n_1 ),
        .Q(metaThermo[150]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[151] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[37].CARRY4_inst_n_0 ),
        .Q(metaThermo[151]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[152] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[38].CARRY4_inst_n_3 ),
        .Q(metaThermo[152]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[153] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[38].CARRY4_inst_n_2 ),
        .Q(metaThermo[153]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[154] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[38].CARRY4_inst_n_1 ),
        .Q(metaThermo[154]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[155] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[38].CARRY4_inst_n_0 ),
        .Q(metaThermo[155]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[156] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[39].CARRY4_inst_n_3 ),
        .Q(metaThermo[156]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[157] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[39].CARRY4_inst_n_2 ),
        .Q(metaThermo[157]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[158] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[39].CARRY4_inst_n_1 ),
        .Q(metaThermo[158]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[159] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[39].CARRY4_inst_n_0 ),
        .Q(metaThermo[159]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[3].CARRY4_inst_n_0 ),
        .Q(metaThermo[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[160] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[40].CARRY4_inst_n_3 ),
        .Q(metaThermo[160]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[161] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[40].CARRY4_inst_n_2 ),
        .Q(metaThermo[161]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[162] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[40].CARRY4_inst_n_1 ),
        .Q(metaThermo[162]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[163] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[40].CARRY4_inst_n_0 ),
        .Q(metaThermo[163]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[164] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[41].CARRY4_inst_n_3 ),
        .Q(metaThermo[164]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[165] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[41].CARRY4_inst_n_2 ),
        .Q(metaThermo[165]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[166] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[41].CARRY4_inst_n_1 ),
        .Q(metaThermo[166]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[167] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[41].CARRY4_inst_n_0 ),
        .Q(metaThermo[167]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[168] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[42].CARRY4_inst_n_3 ),
        .Q(metaThermo[168]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[169] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[42].CARRY4_inst_n_2 ),
        .Q(metaThermo[169]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[4].CARRY4_inst_n_3 ),
        .Q(metaThermo[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[170] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[42].CARRY4_inst_n_1 ),
        .Q(metaThermo[170]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[171] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[42].CARRY4_inst_n_0 ),
        .Q(metaThermo[171]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[172] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[43].CARRY4_inst_n_3 ),
        .Q(metaThermo[172]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[173] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[43].CARRY4_inst_n_2 ),
        .Q(metaThermo[173]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[174] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[43].CARRY4_inst_n_1 ),
        .Q(metaThermo[174]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[175] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[43].CARRY4_inst_n_0 ),
        .Q(metaThermo[175]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[176] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[44].CARRY4_inst_n_3 ),
        .Q(metaThermo[176]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[177] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[44].CARRY4_inst_n_2 ),
        .Q(metaThermo[177]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[178] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[44].CARRY4_inst_n_1 ),
        .Q(metaThermo[178]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[179] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[44].CARRY4_inst_n_0 ),
        .Q(metaThermo[179]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[4].CARRY4_inst_n_2 ),
        .Q(metaThermo[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[180] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[45].CARRY4_inst_n_3 ),
        .Q(metaThermo[180]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[181] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[45].CARRY4_inst_n_2 ),
        .Q(metaThermo[181]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[182] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[45].CARRY4_inst_n_1 ),
        .Q(metaThermo[182]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[183] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[45].CARRY4_inst_n_0 ),
        .Q(metaThermo[183]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[184] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[46].CARRY4_inst_n_3 ),
        .Q(metaThermo[184]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[185] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[46].CARRY4_inst_n_2 ),
        .Q(metaThermo[185]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[186] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[46].CARRY4_inst_n_1 ),
        .Q(metaThermo[186]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[187] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[46].CARRY4_inst_n_0 ),
        .Q(metaThermo[187]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[188] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CO[0]),
        .Q(metaThermo[188]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[189] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CO[1]),
        .Q(metaThermo[189]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[4].CARRY4_inst_n_1 ),
        .Q(metaThermo[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[190] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CO[2]),
        .Q(metaThermo[190]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[191] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CO[3]),
        .Q(metaThermo[191]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[4].CARRY4_inst_n_0 ),
        .Q(metaThermo[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(firstCarry_n_2),
        .Q(metaThermo[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[5].CARRY4_inst_n_3 ),
        .Q(metaThermo[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[5].CARRY4_inst_n_2 ),
        .Q(metaThermo[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[5].CARRY4_inst_n_1 ),
        .Q(metaThermo[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[5].CARRY4_inst_n_0 ),
        .Q(metaThermo[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[6].CARRY4_inst_n_3 ),
        .Q(metaThermo[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[6].CARRY4_inst_n_2 ),
        .Q(metaThermo[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[6].CARRY4_inst_n_1 ),
        .Q(metaThermo[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[6].CARRY4_inst_n_0 ),
        .Q(metaThermo[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[7].CARRY4_inst_n_3 ),
        .Q(metaThermo[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[7].CARRY4_inst_n_2 ),
        .Q(metaThermo[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(firstCarry_n_1),
        .Q(metaThermo[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[7].CARRY4_inst_n_1 ),
        .Q(metaThermo[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[7].CARRY4_inst_n_0 ),
        .Q(metaThermo[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[8].CARRY4_inst_n_3 ),
        .Q(metaThermo[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[8].CARRY4_inst_n_2 ),
        .Q(metaThermo[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[8].CARRY4_inst_n_1 ),
        .Q(metaThermo[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[8].CARRY4_inst_n_0 ),
        .Q(metaThermo[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[9].CARRY4_inst_n_3 ),
        .Q(metaThermo[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[9].CARRY4_inst_n_2 ),
        .Q(metaThermo[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[9].CARRY4_inst_n_1 ),
        .Q(metaThermo[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[9].CARRY4_inst_n_0 ),
        .Q(metaThermo[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CI),
        .Q(metaThermo[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[10].CARRY4_inst_n_3 ),
        .Q(metaThermo[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[10].CARRY4_inst_n_2 ),
        .Q(metaThermo[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[10].CARRY4_inst_n_1 ),
        .Q(metaThermo[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[10].CARRY4_inst_n_0 ),
        .Q(metaThermo[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[11].CARRY4_inst_n_3 ),
        .Q(metaThermo[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[11].CARRY4_inst_n_2 ),
        .Q(metaThermo[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[11].CARRY4_inst_n_1 ),
        .Q(metaThermo[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[11].CARRY4_inst_n_0 ),
        .Q(metaThermo[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[12].CARRY4_inst_n_3 ),
        .Q(metaThermo[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[12].CARRY4_inst_n_2 ),
        .Q(metaThermo[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[1].CARRY4_inst_n_3 ),
        .Q(metaThermo[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[12].CARRY4_inst_n_1 ),
        .Q(metaThermo[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[12].CARRY4_inst_n_0 ),
        .Q(metaThermo[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[13].CARRY4_inst_n_3 ),
        .Q(metaThermo[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[13].CARRY4_inst_n_2 ),
        .Q(metaThermo[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[13].CARRY4_inst_n_1 ),
        .Q(metaThermo[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[13].CARRY4_inst_n_0 ),
        .Q(metaThermo[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[14].CARRY4_inst_n_3 ),
        .Q(metaThermo[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[14].CARRY4_inst_n_2 ),
        .Q(metaThermo[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[14].CARRY4_inst_n_1 ),
        .Q(metaThermo[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[14].CARRY4_inst_n_0 ),
        .Q(metaThermo[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[1].CARRY4_inst_n_2 ),
        .Q(metaThermo[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[15].CARRY4_inst_n_3 ),
        .Q(metaThermo[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[15].CARRY4_inst_n_2 ),
        .Q(metaThermo[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[15].CARRY4_inst_n_1 ),
        .Q(metaThermo[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[15].CARRY4_inst_n_0 ),
        .Q(metaThermo[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[16].CARRY4_inst_n_3 ),
        .Q(metaThermo[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[16].CARRY4_inst_n_2 ),
        .Q(metaThermo[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[16].CARRY4_inst_n_1 ),
        .Q(metaThermo[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[16].CARRY4_inst_n_0 ),
        .Q(metaThermo[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[17].CARRY4_inst_n_3 ),
        .Q(metaThermo[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[17].CARRY4_inst_n_2 ),
        .Q(metaThermo[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[1].CARRY4_inst_n_1 ),
        .Q(metaThermo[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[17].CARRY4_inst_n_1 ),
        .Q(metaThermo[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[17].CARRY4_inst_n_0 ),
        .Q(metaThermo[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[18].CARRY4_inst_n_3 ),
        .Q(metaThermo[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[18].CARRY4_inst_n_2 ),
        .Q(metaThermo[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[18].CARRY4_inst_n_1 ),
        .Q(metaThermo[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[18].CARRY4_inst_n_0 ),
        .Q(metaThermo[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[19].CARRY4_inst_n_3 ),
        .Q(metaThermo[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[19].CARRY4_inst_n_2 ),
        .Q(metaThermo[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[19].CARRY4_inst_n_1 ),
        .Q(metaThermo[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[19].CARRY4_inst_n_0 ),
        .Q(metaThermo[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[1].CARRY4_inst_n_0 ),
        .Q(metaThermo[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[20].CARRY4_inst_n_3 ),
        .Q(metaThermo[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[20].CARRY4_inst_n_2 ),
        .Q(metaThermo[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[20].CARRY4_inst_n_1 ),
        .Q(metaThermo[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[20].CARRY4_inst_n_0 ),
        .Q(metaThermo[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[21].CARRY4_inst_n_3 ),
        .Q(metaThermo[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[21].CARRY4_inst_n_2 ),
        .Q(metaThermo[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[21].CARRY4_inst_n_1 ),
        .Q(metaThermo[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[21].CARRY4_inst_n_0 ),
        .Q(metaThermo[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[22].CARRY4_inst_n_3 ),
        .Q(metaThermo[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[22].CARRY4_inst_n_2 ),
        .Q(metaThermo[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[2].CARRY4_inst_n_3 ),
        .Q(metaThermo[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[22].CARRY4_inst_n_1 ),
        .Q(metaThermo[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[22].CARRY4_inst_n_0 ),
        .Q(metaThermo[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[23].CARRY4_inst_n_3 ),
        .Q(metaThermo[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[23].CARRY4_inst_n_2 ),
        .Q(metaThermo[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[23].CARRY4_inst_n_1 ),
        .Q(metaThermo[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[23].CARRY4_inst_n_0 ),
        .Q(metaThermo[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[24].CARRY4_inst_n_3 ),
        .Q(metaThermo[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[24].CARRY4_inst_n_2 ),
        .Q(metaThermo[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[24].CARRY4_inst_n_1 ),
        .Q(metaThermo[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[24].CARRY4_inst_n_0 ),
        .Q(metaThermo[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \metaThermo_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\GEN_CarryChain[2].CARRY4_inst_n_2 ),
        .Q(metaThermo[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[100]),
        .Q(Q[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[101]),
        .Q(Q[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[102]),
        .Q(Q[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[103]),
        .Q(Q[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[104]),
        .Q(Q[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[105]),
        .Q(Q[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[106]),
        .Q(Q[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[107]),
        .Q(Q[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[108]),
        .Q(Q[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[109]),
        .Q(Q[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[110]),
        .Q(Q[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[111]),
        .Q(Q[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[112]),
        .Q(Q[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[113]),
        .Q(Q[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[114]),
        .Q(Q[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[115]),
        .Q(Q[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[116]),
        .Q(Q[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[117]),
        .Q(Q[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[118]),
        .Q(Q[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[119]),
        .Q(Q[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[120]),
        .Q(Q[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[121]),
        .Q(Q[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[122]),
        .Q(Q[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[123]),
        .Q(Q[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[124]),
        .Q(Q[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[125]),
        .Q(Q[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[126]),
        .Q(Q[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[127]),
        .Q(Q[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[128] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[128]),
        .Q(Q[128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[129] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[129]),
        .Q(Q[129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[130] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[130]),
        .Q(Q[130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[131] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[131]),
        .Q(Q[131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[132] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[132]),
        .Q(Q[132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[133] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[133]),
        .Q(Q[133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[134] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[134]),
        .Q(Q[134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[135] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[135]),
        .Q(Q[135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[136] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[136]),
        .Q(Q[136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[137] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[137]),
        .Q(Q[137]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[138] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[138]),
        .Q(Q[138]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[139] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[139]),
        .Q(Q[139]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[140] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[140]),
        .Q(Q[140]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[141] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[141]),
        .Q(Q[141]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[142] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[142]),
        .Q(Q[142]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[143] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[143]),
        .Q(Q[143]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[144] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[144]),
        .Q(Q[144]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[145] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[145]),
        .Q(Q[145]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[146] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[146]),
        .Q(Q[146]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[147] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[147]),
        .Q(Q[147]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[148] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[148]),
        .Q(Q[148]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[149] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[149]),
        .Q(Q[149]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[150] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[150]),
        .Q(Q[150]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[151] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[151]),
        .Q(Q[151]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[152] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[152]),
        .Q(Q[152]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[153] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[153]),
        .Q(Q[153]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[154] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[154]),
        .Q(Q[154]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[155] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[155]),
        .Q(Q[155]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[156] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[156]),
        .Q(Q[156]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[157] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[157]),
        .Q(Q[157]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[158] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[158]),
        .Q(Q[158]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[159] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[159]),
        .Q(Q[159]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[160] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[160]),
        .Q(Q[160]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[161] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[161]),
        .Q(Q[161]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[162] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[162]),
        .Q(Q[162]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[163] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[163]),
        .Q(Q[163]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[164] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[164]),
        .Q(Q[164]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[165] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[165]),
        .Q(Q[165]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[166] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[166]),
        .Q(Q[166]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[167] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[167]),
        .Q(Q[167]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[168] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[168]),
        .Q(Q[168]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[169] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[169]),
        .Q(Q[169]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[170] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[170]),
        .Q(Q[170]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[171] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[171]),
        .Q(Q[171]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[172] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[172]),
        .Q(Q[172]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[173] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[173]),
        .Q(Q[173]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[174] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[174]),
        .Q(Q[174]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[175] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[175]),
        .Q(Q[175]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[176] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[176]),
        .Q(Q[176]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[177] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[177]),
        .Q(Q[177]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[178] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[178]),
        .Q(Q[178]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[179] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[179]),
        .Q(Q[179]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[180] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[180]),
        .Q(Q[180]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[181] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[181]),
        .Q(Q[181]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[182] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[182]),
        .Q(Q[182]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[183] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[183]),
        .Q(Q[183]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[184] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[184]),
        .Q(Q[184]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[185] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[185]),
        .Q(Q[185]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[186] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[186]),
        .Q(Q[186]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[187] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[187]),
        .Q(Q[187]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[188] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[188]),
        .Q(Q[188]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[189] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[189]),
        .Q(Q[189]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[190] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[190]),
        .Q(Q[190]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[191] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[191]),
        .Q(Q[191]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[48]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[49]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[50]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[51]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[52]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[53]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[54]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[55]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[56]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[57]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[58]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[59]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[60]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[61]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[62]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[63]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[64]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[65]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[66]),
        .Q(Q[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[67]),
        .Q(Q[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[68]),
        .Q(Q[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[69]),
        .Q(Q[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[70]),
        .Q(Q[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[71]),
        .Q(Q[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[72]),
        .Q(Q[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[73]),
        .Q(Q[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[74]),
        .Q(Q[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[75]),
        .Q(Q[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[76]),
        .Q(Q[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[77]),
        .Q(Q[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[78]),
        .Q(Q[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[79]),
        .Q(Q[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[80]),
        .Q(Q[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[81]),
        .Q(Q[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[82]),
        .Q(Q[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[83]),
        .Q(Q[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[84]),
        .Q(Q[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[85]),
        .Q(Q[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[86]),
        .Q(Q[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[87]),
        .Q(Q[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[88]),
        .Q(Q[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[89]),
        .Q(Q[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[90]),
        .Q(Q[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[91]),
        .Q(Q[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[92]),
        .Q(Q[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[93]),
        .Q(Q[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[94]),
        .Q(Q[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[95]),
        .Q(Q[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[96]),
        .Q(Q[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[97]),
        .Q(Q[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[98]),
        .Q(Q[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[99]),
        .Q(Q[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \thermo_s_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(metaThermo[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

module encoder
   (validOut,
    \ones_reg[7]_0 ,
    validIn,
    clk_IBUF_BUFG,
    Q);
  output validOut;
  output [7:0]\ones_reg[7]_0 ;
  input validIn;
  input clk_IBUF_BUFG;
  input [191:0]Q;

  wire Adder_tree_n_0;
  wire [95:0]LUTout;
  wire [191:0]Q;
  wire clk_IBUF_BUFG;
  wire [7:0]\ones_reg[7]_0 ;
  wire [7:0]sum;
  wire validIn;
  wire validOut;

  adderTreeLegacy Adder_tree
       (.D(LUTout),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sum(sum),
        .\thermo_s_reg[0] (Adder_tree_n_0),
        .validIn(validIn));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[0].LUT6_inst0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(LUTout[0]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[0].LUT6_inst1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(LUTout[1]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[0].LUT6_inst2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(LUTout[2]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[10].LUT6_inst0 
       (.I0(Q[60]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(Q[63]),
        .I4(Q[64]),
        .I5(Q[65]),
        .O(LUTout[30]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[10].LUT6_inst1 
       (.I0(Q[60]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(Q[63]),
        .I4(Q[64]),
        .I5(Q[65]),
        .O(LUTout[31]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[10].LUT6_inst2 
       (.I0(Q[60]),
        .I1(Q[61]),
        .I2(Q[62]),
        .I3(Q[63]),
        .I4(Q[64]),
        .I5(Q[65]),
        .O(LUTout[32]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[11].LUT6_inst0 
       (.I0(Q[66]),
        .I1(Q[67]),
        .I2(Q[68]),
        .I3(Q[69]),
        .I4(Q[70]),
        .I5(Q[71]),
        .O(LUTout[33]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[11].LUT6_inst1 
       (.I0(Q[66]),
        .I1(Q[67]),
        .I2(Q[68]),
        .I3(Q[69]),
        .I4(Q[70]),
        .I5(Q[71]),
        .O(LUTout[34]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[11].LUT6_inst2 
       (.I0(Q[66]),
        .I1(Q[67]),
        .I2(Q[68]),
        .I3(Q[69]),
        .I4(Q[70]),
        .I5(Q[71]),
        .O(LUTout[35]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[12].LUT6_inst0 
       (.I0(Q[72]),
        .I1(Q[73]),
        .I2(Q[74]),
        .I3(Q[75]),
        .I4(Q[76]),
        .I5(Q[77]),
        .O(LUTout[36]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[12].LUT6_inst1 
       (.I0(Q[72]),
        .I1(Q[73]),
        .I2(Q[74]),
        .I3(Q[75]),
        .I4(Q[76]),
        .I5(Q[77]),
        .O(LUTout[37]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[12].LUT6_inst2 
       (.I0(Q[72]),
        .I1(Q[73]),
        .I2(Q[74]),
        .I3(Q[75]),
        .I4(Q[76]),
        .I5(Q[77]),
        .O(LUTout[38]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[13].LUT6_inst0 
       (.I0(Q[78]),
        .I1(Q[79]),
        .I2(Q[80]),
        .I3(Q[81]),
        .I4(Q[82]),
        .I5(Q[83]),
        .O(LUTout[39]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[13].LUT6_inst1 
       (.I0(Q[78]),
        .I1(Q[79]),
        .I2(Q[80]),
        .I3(Q[81]),
        .I4(Q[82]),
        .I5(Q[83]),
        .O(LUTout[40]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[13].LUT6_inst2 
       (.I0(Q[78]),
        .I1(Q[79]),
        .I2(Q[80]),
        .I3(Q[81]),
        .I4(Q[82]),
        .I5(Q[83]),
        .O(LUTout[41]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[14].LUT6_inst0 
       (.I0(Q[84]),
        .I1(Q[85]),
        .I2(Q[86]),
        .I3(Q[87]),
        .I4(Q[88]),
        .I5(Q[89]),
        .O(LUTout[42]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[14].LUT6_inst1 
       (.I0(Q[84]),
        .I1(Q[85]),
        .I2(Q[86]),
        .I3(Q[87]),
        .I4(Q[88]),
        .I5(Q[89]),
        .O(LUTout[43]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[14].LUT6_inst2 
       (.I0(Q[84]),
        .I1(Q[85]),
        .I2(Q[86]),
        .I3(Q[87]),
        .I4(Q[88]),
        .I5(Q[89]),
        .O(LUTout[44]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[15].LUT6_inst0 
       (.I0(Q[90]),
        .I1(Q[91]),
        .I2(Q[92]),
        .I3(Q[93]),
        .I4(Q[94]),
        .I5(Q[95]),
        .O(LUTout[45]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[15].LUT6_inst1 
       (.I0(Q[90]),
        .I1(Q[91]),
        .I2(Q[92]),
        .I3(Q[93]),
        .I4(Q[94]),
        .I5(Q[95]),
        .O(LUTout[46]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[15].LUT6_inst2 
       (.I0(Q[90]),
        .I1(Q[91]),
        .I2(Q[92]),
        .I3(Q[93]),
        .I4(Q[94]),
        .I5(Q[95]),
        .O(LUTout[47]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[16].LUT6_inst0 
       (.I0(Q[96]),
        .I1(Q[97]),
        .I2(Q[98]),
        .I3(Q[99]),
        .I4(Q[100]),
        .I5(Q[101]),
        .O(LUTout[48]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[16].LUT6_inst1 
       (.I0(Q[96]),
        .I1(Q[97]),
        .I2(Q[98]),
        .I3(Q[99]),
        .I4(Q[100]),
        .I5(Q[101]),
        .O(LUTout[49]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[16].LUT6_inst2 
       (.I0(Q[96]),
        .I1(Q[97]),
        .I2(Q[98]),
        .I3(Q[99]),
        .I4(Q[100]),
        .I5(Q[101]),
        .O(LUTout[50]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[17].LUT6_inst0 
       (.I0(Q[102]),
        .I1(Q[103]),
        .I2(Q[104]),
        .I3(Q[105]),
        .I4(Q[106]),
        .I5(Q[107]),
        .O(LUTout[51]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[17].LUT6_inst1 
       (.I0(Q[102]),
        .I1(Q[103]),
        .I2(Q[104]),
        .I3(Q[105]),
        .I4(Q[106]),
        .I5(Q[107]),
        .O(LUTout[52]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[17].LUT6_inst2 
       (.I0(Q[102]),
        .I1(Q[103]),
        .I2(Q[104]),
        .I3(Q[105]),
        .I4(Q[106]),
        .I5(Q[107]),
        .O(LUTout[53]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[18].LUT6_inst0 
       (.I0(Q[108]),
        .I1(Q[109]),
        .I2(Q[110]),
        .I3(Q[111]),
        .I4(Q[112]),
        .I5(Q[113]),
        .O(LUTout[54]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[18].LUT6_inst1 
       (.I0(Q[108]),
        .I1(Q[109]),
        .I2(Q[110]),
        .I3(Q[111]),
        .I4(Q[112]),
        .I5(Q[113]),
        .O(LUTout[55]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[18].LUT6_inst2 
       (.I0(Q[108]),
        .I1(Q[109]),
        .I2(Q[110]),
        .I3(Q[111]),
        .I4(Q[112]),
        .I5(Q[113]),
        .O(LUTout[56]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[19].LUT6_inst0 
       (.I0(Q[114]),
        .I1(Q[115]),
        .I2(Q[116]),
        .I3(Q[117]),
        .I4(Q[118]),
        .I5(Q[119]),
        .O(LUTout[57]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[19].LUT6_inst1 
       (.I0(Q[114]),
        .I1(Q[115]),
        .I2(Q[116]),
        .I3(Q[117]),
        .I4(Q[118]),
        .I5(Q[119]),
        .O(LUTout[58]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[19].LUT6_inst2 
       (.I0(Q[114]),
        .I1(Q[115]),
        .I2(Q[116]),
        .I3(Q[117]),
        .I4(Q[118]),
        .I5(Q[119]),
        .O(LUTout[59]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[1].LUT6_inst0 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(LUTout[3]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[1].LUT6_inst1 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(LUTout[4]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[1].LUT6_inst2 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(LUTout[5]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[20].LUT6_inst0 
       (.I0(Q[120]),
        .I1(Q[121]),
        .I2(Q[122]),
        .I3(Q[123]),
        .I4(Q[124]),
        .I5(Q[125]),
        .O(LUTout[60]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[20].LUT6_inst1 
       (.I0(Q[120]),
        .I1(Q[121]),
        .I2(Q[122]),
        .I3(Q[123]),
        .I4(Q[124]),
        .I5(Q[125]),
        .O(LUTout[61]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[20].LUT6_inst2 
       (.I0(Q[120]),
        .I1(Q[121]),
        .I2(Q[122]),
        .I3(Q[123]),
        .I4(Q[124]),
        .I5(Q[125]),
        .O(LUTout[62]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[21].LUT6_inst0 
       (.I0(Q[126]),
        .I1(Q[127]),
        .I2(Q[128]),
        .I3(Q[129]),
        .I4(Q[130]),
        .I5(Q[131]),
        .O(LUTout[63]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[21].LUT6_inst1 
       (.I0(Q[126]),
        .I1(Q[127]),
        .I2(Q[128]),
        .I3(Q[129]),
        .I4(Q[130]),
        .I5(Q[131]),
        .O(LUTout[64]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[21].LUT6_inst2 
       (.I0(Q[126]),
        .I1(Q[127]),
        .I2(Q[128]),
        .I3(Q[129]),
        .I4(Q[130]),
        .I5(Q[131]),
        .O(LUTout[65]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[22].LUT6_inst0 
       (.I0(Q[132]),
        .I1(Q[133]),
        .I2(Q[134]),
        .I3(Q[135]),
        .I4(Q[136]),
        .I5(Q[137]),
        .O(LUTout[66]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[22].LUT6_inst1 
       (.I0(Q[132]),
        .I1(Q[133]),
        .I2(Q[134]),
        .I3(Q[135]),
        .I4(Q[136]),
        .I5(Q[137]),
        .O(LUTout[67]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[22].LUT6_inst2 
       (.I0(Q[132]),
        .I1(Q[133]),
        .I2(Q[134]),
        .I3(Q[135]),
        .I4(Q[136]),
        .I5(Q[137]),
        .O(LUTout[68]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[23].LUT6_inst0 
       (.I0(Q[138]),
        .I1(Q[139]),
        .I2(Q[140]),
        .I3(Q[141]),
        .I4(Q[142]),
        .I5(Q[143]),
        .O(LUTout[69]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[23].LUT6_inst1 
       (.I0(Q[138]),
        .I1(Q[139]),
        .I2(Q[140]),
        .I3(Q[141]),
        .I4(Q[142]),
        .I5(Q[143]),
        .O(LUTout[70]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[23].LUT6_inst2 
       (.I0(Q[138]),
        .I1(Q[139]),
        .I2(Q[140]),
        .I3(Q[141]),
        .I4(Q[142]),
        .I5(Q[143]),
        .O(LUTout[71]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[24].LUT6_inst0 
       (.I0(Q[144]),
        .I1(Q[145]),
        .I2(Q[146]),
        .I3(Q[147]),
        .I4(Q[148]),
        .I5(Q[149]),
        .O(LUTout[72]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[24].LUT6_inst1 
       (.I0(Q[144]),
        .I1(Q[145]),
        .I2(Q[146]),
        .I3(Q[147]),
        .I4(Q[148]),
        .I5(Q[149]),
        .O(LUTout[73]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[24].LUT6_inst2 
       (.I0(Q[144]),
        .I1(Q[145]),
        .I2(Q[146]),
        .I3(Q[147]),
        .I4(Q[148]),
        .I5(Q[149]),
        .O(LUTout[74]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[25].LUT6_inst0 
       (.I0(Q[150]),
        .I1(Q[151]),
        .I2(Q[152]),
        .I3(Q[153]),
        .I4(Q[154]),
        .I5(Q[155]),
        .O(LUTout[75]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[25].LUT6_inst1 
       (.I0(Q[150]),
        .I1(Q[151]),
        .I2(Q[152]),
        .I3(Q[153]),
        .I4(Q[154]),
        .I5(Q[155]),
        .O(LUTout[76]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[25].LUT6_inst2 
       (.I0(Q[150]),
        .I1(Q[151]),
        .I2(Q[152]),
        .I3(Q[153]),
        .I4(Q[154]),
        .I5(Q[155]),
        .O(LUTout[77]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[26].LUT6_inst0 
       (.I0(Q[156]),
        .I1(Q[157]),
        .I2(Q[158]),
        .I3(Q[159]),
        .I4(Q[160]),
        .I5(Q[161]),
        .O(LUTout[78]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[26].LUT6_inst1 
       (.I0(Q[156]),
        .I1(Q[157]),
        .I2(Q[158]),
        .I3(Q[159]),
        .I4(Q[160]),
        .I5(Q[161]),
        .O(LUTout[79]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[26].LUT6_inst2 
       (.I0(Q[156]),
        .I1(Q[157]),
        .I2(Q[158]),
        .I3(Q[159]),
        .I4(Q[160]),
        .I5(Q[161]),
        .O(LUTout[80]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[27].LUT6_inst0 
       (.I0(Q[162]),
        .I1(Q[163]),
        .I2(Q[164]),
        .I3(Q[165]),
        .I4(Q[166]),
        .I5(Q[167]),
        .O(LUTout[81]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[27].LUT6_inst1 
       (.I0(Q[162]),
        .I1(Q[163]),
        .I2(Q[164]),
        .I3(Q[165]),
        .I4(Q[166]),
        .I5(Q[167]),
        .O(LUTout[82]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[27].LUT6_inst2 
       (.I0(Q[162]),
        .I1(Q[163]),
        .I2(Q[164]),
        .I3(Q[165]),
        .I4(Q[166]),
        .I5(Q[167]),
        .O(LUTout[83]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[28].LUT6_inst0 
       (.I0(Q[168]),
        .I1(Q[169]),
        .I2(Q[170]),
        .I3(Q[171]),
        .I4(Q[172]),
        .I5(Q[173]),
        .O(LUTout[84]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[28].LUT6_inst1 
       (.I0(Q[168]),
        .I1(Q[169]),
        .I2(Q[170]),
        .I3(Q[171]),
        .I4(Q[172]),
        .I5(Q[173]),
        .O(LUTout[85]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[28].LUT6_inst2 
       (.I0(Q[168]),
        .I1(Q[169]),
        .I2(Q[170]),
        .I3(Q[171]),
        .I4(Q[172]),
        .I5(Q[173]),
        .O(LUTout[86]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[29].LUT6_inst0 
       (.I0(Q[174]),
        .I1(Q[175]),
        .I2(Q[176]),
        .I3(Q[177]),
        .I4(Q[178]),
        .I5(Q[179]),
        .O(LUTout[87]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[29].LUT6_inst1 
       (.I0(Q[174]),
        .I1(Q[175]),
        .I2(Q[176]),
        .I3(Q[177]),
        .I4(Q[178]),
        .I5(Q[179]),
        .O(LUTout[88]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[29].LUT6_inst2 
       (.I0(Q[174]),
        .I1(Q[175]),
        .I2(Q[176]),
        .I3(Q[177]),
        .I4(Q[178]),
        .I5(Q[179]),
        .O(LUTout[89]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[2].LUT6_inst0 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(Q[16]),
        .I5(Q[17]),
        .O(LUTout[6]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[2].LUT6_inst1 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(Q[16]),
        .I5(Q[17]),
        .O(LUTout[7]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[2].LUT6_inst2 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[15]),
        .I4(Q[16]),
        .I5(Q[17]),
        .O(LUTout[8]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[30].LUT6_inst0 
       (.I0(Q[180]),
        .I1(Q[181]),
        .I2(Q[182]),
        .I3(Q[183]),
        .I4(Q[184]),
        .I5(Q[185]),
        .O(LUTout[90]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[30].LUT6_inst1 
       (.I0(Q[180]),
        .I1(Q[181]),
        .I2(Q[182]),
        .I3(Q[183]),
        .I4(Q[184]),
        .I5(Q[185]),
        .O(LUTout[91]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[30].LUT6_inst2 
       (.I0(Q[180]),
        .I1(Q[181]),
        .I2(Q[182]),
        .I3(Q[183]),
        .I4(Q[184]),
        .I5(Q[185]),
        .O(LUTout[92]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[31].LUT6_inst0 
       (.I0(Q[186]),
        .I1(Q[187]),
        .I2(Q[188]),
        .I3(Q[189]),
        .I4(Q[190]),
        .I5(Q[191]),
        .O(LUTout[93]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[31].LUT6_inst1 
       (.I0(Q[186]),
        .I1(Q[187]),
        .I2(Q[188]),
        .I3(Q[189]),
        .I4(Q[190]),
        .I5(Q[191]),
        .O(LUTout[94]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[31].LUT6_inst2 
       (.I0(Q[186]),
        .I1(Q[187]),
        .I2(Q[188]),
        .I3(Q[189]),
        .I4(Q[190]),
        .I5(Q[191]),
        .O(LUTout[95]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[3].LUT6_inst0 
       (.I0(Q[18]),
        .I1(Q[19]),
        .I2(Q[20]),
        .I3(Q[21]),
        .I4(Q[22]),
        .I5(Q[23]),
        .O(LUTout[9]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[3].LUT6_inst1 
       (.I0(Q[18]),
        .I1(Q[19]),
        .I2(Q[20]),
        .I3(Q[21]),
        .I4(Q[22]),
        .I5(Q[23]),
        .O(LUTout[10]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[3].LUT6_inst2 
       (.I0(Q[18]),
        .I1(Q[19]),
        .I2(Q[20]),
        .I3(Q[21]),
        .I4(Q[22]),
        .I5(Q[23]),
        .O(LUTout[11]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[4].LUT6_inst0 
       (.I0(Q[24]),
        .I1(Q[25]),
        .I2(Q[26]),
        .I3(Q[27]),
        .I4(Q[28]),
        .I5(Q[29]),
        .O(LUTout[12]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[4].LUT6_inst1 
       (.I0(Q[24]),
        .I1(Q[25]),
        .I2(Q[26]),
        .I3(Q[27]),
        .I4(Q[28]),
        .I5(Q[29]),
        .O(LUTout[13]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[4].LUT6_inst2 
       (.I0(Q[24]),
        .I1(Q[25]),
        .I2(Q[26]),
        .I3(Q[27]),
        .I4(Q[28]),
        .I5(Q[29]),
        .O(LUTout[14]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[5].LUT6_inst0 
       (.I0(Q[30]),
        .I1(Q[31]),
        .I2(Q[32]),
        .I3(Q[33]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(LUTout[15]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[5].LUT6_inst1 
       (.I0(Q[30]),
        .I1(Q[31]),
        .I2(Q[32]),
        .I3(Q[33]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(LUTout[16]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[5].LUT6_inst2 
       (.I0(Q[30]),
        .I1(Q[31]),
        .I2(Q[32]),
        .I3(Q[33]),
        .I4(Q[34]),
        .I5(Q[35]),
        .O(LUTout[17]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[6].LUT6_inst0 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[38]),
        .I3(Q[39]),
        .I4(Q[40]),
        .I5(Q[41]),
        .O(LUTout[18]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[6].LUT6_inst1 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[38]),
        .I3(Q[39]),
        .I4(Q[40]),
        .I5(Q[41]),
        .O(LUTout[19]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[6].LUT6_inst2 
       (.I0(Q[36]),
        .I1(Q[37]),
        .I2(Q[38]),
        .I3(Q[39]),
        .I4(Q[40]),
        .I5(Q[41]),
        .O(LUTout[20]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[7].LUT6_inst0 
       (.I0(Q[42]),
        .I1(Q[43]),
        .I2(Q[44]),
        .I3(Q[45]),
        .I4(Q[46]),
        .I5(Q[47]),
        .O(LUTout[21]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[7].LUT6_inst1 
       (.I0(Q[42]),
        .I1(Q[43]),
        .I2(Q[44]),
        .I3(Q[45]),
        .I4(Q[46]),
        .I5(Q[47]),
        .O(LUTout[22]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[7].LUT6_inst2 
       (.I0(Q[42]),
        .I1(Q[43]),
        .I2(Q[44]),
        .I3(Q[45]),
        .I4(Q[46]),
        .I5(Q[47]),
        .O(LUTout[23]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[8].LUT6_inst0 
       (.I0(Q[48]),
        .I1(Q[49]),
        .I2(Q[50]),
        .I3(Q[51]),
        .I4(Q[52]),
        .I5(Q[53]),
        .O(LUTout[24]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[8].LUT6_inst1 
       (.I0(Q[48]),
        .I1(Q[49]),
        .I2(Q[50]),
        .I3(Q[51]),
        .I4(Q[52]),
        .I5(Q[53]),
        .O(LUTout[25]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[8].LUT6_inst2 
       (.I0(Q[48]),
        .I1(Q[49]),
        .I2(Q[50]),
        .I3(Q[51]),
        .I4(Q[52]),
        .I5(Q[53]),
        .O(LUTout[26]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \LUTs[9].LUT6_inst0 
       (.I0(Q[54]),
        .I1(Q[55]),
        .I2(Q[56]),
        .I3(Q[57]),
        .I4(Q[58]),
        .I5(Q[59]),
        .O(LUTout[27]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h8117177E177E7EE8)) 
    \LUTs[9].LUT6_inst1 
       (.I0(Q[54]),
        .I1(Q[55]),
        .I2(Q[56]),
        .I3(Q[57]),
        .I4(Q[58]),
        .I5(Q[59]),
        .O(LUTout[28]));
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFEE8E880E8808000)) 
    \LUTs[9].LUT6_inst2 
       (.I0(Q[54]),
        .I1(Q[55]),
        .I2(Q[56]),
        .I3(Q[57]),
        .I4(Q[58]),
        .I5(Q[59]),
        .O(LUTout[29]));
  FDRE #(
    .INIT(1'b0)) 
    \ones_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sum[0]),
        .Q(\ones_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ones_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sum[1]),
        .Q(\ones_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ones_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sum[2]),
        .Q(\ones_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ones_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sum[3]),
        .Q(\ones_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ones_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sum[4]),
        .Q(\ones_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ones_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sum[5]),
        .Q(\ones_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ones_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sum[6]),
        .Q(\ones_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ones_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sum[7]),
        .Q(\ones_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    validOut_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Adder_tree_n_0),
        .Q(validOut),
        .R(1'b0));
endmodule

module pselect_f
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_3;
  input [1:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [1:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_3;

  LUT2 #(
    .INIT(4'h1)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module pselect_f__parameterized1
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_1;
  input [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [1:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_1;

  LUT2 #(
    .INIT(4'h2)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .O(ce_expnd_i_1));
endmodule

module risingEdgeDetector
   (validIn,
    Q,
    clk_IBUF_BUFG);
  output validIn;
  input [0:0]Q;
  input clk_IBUF_BUFG;

  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire q;
  wire validIn;

  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q),
        .Q(q),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    valid_reg_srl5_i_1
       (.I0(Q),
        .I1(q),
        .O(validIn));
endmodule

module slave_attachment
   (SR,
    Q,
    bus2ip_rnw_i_reg_0,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    E,
    bus2ip_rnw_i_reg_1,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg_2,
    s_axi_rdata,
    D,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[31]_0 ,
    reg3,
    reg1,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output [2:0]Q;
  output bus2ip_rnw_i_reg_0;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg_1;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg_2;
  output [2:0]s_axi_rdata;
  output [2:0]D;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [2:0]\s_axi_rdata_i_reg[31]_0 ;
  input [1:0]reg3;
  input [1:0]reg1;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire bus2ip_rnw_i_reg_0;
  wire [0:0]bus2ip_rnw_i_reg_1;
  wire bus2ip_rnw_i_reg_2;
  wire clear;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire [8:2]p_1_in;
  wire p_5_in;
  wire [3:0]plusOp;
  wire [1:0]reg1;
  wire [1:0]reg3;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [2:0]s_axi_rdata;
  wire [2:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE #(
    .INIT(1'b0)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  address_decoder I_DECODER
       (.D(D),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30] (bus2ip_rnw_i_reg_0),
        .\Dual.gpio_OE_reg[0] (Q),
        .E(E),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (is_read_reg_n_0),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 (is_write_reg_n_0),
        .Q(start2),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_1),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw_i_reg_2),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .reg1(reg1),
        .reg3(reg3),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(p_1_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SR),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h0FCAFFCA)) 
    \state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(ip2bus_wrack_i_D1_reg),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(state1__2),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
endmodule

module sync
   (syn,
    asyn,
    target_clk);
  output syn;
  input asyn;
  input target_clk;

  wire asyn;
  wire meta;
  wire syn;
  wire target_clk;

  initial assign ff_1.notifier = 1'bx;
(* ASYNC_REG *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .XON("FALSE")) 
    ff_1
       (.C(target_clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyn),
        .Q(meta));
  initial assign ff_2.notifier = 1'bx;
(* ASYNC_REG *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .XON("FALSE")) 
    ff_2
       (.C(target_clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(meta),
        .Q(syn));
endmodule

(* ORIG_REF_NAME = "sync" *) 
module sync_0
   (syn,
    asyn,
    target_clk);
  output syn;
  input asyn;
  input target_clk;

  wire asyn;
  wire meta;
  wire syn;
  wire target_clk;

  initial assign ff_1.notifier = 1'bx;
(* ASYNC_REG *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .XON("FALSE")) 
    ff_1
       (.C(target_clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyn),
        .Q(meta));
  initial assign ff_2.notifier = 1'bx;
(* ASYNC_REG *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .XON("FALSE")) 
    ff_2
       (.C(target_clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(meta),
        .Q(syn));
endmodule

(* ORIG_REF_NAME = "sync" *) 
module sync_1
   (syn,
    asyn,
    target_clk);
  output syn;
  input asyn;
  input target_clk;

  wire asyn;
  wire meta;
  wire syn;
  wire target_clk;

  initial assign ff_1.notifier = 1'bx;
(* ASYNC_REG *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .XON("FALSE")) 
    ff_1
       (.C(target_clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(asyn),
        .Q(meta));
  initial assign ff_2.notifier = 1'bx;
(* ASYNC_REG *) 
  (* box_type = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .XON("FALSE")) 
    ff_2
       (.C(target_clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(meta),
        .Q(syn));
endmodule

(* CHECK_LICENSE_TYPE = "timestamp_short_fifo,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
module timestamp_short_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [63:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;

  wire [63:0]din;
  wire [63:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "64" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "28" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "27" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_v13_2_9 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  initial assign \arststages_ff_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  initial assign \arststages_ff_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  initial assign \arststages_ff_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  initial assign \arststages_ff_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  initial assign \dest_graysync_ff_reg[0][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  initial assign \dest_graysync_ff_reg[0][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  initial assign \syncstages_ff_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  initial assign \syncstages_ff_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  initial assign \syncstages_ff_reg[3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gcDjvJ18gZEH8C+LHMq/N7AaYWSyHgvjIQn585rdUOTVX2orO9n8j6LNiga3BYkS91+lbHAjAieW
oD/8serz9uvKt9uVuyMIE6oOFFScZR6q2wQk1d1Qzq717+8yPCwgBT9HIhfJIHLujHt+cA2l2L5t
tux9aNBdVKkk1MHv7yY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
exhH3ieiewq538XhQByQWj7PMh1Y+pzdDw+4bALHgOXUMTZleYL0Pvhip/E5VwYBOb3/5i/ElWf3
Vm6OeE9b1Jj8xb7x10akeyRaNdCJYAtTqgb7gFS/crjXeoaYKJgLqCiyaB7LdWR9BiZOWqxEPSxe
/lr/8F8psti0kra2jACCbz94iU3qDIdZWH5kqd21Pp2/YczWpJBQzh+bBz9V+EuMAeZIzY3x2GZy
jOMZPemqiqFhSEcDf09mKK3xKEUxE+TPz82hd9ZrF5OjFst6mWMVye10lkzmY5Hmmx5Y/PVgPx3R
fN0tTAZfIDGH/YUu758U8UWOIcMzBHF6rytqmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Umfm0FNxPKfdryB9QccnkcrzqkPtalTpE+R0M3D9kxaXOa1YOGT+9jGc1TRZMLcN5NyGN3UIZcH4
LWFVfGg80k9RmFHBDZaHzOXaomQhoPSO++ArXvmvO5zgttfCHEl7jypYkuPgwfQMfjK7YII9Deex
KOC8JtqORVWmhq47cpQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cm7WeJnXtFlUdJuJH7wHYfinJTaBhpglyFWD2YwmOuS4fmVA4nXbX0IMaU1F1WGO1VK25KlFf8Nm
w8L6BJ6ZpH12xPIl3J17rMT4/3KHv9tpBWqeC080GeV5nISo8JrhOpIKa4+HBHZ6lYLce8LBAu/Z
EiBmDqw22aLsAuPAzAMh9yuHT5rpX9ykD9u0uZ5UplK05S0TsvYMUqcHNQ2hijt/lbxvUxXHTa+W
GJ5RRQAdw98wG1mc65u16hfZPsLimnw4BHwpyNGOPadShqb78rQihc+YiBTn4lgN1HhquWRGqCYZ
ZEjBmtWOJm8WJSTWtcpFEkmPlOTDmNX82e9mnw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a1mMNsEVIHwFCxw3sHygQ6eU3z5whgDQI+YHUmPAwU6q4vqfu2NVxu0z42QL1rV1rCsm39SqZ078
EGEqt7XUt6bdvI3yu4dU8gF+jou5njJ2UU34VmbOw/MQt48Hmi+hxtH1/zSlbNe2iOksDFEFTHmW
WGHgPS2bACG/KtAZMYK3gBtbnb9dtu+p5hxiQtwMOFnv9kQGBxcMaciN0yqy2TE5fygwKcNEua29
jiGUF0qgPS1k6qN+zLrYWkaVT0amR1MFXpv0WcwL+xVkxj6bBQhe5D7t5xCIsfLR4xqa5WVpa0dN
FkxGlIoufL17G/cGRr4nV4QP0sqcDCCHYpRoIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPFWI49JcHqYFxRrTG2uFixmE4jeIWIero9KijBFo7+FOCC7hJeSlCuNlwb8mBsI0Up57fm7C8t9
tb1l2QCfvy82JqTvEuH49UmS+8/GEnbK1QbVHsDIiv3/8cFn+0zw/VSuVeaN8L0yzeNIo8m59iAq
AQ9wOyqKFEhKKkbn+nVg+hQW3L/P25hisjV06sqmfsA0Rx4bYhFoxEvIw3A4x9LsBIIfDpgDsPzS
NICAEhfA7fWXKK6UsOmuq1NZLTDmFe2zEHijVMovzm/qqvHfu7fCt5POlGtLOPZhXGCDZi0v1yiq
VyT7JTUW5P/rcLgzkfyKToozq36lEkXd6VSaLg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4EV2kKcg5a7rlvEGr4AG3uvv0JzSoc0NQb9aIeE2gsKGq0oLel4q0oZ7eO6He8noW5KEowgkY0O
xDnerk/R4qxdSePYeRRmUg3KZ7hAHVEQrHpQ2RbYwK5mUIpQLjxCWRWzBjeWOce2bh0dAMR/4OH6
t95V8b9VWpgepcUXynGvLDv31tVgr+8LtXlgWTNBiJj2mTZ3gEVxpgGRwMGsampw9yKqBKoR+/hg
++FP8JJkrOSdB2bhnNaD4fZotMLkhYDrWvQm9z6rW7fwxA2oEI+oUqi+K+82oiLzeVWy7FhVyzgS
Y273uSE53DWk35UE9A6ebcI/xUl1iGqwdeZihA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gZRrJLrBkbil4BLf1tia07NzGL28f+Pk9zyPElbTDf8NEXCsuwTum6RjR5lvY/odzAYHlcKxpG+6
gwjafT2OV5gHqqtPXrRHcVU4p5LEzOOl5p3puqvK+1z2+YpHqxOZIIZPIH9kjtzNgcBmcU7S2sFN
zTxyAYuLL9sAN+AIQ9UrW4MXDWxUtdkwPaSyFIvuKoxOKUD5IXEY9NtBpz1zsABMKNHneOO8pAix
qg8S/uQ/XJ8Qggr+vE7HDUUMCsijNXvqbkLM3xf6dXFpOqanKxd6/GfTcob4sezm/hMOZ2xiXcfS
hsYUMRdO9H6fmhECfszoK2XMsMt6xM+vlLywWJ0I6u468qVFxROkf9vL+ZDq/tMiJOm7E1p+HDif
98f5v1OybtzlZJP9bDMwWYcsCqcDejCMQyYOgPCgg+2jTR1JezxuK7PpjyliT0rnu7FfI/0tRzbL
d5YqO79RN0byWVTTdIlTWzL/qBD8BLVqXzWs3M+up46dGPxbkzv44od4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A79lFm/8JnoMxv1MOWkY+AtU24uc6/CeGf6bjoYWLJXkzzHQooKleg9l+jH7oajoC3oVQh/sMXdi
3QmwZ5SKMt6sb03SC5BW7xPky8zyP6w8FRMCI2Tz1/GhozqjIbgSstUfCaemxIgj3rG7GkRYZ/2k
ualG2mpYDNyaxz1lMYaHfm7stH/IQlkCh6HHMbi7ImYJ6pILa828Ls3VREjo7dtXPS2ZDFxreSIH
2SZ3NpLJO0/umchZaUkt1xN0bsxgtGdOzSqGDpTJrU/ltmclBX199pmrXQa5p/q0FSLj2WkB043l
l3x1Rdipn49DvChkvbVzJP9aej4kwSPhvxHnHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFpXmWYmUY46GvuVucUW1VOu3+gGtLxYW4Ho/p4wggZ+jWrpUVhz2RSAxu+ufiLHtM9oYgKPaSYT
DOeuIJGTnxGr20Vh6Nn3cc41TyKAf0vxN2fGISEQQWrjh9OOgNcBmJfaHsSq7+5dhCaIWlGrInVr
GD5TqclLzw6cHAuPGxMi2wD4rq16RkDJnQbPf8ptaskWz81NxZfyWAL4T2E24soybpln8+vuF+72
IQYfLQh/dDDsNHKNKwTKAtGjpFS8eVSbYnS+k3Am4loN8JRflh0+c4yGUo4EkuRzUFiIBrJOKylp
qicgwQw7vdbe+yPl6moUlvA1U2CjJ87bsXk5CA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzklq501x4qEym07A6+Vh+O6T5Q1srpTjckVi/KQ8/P6I6xpFqHBBikoKASz9mkWuvFaf6aly934
etGfnzZuPuKCoMPixevIcq9cgFblu43p0H0FR4BSbqN+A/K2utwAblPur01qwtH9nc1azxOtPedI
3KLsEBUN2ObidzkZIUbiQlQ72wru0lGZ5uN6iiNcLRnEhqjdjWiOHf5qGo+df2QyP6S5zRR7hGOd
N5h9/9towH2UQ++6hnOd4pjtl7PKHWlU92421M+LhruDkz4Bw6c7d7EVdbIcZ3ub+l/OnCyNwQsr
WUo2E+j4vd3zIVA0gzTA1oLX73BJ1oxwQdO3JA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 100768)
`pragma protect data_block
DkuGn9jxe1iwFqHE+oFKgF54pQFOCE9KRBF8OTMSq291/ZExgoNb2E1kWSIgZxzSlpGf7Cw88UqW
+JZjaiB7kRUyrFP5J6bWjnynQCk7MWCTHHNGBQFV6S/jFMZGzpD/7twzXpLbNBUtaEqFYAG9k0A9
pcSxS4NL1bSjVS2WkLxlGewHLYlobQA5aMjY6bHHXXBlS41AIT+6W5+BfG33Z492eQeSgsxW8K9z
bezvhKco+SGv2T9/UZjCfmdRZe+IVlgx9tp87oUd8d5CO/K3Pnt623wMGgSLGt7AmhHLirOeLdXn
OBVvzYDElOcjX/NAip2BTL5P082fBaT53//lMfwERIn7ovL4nVo/tRvwyR6fPnihNvTBQjObbh+H
F/dXo3EnNkBOsYkOHU557dwKMHJNMmvEHMuV2qKpDbUxr6ZzbTchcEKG/OMWI0tyTEomnminCAvP
WfLYugAcf2ZqsgF43ueM3raF8kHlBppCY3cJzkjbngoHu3ayCiQOFmqiv4Q+ROJqEAHCghaaQSSX
9rykC7oCb2lXEa1ozvssEobFER/+x6es6i+yk8rnFX6Nwx5wybA/Y3oL5Qi21MP3b9/SKxvwIQkX
dg0g9rzeJoeOCVkZA7a7mVGTZlVVIk5Yg3k8z5ZNi+79TnP6NgB7bXTVHwaBsw2VokdoGBngH3g0
sJv1ti2It4wsUCe+CxwEvFUW7lo8NG7oh1tSxMaEoZrVtAWS3HvbNrydGXZq5pZimNw/pVM+04Yt
uRqEklsfRO9iqB8UzcgeP4n53JnxikkU0p8fopR/17zkVjTs1jObBQCCy1LR5n/FryPFyBSnh2JI
B/MkJE9EXQaQjRiZ2KZTrD+5zcwrk9vw3jO4XZnBme7YAcvrjTAmhVDsjN7sF+39ETv1DKgY8kgw
wiwLaw1pbMEGEETXhK6PJtBiGwAiBE/3VzFGovCvtg/DpmZXqHYz9iuNivw0uZdIGpYp0Ql5DVba
pbyZgqW0fIlVktUicoji7SRpB95+OJxvdrYsGley0DIObCysL3TOh1sB1+DOGh6NuZ0mcwTzZcMi
ARRT/di9DjgpH/jc5fATTufapoh/dqzPgnsHu6TE9HxCB/vBKHW0zSRIZXq9bMmiYZ4nGpeBNAmE
7p8t/HhkJ8D03p5d8WL979wFG9Ca0HlQHUfYurQ6tBMB4osG+Bw2K6hHFqJtIxpHxffy0WWHePZs
5iqLAYYRBbGNce3F60LlAsPuVMSWs3bI5+RdqgtWv//CSg8rlclcfRurIQcr8sBCOSQR2o/xC00U
3xl7UOWuYcfCAqZygA5xnUtTgIHNyd/rhPc37L1+fmmvm4BpgAP1gfiuqH0ayzcZi6LokeFCj7xK
ChP1NuNGnbn2pas9Kmx0WgXT1eH832YQzaf1tKMNqY8JvF53swM0f+SdOhmDdYZoCaoWVSgZuv3w
4Lkw02PJK7bQUZj4Mu4q4A+PN0t+7yLXDRfVor2gOWUBN4C9oz+ebbgdq14VArWvhYve1MT8mI11
rpZeIBblKxUALD0MiWxxrA3/kR+CTFY9yzNYhzx4+vC/ZpAWYUQVx0OsMXoFktpWOtW30aUafUo0
vB7QqMQCLvJ7AnOSByljgtPHYzXQ+gmepgHhUGV/eto7UjpX3DFeyjHA++Mrhtkt9CpbGWkhy0ga
tvSSIN54y1ISezI6LvRNel2QX9IP6K5iOjxjFwxM6ossfOxlpJX1fcxfUnh+7qoH5xi7D7TFvnqe
By/AoJO6IgHpt5cjKYva82VHhndC5ZPQU0s/NN7AQ7oozol7xkWn7t5WbIgCvyUHKe/h8S1dLV1V
6ZH1gkNZ5p/573Y8ORlHT/S7QQI1wy8EnPJosYrN9uuXNYbkYFc/RxWe/Cgp3wf6ptkdmxyukV5v
HyCbWaHBvCt3YMxvXXyfNC+UStETLUiEBclMG7nDTDkOxzR+PW4BkugkabOL3S/c2AIi2fmBUz4O
tETzzzvCPG7YCuqyQk6Oi7AAe2TWC+/sDk0uFNsHRC9RK65ewEGyBuo6WpMvoiDg7t8drzTVjGm2
8ftsYL7GzMDvVhErDA3t/D2hWOebL8jlD5BLdYiSjUf+BBm6GSEcUPVYoszqYpscgDtCcXMbx0lI
HYkgx1zjNWyzWOl0vHJ7MUOPBxSxvruCkNND+NzLxHE+X9H/s72GB6G01b2jhRzz1R67F9LHUzWk
l0cOeR4XAkFGTqchda+uFR9FU9VpF+eFLc5cgZx7YBK7/GF5L36+IK4c4KFwCPBgDXNKat+TmSoi
p4Ydt8l8JoW16Gi0fuzBljMDP12qXUso/sM1IIJKoS6R77AG1xbunjxvr6Oqlt8nLM/3Px+0Evtt
e18lWG+4GVhqU90dklLQyGSAHDac2t02/kasI4omHdjA70lG69Eo/BNRO0ahJHr+vV6+6yeABV6k
4HcU6f22AJ7XzyHtPxPW8eigNfmBOdjHyNKmKmTdGoxk1zXgDcvQ5mBdSuZzixO/mjwuJ/FoUIAB
aSof8deZFnmgkB/LQVv3Rh1OM3nVrKQ2svuDsnJjsQJ+SBNDrd56FQsMEZ+EPzdt1aNWl2YpBL2L
dQo9YuE0Ww+yBEY4O1uPgYvZEaMQ1TBeP1gbFjuuXsRdeffbZU8b5dyX7fgceg643NX858JE7sBX
jgAF1NQnnw/c/6nfmM5Xn/5QMbDKBMVbsBxY6gwfy+udlPcboZgwgPkNcVHm29owqj/Pu5q4eNWU
41ZY8/BiGFgBYTOAL7CIq4IWy+5ZYbUxC9bHaehHjVutK02F5hEVcXvrim2ZLfNiSOBhKeTLWKzE
zzBK6YsADL/0LGdnZ7T97u5RVXz+bao9oJtM9NoQKA64L96BKps+5H6KtlD88khvk3nevpdaZtRe
s3FWiPDInA6rr5SjZnZEmQuXV51rby39/oP8LTbPCetCSNklHOMtBcWL8FDivyMjX2X83c4ph/W6
iLLHXeGYqSQjV91jYerUqm+WIH/lywy3/wAYjiVgdCnEqdFoWm72h3KeTKBvUWrQLGq6lEtrX11o
icWgg7vn2gyxWn3CGEhAYFNPRIss755wvYYjHS9qeVQYgBeXXN9O1Agg1sYqBqC5RbzaY2pzXTbJ
pU1ImnKqRCy3XxT05Ah34pr3td+OSdLMQc58WgNhYJax6UVrBypGNFNZHkTMfdK+aJT4/GIrwa4W
Z8b7Yz5+dIvHsLpYxrO1rQ/hptJdigBrcjapCLUpyBR7iCxDopGYKfPjAGP5LMOepaWSAgsin+p4
ElBcFxNdToqaRYxluHyoSUsQf4nKWNdUHRRHX+T9T8mMCErECx1N91rYT1QbKjVBY/CkX+5DYIdf
w+pj8bDEF5E1QA+vsJaowDZihAUEI4zdx5LGPDdHZ/G4CVHLfOBQQHOyOZacWX0ba3tTewG8IJzE
Rzk8JGSnr13dUWH9LSmteZzBV2BRnkxLX214eObx5RCUahClN/vNEVVy6RKxSw7mW9XBDTg6m6I/
kTU1qfhBpnX3F2DyU3FlDGEUKboDG6iJRqOe8Y/oz6QG7UUdKysEnV4na9H24jYMkmjd/RG/UeSK
4+NXXKrKrK/c0NKRIEL9fMEUVlfyKs7Ad6+0MbNARxEwEvov7Jgx5rWrhNaRaEBxx45hp4O//JX5
pguwyVz9ErbaVfHKgjPdsM6AaRd9tj401d4+uuBvryov0cLLfgS2JBSgf/SnT+a9N2Z1WmFCExaB
hcIpTmYrJTpajckyW7xQqlaH48YA99sOW8I4bHjSwqGVdCpml7nEPRLOx0Cr02dXcizwoCR+D9uw
exTT6GVoyTHDnIkBDL2rXj8MZD12PYLwtu5rO+0L+TGc+dXrhpR3H45BWAWqtwA5OUnByxnA1LrT
hjN9pOC0sV0v6weJdZNbEsYUQ9ZNb+peeyut1mx7a5PVNtCgvf9Wh+xkc2WHanAv/E2Asnpw3fUY
/LfsNZhzm0JIJ9shjySaf2nb81oeFYKLnm01V8HGAGReWF5scYFMxDR8KJ0nq9+ROG2W8nMoaSF5
mqWWlbAURLwkF2F59Pa3bwfxGyJ3JNMVN93zkherfb7BOxCuQoZxWDxyOHNkWfeFFsITTHj6AMTy
+zBfIlIpcBkdXFYAZX/awdW5TQeLsghXWkp3tjb3G3I0kcCTwxXRA/uBPpMzjfDv1OAoeut80HIe
u7ZRpvJ7h26TBcipl3BNx161vvlQzbw5W/myEhMqnHiEzRmNSyoDtdkatgGOSHyJ4fwEO9sbnekV
dyIVydK2soK7woAmsKKNMCUcfW8tK+wYcUwST2Vvm4SniuiIbY7khYrycNEeqkvurpl5XSSiw25/
fi3C9UX4f+pP22t/QFlmglzLAMor2vtJ2bMzFTeE6QoDLacafg0/H/C4oh3hWQDQ+/wAucEE0Hc1
WchINeDB434PQ/t7fMmWHKoPWKJx+nyXDyTsBc2cjo+wNaxOQjJ4fOMyrpXGu6SteKwyvyz2R8p3
wOSq3KoxllOXBENGUavrBIHCilBtndd2uahB03eR5PGB2HD4aOFVXteTjRE5g9w7ACXLLb8Hqfxq
EO4QhwOffbZ+7H9Qm1jkW/OPsswD2WourbtLzGnWOOIdhY81zvZT2Pywalosi1RfAAevzS8TOz6O
pte3Ue9CbIgDmAJr98STTp8FGmubqJvcZjzlZUMbW67/q8zDnIZOpWuPQdzCx4tSbx5dnrSmSocm
I940x4PVS53AK0U/2vB6qBsIG0cjpxehUsBedSOc/Tfw5oEy1E9cCbv2agO+MjH8Twaw2/zF3uAU
4puFZoU3WAPjaYl/hUjYhzdROUeUgirAEKJK4Y52qv4gMQP1Grbb2qnpsAzJVB6HOgZ5MANWQ8ru
1fjK4dhLlf/DbnLa/gAWAnULn8lICmqYDLVDwLNUWkV49dY3oBOgI0HbS9AbyvUZJZMbMCj2uTDb
hcdZfRWQk3i/yTQVm77iUN2L+BwSKKX6+W7v9nKPeQ3RtX84//s90fTwUjIApWXbBZuvTkf5yhCC
PHdUQElQ41RHPAS37TU2IrsFH6znoBlnIyqC6p2C4ADDAfyCDJBPNmPHvEQ/X1A4VDcDuKP+cC0+
0794na4dYzm8UB6bPGcADRNmI93ZJmGWN/mB74bEeGW/KpEWHe1CqYXXz+xxE4ZGl98oYYR4Kn/h
JTsFWyE66HEC7cEYffAaK5hzYkWg/rgxSvZnfzsPaogoamNc1Zqv1Uwt+/VrfzJxhlCWqHBHAz+Y
rZv8+c7No3thg0LNHBoUII2z6E00y3lkQcuQikXGxmkmNi5666uhG0/8dBx2zjOnuW6XxnslP8gG
xjM1SRuT1NEL26Ex6fuy9ODCrdkZR4fqyOfFpZp7PtPnKIpXJHU6/iKC2bOGP2wJrPcfHDaiLH03
j94NnBt7NUnuyLqc8L0CjFXvH7sVYDPZWaalKqkA6q77kW92Y9W1XaSGqBVqlnSRgZfbZ20pZjBQ
c/JJKFUBEZk4nsCxZmMeZZklbM/IBPIl5diA6a86stj6/6zTwrwpK0ndie2oNDggLhtTZcH+Pc4v
k7V4SeWu/rf8YK+SIR0zhqBDlgaV8x8ua4oH0r85vU2O0x6cRTG/a3ulBjH7sEIOV1obIpIr+v4a
sbKwn3iYGZ2sKXuJPN5HN8dr1hVIhqAWT2TGpKfn9F5eXqakSicQPzHhKeoIifoTERxxL7hnOrRv
eWuqkaLOk/QTqvpiOAZNFffwjxtqz+C2+q0J3BerDtYUtxRBoUkavAlg6HblU62utyI6/mkpkTbp
mo0AOcl0ARu7Rxa8zVeGTdH60trrQnSqwE7uvKP0n4t9mv3MgmkR2keS578NEPMEF7lPiUO1KrFw
xN9ovixqXO0exeq4A0a4etRt9PsJ9KRV8sLx8k9DlxPzNwNIpIhDnQxx8XPdefKYwOfG8nM2UtuV
8qNW+e156fKq8gBGf+d8asF26u8r5RljSQsDHFCjpjc4MZj3C8mdtNDV0R1kasnn+zmih2XaFCH/
GH5h0uUApuUROVUSGGOyDumc6U2JTZxGozOAUuJRKURu6LXyO1zSrLq7CQCZSwu+ZqYGVELBqwQm
IVo0FPwetcvkO9q6GwnkcTHdmo2ubynozn3Fpo/No7+nTzafTG+zi/7QvMVMyqDGMjUFbClkzylV
qkV5qWEtALqoDf1SoSvysl5w/mFpEucvWQtEJoI5MQOYLsSzoYEWXKI76urc5lk9Ulcvt5r4l1XR
v8lwTDUEo4OvreziIFaF7OcE2D7wC7e2ly39gwLrp/n0yun/lf6ZEZKBmjH3r5vYqtoJbBjazMns
y6Y7jvdXPD5ONVpOR1/LRZnlc1x1fj069NUFW5CbLu1Vt3CiUFn7eKonEkJlLXag08rldGUk3Ze/
Ci8NVDt7HogwThmYmeRFj8tm0pgZXH8QGjo4Q/NPT46Oc9oglh76nGgSsGgJi25cuP+rauXnT+rZ
xdVMkbt6/rADkRetFi4leZKTPSpm5TK4JszT3xe/aw/sYBBH4C/Zp7J8nHKalrlNv0WKwonycPr7
/MwtftdtGutYjlhzCwSsLoP8qJ00rJS4RohcS8RE+p77gPjpPazjC9vOAa76Dwy6ZuEM2flNCEpu
SoEspMViJUyrYYpRYESIMJzvbjMXfFVIl5hxtWdOO3ZgIkswJWd0NME6zlJk/cabwXjUq3xN3KFG
tBEwdO5l/E320Jb2d2bKE+FOmIAHN+GQg1V4gdqh2rM250X9BvVTwh8YNqMYeBRtSFCEmdWzvmMV
MC2AQS2o4gIh8F0TedIDkzTvlxE7VD3cL8WGktsM7SbI3gOcUtz52SGxIOqTa7kjOHlutMW5gyln
a9+1EFL6u2jEwoiif500VwT4Y7Rq9p6ksQOnHZyEQI2kYyTUk5WWr33vS0PamtG/dE9wGLxSpOsd
hlT+9n8U6+qI1mV6ccfsTjqE0awn/XroXzH9ZpTp6zFRpgfTxcIvvdxT6opsn/CtWctv0RIsmbQu
SPzdHMfmqxbyjl/p6LXHp3ILWKD1CBnn7Kss05SzhDvk949g2mTpXxmCcjDDCInQHM5PyezrAzqX
nk1tyGSs1F++mM2uMbxb57ASe14y4m6oqZQp/YALsTFTPPSdma7fqTswYvI231+sOu53wBXzSm1l
hOl0iqu/+JnPyi31+wedNd080LQBa7GrIBb72/MlSyFUadJohsWCishrY9S5UaJFD+1qR4iLPnMv
arqZedP8QsMNCsyMI0el38iL3DDGkG7z7tHWCXFvK4fAC7A2nqSskNS9c/oHPI3ss91ZUfXic77F
9rKT28QqWKtgfN5dlJBOtXDZ/gtewSVVAJf+s7Kljyj+prcQqUiwsb7MHLVky7A5iz78NkZkxzkq
XvVoCVxBsLCgitPXYCPOf9ARF1jpNtF+S7tQ36U+NRHdhHa3R80X4JpO7lpelehISQJhn4Hq3GPz
QqNbikQ7mCOF9PAMx95F8Az0apcatjp8A1byxuyWFx+HgQ5+W/SLty+aWHmeT11QtoPZ45hUwTTs
ACW7jkhHS5mNgw6GmonGpkn5SKHpbXZLFseDxcGVokD746H+c86l2dvw6ToAq/YDk3VNlqev4gHV
2HrI/xkqiry6S5AtfxR5wPz4ILUta6eu8RIJprnCa9YE+Gt+2MY9M4D3r6H8pNjO18fhMUiWZqgP
VzxA693ue1tNHv0/9wxyWrn+JjSaWqLM3dzqPLS/6kw/55EWU7z07GY/st34WjcyFqE1KsesCVrk
zd6es5CnLwai9qtW3nGcCVGsGKYW4/NxCo/jqf8BcThzvRJPmi3gC6PO9Ukh2BkOKmR+QD0+G6l1
8HJbFhSWq2HroDtE7QaUHNNSth2BatVgyysCJTFJWln9z5x6ypkf9kbBWaUypKMAIMyHTZeG/Www
+AViPiQEINirQyp8qMisifmgZwKfEtr4Jalzwtvojz/Xq/xiX3qXsS61wZKCfhQxHne0qI/7nRLN
Kaa8AhnxycQdbKnntaivIq1SNncwwkBWe3vhDMdwjXIu623qoQnvYOFrHkMEhQiw7AD8/GKDyOWy
wOU6RHtQ5YxVAVwshK4iphmBGVAmMMJRs6S5HvXEx6UtjqHDSBZ5+5jU/+30Dk6GsJ4Vvr/Oh0gF
OX9sHYKb4leoSm9c+6k27BoN6GS1kJq6YQ2nlQ/8S4Zp+YFTwjscyzTGbFX85jYQHPrHj72CMDQs
sK4vLs2Rb7+Fbjil9e8k8PMZSQtXui84wG5OxbTc5r3k3Ad6onfvUjEhLVfyr/i+03yyi19OM6rp
tRUMBa5+Azr2+L2xSyjlhTVak1zkg/hgvHIk07ivfGN1SCaQVv5LOC5/YYFNdInCo1K61pldbA8F
nrbp9591Z7RtGCibMZZIc6xqqHfkzJVQsi0tK5BzQ/bdlz2PR6LoSHSBIwZI0HHrDC2G2sJ0L/4k
3OiwEXlmy/0e7g58XKoRB2TvHND+0SbtscfZe5b1M1pTHI3Yvyxwyh8I5CFaBtc2V61XmCUwW1iz
8pqoTgubehEKzCVM/+G9x7sWJZyeRLKrOpj43JpgTTjsl7DYTGDvORn37r9b1wEB0X9cDT5TjjYx
R5uUmSxc02DoEi6mdbXn4MZSujwDgxV+uDjOlfWYOMa/QV+weCWMv9GGA1wtlLWbhWB1QsXXoCwS
1kM/6Gq7XtDkAUz3Yi30+zl5SYIR24om0wp1g2BUZkPhHd2gQUSKIduEa+JdZD/2H3cu8FsEWmHR
IOOXwqaMiiNq1QLbMu0tOZFeuLa1uMQ2P+ntO5Q/44TDQmWbPO4fmW6p6slvgTa/es9/ArBlVRrc
yxeFLNegHQCedQMXrf8PMw9T2FU0k8A+oJNOqpD5vV1cnEnAcPeaEXXxj2572kT+ygZoSijk1qcf
Lpu4New7z/IZc1t4uHfgNOw9s1Fqy4VsAI7huQjDKUO75VS7xUZZ6kiv/a58WEM5QMgNUCSHGMQF
MvgKDP8ehAOPqTPDOgfdDU17WSmwZAwq/Cr4AmY1ueM1tUUiKi661Cu6WkNttsrUWcujY0EY8xAm
BsHy72y3kYkIDKyJtyRT529cAMDkSWDdGHsjEa6piWbsTr4nH/9FdoOnx7wAT/SGfZ1eLct/gOzS
Pl/RgpgL04v3tivLtyk5MkzO/lvBi2xAqAJEPauCrdciQei/bQAxCocuRSgUzv44OgirxCQttX9r
zm2ACBXCeJlz2lEbjM0/NMf9oQHvQFQNGaNNVKCOm2Fh6QWPMEfs1+AP4+JgcHt+/yumJgow6l4v
z7WdOsNuAmqMfZJ5Xt5TxrNcHSQ3btX7owAvCtxggNM/w/YT91myHtQWQPQ/4a+eU+5V0mxK95t0
kvgCmxCu44YT6GFruXIGE/2vLWtvM+u3EX+DKuAAVm2bcRWTdeXNVFBXrKVJh++VS4l92bJQWGTG
nUPEa4vPIE6dVl+2JyqHpuTAGMAbAtvbThL8Qvd7c25iU4WwhMnhn02I0xIZ58aPXQCtlLLsL1Jr
y0T8f7dxvfPsuyuSXLr1pLDMtN75On0JT8w6+1pHqI3Wd2AGPxGzXTZ13GB/2/26bpAB9rO1NrVW
2kMn9RQD0krNmOdmJokwK3/ncZIy1VRmGbMUz+sQZxbDbjIKbMwFmqLw9uhqJIXCnArxKoLEo2ro
9Y7zG1lTkIQ/ZC7u9nucjpBIsM/Mxzf8u2Iion7UWl/4bQPcCAeyQFTXd3Q2Eoq5c5LuqhLQqPtW
5pOqiPe5JW8ORYAOKi142y7qGGNN2/LTLfTT2RTEIiQhAeE96Z7+rdxpSh17heL2II9H5q9lYUj/
04clQ9O8OaqS+icubEbGJOh6QurGGLIQMLEgG0f6z5mYq5dkhQw1SxITmaZv/57htO8ZpR4ljvGx
lNQDVhX0G6DRYZ/Mg6pSDrKT2X1JpEIDTfTNqqv9bPLcSk9tsl2cTfDX08tNmoajCGJiDcypA6YM
ECjDjlf3qToJDBFl4Bufp0Ind6AcldYYkLO+y8pdOrS//vqkYEThtixk5Kci570MSIy1jGvTIsR9
ys00FQs5Nsg/t5vduhyc2J5WB+Xm1ILMj2vNvgccrhyb8tXmexRwVyL8+F4SEj6wVHyjyyjFl+et
vQw4gfID+J2Ba4PAzQbjcgCL1/W0PeCQZGM/uHJgCI+Q1SQUv/l13oYDiEZ8ZI7Y1SW99keZvHHR
wQn+CYQo3XUYQs7qJUPwTgEO6pY+cO3zNd5zQAVEFUr0MpsFDQGCEighLZyD7I5JJ/f9mIzFSg7z
5moLsS+W7DdpgCnOES5UpmgTn7yZ7CfaCeot+AhKWLQUZLTfePDVDUKhNL/HXwzSMoatZWfwQ5rP
cjpBoP4j0pEF/1Byw4SO+UAfQ2qs770u49fpfKO3VoWCza4tE3N9VvLZbHINhrnFcpDKkM50HM9P
/DQWnNq+KxlJpmH+AmGBRwvZv3JoBSwBVtU82YhMISc57DMCAacHarnQgMW65PoeuNjWkNeKsLkt
ovLz9C2oyTO0BpOZ2riq2exuRVO4EwHlsU6qRCdlYAWCH5Wn9k/l9o82pGPGxYYxJEc1j5z4mJeN
fcM7piElPKJTW7zMdRB+99VBF0OqG2UH2gjpqctERnkje9G0iBYv8xAG/bofoopUyo03BFPy+RZL
lXozqIN/GPjvSdh/np9kR7CGDFq508qo8B4wb8b9P1zhSd9uqG2Xj6JM7QJq0MCLR2pFaZNohvXa
AF7IaCYyPMpwuq8UxlJegKnBiKqnDFRmxM0pmP8Ckv4L41os/UAHxmkvaIvtYeysmekg8qoh+bpD
gHNpOfcZMQQ2wHBe8Gwe0QLGz3aCjn9JXcOQdF/7kvkl95nJC5cckzuCpF3a5w+0lmXkjhl/BVQ3
8J9dHhBgdpKKasbjEPIEFYEnentpzHJxymrVi19XvSLvz9OFA5Q7sk+ropfne118Zr+NJJpZFbKq
Y+Nadyh1ADWA72+guHBq7BwRZB2kfCqN7nT/iJk2hd1NGINZyN7Y+YoRP6VEaeTLGh3+YBeDr4Ls
+Tncwjld4OstJpx748K+a9nSO2hSKIoqoxfMPExbJTuf3VXb1ims+szs4KAyuuFYxDvhcUUq3Dl7
GOaoSG18j8Dse0Jy/nRfVk7w15nqKscX0BO7lFOGcZjxFrBxgGUB5GTlFmifQbTBZW6/cQOqZeQh
vsqXxar54xTg4SFHJB/jiLWXXHz7oPJUWiMUX4vyuzrhPi5UGhEKaczzhXGrYCRd5aLzeLOyJDfT
EaU98v2LmD6/C/fQlGWIDjdRLjYB9LcjTBANmNksh6apkqHtSJ6h/ges8KnWt2iQEFumhUSTaPVR
ee8Jjn/kVniJZ1hf7apb8iujfWS7Z6hV7JvPnVMqNtzoK+NxL0RdXGWim382wbJUzA5OlDs1RCbo
ifFcy/lwtlmPK2O2igIDb99kyywG3QXuZjsbgJUkeTVvoAGmpuCOE+t9lsgTUoAewuRFWzKB+aNO
maZn7q7rYpzuQGOnw4T6Z9f7zy8r6KGPMkNunrVotD1Y6A9F9yBg5FevSDR7RkD3/dLG8XzyzqS5
EdZjsWG5rQ2iRXuK7H3jep+YALajHE7hIbYG8GvfMpq4xC49LG7+KPRg6aGvLgpgrJQ8RXX8fXV6
JDMwjsewK40tDBEZLVFKL0FRIEaqkk2/WRpE0V7iLmjPW/5ZqPmaNfm31kovAXt/f3/ZXR8J29l4
ykSpMh9fCqjOJY6q5HkXvIxqP5/eR6vtxv/P3etR1jrfxnOZU+jRulhIImWpGP6wwi0qmaxj6BDn
eymUvzNKxuw5obJPJUeLrTo1d0T+d/hWOrGvdb+sczJr8uu76aWBN9TkD6BYn1vWIb8T8L6jnscJ
J8yfQQA6LqpLOKU/x6eY+/DoI5PETX/cgjybbmQjQhtP2hh3xUmQnWFb55bNe3GhBf82NZKDepXc
oa6ficY3s+RPSRk3OHRbGa4O0zOKg1kwGLA+SWD7hLqKuxQihIhNiWLXFJ8ppQjr76cXV56W+2Cx
k9xri3skA1zFlQxeZP1pFqFsJBJprGrH4VLTujj1AR9a8HS1DsOZdraPjXheZAL0QvgpyzwDWw84
L20NGXOhJSz9RQuOE0OSnMqfvoOL7ZjWBI+nUEWqDdhEM7wvOezy/BgbzevGB8LmLu5Cmjil9rwb
Zhg3GrqlWbw8CHvvXj5iwA79/U2IpaWS8QkA0NfmscVElBAYUZteZrZ7Yk55zPOWq+m0Z0ekyQfo
iCRnySNbpPyn+/qA9H2ZRauLslueh5wLHfOWzh9Ok17Mc2hXBZ4mlsNk1UQdql7SE8uPmJok1aNe
wmFyj5dJ2LGnKHjQ6y+dwURNViXD9bY0zWyKol5v9u1jobafvvIaIgmMmcTQKPgc/Sdlwiqkz6tg
KG760Hu3oac++2UA5/r7ObG1L+iC4oLsHo2zItMxWnwNob57EecKVtSCq+E7E3UXUtWGEca1/t1b
zetrqpP+QTVhmnYJOe8EyjeNhqf3KLMJoyxbcyvzLfNoGFIWw3LHsCRtpxSWsT++EqlYWrJwpznZ
dcO3RFDGIf15t7AbFBvXiKSA5Tzv1GbK/oeFCdk8d6mbdV4x4qJ+KIx00JIlajypaMuRlEuFJUzN
TzzKM3MxIyqVqJBbQT6x76E0X5HG9nEV+Z75r+mjohoTQEC/74Gs50Po+GR3LrIccmrmHKqjzk10
p+evFMsiaE7LLgftXKEpY9HN0Mj2uETc/UEyXMetZm0Rqk8LgQSRHys5EZV4ox9VfPWkyb96S46S
YqRn/K89Z5bexiuqdkDMTYZ5qX7PUWwecsfIARog/8Rj4KxUrphH0uBsvYGNXZ1ai4r8kCFEgY8T
JGQlzMR1YvVOsdR7o5+LU9iaeuwuoay5QTQ6RRy3ulLvAsVXTwp0XHvMF6FJb15h24LXl5o867dF
FD6+XV/JZTJyNbQK3WIwyuppfc1v3wLwxM01vBUblnbVlNK0MH72aHHnRssXhHThTOiElPASc2p3
+4h5NT7CtkTAJS8K0jFaEJYmbnXRlOeWG8eA/guNh2J7ZqGakXpRrvygntht8zJUuiLvfZv0GqBX
03zKKuX8yuasOG+j2OHrwfboJDDDWdGcZQPq1zqyZUOCfn/48zNqUuFVzCvukNgp3Q+lwzR+o2wd
Y2pZw4pTwwNMsUK3zXpFyNxpB+WOqsJAG8l34snWoG/qs4f4WRWy2n/X8pXwrlS0dYsnSACmMSWp
EHniZxrfTYK2jYgR1UO0jILmR4FZcuHHIHe3fs43BkNRbdTT2muPHnBC7/7mo5hJ2MjHrbAmYC8Z
4H/W6mfglITuUndNAgAiSoPfbAdDL/bgwRw7ZGTfzI1AR23Vs1MRK1D3lNYiApsThdzQaJxMZeyG
DXxWuFYlDhrl9fMhZLRaGJ3YbVavmsGxF9HPSsCFeEwUnaQlFo6pQGKqy+erpYT3WCw76cPAqEeF
CacoHo4DJkjTtm/aEB5iNlTXVkU7d16JcmxZNNie68t4khqDa462R7J6X5qDIRXBxi+xBHCWR2Gv
otJsu059+naOhV9Ip95gfVHjlcB35p4Lv83qVagH5NmjJpklPAhj05dbVz3SP64of7VyaM9fPIHq
cXz4bPNa2FW1jap82gPOWkO0+OcxOXZRokXA3senFSIDfvJ7Ftw/8ApOkvxP8SEXBNqqf0YOSTRP
ZJ/VPkN1wMQixBIEvebmjr8IsvWWVGoJh71JyMhSLGDIQgGm8eH2oBgBKlrQl1khhvPWYBX3fVK9
rqsR4+ji+UJSknPdFFXOT+8o+w5FuFhETBOKPS7SxyvY9hYtURu+X2DxtQ3IQ7gLeITb86yniZ8X
lQPNm7wqVvTHh4MsZ3vQgsc5iXtIOmrtIfytz5zArXYsKjakaInH24s7kpecRO0pjv8OJ/zvaycJ
WoKkNJpn3/jFAmG8aZvCXkflX7Wk6Tk+d/YxA2N6BOU0rwMoZh02/rOUzXROAarmuoZLiIYAZ/lU
DCHd9PMrmv5otFlHMZSed16ch5V+/8QXi5KDTs2ce0bZFZ8qaHEukidK26/eAxyF2Pqq5v3gPhnm
tSzwwQRSi8ikXdPb90Zyda5tx6WZr3o5qWwAAtCfA1V54BBFW2QPDKehivClHJX5PpFCuzdZoy8r
/Pi2rzeCr8/mETJxsq098gIjrRWlbkSMGDneuqi4FblPpjp8rhM9qlXIQYdV6TmOXYWvJmZ/N+JS
tvJC/q+8SkEVPZMEc4B3elbZFFx0JWV5mFjLLH1SUbN4VxEAtO5JjKHCeANweem7SPLGgrG+iiXM
vzjtjZ0y6qrjvUsvWK11v0epbRmDVbK8xRktAUMtEk8sia5Qgg+0ndnaonvnzNaJFctgQ8ynIiTM
QaGdKTzV8542D7tieQJtWL9DZJRh31DshHzOtwKN6G8hX/P8wDCtvoyg8VX0e5Q5PxQUl6rJ2rTw
AbAwGnvah6PQIKhQUAbUCWAl6wWgCxo57UkVikelWVHqrppqSM+UR8dD4YRGdlyFxT5itkiMMytY
YOrPUHymLhSm1q/yEg2TKOIrELfN/pSi2B8Pzy6vfcuI2FZxQLIvQHPhguf0lxEys0cMMfpYhUdl
LGj/DEtDUj8juUMa8VMZj99zWB1vqGB7rnfIEpQvH69uh8uZEet/4i+yJS6Xh4Jk/sqtOqQ5hlr2
xm+c+z14ITnhK4j1XFEe+Au4rk84k9CDqvWLa71+Tbrug8MVmdnvIMlVK/ZNh5LxzPOhAkPiOMt1
niwH5F4ibV/0gbEjDyu4FJYajXSjEdNojg5DWT/uAGLHW9JzthTfMNGEQHoTYy1JeE6IN8eYz24/
wtj9lfLSh381S3Xv88s/GZVAnatEm4xhhFBUvLAIlmR1NrpYywiFVtKOp5oCuBG5CsT23o5NurU4
aXmqYv5SdqCBS8GAKOhbBKYnzMJIa7pBdUTzHvAe+fvb9mG1rhNnza9tFFKDPaswMnOGzRreu6ND
oGsdquswDRFLbYR27T1I2y8WZLsodStUO0DFkVc/KNYQcHPFl0YtPizx9XMAb24dLtf5vSLuj4eC
PftCDMKT/X+d3TCjbaRLJ1oTmvSqvSuvTsz8l6e7qjkkteKR0erbXUQXKRDqUaFFY1gXBn2H7WXG
Z0p9F75ry7kQPq/TolO5anbYkDyko2l4KoqZBiqxmeFE4H+6qgyOVl519BoMLGXh1D0xC6HZlIbb
hkxQ6qhTfrKGJmNc6GEMIK5OcJjXNsOI6IyP78L9B4mrXfgCGbrzVqwyihfgrovUyHg6pxHN4SRb
bjdjLw3fyOxZq26IGbkjlmAjm9FXhDcIgBSdCuMkvgljBNvwgK7MLgird4v/QuBTd6oKhkB8FoWr
hDSVOWjzDkRCuL753Alne5lr9j20o1pU5vDBezz1eijm8scYbRa/Tz4socZteM9n8IxDu38qhgaF
DCX0nybyTBYUEYQ7Xqroc/z17fJtyuqY2ojkgaaYEWkYCHqQL0axw2WoMX2CYDJtXVLFcPziWAYb
Mz35d8KhGykyBitzld5P8T9aF9H/Szy1rkPSO59huUZaMoCy9cshX2i700riF0IuxWoFlGi4foxu
RjSrAvPYQTptZ3iPi4ZjeGiNhTK+dT+yQ0pa3Z+IU8x0BNrZCiwHqXBHbu2Kwl+IxSjy357eQwtT
toz6rDYcFLD2B8Du+ip5VwxUGtQJ0wM33oEex0VPhBilVJdyQC9qyl9jHAlU/qqtaSj6aC/t4BAX
uGHR2KCz9EOQmoxm2efDfNdaoZJB3hEGK8fkx0p5J2slVLJR2OR/5z12xan8xcxw5N8RIDGs40Y4
wFJgRjp7IJJ7eiK2p0+IS036CQ3L+DtpC0rdN5u6+z/mzlHEYUfw9GQZwlb1zQIr9g90n3HHypyo
aa7XpTnjrt5iZJB4HXVOYr/o7b15dfw6n5liUye36oVJ689NpT1DZ+1XanSKIK3MG34LB2InirdL
X6F5MwBpn4X9tElbQ4hOYNLxtGAXp1PECRKVnRxRioGmE3N45SlG9Bhq+1pJvGxj+2P9mEg/nFml
Ac2a63e3Xo6dQcHdAmmsQv/gUdvROG8gnyMxRLAm3KWjEMwihJuw5uRzANnoUqksL6MOO1dJuCBE
n9blylFFEav2GVAB+fudMYv81E7RllN14y68OKexxU7ur2/cosnp+5ROCN5hBRBLZsgl67TJPbpF
RqBjXm5YqTL0o4k1RMAikA1Ht3Rx0HKlyOlAmXJWI9lCK//rXcQkTyW4LgShmRNKwAJj/oVPB15N
Q/vqhIMb97Ezp001haq0AS70xG1ytrKCNw/07xQ6y/8+caGzHSsykFjbP/i4eJ65xMsvokK+9hIl
qWVksXCUVSCpKiw1N4EtGCJ2Xzs2p4M8XTLV6m2BJ0Fg7tAc+C4qNW36Py5lTAVEsUTf5XYSxdYJ
5kbmoth8PWr1tj2UVSqYc3Vgc1hPiO/a7H9YeHhunoLqI1DSSb+XMyiPI3FMAmP07WBORZqmHl6L
s3w1JheHro6BRoV7g3lFEGe72OYer7O3kMP1r5EK8JS0DCMAqM6upm4I9Ww5MfPGigycSATgQkA5
qOdeeOQfUZTpv9m5O/Ibmo7d1sOYJM8rXa/6g6O2j2muXGQKe1uncWIbnhsYyt9gb6MHsdg4DaZ1
AY18u7Z36Z10G6/IYS6fq4uogOVDY5LHLzElMA9oa42befNa0nEFyJsQJPZlxOsIFpH20ZtOvGy0
eMjJpTQR5aLmlUtv09qPWYZBPt+RJ370j1Zt5IqHISKVq4+UdTOWbh1EUHAY+s9v/aKGLhim31/J
ue4ZN2QM5/MpjSARsdDNNf5m2LIrn5GHHz10XYlC1XPAtMZIcz0y3y7yMKFC20zsjjSaToDtEnzi
Lpx1NDPA6z0HjAQGDdfCddzhYXOTKejYiomQytUwRkPbadosrx6AublANnPqknL3FmkCIru3oRsg
/cvcLBOdjpknrP2JxwcE2fP+zHv8xtr5cz1Dpzkk0+ykgejML+d8vm2NgJuZMrkD9EzxIfisdlEV
7/vqvnTG31e612jlKB2y3Q7w6hjNcgqXBFU45ckYtPa7ZtSipvioqwHd6J6KLz9y/dojfTHY5AtP
84wcnXpEwxVBm9i0na+nIMXiNCsxpZABvC0KWygAgfUnfveHuOLdoQlmFZpTCw9+RXADf0BaNk8o
OFk+k+4KTIA9H3AH9IFuaork6j08M8VnuD4teO7Ie3g/n91rve+ktlh6yuVPATs9w194edROtSEI
1q+hO9Fova+oDOJU8IYvwhI3OnUF1eM7DQCX7w33CDa7wKFeA1mn2nZqAGz3HY3X2vSkA7I6iys+
3RkJE+BUHBD+rBean9HvZx1Y00GOmN7+DQV5tfJ6GtLLTFj8+N7S2cblnh1uFCPqZeQUYJJavp7T
GQgE9bc6LBOj724ZOfZL4MJnDrJUsp2816bCBhnYk0WGwR2CKUWNlM01vmZQrcKIfyDZXxsoWXL8
u82RfSAFn9bvKTGPluAokCqiNzhYe1JD51LQkYyp8mhCf1ZwL8Fb4S/F5/QaPJs+MU7nJ1pwpv3o
/Gdd3CsWy6bZCJAVMjZi4PhYqZNJw35b2eK/7nbxC7mgvWF7rlXON2KVqCO1ejXpK2cg7qdtynkQ
p52jGUG9zCPn0d+vQyEEVUPsnGqb+87HvR0eSUDUiWQ4ihftdYFcQV6OY7Vd9A5DCYjAZO1ahN3C
hB7tiHbcfAY1I0eA3AEamN4i6MHaV2YYn0RTuz/wNJq/pLL1R+XU0ejR79SqR7YZMz4stjXz3PTv
PgsWeLL8gVL6vX7ES1l6+A0EYAj8w6yxaQHEtrBHkfZrDXf4AkaNamTosuj6yu2tKg3BNm53ksNO
yYNlPPwoK9dU+GEPxU/x3RjZJe2wHQgBl50s3/QR3MW+m7S3jkBKwGpNHi+wWoKb848Q84w8/ifB
BmZI4UcFTZgtnCzluw0/dEI52tTFzAZkBFct6CtdlYULkXHoi6bDxH7Zqb6k0+eyFICJIMKdkfzS
lUnsdf13G7xOIvHFMLajW3cAjI5sWR/CK2pzOo+rndD8EK4JFf1BR4gs6I0dZZDq56kP0kKMYUoX
OKh0kJf9ILs6r4hApcehK7L3wTeMN8h1i2UPLCbp05osWm+FPzyj7k6zMq+I36Ck426JQ8/wED9r
YyXoqYhXdZ3WwnbCmewj4/LUeQ3lUoNeLNF4hpPMl3riauSD7ZfyiPOM1KVY/Ur4P5BzTLEw1Qlc
SSHMfIobedC8cxBQsnLJhNsPX+vId5lrq0o2/GhtYEuwCCLdkOJVXZsSyJVJQy0kMcU+Y+bYtxT/
7V+oEcfWZ7XOhr14WnIJcJFpBySiDTe6LAem/rmdrSPmok4hwXBhJu0UkfLivrdcX7XNqlhTjMGF
DESUImxlEYBysRHWiwLPx6nQvz9ZzREgliEhY20gspubiSlUQmXw5YGQYBd+2hRKZpMREqI3Sq6C
DsxbbeWn7Hzo/b8AhZOSJJDly38vhcWrx+zpTY8ta/XANlRhwBgXfvFKIKqoM05MVyROFTKY7Rm4
CdWWdYLIfaCpHBv83/GfpVnlv2R32a3FWkVhqijLgP64HiexttAK4Qfts6pC6d7inMwdDfNfUjl4
rwFQSmrbSWnADiHz/FHbL4s/0zn47tr94s56T83W9GcYO4AfRd6fpDT3nk64SsD6xn+YPPyd+qtN
FmYPWYFoFsKCio4NPgQQJlw8TNhhxFeCjLWd+UFXPnqmT+yiPENc3a9NHa9/vAQruRdPw9+cgbhj
T8sbxiGd9c2vlsxreD6RIDl8G/PB9EHgK4bZmy0+sn2nn8UYUnhq+6QgKbXZkmzli2VPltE93zP4
PHNBrI9kiDXfbz9ESjBhsajjoSbJDHj1DIdefuGqO4h4cNA7S9uhO4UNA1Q6JZQ8ODdIiU3ojzGL
UM+Sh+KMTxNqcHtekZIV6v1ETy9eBR0BpqxAqM5O0N5HeJR5D8Y7zPdjBsvwrwlglamIWbKo3hZf
GBtBIo34Fi+vVcFNYOsz1XO9MEHSuDf/L2gkDxnM6eDYIikUlMzTqzNBd/BTkW5gQ1vjQ/4tlIAq
QWVGzAaftZwahbO335jE233/uwZMvxYngbCToIy3g7nyTtiW8tHCKEQsTu2YZlr9iHHzV/5Lhh+L
JrxWVg70TEulPN6tBAH/V5Sd49oBhCNh1XHgJQ4MhHWMnYIrDlbNqFJ7+xYSRlYMZYytnnrWaQHb
amR41X+JC3tEloY17ub/77W8uVU0Ro6LU24rECAGCHXbWblJvQqGs0dixCmdjdaX36X2tcDXcoqL
FfsKvd4aiYyFDEPinrrW21sw8qC6h/XSv/7iNlo8mWB/1wEz5ZPh15+WzISG9nXri0gyxZjfTioq
+ClE9NJHWCt/Gd6N7+KqBJhW2WRAnDqKPig6gBzI951ta0xd1QZOOwJoO7MzwApzI1f7mufKZfoA
SycpLMhtf8jhAVYLJTyv0Z3FOW3I38viz0sHEZwG/Iv7tFHDlmLkHAKJw+4PWmtTRgx+QQ/SWvZJ
Lla0qFKMe9tK+sD7J1MsZP9otFarvtfsdUGBiNbEl/A8ppC0r9pr1vaxISAJc5MCWX/rjaOY44Yk
Z1n6SUgn6a216geDX4ZKPyk4saCZTTdt6lLoiHnLGiOektoRJCZ22Cr/kIziI00BP+6Zo9CS86VO
1eBi+Anf01Doy0saUSbIRu+Isznh+66oqYdmiaO8WW8FyXj3zs5X1B8GaqJrKiyYGob6igAcjH8L
dn/n3iL9YwnKbUpLphlVS30jRAKn5rBbXKtrU37ZLIn7SoU+o1oSh4euRt05u3QLBTJ1zTADXkmx
3uZ77oO+4JN49IjEjc9fnInzWlvYZjrldEKBvr9/o8NiMg4f8Q8x88lX43afpVw1DvtW8cuiAKLb
fzeEcQfY/etRO/i1qABiJD1wLoO5nER6YYuUbcP9rUhtbYj4QFCFyZay9nEWIh5PM1/viYhsU7mt
+Gz91cL1UogjMgtOuSLvYaRfDwmoLO3r9/DS12N0SyOwdUSC6b5v5zLXpBNKMmhVTZMy14rW2Ou1
FQQDgJsVfFa5+TGFU1amHXRrt8uTk61YudUjn3WMbLG6OAlOhIvEdIPVxuN4qqz7qX7HXw4cWE9B
k4KqvegRHtVMfoLSg0nA34kqsJVgIDacPe6Rb7OQxrEYP20oNv2kZGyZSBl3t4qoUxbX5L5sZ6+T
YwgEfd2CudDmIZmQs0rtrXdVaM+R+NHAwgctLxe1K5pG/cWVlBBuVWtMWao57y6smxQ9C1kRZvF0
2GmaBsMuua1sC1qFi99z8VDKrTMS3281P2rituFPWsuAtRccu0+cllKtkTVOqz0PFLU/m2X5s1d1
Ke/ayOADyOl2fYAHd+hKX1mknKIy9rik7P0VqW+z2ZAqE+3EA6Va8DNrU9bMTxIvuANP4AJAwM2P
J/1CVQYxTWsab6s73aA+Ftnac2OJQiErZY2/6guOF1J9RcT8GXyD4ZWK8VS7t0h/vB/ftLUCqrs3
9WkSEPvXrfk5dGnA8uolsslF/JVMubEJzKLS1ctNphue7VeqKH6thvd26wsmU7zzrqiH9zhia3Dd
Ei9mzZYsfynPdSvY3lUQ2glxQGCQA5D7G0Mh0Ba+9LmABZvpEr8d01/c9mNRSLNh/4H1JWmkYXsO
TrGg7c+UhMahM72nQAfUymSZ+NNbeAaaUNAjR0E5/3zi0htRmGxRgmkKic6FgfwWNE31yBnq5XgZ
XhcIvZOtwKeaHhwuzuyc7+xVPQwfPq+cjKnHmILgl1UFoiXlPSnQ9UC+3J5VF2kaJkDyElhcobzy
W6+x8kIzvfve7+LxTh97wn7X0IWV0lzZf25DnHRhM5TrlC0qLEkQNllzDRzxa7F7kRk+ekUfHokr
L6KwXrWvi0IipJYwt/iOAB0CkO0k3cne3gdlVGCvfMiG6bTcp1qfE7vjbtguo8TSPO0/P3pn+hah
Zd2/CA/cBkV/slohmiWYMkZxB/1IfsdoDEvj3H6aPXVUqxJEEqFvAT0XtinSYWRdKX5pi9HKuAC8
ud3hTnyOwNsyb1PRYd9AQGtQTxs+lKSmCcg4tvJOD7jPEFFXOkrdx6eYXyOeMseoLndQBKUUi1sl
QFYtpjA4gly3ybqbc3hVXDfLXhZB1HYobD0V89WKZx44Pn4GBawrEzFaozEAXoG5O6CJuMG+BydE
QpgR+WXCxwHIizWQKKK/RLAZtNF8uS/Ay87xz0spH30wAhFhQkQhhSk8XVBYTzOae/Wrqv/to8Ew
4DrLS78sNF1yVcLTli1vD/H8cAWPxCmVSkPPCv1zuWUPlz4i9mldNkB5sTJNRr9deozR0bA+b3/a
TIvmOFh0DR8T0jTu20tl3jM2JAiNoP+KVlFi8hl3yquraqpyrmm9MEAr36f850bj5bpgMkVQPmiA
IJTvmKmaLj4XdAUemQE9cxU82TMRMS+iIsjcW+8+hvavcNp5h8vNPQmm7V8NGsxay6GrGsRTbT83
NcyyDJo8M2fJG+bsH5NgBlZMxtBJxOIVxyZgmRvob6hn70wYo4bpokhR2opt3d1/E6+WgU2KXdHa
S8Z5bCHH97LlT8ewediAYt2c1zvlQlcqYRO93PDy+VG5DEuPkLcjq+2ufMaNbGkw210dKZ2m5kbY
3386M0OXKaBGFMXGf3BlWjC89rTkwgJNy3PhWGPBSOnghaPh79y6nw1bwLq3hfIFJhUmTHXzNe3i
lbq+2ys6HrM6Ty8jhN+h8Ta6API7un+8ppYGaXyCSiqhNBOOv4WtAzoHTLfW22Izn0ugdX0aIJL5
gDZ5RJPMUOWBBylNKa98v0PLwjrqE8aC+ukQ9Ri4+pjT+qDoZJnirn9APLs34uprzC9eJEqMEm+G
v87kzH1oLtLWgb15Fkgs/Lih1XXZHlc5jGhFBJUP61YiUog7yJPivRHMEiP32wa5jo3USF7wohCI
e+inGL6CcQiNseqblwxazbLP6McU7+ivP+7zGu7dV3/jIQ0OBvve7Jh0upSks8SsuFzLMuWH2lnS
9x0yfwNb71KoVtJmFvXyltATuIF/Suec/bMvOSYrgzElVCS9YSc4j+NZhik34YAY9lMZ7/hQFNWx
YP/nTVMcyEOKpAOgmqQCBQwjKoUCAWUUkp3Sy9BFgeF3nOfn8jY1pxnWq/kgKs8Xctd9/LfThGLV
LepN5/3Mrh1s3ImYOStyKY0POQNxTLObHMSYJYggTFVHFKM1RuL2c0bM05SPIyAvDERivT9GZT5C
dDXq6jv2twHDarkqaxGtUhUqc7vAkbfQqeHwuvcYgSWeCdq0Vwb3k7Teh5F6XJvA/pkzSOQ9Qca1
gvZMEggcWpe0BO4fsRJ800uJMXuwbt9L0mmiXwQ1q1Wt/sZiuP/wGv3cmBkwUe3Z2Cx/OSpcnb01
Xxvgm/uTTiwXWh3X2Lh2nMTaLCaGD3mUz3yv1mnmhYMnBAuiuKFf4Kv9UR0jzqIfhhJiX2RK20a0
2fN9Or0Zxf6O1xygB7JbYRgCOHHeOjY2p67nJGm/DqBH3adXOMcumthzfidVcxVNOoxn0G+mX23w
agPXC4LFpJvFAmzfGPi/QZM7SC4qUD3ChySXQnSGSXsvUvoU5Pkupl9LpVZt52YBC4bbS3vdcECx
jieVgfGGyJWyW3G6BvTrk/fE93J/v3kosHlLFbVn05SJWEp7howSyf4j3wBUIgoJvZdQNcrFWsvJ
G90+2Q4oOhupurcBsMSeI3iAH8fHk58Jul4RGERepsfyu75YLmgWxoSsw1Kq5SmHkKP3h8kQHs6R
XLRFMcMmoUpSs5n3fMiDDGl68Jj9Az+yqmVvLlYiWKkneTMhnRbtl6HbWiaDVYxSHLb4WBtyvNeB
VwN1aG8BNTSCErCYCh6mciP7U/OyOqSsPUkwP0ILnUtRor+tXTe1ItFa6NQSRuYukJSIyV34laKC
7rhYOjaiDLwA5UjsL2811+oGAJR0D0V0s3SMSI2rlNAE3VFwiD8IgjHeVA1q+MczuNzzJz3U32hc
zpeSUWfSF5HAVvkY64ePPAWcghEPfwc7/4r4lweAvxTJWQDD1NTXG7oPXbZkm89cwCSDzg+CDJMx
fmtOt9TqvzKg339gWcPExXFdvjbrj0oOM/AvekxUEn+n5hZhdSMnwwufIzvhhKzrWAjGFxXz16/E
PKnCe55QJs2tmGI6JrzyI+n0XkujhY0OLn5qYcDPdAqXRiClm/Ooy1CjfxXxDRbJGItbpF40NVbA
GeMFdSLA8GZYxal7FyzPQ+NaySdsfo3RqAuGTJTPrMsfekAHjFZJbkHW54qS3lYvhA1+mUB2NKvZ
wYGxLx7Ldu285rGZLuxOO8IzehgfIOImoVSGIEqnytZzzouqBw03M3cj4nQigTCV0QAUtJ1hXGQz
jMj1a2ZYzjS8abSTokN0ZLUAT4drzBeCvYLeXfXPOsXUthKKCCFKuwMbJb+TEYDH7J7JQfzGeTSe
SWvuuOu323rLNuXe9AVf6kG3KTwLCdzVXSOVjflVU8hMbK7NCr+2N7/MjvJh7obgAjBC1/VqteST
y/PBAXznzXFYgVMqtwcCdbavJzvGFpxFLvKW9IxVBiTmgra6g1I3SewU3iPgQQGphVGhD3HnrieZ
wg//vVxCTpzXcOUorUa9nTAHynopSdU5lIC/LFRK4hmRvUObfRHu+Wq0j6+X1g/kpJo6AkeUj2ka
V5Rmb7zsqWmFjWe5bThcvh5kvDIGwvbN6ArtOhAV1TGZwi2PRgKTcrveOL4034gkPtHSMlA9cVd/
fBMK7Vb60TV6QDMIst2uryWKm7hjD5Pji0B/lNBmb58vzweSrchGbkBfGvqDHniFAK97w0Sy7isZ
K2D9jX3uO5R9e8wrIyzediZKibtxFwRHpH+k3EVWnACnvRJ8MGTEmTaMclJxZxCF+FG3wbC94xJD
X/ytTLuiNiIoJFfQrG8MmruA27I22/hACEXfGvmPoUZfimiMe54qF221a6iQGrSO1BLp9PEBMD8R
6e42BjR6uprLLHiNbPAopJU9nEABiq8u48+Nk5R33/3eryJaG/9VFXmH6CIvXNzubiarlIBfMbTu
C5bKzdRzwuaai2qko1C2aR+hZQAWPJeEOchhjMyTUV+BiHLw7sxB2A8LrVGkvSH966AUaU7WGr3S
jOewNOBAA48CjrrCCtu29kHME9rSyt4OTvkIB6gnJJGF8nvpZjqVjaB8wcqnRXa/JmTouS2aNbbd
2OE4WS3895fo2B/I5uUuXt6tfj+c1ZfoxMJMawMQdnKHGnF21KZW5vtQEmVD03saaB0gvPR4ilw0
MrNMPC8koIz6pgO0dsBuQTKKjrQ+EjKO8ePvX5BPtUPEwYzxgYD4o2iHtQ6wi10kTYRdTihOHH/O
2aoiamIybc61eNntIppLfNiQQlW2mV1jAA0Spq9JVWVWNQuK2UUykT+dLcfdJtPhFOdlXhsStTMu
EbQie+/bHpvSMAZml4gEw/Rx/0Tw1qLgmpXDnHmIYZyKUJ0/ygnu0KD7hoZNV7PCk00+q2b4JRdr
08cAgLga3FjUjaHSldybgERckvN7d4j7f0d/s1devs0+EoEDep5bYILTz8yQBPYjRTukCxvxo95W
q3GgHYbrw5eq9//+PIPzdSaffDVWzz3zTJlgIoiwRdDG1+BeB9xrTJXS4YMchvNJAkdq4W2l45Hy
k0cH0T7fQgYyzDOFttrzlkkW13LHWWqcs05BV591g2BbsJd8xvh1vm6fZWVdolXaxQU54nM1mgSM
rcV/1H+vYmxMp/Tv5zNUE1wfyooZxr4YZrYbs/y3u/m7fIYJZMwX7V47VcBMJFrXRHtm6OqKZr0Z
jZJAH50tVxioKrT34VsssXbOjV5VY6/sqK/gXNHxPrr3Vltug/8QJjrbOdiH2NOnJ9qEWnIqXZbe
Yp3RQYjJNnQw6TTqIIPL75L8ZKNZzsI1sWBkdjCd/JF5dEIcnHU5TX7nm+4AOg9cTQapndFzWn+m
v4B0vAVcHZFYYGb7h/aKxro0xFSGyEdTUGFEfKOFAvBdncEosxuIb2wDqk6jGQGp/ViPVk33NdlL
8RWQXrYXYP4f0cUjeboKj8ILMoL8kxKQp18rEqyOC+VKOgosGEAWSgJBhhG2g/4xFJeRjpqmjv4Z
VF6IFYTKyVVPziu8mGMC0K46f/YVhvyuJ0mVg7QSIiqMUjPvDMTMnL5EDn1T+e2eBgS4VDynBUDx
vVMVJuCJUJsr8BmlBjCOvPA/1aF5DbKX1vsC9Oh78m2xx3od9u+3STbemhJIoIzxg0Mo4z2tV6U9
EXwj+DKEN7WT1NuTXG3b71fE9MKM8v2YvbL/Fsw/ZnzCvAdIPQTjbahVMIN0vfc3Gy8zes3JW5tq
k/K0kAYsjP9JEKCya3ZUpu1rcfCoMZSunaeP/Pyg1yPmAfwmxlEDbp0uD+KBLSG2877sDsoL4nIS
TsqRp0YKQrw3zEjQqr62R4/kngt5vZO+GH4EEYKaaI8eMJ5oE9AB45pqHu4TKbbT22F+G3anzPNU
iJMINbKQKDuh5GEmFVysLc+GNkI3WiEx8+R2ZesXRh5JMSgBpeWHSBKFfnt1C0Wsr0DaN8j3Py1Q
JBjjHDzrB+buN6IRqli10C+hXOmURrWsRTFA24O8h5IYH87m/CZPL25GEcu115eQH9/LER8KxIBx
wdWvrVrEWa2l4TlnIp0SnSV2qsModu+U3E7o2PVWpq8/CAzlJXBKUFNztfnfsUdeS7QWOYH67JCS
lO68ozZgOvc1mwKI8rFsS1evVVndzLc+NGFweCJOdHRq/arSGwZPFcoSviRlFGbiXVb8ozzCOTud
LkhoVv9f8SyYjuI+il8aOpg0c4a4VcldV9b5q65SzX0tltdrlUow5rj+6Rcc9iaglDeaW4nV2bY+
xyICoBvUZsERkS9APr/6wLFinglY9x9p7WHVoh7vcb1hpagdfjGKxqFIxQnD2C3YJ1EM5UAehwaU
PnaqiV87TQ+Z7GAWUcl7CuYTj98We058TteX0wlqKXUD/79CYlnDVqMEuzxtJr9okaa40Es6XuGh
EqKgzRZFnTKRo1+IfvTqd/Y92bV4mbsu7ykhkmo/SfDr8bWSpGQ4QIxfLaxVLI28R3C6Miu9nqm/
xwUzh3a2tHpUEZP+paBwdoTLXufNFsEiTowR3kD5en545+K/51dAk1yuqXIbNW1Lrm5zlkqqfFVy
CyYWBwYnRbwXhzhki0CqzO8jpxzef3Lg0HRTh1kUeJitck1rsJiIq3Lek4rr86r8PmSseW68JgV+
SnWe74KgCcMU2hbzMp+yEhEOcLTZHQ1U169Rk5sAdAO8iCqkR0pC9uEyraHnwadDbsU67PgZWKow
UwENDl5b1B/O2OsLpVyxFueJpuDemLrBQIqJLE5RxxBaEZZKjYFlMjjmmc5YR6Ucf0aSAGXz0aKt
W3q10v63M8OmtI0VS3wXDx6DyfwH01mqpLjJhg+v6J8tMU+aVvOhVkOnYk/2RJtCfXz5akl932hB
O8AuKSgSJMAJVjzrTrZBj4+PMq+9IcC8renkgV5KJMJy3esaMt1rKy8lJz15h3ouNkuSbgc/gOMm
Sm2sTmHANNzoepzwnMKBds7EDFAdd8yKcsO5DVB5Qx2bRdSiHDeKUHTKYww0reO2fLSAPFeaYRaE
MkdWjUINLUXAsv494EUHgNpRkatqkZYDE2k5fRwtz5NVNHeCBv6Tmgz9RmK1xIOHpnLvnLj7GL1j
QQJlRtGsSA0P3Yw2P+1s7nde+kGqQR/ka/Rg5RAktl4inRUuNpiB0egxLAMpaqRW8eW3hjHBGZgs
B5eQcs7dejifFIVmWs9l7rUt2F98IRk833is8C/qlK7DYVKOZ6gniKXZobHlc1YjXtjqatZlHK0C
ZGlyFUUfxFGWNosHwrWJ2KNcDRX1886FngdK9Bv2XXb97Bd6K8wawqheap42SBbxEc7dpknE6lTf
Lib65+I3cz6PaaQa2pnjSY0gNAjIjQclgc5H9XGggd2Q3npf2Izr1z6BciVzzOtphu5pr6ttXGh9
3MNiHWqtMknavhXQfwnlNe3O8lr5mQZjcOfkhtyprx2yzPl/tRgoaIadgzo2LFQTnZMH1nknvVaZ
HzD8pJBA7RxJzWyyU3fbs0++LY2O8esvPJAnU6QTvy55iW/8JdxPJwcmv1oAhVI8y+naYx38kDV3
DgprWwnzoOOgbcGXI+vN4uPvmImqeVvPnWrDvLlql/CKV0Du9TZ16vWY6MVhalD+NUBakBJzBfUn
ECBPiaafxno/jFaloDF9TYoVmKXFtdh+s7sUfUW/6Z28HiMKCqkMmLhOlkO754GOQUIArd13wX7l
6VotbqfHqrQCwv4lhHGSW4VOORvnqNL4nBpG50yaopqMPhhD4r0CfgiwVyRlmoGj53ZC8rCgcj0Y
Frrlc/VPj+moyR2uc/qnvmNnKkp3eFiYrx46vQgkr7sYfpbq0IsYMjdoQX0GhmJk+X+QHfj4Germ
qsRE9COXr0pWrPSxGF+fVuwKw0SqH1zqg3UKuyuwPY6nmFmdOwDSFT8x/RXMdkFNL/ciRDj6+9yk
bcPto+HopZfsjKwDKq1XIdoYbGQsYVQPLSoAkumHHtlblRXUfjc5sb141v46qYuSGo0y7cEAGB15
KuOU4WVfB0KTZsIr/2RGkvhbXLrjYgAEi1PZBPtp61EqRODpBCrWeRqq84zGGezlMa6DHouQwLAI
eg/AFGLxNmlwXBpnM3MX6x4BXdiqlPgh4Y6bt3L45FjfmrrWvNH5SpaacSsKKpz2Kioo68fp4aux
rr+QTmjJPGxZxi2xlmGR8R+ua48IkisRTeGSi64oeD1RyU3E9XjIjD7lRKAXddIxg4vJLRg4sZCF
+k8M8TuFG2eseUjmS9xEnhFxuauAH0N1l3HtAvROJ0r+FIbYerIjTCi+5R6dJCdlTjUC4cBlXBsz
pIztMKb1EnyEVRknIX41lISvBgerWgfJS0lvU2E2W0+P5TpAk7w7v7fTTCNr2rEWImkuZo04dZyA
pCbMlEWs+Y4T+tiYZyQoFdX3WcRA5ivB7CIOxF+lXEK4BlhXck79Kjxkt14D0V0ujXAcurMVUKfI
bx3NWMHj/MLIc9BZ3rCe8f/ghbihR8IK3S8aKGi61hQT8gWgS0BpQoBR5WBL8sYyUhKEkkeoWfon
0Dc5rI+38rc9oyE81toaBkOY3yvc0bZEJ43iy6gpJlMZtf3xqx3WzwIIh0FUaghvQjStyciRpCf5
+24wtgYZUnF8eaGPHMXSnX+hFi82K781IcadwcwPfHkLnU0QtqVNLyn2RKdqKDE64pryzh2re7pa
8N3lUsxp22lidSGfeyZ4WDaLB7gHYExb5wU75ymt8GY26E36IjdCZL8zavXpVkEjz50t12qBdZqR
k48Na3ViopgogH9ukcriE90WCdxJFj3wVxYyTPLAsZKET4lpUOAnMNA9FqLUnhKMVHfC3r6JzeQU
atLre1+2mNqfP9Y46SHbZgv9+M1rqNKM/8apeDiJTCXbghIDEcvgkTDGrAO0DfGiWeLMrtLS8L4+
pKRstkLycUKOfDc1oHO4DAk0foVLac05VVfn+8qvdiNExeiWk50+etly8kLtzx7SeRPLf40FoBgC
ba4pyOKIUV0IslKK59rqEz5wFdBECQdqT/c3wi8HrYMq46YFneHoa3izRyn8tyylxczxLvfdyeS+
of8saWBKq9zT3/mSySHxFUknE7mg8s5qPczbErbR5RKbzjX/7bDDzWJriPpxJR9h/4+IVt4TlQPp
VlZkPp9IIrDO+0OhimRcwbyy2Sp6I885hqzD5CqDyx4lTmuNc5/H5jVPsHbojQs8hw+8Y9eEEz+J
HDvBdccVmLoy18BpsJcjv4oVpRihZYoNgqlAgs77DiuzW9fB6pc1Nwpmt1ug+iTQHuln+oW57R12
yAA8mFRGcdD+r09aMJWdmZXoVCsHXDr5RJfIqozW2I64fxl0TFvEJGPhh7ykuL/eJFUPsC10bMg0
0nfr7sCeeCG7SThppftdsLOHCGq02qW0KKNu2ZcdvdfxBERAuHzQhAfFiiP4/Or6rHnjubz2j0qR
MW4IARKXWxZlsdR+LYa1Q6NpCGVY1WUHMlVz/C7EKp1hgL8XZWVEtHGr3kyQ1QjWrenRi2SKSE1J
E43uZm4OY8yVqz066YW/xnJkaSW8PLE2kYrJCRiJVdSzWpG5KxZtu67WTzrhEh9PIszooLUcnN9/
EXNChLYm1TRYxITTQ7a+LvH1cmtqnN15SE/4RajuTtMYipDLoTZOZRmX23NjDDeS+2QNKq1BDUgg
ZMXAPPphd6aHvLTJUNhtUNomLpkGgOWV4XcfTheBfzdFvN+vIcBbXTXYF1I/2SFlk7xnOMwndtN/
Fgo/oFxG+c95TssuR5aytYOGuHpKBjGRmjdJCIg0o5tklpl8gv4uTXUWUMPDIEVu9jLOeN82Gfgi
Nm/nAsFN5ssuLojzIGKRcSYkHkSGjNw5DRkDfoteqCMw32aw/lJ44ag3bOOVCr6R9tmj9Cu/mPDg
SVtMHoOs9Pq144KlOHOeWqOD7YfZMGegG9BHQ+TFI07kKzjELrYUXoaAF3ZlKsCsf55jWsJAmPW2
d8Mj7PRKQvZ8hUGb3mjVzqOi05e+8lR9WEHozmvMASQinya252hIOz0ERXJRI9eErvg50UUAhwVA
cFm69mS1l89jmf0b4/lwt2MExcKW6DqrtW2kbXVgfsWHsibNI2ttAxw8CojI3QSSIAAqcSCqQhq2
d+KPDcEbL1kCKsrDadifyqAWkdIAASHobt+eOVtOdSDz8FnGuuL/mZaAdR/xWUWoooOGjwcu4H/U
dbOJVu5co5PYL8JwZKJEjBk1Iu8bINtDyydQdNjmS+Is3S98rDbkbn/ocnIPOpwoq1AIUDGnVWBo
8rV56oqi1IUhHnt0MEe4UPCpgP4Va5UzDDz4u4sUdLppbave5zsv8KCR9caxD2LEAv6DBThXzQPE
E00JMHiAVROa7YxySYURrcowcqqp105NrdhgWfVT5jfMdYDE4hSy6a7AbBIDqve3rQ4cBK/VKlY1
7N/sECXR+/e1bYYmeADaTtvcOTHwoh7HKShNicvpYs8MtX5bGgGRRzGMnhRV5KNT4BW5ZF28JF9c
wwVeHkaYFgxs3S1lHDVDvayEtihLaZl8c296PAyCb0Tyh+Gb51FvAZ0zYAO/WPtelf8aKDUBUH4J
Cz9YGVTKunjz24WfoUVq1Jnq6kqFWNpNL/9AQ4QV12lLKk1+eo4JJFBwU7+JM5noxTT+bQ7KWV7B
/ZtMd6q3AP04MPrQ0Py2t3ZFZlqmZ8HZ8YqsGL2qpwlu130YSvz6+Fe5A1EMmM1YpmK4En+B16J1
jrrOo8h27/Vv+khtvRrm9/giG4Bfbhg/gte2KWhGX35IqTkpeW5D/kED7F/9qi0OsekyUS+uBWIZ
MMp9s4whvz4bbqg9VCUgV/ufRES+ZwBz16SMlu/p4+ooSO/Q9jSvgL2n52LfDtLmER34SrgpauJe
H32XrlCcSoLL7svnJ3FngGY+kgXYgms9WTOIZEN4BFNe03yfkDHWqjzS/nw3+LpSC+/cO1UaOhJ0
mRkR2vI+oEL5Dh2OfvA4IUsCwRsVbD3PHVXRzxBiKA0thZgWblYqHJUscKlYiKSaUAT9OgO88yHM
QBPc+Cbti4G2hA99mrIF3z8RKtArToVBPLPl9nlp/hGlspg/4h3MgYhP86tBHsRt1gbOgogIXGGb
6f4MyIJ2SeqGTPOc/xsDNdXOVQOgAnXNB2bpBEMeFfrLIu3wz/6bHizb8+x/kUQP6k+F8AV9lrVK
+3QX+a2pGe49NCzZZ2jw6ZYSFDlc09pYaFHFyN3S8qZVGdPFe1vr9rXMjJdgEIzkGQvRuc770x3P
Hq+A3MsegGkUjfUYOLjhKbLLtTxF5t1xtFEIGc7nbdCv6jIeMKQEIGJrBbf0EeU6iE+9HgA5BDJ8
HCvP2Hm1wQ/j22GeZwV5idRMkQne0eVRr/eknQdCZ2aJBsqb8T0CTIItrRkSFqCaurETnKd3X9CQ
wnwUMN6A8gJtS55n3NiSckOxo7fXUkQbSfp+77Npbjxb6u9IBPofslplqqUJfxCESQx/SJKjHR55
zU7w72I7pXibF06wMtcACEL28/Gf7Kwq8tuIHz72UypyT2QZCRdcTGG/XXjHfWCQ1mWMTwFkITPh
4iBlF1Wt3mL3DemW7WdTtA8aJKpnOshaWxIJor9qYiuQQeZz6BKqgxSg91XzO/B28qxq78cSUH/q
QKhpUYeSpUiU+xz5JiGJbSMpFnwGQLAB1lgOeKCxbHTUFj40hPOUdaovUzwXWyV9dscXEHkq3NnI
HniwSyFUendQwZE3MK4b0WTZUjM0Z0E1nKt86i+kLRyVT4grKfONUmCLVymNTyh+6l8aNAOI1KAC
aUH7ep8aDdAoNrNXZwMUtWCaNZvfagpZZz/2bdBl1RSHhO4fa+xC6rW5BgocvdjjeLRzHW3ig1Dk
Vi3xDqMDyBY7QqhcwciWY+Oy58h1SYa5vBAhnmPDN5bRuY64ih9nuj/2C8zgL7bcQuobuxujNQv8
M+zt4k7nwIST6eYMxHb4EEFGU882qr6CnQj7vIcf2QrL6hmQVUDefJJ+CNlB3SuA7oWkwFGw497v
7eYpUpotvEVbOs1cShXx3r5HOpiqa5ATxck1/i9mrx6lOXnzjnRZwe/KOBCoHvf0aODv9TYww6WH
wF0brGEKID+cOUeJR3Z55yqoHmLYt3bQarOIdxWf8SjMHsExswC3A7DOxIQZ7SeTMonbYvBd6rvH
fkz717+YbxW87BcANBzIcyi017+eoX6hhT1jnXNIi8tDhJ6DBwz7hpyU7/8mqWdsyz6MUKNpHXYH
Jce1t9/SRxSi3nXa1NPf+t7dPQt0Sv8hDKV6/h/OrL0UIPzEsjff4DSrQ6el3nrNxKH4ywVdQ/vn
VOOhLPsmsszF2kPqGlh9nTX/BgcdCIDwgNP2Al6ZpX89Qs3y0i6hxMaGCeyhlDOhgs7EcmI5gcwS
2tojZZ1txY79y32kK+kGFBSTs/eaoiTApf8MWKNZtzzar6yXEN7hTBObZl0VcZFpiiCb1yHUDbpU
msQFYC/2XiCu+Sg5saPhYqyYq1HXSFwpwxUdFQv7DpQ1+wQsH8j0CYE1nXFEZJEf+Ck9sp5fXAz0
voPsk7Va6/l3x+GbTKVV/63C47Z0vUiQYUsBhcQXzLq17NP95kSFudT5q9DM20cmgt4s+0WQqfIq
HKCCVFe4DqtgWNNGbvu82CmwsLRsbJdFXCwbYtsAdHJwjC1D4hxKVXsoPyjB33jwjCmsxUbJFUVo
96rzYqbnO8XeOGUxjBl6NHqRhZT0jkwmXkpnbeCkDbU2xh1RkID2wbmoxSkrowQoiDWFjXw83OsG
mo5RpJk19jGKRkn8kYd3Kpw8SbelH6fFje7KeVPbht1TOP7jaTHx74u3nhIQ7uxfwMYosQlKRTjK
2ORgxHzSqN1eJ5MmMHR0LVitn09B7ZES8HJgqA4QqwcgKcLvQw0U9BZBy5kmdic94svCAPD63P4Y
gRrELWYAjPP9iNQNztRklSZD1SGhGemafp5s4baOV3b55Oqcn1nZ51MWwKl4I+qWMhWbmy0v8jPM
32QseZItQWAugEyha8tgZ4ny9vv3ZaptHkWY49HMGJLomMYC705ESHEhWxdv+DCCrK+s46yVnBQW
0UsIGAHXZ2hBTLLnzw6hP06FgDo5VkmS+HzRDAHaKD0WhXkPu4JdCmcI8iVG7kbWFvEoMy6vH5MR
gC6hGVFr+5EYW0Z5Tz5b/vKIOr3g0r+kJ4w+fZekyP9ZXo/0lhfxdpDIB+p2T1ieCnXXXWkPWCX0
QPRiV1b3RngwPr7RDwk5C5io4O3v0AKoAS4vUaLYa+pXOtKIgZzAu+Wu6OhfmmId0kyLq9SG6tGz
Sa3GkNOBRDDY82R9tiHyeeuRtpXRMrfYsYTeH52jummTk0tZF1ftq9kJXFBGW+h4PS6OC1iOg7iw
VOpR/NQ1QsAebcW31oe7VG61wuMb0UOlSOxAAMNO6ihtW5nkEhw+xoDekuBKUwbqspXP/IsH0wOx
n62brbDbU8Ex5K1Jrz59/SwVLmcOTimFjyfkjv1jEqUOenGWZpLHdLNDmHvG8x9I8+LE0c0rMknF
RK4ZbQa+xZXEc4/yY051wf4FgAlcUYA5tSaw8Y6IKd0fkufCVdCeX3EYuGmUJs2YeIkOsM0BXLyZ
TIVYxFMI7XKrD8vviNXB3mn/XI7wiO47kbRcHLNdVtc0Gos+mXoGC31DLaARgwjOdHzUxXIwg0y+
kN0Pc9McfJ0gwiJKFqp37gEob6fbcSfS28PQ8kiX+KGeKfqZsM6ElaIM1Huu8nsy90xRidrGbdoL
oT1RhTiK4PrFq0IWFwoafK2xfoZrSqByX9afUSCUc1db+kiAh/tj2qHAa11U7orklZkXqVMoUe2y
sJmkrRbfQ83iThI0C1dKdVVZ+531sX0AlRiXM9Jth8H3lxT4qgHedHmwVPk5v74VeYQ8B7bjMGV7
gvZ9B/ZuW2tILsgGgCJS0bbRWwqJczIcnhkvO97Rq2jxGhH6WPT4CQQ0qPJHgQ3W/g2+3ykoD9sH
dS+gVunMh3kO+z+94sOKpR8FoU6Z7RjQTY3IeoXS/7dg5WFERheZ/N2Y2wWK/UjnOxg3osMOk1o4
Rbj4IOemVHdaypDRXwYMUw0Fb6qnQ2kNluU2fGWd0x2fknjVXfDX2d5YUkm9FXfbG4UD5raBpvBZ
LuZIZGJLy+tus8arlfEu8zbYiiVNjXGARVTtdkUkGFICRtuGgkcWOQ0gJhiGzO6VYv/mfJHp3om0
pFA2KhA4Fsv1A3c+QXlzMUUZY2ef7bM/ekNLpGe/fqMpRqXEnYXF2FZAehoo27+4nY1g/DNKSs3h
TC2lHdYGzE6S0ZuYnTUZ4/OgfqdKc8HeCh0xMjgi82HfRKPk+FHeNGg58V+1OmSyl9kmgGnDzr5A
Q/IibkpQmomdQopgT5XFzvgOWXCatnYLhJcS2p2A9iHTeL3PMTY7AFMaouWlukTBvvV3EX3g9Y0y
B1e4g2UvfqODqHkotcW0eWTfXluzboQclF2Xb0zWHl6MA2N5gSviUMPPTT3P5xzDwuXAVBkLVg4L
KCzCeL6VZWtU3T+Ujyhz9FM6OLm/Q/ABzo48wxwYczF+CVgHLPlsY1yzgt7/i/x9hhq1XNAP/Jc9
cB182Jv1MDwt7sQPPBBmKJ4Bk1cj+5Mbf7HSCtaWlwhY1E/aR96+XgbGy4B4tq3LemK8nQwX6INW
qAdGu5liX4sn4UOhK7+nYZ9VEe43w2LUyf0fAwEqp667afQ75DbGQz/yGs8e3v0FUKhU0czPvD78
7KkCKmDLKWPIgYMNWI+gvgQ3A6Mh6FL75xlXhN15qMO5s3QXCRh6/nfYdZItr8cOO/tFi7gJK6ka
Jf5GXehqMTfroTCVU/mDpCzgZXX86RlI2U9rMX588KKmOX0ATTA0fngtmWdfexhB8vFR8/+3KHFh
ycCqXi4YpOrYOm2uXjjlGDYoge0nENBNYHW64CNyKVd1p4Ir0YRpADoAkyOCkuZpHLxXzFOldA4D
asuT9eegHUdDAlqU3NJu3Y/3cvhBsKq8yqviZ2zkI5bBr5eD+Zz+gt0V8V00zd3uyMrPG6VpBGMQ
KcIvd7uiugrQ7I8IVdu2bgeStKJd+KB+MOFR79rb4n/zPfYaAiQ9ssXifbe06BAQzB9kYNrg9CsX
/REc5sDQRsmcaeOm66LjHRAoFzb+DNCt3QX6MruGzv76aY1BjiPPZKPPKTegi+Nmn4U3wcEKpANJ
gOzfi4TbFoERQe7CqDKH6Mn1jf8uLFXkQykm+EiLXU6GPovWy66tb50P4nXRmCxnIGwX3SI5ENU3
3GTyUHZf1a+nxW7nUwm2X6s+2OZfo09qNkNxRPDKuRNllqBGZp28odmbZ17jaAtXmLUCoZFh6uVn
u97TyRl9PZ8j4i14+fYQ7eSGvZxmMELHt70MB31UPNomaHR+PT2GIr49eMXF3OKKdE8JGcvRqueF
2wnEh0Khq80Oqpg1Du011dwxJ/wiIctBnvTn9CVzB5EjJ6L4mEkMFBtFavpIXuuCrEO76KwiCrsh
/AeYh5y3t7YV43HtzdBPCIFsS/JAJQNoFEh9i7rtIpiWQsDUdUzb836ZiuDZ12bXKScvUK0fo83b
i+zz/eSJAPeNGC8euIxVe3qw567qg5iaaPtS5QKlNKaeXjHsN+CpshTT47SJPKJR8nqAzADR7Y3r
9p6iLHhP7tOywVG80Pc2Mo2rJN8/S5WuRtoB1OLTYw5RXioKz/SB8dd3aZaQ8tPa6t7ZN5SqTTXR
B6KopparlYDHWJ7PMyRzEYTU0rmoaN6H2oLSijMxNxinxXddDFvrXSwukzU/Er33ZM2amcZhUjJp
hbtRkVXfRBdflcwXd2P9T6wO52QGRomWCsjVQwpOou+ovRZFBLL9Un6yeRUxS7Zsk8m7MvQGRkaQ
pL/JtIpxWz9w9fWPyRKMMF9kjgKxyHWF5MrSC6rKARAV+WlXWSqpWEAlYjaMh+OgvLN832zl3AFG
v2FKd4jKGicriEWm1zNWMjW0MCN4XRDblgCFP+P/Q32kzteK69fe1uqzMQVMr7wSJirkyJGMxX2i
UpNA6Yq2OFJ7fTjUWRWbvMxl4FkFLPdl8/4UZgoA7aWVdtXYQrc+9Y7zYNclkCBwLYEybmPxtlsy
//AzO4+LKGalj4TY5Egpnm5KN/nByx0xanixEAwti/RJ6zKcej0Yvp1rq+1+9Qlj+3TSTAp8iaZe
kycH6+QjHURJth2IpWvaBiPeV6JQU8I5YOJNozfbfB1CpvNI5z1iRQVY+l74bNauZonTA8h20prC
z89C4umM7ygVHX6glbqid6pcHFfbo1JxMkgmfBITMcRs87YaKKpWg8bUI4okGlzVKCmenv3M6/sZ
FlRpTHWwttkrddaHqvAhsq4IWQB6D7P0bkt6yxotqvOxwTIItiWi64UyQEyxxZXYZoGDOQMPHHlk
zQfJ4fDAC2vKU0PWgDgHWUgiuBABLxJo5A5VQ54rM96MCjSQ3pXp1Gtwmpn/mj9wJq3hPsgOhwag
ABIMq00bUrl49gNiAqPvTsVEY99y1s47F+1JfEJOWinPu5N5nkDNJghd8Aslwh6R2ndlw5ef0/eZ
6rN6x58QRiwVXQ3v67vJ08uiWShyfAprsPGlkjw8gB/xzvxYbjXLKFaIAb+3E6pAKhUwb4iYOG1n
708DYqq5d1a7O7dCx/+qcSUKGYzGVQjWWLkDBeuJodTw918plGATXPzERbSHRAbQYVEmW79gmuHb
fVgr45KDb4usjv//O5kZNJO+4p/uPCLtc97pWqlCyRcSF9hznzNptERrTo+JZoqP0fcqANcWZsKP
abgRKBuItwHs9UT++tN8yMig3iuf68GmDACNJruz9dXZnFBoX5ZfA5OXqZyzebQ6HzOzRpD3vzSo
zm+/ue0t1dqKR1tMQOJK0TMuE3cy/FesrZpRjIUy/fova4v9gbRQjUL56B+Ugo09RjT9yZNe0g47
UjBk1AG512Knhn5UzN6ZAd9sdbcw6wxv9C6a3OZ2IneYbGK7lC6R0ERAkxCYVy/k9mZqMjnPAn19
YgRsuBzoKS5U9TPnVF2rvh91siKp+qX9MIQ6fDHNlZiM7HnBBgRH5vsuj0gPCMTAlx8ZKSWIAsiS
XMJbMra10g2Yr4Zgx/fuvo08bKbPjkEAOOCUoktlTxcn1E1i+Qu18s1bML/xMG5hMg7yt6pAr5ul
rZLp8IhBelus7CHL2AvEdPeOCpi11UnpNiV5uI+9gje0ddWFtTZCiTPApV9vde4i/DVJEOJ4epMr
TZ8f4oiXMGo6sgLxU3JvpIxP3QoqBCJrgx0KaNj1Mo4SLYqGiBPgCVNSxLp12Ymhawlq46Pv2V/B
mdvyfsOqJ0Zf8/6n3E4aQmIXglDHyqaTTfnYIAzKFPEIaOhsu0NbEDjDmiXrmc2tD8mt3hbdcrEe
StSina+g8TMwu+4Yixu9iIqDO8ZdT0nIofgsR0JhsHiM8NF5cKqQX4oI7ZKSms9FzDxpNIp5nlRk
ZC6hIVukd7ZmDhNWOqghgltIMA68vrGdVtgZ0y/xrU8Hk/I/wDwCDNl2CXAVAcfceE7JaV38Q+Sj
EloYWbCswCtPxjzSHbgMPehDuEX4j9GEOwzScXtY7NwRnAXd8WAWzA/EwrObv+yXOj5InwOUc6Ha
FUgXvjDZ3c0z+NNlW+lKDh7AfOHYQcYbaXJDVd+NvHm2bt4NIIfVN//1KrIjE0/48asgfoXZB/jy
AO2HRRkhR4rGQRdfPTkRBlKwEKpNvWz0EB9w2nlnGvGkjeFAn/9S9y9/jFiLQiIH5WB+DGtFxdS2
dLuUyhdNxt3SqibgfmJvWeD959NO6yThdmbp36CpjAWVZVpJkkOB55fIDUP8CljHSFTFE2VIP+QS
dbjoZvPpEK6P23F+ppN8mQq3c7MaG2VZJF/H1k5B3Utc1cz7nt+goT6E5LW7C4iLYHK2xQ1r9Mwx
kEWvGW/fHFwa8fnb0lHrvHQnLCoGiSnl/zlyXdPtwrdT7ifcu8YXbzY6fNfos7YpKfGV63D5QQ4L
L6G5R/Vl/TrF6HovHxBx8uaQymVAC++8DSLVb4UIXIpFrAVHuucK8a/DYIgZnVEkcAERGghI12ib
A4xb26b5CEC9clcqzYHqR9xmrmlwdVhMVecgsrLrYaoc/uycWdH1OoomsSQ3SrKamadz14oz7bqZ
oxYZwKHf8yrWIoY2TmPMICkqAQrqduZ2Uw5odYdW5Q8C4dBgmyAYlS4tDNxYWmt3uWZQhWDIBJqe
PGhDCG/mFRDKFuYAAehuYJRJIsOruFuS4x99Z75kA2gr6TxNM8K9ofUB/M36TfFCBHcOLgtaVHtn
i2917+qtQNS4pLO3NHlV+oyRqoxg9miXbbgOIccBiyXL+ZVaUn2VThIfmZbUB9bRSZBx1TKAi6pZ
RGiLofLwtwGU/RtxeM+CaeV4FkGD7+0EaFGPcj/Hls/ulKr8dhP2ZP+pM0RmqeoVVyIrISN3qdVR
QtcEteemK+86bEgjzPLp3fXAs5o8Y/Im+uns4jyCto7H20CyCumQaO0BzvsaGVInB2I39jUcGxbY
UCH83pueXMIsQdFsURf2szqiWbMmU0u/kKh8WTo+jIXfkZ2CMkpBrLUKfMsNx142agzIk10/lTAd
kdct4V1e0roUU2Bhmjk+AsUzPLy3B/kSadk7Ui9vcc6i5M4oASRRrBRktDOq+Ilbl66ElgDmuDic
yFr97XkjYvQ7j5W5FVtsEGHWd4aQN8dznFVospkk+hoSSG9+dxmuuDaaHM4gELdhFIZS9/KwPe+2
WK87qKsT5sxgyTHW/M5T6R1NIdoFe7q3K9TqegXUZLxoJhC6OrEJHjUZmMgKZoBonlzQnKdPKxvS
amhsCNi+WeEWrrT6BJgXcUycW9VG+9QnX03Lrfmf6Tl9UyDOFz6IuGGkHyMRclcpIe+JiXl16r7O
/VAJTgJbJd0/Rgenq5k4bss4PtYxUdz5wyFG3DYFLEDj4MTiSVoUUrBIyr7Z+ZlrGQ7vh7g+rfM2
4H+R1dwQIWAw6w6M6CjFcIX344KCA4gYJouG2w5xkw+V/Cj6zvmjehxMaIJpONIyTpiF46G84bxK
nVGnLBhHO51CtHf+RQHs6KVtrXvAy4mRe0e+wqT8fMyqOs3nFvuVIeaUS/jeHn++dOaKrAxPFHJC
UiZOnrSOQSBoJ0DkQuiI75DRH14pkdso4XJcbzDHB2hYnuiH6adA9hm/0OiUDUzWj1HhgeeA9eYk
lxmlo9vi+ip7i6YhqyaTE6ahmpedOMRxbZo0YfmvrrUofbyroi1pwa0SERZZlQWtaC8LVv4CbFeG
mvZd5SmeOJ56NtXNDdITPIhvNIuM7bod4N2XQE+uvwNm2w2KQCexIUqS7Comky2dMpJ3yVxiEaNu
+4O3n69otyq4H/uH0UPaOk4zNO9ZwsRFN7Tj+M4JWczm/F7OywNueioivIZID0KvpJYG67TccL32
hlqlBjh6sAVGkUM2TTpUvHxcT+PYolxyExYEU/iYCOykwcbKkltnJ2+gaEtbbYTuWLCbvIA+uAXk
yTlBWMkmR0P76hyT8lClU4n6/Tho6u1zN01+5AFZvuD3S5mUBuOvLVEyBXm7Q2FNlrdjNF5PKgHY
vLfPhfEGsVMUkj0hXJgEOPvWli6FCchKdBglkxgt3Jbn8btehxcaTGmT826j3BbMta/dOaPyeFyL
zSzFOOq4ou/DfQR/ZUex4eL6YchZrsDkDCn49jicD8WP43EnkTcr6xl7y3YRkUlOPvmMw0LRD8j3
H1FrLtszpJ6Gm135Y8oR306dEFkXpEXbLJzrw6KU39mzfcd4FL4wkWYWzRtto9qCs73X1doBT22F
nTe1928yl8BifYhcgVN8LUSTBVXDzVqNaCam+byype1wUHeDpeCc3Dy27eSEU4eKMXmvuNNzoP11
UQM31oGfKHCpZnHvBBGVjD2ntwiOqG2z2UXwUpizlPkpDM7EjpgL2Jg20rU1IYuT0MzJhDIfzD/J
NZKwETjctjN/k+knN7gm+T0h4N3rcPYyiqHXB0quuypzEQFBs9n9CEJOqPXpFZWPtMO0/ldy1um1
63dDBeSukhfuTZyIrm8JC+5CKHfK6d03iDLf3/qFBGzuMTN/Qpobz5iKl4GUdaRE2KBjn2N7kT0L
S8VdQlcwKb8gmEJzLh2rB+8if5fBwT546VzTmxE/z6l+c0sG5weH5ewJG4vVGx++85qpGiMtq+pY
Twxu42RBwK7go1WbzJY1u1gR+VHf9Yy5EYkrpVZh6EyCJICVu1SAvga713+RAn43Q7VZTPo17UFf
FAeal6WFOoNAmX7xDT4C7EEFcJ4ae5+jVO1tnLAYL5xfjJHBAv2vrRPq8o7TWduv7YUyK4CJciNP
ePqqm5YUFY37Y4h2iAgp8vpf1x1EP7zOKpUZfJXSsKRwSYSSvyveVrQ44Hg1ezV+zPUew2i4Yzrv
HKOKeZI1EhjGMjBE3zQWDygo7+B3/PlnSfKq36bEDrmWu1xJPU2FB0gPElGn1CvN8nquJmcacq5V
Tl8oADoiKtY4Mu3FQmjdTPA9chjb58tpYJnsXuBWd9w64wpCzyixntpdhTSXevAAMBqF2LkGhegT
C2hljIH1wnwSaIiXHrKbzlDAFSxdqRSH5vJVLHnQIHsFS+aXQr/tDGcYnJdCq51dnENKPfyHRTqV
FGlIgRy0veCJQIjmVlWKE3qrG18Fv8sZ6GmOCt/Lmyuc5gkmAMOBs3B35iGxQKI55f7WyqFAqDqx
DDD0P+sjXvxFECWp01a8sud7EbMood64Kw3Q1vTuyARvxw3F9BWs4enf0Bp1Sw6fyMTiW6UYdkpp
1ZEINt0TYZZj6e968RAuGd9IgEfb+Ybsfyke/5P7EeWZD/nDj3z/QvVwYkFcSOrPSMj39z2muP9G
v6trFiXS0Nz20ychXtdl4XBUXLr05JGvhQV8g67VQRtIDWVsoWO0/ABzHtfCe9S64ErqQxwNNL3B
JYefRrq51iu/AvWd44jdZo0NKjbI1GcOFAS4gth7WD6Mdh6mc3ix8pccvWXA7oqua/YoHx4G/X1X
G2xF5/vXKGLsIAeW4tdmOy/xYWHI9NsMwl9p4o5r/jMol7TqzjyJfN9VEONiKLm6YoEh/ALSIKOX
gAqiSeCP/3aTw/tM8sLV2IVvgLpxYKjzHg0+BB18Q4c65rpbekFnHIgW4AB8eqTStl4679jOhVST
JZq1gtocxz6Aomj+CVru6WAgEcpoaL8K/Izh0rFCbqdnDsvFF6rGUsStPDi5jiVWwlWn7veCsN/k
bnRvQT2zmutsHz/ZoJ5OVmpUlPeEQLtonzBWEfgjZ3xDthy9qow7O8Fy7xDuSy4yziuHUQ8avIOe
xD5DvRDNPDySNXFsNX9uyD7vdG1EJ/Qspv848uR2DNhqCeDTF8l3oeJhGDp/5hUhn5edLSrnwPDJ
2YnA8ljwXQLDgsBOTqcOG1M2Xr3iG3JVHAe0ghqxRvkcVTd1mez47uNBZVFRGI+fScqQ8sGZKg6d
r2xx3zJlmuWhF49mVAi+MTtq7TAgXd4cCGk7weFbrxK8XtlNta691jgjdn0FMZdknLUQMlsCWhBj
p1bHRazZuKo73EE5C4zrXoUyu81kHR030vE7e6V8hInaoTWF2CmXEmvidGWUnhcMuLeC1/eUHOV7
8SB3y4Y0yMw6Rt7resEPuTlQCqjOvy5ql+Nl65w1AGUMjQ7PgvHPMRLOzwFJKXxALU9DmCM06nSu
H4uy105CwZiQm+svdDzC4PkZuhzwnoMnRswF+IGaLOe2recabGQs6OYb4AFIzVv57US3URN09t/c
T/ZP759K7710rvDTpI0/9Bq21bp9CK/Q7+45+7+/ug8SFFy9XsNQnip7HqcOIDoIXwH3lDKtr5FG
1TG5pQQm6jOONaEkAch3xHBkIaNC2zyYhW/pOWQoVOm92772+PC5M6V1vefhzwS6Fgm9AuRD3pM1
1/QU6XmTefBWd7Hex6PwktVzb/GJGDnfBFSADnfe0n5KQuYN73gSxsPigJz1XR/9ayL8wlumF1os
vHG+7gTY4Gu7Zgn75m7ot/MIfHNRRIbV4/KQsnVHIPL7W+dVnoZH1VOAazfUX8h4/+JJ2Ihf5z5T
JVHvwjzMXBXB9v299I67BGkwEp3YHbebzQ6nJ+JDEQXWLxGOecF5ASYi33dqNKewWUKP/5vdQdDL
HW4t1TKJK6i49XDpFQ+9He8jfIy6NzF5cf8Hnx0bUHIzGr/emxbWq2+48ogojCoYP2vrq9UW09XM
AWgUv2yGjCUEY1eeXQ2escraDLQlNZBZYpkQR90pwaxA8IDnSpnAJMspPJ3p733YxAqdpSFMUFcR
taaBe1dbaORmvldmlvMIWKasjaAQNUyfBKgwC8Xzu4DmImgBEIWOjtLThXwFXitsr+iGc0MmE4VZ
npYKgSdd9quA7l1rYf4hO81J8Ul0jzhbknZ1D8d4mwHa2fkp9ZWvJq05jUBKcsWHzgnKr3AYvPyR
XCPT2MkUPuAlOneJ+WlVzLA3pYbKftYQjMg3YYolfHnigzp0vZ3Ervr3yNzniS0xaT70wUPR+xUy
b2JH7DPXAdLCAETh0S9puvZCBB15+kz3NlJpIcPh+HBxoAsPvY0MzSPYjqPlQ2kKsMz8bBeRQm9R
1wg5tv2a/bIb88o70pUUU6trKgKhkrG4T/mr9VhqoRTy5v/Xjs7uP+hLT06Es0/tSZ7+WdNn6ous
ari3VhI7m9vjIRnl0Tzrio3F0yghYxjlzPISOntCzsEUHHb8cnKX+LW3YHyGe02P+QSy1JFuXK3K
HHHNw65bFOAZRt3UN0xSEyRpBULdum4iqjK6o8oRRS8JoR/UnmrqHil4TbTDxj7hCRcC3wPErbGO
PSNCl0V/03VZKmfiEs3NxXioEHFUsWGmjeM2qV1nc/s1A9Cwkkf3nuBt/DICxYPXYpNAEOyuUf+Q
ykxMXSatn6zWz38BCZT2OWw42JEGcyGt4wG/6xAzZOUKt/ITkevxJ8W5CiKz5a7/WdVKijITWGfP
VmRNiL8fGcTGKlPXe1j96qOmQv2YieHZ/Zw53Rnym1raFQGys0rVNnhDCmZL6Hb8VoLcrDHQVt7v
AHFER/9xWoYUmn3d3tPxVo0qnKUF1An9Q3JSIV+shqxsLc310ZHpT/DjOjuSEQndh18NlUQHhbId
nK80eNmwu4KESNbUAylrkFnWIZMkCWZESlPpdbujirSRPzod1xMn7QPhWgcSg/v7KcMMKqcEYyB/
BOZUG/IkVrYaKQRbWc8RKn4hBVK1LJPYFZBGTdSfar3fRgIUWtdO7Qp8eM1lqcPwuxHFAdgGWIl4
Fv32ucsRG1uFP/PKhdHpm72SXi7TN/QeV7RkvhWDN78HZaB2Ff7edjHYsplnReU/URZiPft3Nfpe
qdqJu+SgEuqYSI8K8JkAMTruZOlM6LVaD2aCvQjlymzk1OD+j0AlDQ7jrcjvVc4ruPYZ2lzQE8av
MT96n9TBM5MgXl3ZYCxl5tH0FdBhzeNJule/Bq+YYWo575pbRkgeJ6RltK3av6OGfZofpnIaCfZX
X65g0HbDgo/H97Tm1WLteGgV1rFxC5n5b3JJXpgbkOfXyjDQHP1D+AWOXSCcV5J5MDMAUdmAFupd
6d/ltVCTKLx+mTYthaRK74fkxnu/UIDzYBdGKF4SMkQ/oSVD0kwdt8Va5lFUrcs8lncQiCZPSt+d
mFo2C/swfbwjSGX71uRJjqmeDUIxYyVUDTh0+gvjujQfYaoLHPg9YWJd+ihhwHOpQ29X6gaaiszG
ON5uEzjtGXIylOL+wDUixeL6T2Hl0K72aePitxauLAQfpIkZN+62rvXL3srZQIvfrniCJQmBQBBT
2r1gOBQ1+b739zD/w9ylpHkioeaYhquqOZftd+NvU/Kfe+UoNAHP5uYxH05WuS2JIv8P3js4vH/N
ZO97gghGu11gxR0Kr+rdSaX2zrDvVcy5AHHPO0s5zI5qK2oJA7chb5LPrUTI6KqG9oAEwfW7MpXA
04okHblu5nb+zwuoTSMB+BGDJTxTrfCtCtXNkNMi+4h11qpMB3hpP2UYMoWMAM5p2D8zR22e2eUs
oOONAf3d5tMPGZO8G7YfI7MqdPHZUq4VQPbN9inOqMAw1SKLDuDeZM73+v29mSsJo+s1eFfxNpXi
saau1Ndbw2XMOvSjkzOytCS/Qo+OwhBM07hMpW5r/jimtu/UARMO0jS5+Ydi22RwwNhPEjiwFM/W
5pPuJyjiJ9uLFtqUUmQg+xQbNpJeHinLrFo3pUuaQWJ5JKKM1r1PedD1bR+mjpB+N1SUG/JFdeLR
nYTyhBPn9Cu5LMA3ySv0+PZJWTdLnZokLcL47fqESMy4Bm7iTAluNS5XCk09SR+IjHNNf/ucXM3Y
BmrUl0G41Sg5a+b3JuEN+0TxmFZrOONMPakQXYQy23lTM3NH1jiqWnBL2DfiU0TDn3dR+P8ij+iW
Z7A/VGMUWb6flNDmfZl6cqzj5dkkWCY64XWShf0lJ5cyEF/I1Od20npUVX+n6iPz5/PTeiSRiq1C
3FcaPx2/X/A1OfcXGHsi+nGiRiLZgPjcC9RuNihf7QZubolzFBTJ9I4tAN7UYUZV6wIBIZHQY8CU
B6FST0CFdPQyKXrtg7AhGER+mDq48M7BiniWcoIX0CZ8PX2KvBQzeYpOijrxLNNr7u2uwJYwN7Wq
W1//4lZkLcgwETnaS4i4p45K/UTHpqBobGQD+E7PjemreeWQDPrmpxCGDB0vvBZNQWVJEVEa9T7q
Ho8z1OzSRMyCgfD4I7RSEPS8W3ix1Cn2C1lWMz3voXqvjSJO/nEj0sKB591cG/OkpOd4a1T/ME51
GaFGWUASyT19SBoB8KIBeW/ScxwFVVxOOWEQhz9FdRsqAPi5Tud51sXcDnFBTPGhj+z3uJQF/NmF
ctZw0P4G16KumGGYQRbalZ9HzTbBHD2cUVTi6+6PcnefBdUl77dSVvZur+kLnLPxf3+Gf4lGrQyR
9izb/uVxajoLPNQnkYxBl0Z2xhnxlTtHA0/odHIcOdFa5YNlh1YPWW5A4HSaJa/LuUYp4KMOqV9u
m6I/33wJDpYb2glxUWQSQ2e6tIrcVla2/Dvd8cq0RxDkLaPw7DeIt2HzcImwr0gaQ9Fg9ZxTGc3R
e71wK8o+fum1xOh6UZHy4WrCaViDYvwkIuNyPnpyg3N7LRI4nkRdmTsrAgaX4uGupBwrw8Ao8sze
Y3ZEzMts6AD+Fh31nRLwf126SMa38spCxc0nWDlmSicMtTkaK5SC6ZJ4FFdWZBH4MO2it+ihv3Vd
1HdJKJiE0+xZx/8TzL5X5cVHoexys06JUUUYYDKf4YakncStzAlyFPA0tXjSYs16WNx5F1AmUtGj
tdq2lbGECQj1B3pVJP+VYeNlOdvbJTsVJCc10xKGSRpPFwQ/CA6zueMvHg/l613fqf1BjtrnrIqr
ysctwdO4Dv1Xmxx+Nbd8A1HlScWJHJQu7Ldtrdp34e6iohs7qVZUYRPhf9mmQZfWBroO5TG6trpG
32e31p39LHvPrJqVm0UQsUWCTda2JH3lc6aEZHYHeiZ2pGJixgepXS1Zp++fksl34GaOn6WYwZFa
I/I+hyomYCyUmZruJLgOWpetmIyQjliQflXYEQA8ttSBfpVdQkhwNBbRRBZEE4uxFaH72HJ4aPgk
TfiuMzP3y/jlTDu/9HaWHLNg/BCG/9/74FR8sB+VKRBMunPL3ooatc/Df4iRx61EvtvEOOtMeFlj
iDN8TbSZHbLn+PKQZDw+5vWuf/5Blm1YYTPqMl35Y84xfhpT5IWfn3oB0ZXhpSbphq473J4POsOl
XCgFXKGY9EiM1oWmZqARi+G2Lvdb9SGBPD6SarV7jP5fiFmXH+GYdaLPSTdyMIA4sNHa45epXzJl
JcCk/S+N9aWwmLkvN0j3tWbmzBXryyPrnnbcJ6oeMwxXm2pG3aEdNLwwMq+jLozessaxDGA3XzbQ
kSLiNr73mAP2s9hRms4Nl7njdIIbnI1GjGlJ9NSJ5ZiksAZg1YG15UzgDpnBGIdtCiH2zalMCaSX
m7b40+VfTRlLHJAxOjKcMMmSpg45ZLESCIGd0KBz6DW8K0XTzmD2tO1yVSWizo9MuRpvN8wZjftT
RqPBlVQsSuhj874ENCZSz1C7pZKR/++JdVPNa1HKysfs/E40IeiIsIlOvoX5pGtRXqDLAd8deKj2
nkHpGYR+k/x4mCvNQjwnKqSxwI5a6ICvpSrTbDZDfXlilPYUVVO+AroBX2ibIzxdMQxy8ZZroPpi
AxnbPvO49MWzo8gXim4uSQhuohQbHHZ5Ee2M3zQbD65iSSyRU3nVXcLlj2KtAoXL+vxphPXS2M+2
VAQrBsyLMLs0A/c6hv+02kLDjB3Zaea5341zFiy9dvZN7i/pITWtP78QDC+olhPr+w8pMV+lCOn5
fRTQT8E155jACKVKExba4zu3OfE+/EDAwYErkR5K6Dpy90S+qt6njz0zecl0WrmPNIwvXlazQusQ
8TXRCA/Z9M4cs/Bp8iEgHdVfHGtwXkM4Ll8lrzO2CLmP0svePOlC/QWPZvgbzEvtwo+ofXfOIwyn
iWIF9q1Vha0mKDlYsybFsdfiyf1QuKP1A7684XNgphoi3x3keRP7PjcjJX+HeyKvBtgIBHfB7W7P
31PjfwdHe7KEHmgP8a/l53rU+yZSoUpMua9vUY9P+J1g1Oa/W1woqylbOVfw+TUcBdHFsFaduhms
f3MYR5gFkkJLPEz76wzq7O8aLLI08JPtklRt5f4Ov63YNL9+kJLmjjsjji9599QrqaskiPwYFNOi
d6rQr5TRK7s7D6xpnmLc9XYvuJW8F6vM9iRSOGI4M3OWpldYOg8paWTEM4OW4Y1YGziZm9MVhtdZ
/0e3kEeffMxhYvlXLPkT5j55k4eEvpkHkFUH1Yc3hiTXYCSRIVTa+ZEyKNdwhvKGriN95B1eJeqd
eF1U5UuMFvgSwrsRRafPLe9kDgK7DYWiqznmBtYL4CqQNpP61M+cukNHPSyLK5oYIrSVrsq9170R
1SqZ61FJEIt25nqo18eXkU7L5L+3WJR2wxhlO8mdQAIXrn8SRdsrarKx8JHNMo/FeoofFbIUgrgW
pKGEtaHL1ZQyXMHJh8+EZ+ptAWR/bAgg8bZVLLVqd2I0g+4648iGMTuhONAY5lHeHDQMyI3zcvn0
gwe4ozZk2Nk3hGkJjgXQkrPY1MdaV7EU4F0R2OUgpxpMxZSYzxBebpMhG5MukNDZUjGWlaFuXP8I
JUy7gRsXk0+8xRELiVQ7GBdH4YD6nuIEi235BLGoOt0lx/PVWRZZBmrsdhPds22phUENSJEAEmln
IkNRuHb8/E7/zlJHK1FQEwinBFwAx90TkBMdGzd2HOBrgZPVyyGxcmr6VXKWWHR2v6J3PhKcfCPM
FwIZ4L0XaZoQrsnSnoPB7i7qb9hFHOMERNOzjuLVMbYUD+eyi9aXl0kMQuzXQpRIhjwABS0X1nlD
ZAaHQyjxEIUdNf5dG2XjxzECXNEB105YvJqghay0THjRO0nhZf92NdEUH4wTxc/rjePXCUN4nMab
ESlsKCA0Ru+AlKxQhc2eS7A3YeMU4umJVKubaGGytQSQ8haYGLJIzBFPIE23RrUap6ZmeYvOvsLh
aDNQmhKhmh7P4m3Ry37d7ihfZs+iuwO1/3T1Ti+hOwObwaJC+OuwL9uoaIYOT7jMGqRVYmuGdzE6
otfkofCYZUrkEhRoIZy3755ZWQWUs2b6AMiPxeR+97O8T18bJIC27YBaxtsAmF/8Iwv6BJK8MEdY
YM5aS7psTGth6SrKO5Ozzt9tXjKtL6V1PJ81kRPi8jJTTravFvSeJPfDebjanQxNYjnw/wrjHj3T
sw12xtXmSQqqDzmNJwMwHyMrSbRTWLUkycjFTZEcPZDDj0gpPGF/8+n67nSSNg1S+e/hfb527yu4
gPyb7fPdatU4aRZfLLUjUwVBm0ocrk0NkCv0cNmDfek5cxfy/O+cUysS4egpwr4CSzB3ZTpxYfFP
OK+ifYuPfbfDoz3CAZKlO157S9GzyCqAj0vTN4sMsKLrw5/EJXZrCMk69LVkP1BshltqofeFKR38
i67ckJrEuJcktpxFsZM/tbPB2LTMI0/ZJl2NJ6F67ktegrhxAhBkhYhJtGIB+cFAkAaVkg+ZOZ+Z
mNYN9YSsfTJJ96xGs/Xt7ncgh2ympKLsReTNOAcN71C6zYNwUudmHaybNYqtGuOPqlPHOxJM1J2t
boawRVyA6nzFrE5sQwvD1JwiByjePpiv7KCJHkpN2ygeUaweuOE75RDSX55d0QsM2TQR3X9jRLCu
oK0mJp6gzSBcBHF+yaJ9Z7Gavzgla3BcqI8hqtoI5nxT+0blXOWTAO392BYoqk0NZ9fuiQFBm+aN
V+FHkx6mjFeneRebXmmIysY7vb20N+h/npeC1P5YuEUufjMq7teYtlPaIbu3lOnK87p5oVsDQRP4
L7tMiFEpY1YcU2Xjd5Ct1Ry4mUoH9wQQ+Tb9Lp48o6jjJl7aiS3GnYCrKV54ITLKJ7HhLDQmUAoa
qKLTGfYvWjMayYUlKZ6vcJtPqz8u8n6cZgbGmLL+QXox+5VJsHkzL3p9tN1ZXKNFZNXZxRqzgR4S
VxSFKRHIsBuoEAba6T7GGD5oPqkXweg/j/Hfuyp2PN+Ah23/oLEAc4urBmvLgBkPfaqco3YJHubB
pVjgs/hjiQiwwJ2YeoloAYqBdiI6MKBzh+q1h9Q7vUpcwUIN7x9eBqnx0EjJekYiFmvWOn0Bq8dS
Ws3s25lRlNp86muxKqhv/sMSsOQ+MzFETVOvd8E7GbI0VVC9y0trBK7Sg5ND5jf1AcwrKrvK2ikr
NFi7+YX6FZMSbWmMKE1oqex1PaevW+2xZqZkZS/+q7dWSORtME676BikUJ5abrNhpXgZD/w9+P4M
WkzufQdyy7jtknSSJDFAEn9VJDhGsCy5yL9XiV5+lG7tr+6ZX3LtrdRJlzpy56z4XpzwkCLxTbmK
po0+4vRGIJYqzpjqtd9L3NtPZBg2As8IIzF4UMbpsLJ252ehTDMwPF9AO1WAmh4oo/nQq8+pniom
wcQUgcqe8g7Z4fAASEdLmIJcNO6crypXDGeh3xZnhb1ujd+BCZAmGu+GXY74SA+CRJyqNpP7xudz
Tnda2dERiwSRnsfCgGUcbrnV29d/l56ZdQbtOTeMXr36ZFE8CwUVmQ3uAmomWSOBBlqp1v++ShHR
FpZ9WJ8dd/ufM2DSy8YzYYtBxA+WArqOuDd7w+L10iSb3Vx5DMoqO81bNfZfsxbk6U5TiF5pCgqy
hw5Zt6I3vl8kODFYjf0hwZucTR+gv5ylzzHpmDnWRp6oYIvF5d6P5gSvB2ZIVzRlNP7337u3Dt9l
mEquQpThKaDRICL7RWkBQst4hUZybGGsFCsSGYVu/N1d0IJUmzw+vXmUXDFBzG4XzH8xp2PKYmyU
j8kHAB6lGsAKyS0pmgPXxlpxVZpUORxWpJyjDQi87DyGouxwpoosORS9P44jj3otNQ75RsfF8rG+
8Dk1TtD8M78Xp/dd5vj21/bYPhPalwiOFjej3Irk3HEMg/emXSa901bKh5BLYM1u7pH3NaZesRwg
VgGR0DS2fA54mbXGk5pJK6nSv2KADeoyP32gtutSZDZyoYReg6ynOHerUGBHffW4Y7I05a2LKabY
FgtdpUsf+Zha9yzTfOA9/dv+24GDp/o9I/mkD4qujTK6xCgihQiyHvVXCQ44bGONMl9mvHXMea3k
+1ZL28PTK/0jEpOnhsiLAJkZmeu8hlhY4o6OEoPbD8TeniDbk8RXR17e5TOtGju2+T2M5LCcsWqZ
UxZV4tlb63tzJnE/CQoz+3a7yP+d9SO5AWPblruS2K42lsXpyHRKjQx5T0Ln/gpxde9QmLKqZklX
mM3GCPqF+E5IEDhe9/Wr/lotgjqJTikd3MGpX0JJ6ZWMgRSxUF89rRt3nLQhumS9MKVWLI1iQffS
gFrYIaf4683RdNxKStPjJgaaHlNlTWgd/rIEgwQsgf1ZtQspEdz8u5ZYbrs3iWmudlFH/D9blQXV
rZvCypHs87TscY+plOi27Ev2jqu55QvTZ9BHeRJTA8IqW3ZQdzc1yLujO7RJq29BEGkG5jLHS1fl
/Rd2U9VIYqoYy4HqRWDXvk/uK7VYDYPhD/MwHmntaqejj75ieyOhTVak83E17q1uhBuSjRdnLAg5
3SVgjkih4ABGphvT4g0cnEuJ/3mb7YEoRPAjdGDNXbHiFhQV4KZ806rb+FzevZVFu3AMfWVn3qm7
ZOSE/HhatF9xYyXuvt2ld4ck594fJY6wkIZd3G1svAx12bDmpnoCvOdM32LqRT+DMEuVFoPSRiU7
ekb5XKCgVaYV8v1gI8l1eLMe1G6rm1nkG64dBvevHXefvBCkx6Y/izY3eOqZjLctLOjHD/HXm74n
XqEHDyw7FxWSdmDHhZ2D116DhL/UoRHiZA6Tk4GW5kAvjwlkEPNmsrH+vrPWVsGV9+D6AtMGXzgr
jwvkmEilmH96hTibYUtzucxcykPDcuZ/Q4UVQgB7m8q3z5J6zsezgfs/MLCVq8ldcLBzaSTPeSBL
aUNvB3wgOI4bE92BA2+8yR1ne8ikauuwMsAhK1agFraL7AI0oVK9eG4Pdo+DQGRm0P75ZJ6Vv2Mj
AkDsjvEYidg+lIg0ZKfF+xhM21VgFzfQh1j9+eU8L5GJO/Z5r1oQoI+oWFBOWOEmEvfTCKoIf5+b
1basBIuxS13pS4mpWY0MuaHT2zAON76NXgjHfkKL0RlePrnZXIx6IVLjwFzaFs8L3CPQ5cThSN9H
1mqk+vf8KuCmwLFTDyeJQywJJZUa7DD7LPCngViMHA1gLoyTeQVRrG6TNoCrjtnNHkRwe9Q8BwIx
85QWBRI/muVuDbmWqaVgYz7iZ5TQk7BYaLETOqP2s32ISldhG+Ed9pYJ2e1v+dnbtZBFLzlJAP+X
xJ1ndSIa0wDLS/UNfPp+23j4VskP6nYHRF+xjPCBostb5nwn+QFtKfuVE3++zLTcQkiLfn7UmyU/
R2QYbK/baT+bB8ppolE8knWyopIO+dlvht/ClJQoa05YgfS9gdSlvllQXb/yFJjoiYUR/qS0YKZk
NEFAndtQqa/TmYmOECCwmN1Q9VlnpfjSUUSRp6HcRU5v82JeubNBRBqXFxUWXGbibWuyvgapZMfJ
V0m+j5OIylgsNlgUwi8SxqANsZiaYTX3WJyIiY8ti2omqL1LHpa+m1JtWACN8ctS/ueYEg5ir1hI
KUt4KQI8Rg23Vf0U9I41x5oIJVsOmGI32h0JxrdQW7OoTzTQn+S8QVLfUtPZy78K6h10egbFpPuI
07NRHOqt+cf6mpt3+ndILtX700zI/sDulAtQwOMtKhoSkREpEboBUv3oV1nn4GOF0YdIU11RdqHY
qULOPrYYxVSsJ7HYRahM4GUOjfHntimnDY/Q15EaUl6gdskTCX7XbULC0WMJVpFOf0XOyj/Q61Bk
75/Pu9E00j1ZBW93xCUr3N2b8K1BXgpd94xC1j7TeDRqDyUFXEKa31wFT3MCR2aH37KLef6hjbQk
YHDt5m32JpgP8xjIYOnrgu4bjGQyW3C1AH951kMM0uI8ryjANFHVjguFkBFIAP73M+Nf+op5RJHm
G0BFj0xCa16eF4NHP6bC/uOjVG8FYtOsGkeyQE/d3sVBPXTvEDxkfTgD1ghpMkSR4wcdSOvLGQ8c
C41vGaM78VGBdNfWaLXZQJSvvVa6WBv2uJZ5ZV1FNi95hssDZid5+V3Vc7BH8V5CPJmYbC4I/p/b
dubnCdON2dEcaylKexJi7F4cVwEzsTLmJjt2KgXua/Bhkau7/CmGfXwr2IBHmk0oQIVSoq+Mo0DL
r7QVvvp3sShmBBleOjo4K3ZQsVpHhZJDrjNy2Iau7Ma+Im8NfQ+v3nZnNoWBE0Kg8w6hfdJAFm+f
zE4nrCqXBzlUtYgoMaFOlZ2u2PUVPNzIBAKXp/zWs9Up1ARWviDGHxCBC3BUYadGEBgaaRXu5ZVa
a1p5Rs77tNEyz7IeNlt8uy5FQAGs6cfkIrlN6IZJi7sUElD2vy3BzRTPCCrXj9cz7hdnyEJJEiXZ
/d/VhsGq0u1ZlPN6QaXn8Mn3phl8dKrGVIS0l5mSbfjKBf+XXIbu0ZPPMjDaiPSn8SceoOX6qGTb
s47mD0rDURQOmwE0X4vczyzZODA1vHsptZUs7jSVcVLwF+8grjUUzd/qRElZINZI4vqL1B5P/wz/
xs6qqVAqO8D7+t1LXHzxA9bC33fHTRwCHaDcDl7HQ9VUPzM8/P/cnVKU4N6TdoQ2qLAGrIfBz442
RN7uhR2ETBvpNrybYz5+wP5FyKRaB9IC858uLWjvb/Q724OSXli3TgQJ+60iyTCH6UYw2c0PgMqD
c67rOzjUhIBxVdJh4D8NW6CYNkZTgQWc13XgJRYtmp14gEPCOMcbvt7x1eWuyBaYMfp0G6VVUBKR
OXIoMVfMQCCLk1vf4Wh/2f2zA/cyfltphktjGdnvSbmVwp3SX2sRbY1ey85l2QoPE52DcmtVyWpE
0+LLyJ1GdaCMc/IL50waJt40V6aygVASQB+EvUI394SQEC+2X/zTHtkjsie9JECs8X2wLq3fQ7wp
+xQSpbpgSj9X9NrUaA8Gu9og5tuGesB2vldhK8aRi+9xRVSjfox17hklJXNdMwhtjObyl7b7WDMu
btnSf1O5vnj1wxtaTmjBxcrH5KAolOYqijkNMUjrIJFy654XMnMUf2F8qOJYhZuOnV3bo48S534I
KSM/kd2yffVfW/6NgGttoJ46WhNAlg7TFOCXhZRG1GPZDvNUlbIQncZrx5q58F0GDvvD6Xh6meTm
jN0wCfKixZAOBPeO4ZalIO93kBmQr5RxQluIClZMDasmGtEtdRmA+9CUfU6kEdcgY5N+p/K2wdXl
GKUm0rIChZvVHiMNOct9h0juhSBcz5JhGSBy17Cgh1pzvWaWl96CLSltTDhmmNNPvaBEcpMAHZRo
HsUtlbezqpKg0dlOVD72VIjYdchcqGRDnFthLAwBB3uaHhxSpu1vZVIYqf50eiNTHZSl/BuJAPUu
tn2U7rlweFkdbY+dMOKJNmvXoEBSz1EWE5ma49vAfiLreig3Xr8uJpLzKWgKxYw2j5RojDfQ1i6A
ljM2cjdKPwd3q/0/X7hGA3CW6SyuOgzkM0n9VMkPnyKK0Se2wqd2iyEoOlASYyhh1pEqx+SMTieS
vSxMqfMZWvZ06FoybFjmOFDvBIWpjDjBFoxJ+f0RUdJh53dzrETXhdFyQcNUVvxtHzK+cmlWgNzb
PPeZr2WbKv2XEK0hsbwQXYfEpnvF4rpkhMX7y+VmH8KA63IpTQ7SOGN6b2E3odIRVcXYkXk78ZlM
KEwfdcnf3opyKvt8xCi8tG4ey0HZOFSjCsZbMx7AYimSJt8/TiwCWp87UANIKw4rV9vwOxgetnX7
IqBPAVHLLuBKTZOPYcjsbW85y6F3kaoMaPKetdR4volMmlYeJHJVse8Rac6fgGQuCXoBsMWwTpOP
6fAqTFI4XtyFgdrntC7tknXHToHnPd7TTOD0Z/PRmLddxnAiD42m0qVqh4Cd1bn6vXiqz4t75S9f
cY1Cwqlg5m2Ni71BoHOja252lKpkz6y21nEtaMt2FpW7qcpZUA4ik7brNQl+P9m7i6YaoiM8Lmey
X+4IpPAvQFv+gC0rY4HqI3vzxGUDKiKCZnOEZPZfUWjOwH77vrinKMWtI6maN2B62MFtyga7ah0r
rAZC4fQAs5rphlS6V4UQSs5IQk5DBkg3mjcRBZk5TdDdw67uPPkZ2ox7ivBaGakHVDDjn+Mko5fc
+zws9F2dS/3SCWqkYhLg0al5v025GNvtHZpMqKkBwAWzLmH+cbur+nR1h6/sAYL+8RZPxN4mm03K
ZYmxvgC/j/TmeV2lz5rXLUPWsP6+ILu0H1ExNPam+D3i8MCPQpFrgq8fiK43noRZJcRWnkjQ7Rjp
bc3eo2MYB3F/8hqK+VBUjrXFEmBLbrQRsgvvNMgdH9ZVtpo0ysWHRzKXPNgUUrmAdM0kJtS6FY2x
zn/VQzPVNufBpj0ElRH9XEVeLowAS2h9pcrXdi0TTwUavS260LxSL2H/pSpFjmJnXlRqcXXmYZwT
qDPY4Xiab1qrrcIacJvhOPO0Zy9VORG493WrYFk5UflEmHQe8F3g/AjpJ0MjqcgQFA+oMZNLZBWp
kbtysBHR2+q4/wXAe/pY5Pv8128Mjncp6tC2IcPabaQlra/u0xAiQM326kVSvqmWAB8vIGY3cGV9
04ohM7eGITLeEYLFRjfh4AEwZ/Fnb5AKZBqzcrlIYrGPtAUrcpWWIFpHcVGbj2jPzalwQE1GbuDE
LS550BumTNMzysi+uo09YpwAt0p1b33JR6NmUCR3fvNobFs9yLuigq61e5rlkRBgnlsplDKyt0sj
xlWOEkJV4MWJ+3kmMJYb6ZvmeXtlMLOow107eZDEGwBtwUUqM8ii5DHp6Re1dNOmFebD7AEesSwa
uxzmCUcshpTa0pL64EpHp+AVMKkX+Wl3YV/XveIT+KCNjRedCVE80K3tjvt5oEGyn3YdUj6xPBaN
Ny3cHzY0fA15ZLLSTsE8ef0ga9GXah3IIfVFwzftTMINXYV5z5d8aSOQelI1ANdaytoQTz6CGCCA
61W0oVWds+t7i686GXnYJ6a6AeIgH71aaqPV/4n13RnJ7lfVhl/d/TG2zuXNTrOKEHCAcgYDbVhV
/Z5+KradR9UMSLTWWBcrPdLhc6O76XPtkJxb8ef0YFzt2NqdCN3PYf+4sJqoO2f8tQ9PSO9r/+FM
o2FyztXJ1kWCrwCl4amqQW6URS1x6Vi9vm7CJ8LJ7EUNWJDmK7K6n+YNQzwuspoXfkxaK4cfO4ru
g9fCk6rl+Teac0xhBUzqoFGw7Z+N3Lfe7tjDua1Q4z034xMSd0FLkfgRvo8yb/vRX+6DKhOBRXk3
ZMbuMe4YpZzl8uoRQuOQAu+dix25tBdNXPU0Oh13iYCyUDO0hB53MZpUOmAgq91b+QLK+M8fyBsP
2C+W74aZ0gndfOhpwDCoPLAoyxCG61NiAxb7jmbS3YyWUKoElZ3AYR4Qdw6eKbA5oGdAjudoI8eW
8W0I2l/vmGqIMeuuJ/TdcKkBgRwtMeVEH09jA489u7GQ+xkn4riuh5wuBbxc4nFEX/ndy4/T0OXT
xwo0Ltw7FiLxQVTWivisnszErK9iiGi1qjPZBteQwKF1+t9aBoYKEtk/fds56BS+H0GsOOEP8xeM
zlx3e7tZ7+u+lBoKFNwtU16FsciSUGWf1i5m/GCkQNOvkrfAgHIfk6++QVaUzDHC6TF3kU03KZJm
y/f1ew2iHFN3lJBURmowXDxYB/Dh8HZ3Y8Rycs5511kHxMMaHPhu8oUDacHKQi2sXf0Pq/biXRxO
6s4d6i78K7I3cTYWBlT5p4fQ33QJ0rwUnq1L1n31od8nLTZgbvwdnoCHlYDMVDipGvgPVUGMFJqx
i3R6RWQFimtrOhXKnWu6E1yQpPaJ94bAGxV04atZKzIaTBUByOdREJhWmTEIwx6rBGEMnYqwH5R2
7xtDkG0Pu7W0ke1KNzZPHVjQO2+tbHKEuADmu0wXfATVhQUUS7xqcBGJiXOUMOKjXokpXq0wSs5y
WEojfimGer8/aNtE1pczNUnAxRwq6ndNdVLoUG/NCbXIaWNXKd5qlHxFeymO91yGGpuQwxnQl3hO
TcC+tONycPtsCJ0lnM8lfLI05eOSzJU7FapuPm4oZIwWu9kpsK+jh37OjfxMz9cCl1UZ8Df8a/Cv
4fAg+G5PJa4/tfOt/uV6fIA95rLXayHCfGShU8YOCu54HW7XToA5zZTihdhO3enN6/uQ1+UWAqCL
9yX9kmtC0CQSwaiJ92f9SA51XBpkEbieZJDeb0EjlNJMS/fZB94z9Oq2I9e7W79PhUB9y/QILTQT
y/1mquzRhtj9HyDSUIIvqIKwFG2h4NAoGIxma0/DK5TsvsL8Bg53BYUs4pjP1Fwtd/g39lULQJNZ
KSQpDHWPsWYaSOBmhJt/67SfRkjVNNturmfltluctlmVKifLb/tee0KIokLXYmDxGQTGR2qzt4BQ
u0hyTx15kVGrULC/FZSu3FIuNTS5IkgLH31HJnLoNFUgxq3I9CTa2vPOCcImX9ynaPM1Nfdy1DCC
9oY1R2gZk3QNg1MLzummllv+khxUrIsEcXwtf33v47F7l2eUFgzgiNJcK0dL47K4oNLvtxZtcuiN
KMI/vPVcyl5D85yre5/3Uu+fVxoK8h+fbnENZ1X1SBj2cecKFe+DbjrLvL9dWwEpn/b1PYF1auN3
dzpbIzeHb40lwT7xgtjkmEEfSTlo5ozHq1s5sTtavfyK+x7PKgkFwNDOS6tsIgP9uK+BSO/0nAYS
XWSEoEwse2/zK8cITRg6v1csdgt+jk5KM0+A4dySzC21J0a15fBsJRQMJqV6qSmuAPjhiFVRswQ9
thSTQ6ybbG9aEbyYyUOX4jybSJEvXvYzwNOTO3Hoswc1iEsv4ITcsZbZ1LFqMmS2eELfBHWeZ7ly
QvzMcr1DZ59IFwo2afHpXFcHfzvkjJB98eewCiazFvDJ8gpgHTtrPmvfTstXGWDncwGMa/WeC2E7
sswfAA9Kbm6v38G+3vAfhikW0YLzGYsudtfQg7PxaHLwWr75OcgMCFly0QvVI/7OyLsen5i+fw4B
Euj/VWlQfdsueQnpNqjeJXAR4hjwH4efC/gOkiO07kTVJEQdBQjDDX4YdITrrmA6m4Zji4Q5wcm3
TmBzDpdat/U8zkMeWZ7QCA88jHkKTUzrl4NinJ2V5+wpNxoXFyG+waSOsBn/kHdBGW1XL3eGfdxR
pO/+GXLCrLfBDmQ3aDFZansGvpt4EPb99k7IpSMiyVYVzbRtiwNzvKL8odc1Gt/CdDZVkLzmda7G
ME+lwYwzx6r/9vDmaZitplTJo9zynqNKo7E9uuwfDQHHelBrpANpk2eaNI9pvxNrDWkRjwws+tSW
Zaqn9p5A23JWGi92SW4mwvRAlOty0WV+E1rzCr57II/1oE757247RlXk2w91SU3ua03kwy/Vakx1
2oc3GH43JXIkk5wkBnL0XhIXYYl/n9/gYj2imIMqOKXXJ67RQ9ApYmVhOP+UHcWSHvy29pEVWcGS
nLuvbY66c6XNbRKY6SKthFL3Xeek2qcNeRj/7X/hTnuD6qv/CMShBSBmKhiOvxsuI9n8ZE3kmvmz
u8l33mbNSi8tohyMphwkpMk2R8ejb3e4hz1/FKXNqR+PaISRK+4Rv+DtxtDi1vuhSCVLSuu/+lDX
8Xs8XZKtDAuJro42G+gyOGC2zMHYsykQIKj3+8N/MjO64+M9IH8Za8yvtzvj7bUdmNb1Sic+pZ3g
jj1QOdTFcyKeRu7kitXvW6NoSC04f7yImIOQRMXIFIVeX66GYV0c/5FvIQlJmkF1ErXVYx//qpmH
3/SnRHlJ5vABnCHPsOgNzRgnbbC378H9ZYRksmSKV2Rr3iYmw/bolhWrgINU6xA1BtratEDs5Toc
EzTaS+zHh8xNfCY9y0F4WGIy8xUqbMlZpFG8Wta+m5F/pfGRTRpd8AWvdycnO90p0Z70Pf7uI23B
0hQfkzFylXXsxjDCFJOynsohkpu5RnGYQBQ+akiwlxIMAX9ROyjV07XeRMXbk8aObS8zR8GN4gQF
jHb9CJM4Ebg1/xmVu1Mof4wh0TOrlVSo9hqZbRmC/8K00uOhTlQ4tr7yHj4HWrOOGFkykLAtATPw
fHdPp9CJbPoElYycjDo976MEzr73mdBy5b3l3TC72iflrB030J2+9DlGqDeAyponOS2pew7fkIjX
3+CMryabbRC/xjqWzRXliJBITVnBw9SmE/aus+T3Qts4AB45kLLrV3UWbFwcEBqHO2dXrABE+S/t
/JEL0NXNg/Qu9dj6sNAAeQAVihvbpLQH/47KTAbLQOiI9t4Yrr+/xiBxDzylwB24uz1b5XxLpqym
yc//pn51Hh62m9Gqp3q2tbDDLY6z9i+9zTrINHJ4I8Ab/2MYfBfbUuvTATAPI3L6UCpUz2RnQpTf
HRgXVC2mYICX9NUAE9tZF4juS4YTpbayNmGLrtR2wUT7r1MNMjrEUsYader9LVu9YGIj7scBJaQt
wce1zI4hvz++lTnggFdFzfEQ/MgxijQ1lzMSBq/eBwSnfCqBiC+b8MA7QvLjYgD3NV4tzyzLBHpB
8wJo1yeXhdMEhFyAEk+1ZmeOuP/oPy7AOiRs3YukwlvKgN4CaskIX8QGwDl2PQElUWv2X/1+FxKy
XJ/0VxrkaIbxATBMNUZURlLbyAnYRnEAi6b0yM+LlNCIZ1IbzwTMtBUdM3x6VO2lfPenv78RuMS5
/t5B14G43v1aVjVpjSOVEB7R9zspziwqG9wRY5leUMNIllIi7wFCORdu9nByXQnKBbSsJGQxlVit
XpSnxoRo6jjEnWHNpvDtzHvI670aSo9292y70p5pxV8G0hTCLzDzj3JqKPbjeCzT1tjA43ZnN4EU
Z0wlOCiYEsaTVCJdL1tiB3erYHMvQ0zzWwIegquc4YUSReRmLSUhYPANaTmxof1yN3PLZj6HSYph
mFqUlZFq2nd7yCrUWumG3pcwjZTAOGTuASuwswNJ7hyoQU12nnTdWd7sIh2+7+c/cC6Rg504ZGLv
P4nGJ7vgHC3CDuCGqNduXCf0GRUhmsWawXtix2qFvwgYXJPXbWmyGzB9TP0oiFBLAmWgGuESjJkM
u1XV7vwV9NgR86S+TBaLBimrn2SRvEpTrgFt8vLkeRLtJU6h4q74vRpjL2AQD22FgIjGzPvGEIRL
4eUhcOOG00Bc7oy3nAJ3wnkXQJUJg28XQMK9dnE0sCWf/+w8u2I7s1u39KkINhRi8PotYwjvpj+a
o3pa2DZ8MrEmnnCqhHkZPet+qeoXMFt2/oKfyjWraHPv6hPF4w9zXPZS2VuKcV3E2kHPZgN8sJqD
MZspBnX/S2kVuNycurvJ82xNa5Ho+VssnZWthT0xhpoIn7+P2qy8H0OXPvokFCyysvq+axROK91X
FFbMwYsD/OC3xlRTzKbFLk/1obuw2WkOZWRke6nzOERQRDLRwd35/qHPlC+1NvCGVWvZ0StJLnfF
AxLVZ5TgF52xBCKxHGEY54a4zZICZfBFYbch+jOcCrf+ZAUROuK8kwkOZGPWrKDTLde0dpJwsL2e
V9hM3PC0nQhBXnCtty1ev2pJKKVWFmMx8gNtbeHWxkWrIdn2imZg6uDO15PPxQURDURIiaeBP45E
7JXQ9aA++IaNnkR38hszIvD7xRY5v/LIircwDLedEgtVM2Au9yHM8LfDKlX13GSMUFxoJNJGc60X
quJDReX3X3aRTFGRuFPq2vS2TbDM0OtashAVbVlPr20tqLFz+bRw0CCy/TqRfKboQd4LA2bJtVuq
9I08X9r7+CPaTS1MSX+OVRPw/DGbOdfeRtwLPVsocYqbW1VNNBAZ+t8neWgmguGhWQrOLM7wsa37
cENBewKJ7KpEKpgk+x8AhIoOHPD2k+fxKt5wNRWu/r7/Qx4KuXaxs6+59y7tGl0RV5F4pGKMVfUB
w5s0rKpHpgmLvDq3LMuotjAAtfUe2bUD+bYW/JXMtw18kzJcms4xJB1aXCes9RnhKMZJ3sGYR/Cm
CYYyHB9Pg49YLeAgGU1SL5Ja3PHd6KP5AYB45ahoACHlkYBi8dTsVWZ9Vkt2Gl2DJQCb6HgJWZPy
Av38hS5R/nnCfvYe/eqLoGB4jRzzh7kKXzKNzRMhnvutZJvv9Hxho1D1B+pmED6GfETPunawVq7p
TBUj5yrWYQbIPiMGg/DWCbQWmrRWTwJGZEG1m0IRfk02cAfEn4WmpxyKd4J2HXVRI5sE4YRmS7bR
/aM2/42Bv8HL8xc6yA+Fet7DzzDIopU+6gTKz3V6tKqXqLIypW7knZ9tuQDt/fQaCw39uzEgAOCD
t0MXDbYnA3GHW7cjYppGqLNkFznYe6+I+7ARX6u7uu3PBNQ8H5S70w9GergWe5R1VfHpTND5dKRa
gMu0iX2QsiWCYaYA6mDKos9msUA2/c7IY9JyUSa3lwkGqe+BGvz7C9R9cIKXhSWJWBZSYs69knZD
DTp9hcrQJRQtyEvJkkIz6vZsVFTqBWBs4m4YguLM7SJFm5PDVD09uUo3Hd8PdYLThfcu5Eyu58EW
SfmzH45OAQ2GlOCB/hjor4Mt4dM+M1pLcHthm+C4z+Qhhxkr4sB6VSWVb/ZWi8vsySX+jntkq145
RUOmz79IX9/R5VUxGbVvnpq7HTDMLLyk4r8d37KtB7765OoJpG8QsmRbFGwzclWVH5/FJXtQ/g3L
DWh2FN+jyRgO3zCFHXkKzIQhoz9BKUFORi+u8tLXMT7AuYLpXvZr9ST3yvotYCIUwyeXN6yC0N4z
AIIyhW4Duv9lY5ndjoi9jY2ttMxdO40QdNbAkdnS4rSI8miTBMo2Ywa/33dxVgX2mSJGI4qRVdMS
lm2P0vsRq3MgKP+lmmaGFukqF4boOxjTFe9EvolhuBn+jJE/mcl+OK7m3MzqLqUaip+oHw/Nr9FK
66+Kg1ZO+RT2vV4SkMzz0PGttm+x+yl2lrctBkxfoqX9RVZAkDxa7rtXbMrB4iSHl8XxNcib9TYR
/za4zHMiUqxcRxBcEeFzVz1vCtPztV1o7ct+/NJL2TrifOafI5bPzy81SiAbv6N0hlSgaHu+kAya
Rw0raCOvQbXp+3Z3g+gki8ruSsQ/23yFEsG1RaFJQqoVZF8LJUfjWngzfu4Hf8sSecWadzckFcKf
+caSceq/edtMTMSbLHiGSwoAHNpkROa6K+WBqI9lr21qxJXx5cdenFXD+O/xyx9zoSDZkP2zrILZ
Fk1fihPBhCe4YyanC3NM680+3h8YzrynDCYMImuNthEnIWymL0cAokYc/X7C33+JzyYoFNqu2bOD
VRBZpdm4M/5VOvPlQi8auaiHBGBNU4RSi+AMslBQgr/OFLT0KAy/YniLVVglGu0uYU8bsHvg+kEC
3MumATD4JWBHykv3jnxUOv69nlXg6s8+tcmNBA+1BkN/G391kFxpD2goQx9fUonaQDIvra01o5qs
4TQWX8jX+FT+t7D/M06LcmfMUpXXYznOIaS6LtdZi8s3FnQ8+rm+B+5b7J3BB6f2ZcuvTI5/rlXI
+eTLCgwuPypdRBrMLeMrvjlYaqrti6XhLQUHUrsLYHAh/HirXrS6kUgxUGjuXUhli2/ZY/U/5ulX
xFLhXqIJOVFmv4+AKZCSlxwJXtWPR2rKbz6WjtdLLkrIKSzMOabTf8pW85nwQTJ7uwsHBWSUOCdl
FxJ15jjhPkM56mUUEcpLsg+rATFQxG5/iJouBEE5+Imfb6tpGpmO2Fkkgor2vE13EaMFeQXs3tcO
MTVyvkt1c4egnTWhyf+Hu97wVrTOcjn9scCDxdYgc486dA+cuWuWO/y4PKPAxbPFajEFpasPtWN0
OPCRKGtZBqWc5IydEDEMV8W1fJ2HS6+tpIHpDgJr8XtQ+t+Unrj2vFVmPUUfRhgwCCwxhcxOmI8G
ce31O//JSVVLM2EnsAJoDVgMPQJHid5nfDS5vQnWaWglVeppC0ApAW8DpGNZbwgZ2m+QlScOTQ5Q
F0T+gsvUpTwl/WSh6RFPCyqC4d+LQat+HhLsTVzxraywPOwM0vP2MuzTHTCjXtFO9wbWyfz8F6Sw
/g0iCVr/W/JG/CQYkfF6mHqbZ1S4iosOhCPHaler3yLgqLwPiGO01a6EUuFjkn6mZ132t9nOnX+B
ig4kICxwlIZRLkQYy1yfTt/QktGps0VF5RcwVhaht7HoVe6hHbJ4064ffpKOwE2CGPSQrQmUivEC
DT104iexpSTqhE+De/fI3OzKdz+1xMI2wDoSLys7ht+oE3zFSpTviJxUutetzw8ZavIvZMJ01pAa
Y1UPgwbz/1EPbe+/pFUh1epru2lCcbR4lH2Mxbi4LZxioQpxg2PitdJZm3VqHLKZK/pWsRMJAwhi
eBTre4iyEF1jI6Ue1wn1GzL49FBov0LbsEkPxItkOFKBhFV0btM3PndmxUHFCIjvXGnjAN1zwvhR
JUVYYi4QRco8dgRsUg9gmfeCYu4NnWZpoWLarpLjr9xEoRO39p9+LlOlPY11f1ila20CTgqhF0s8
DsI+W1x3AZomt4roV+FzQEsVDgOq8w3irBJYMq0BaOWXbs2ZYTCB9LRSENJTYMXzx6iRGlUTDSil
OSojuAU2Sktu0KQm5TRG4d7TW1Z97Yt9ax7IqsaMShzRp3tsD7QiDWf5GQYRXobYZUTZqVnt7yhA
OqT7mboq1n/nXDpVV+KyiqJHgO0NaeOol0UoddrNbX8Ec32i5Ojh8lbg19I6E3vRSKHq/vbaj2r6
co7X8t1HeyUhjuh6neOThb0V4Yj6w+9TOc0PWCbeMab5hQq+JI47MrRWEXm3GP9NynGsr8FGrImM
mIT8PYh00AZfXeAanGbwQ14ctMCwio98qldH200ekrbNYBokGYebJnB+h54z1Nn4maJvNcN1nniH
ZplmliQ2uD+VKepWltSYk1uSrwCCiMBv6kBewzqnw9+Ls5ue1WKk92EwXgGHB0u4HrwruyEpwG7q
/bFAayinEfUVUanKKwJp8MtEmllwLRO8REFNjpbt8Cl0Kt+4cjdfGYV9cH+urNCdMX/fqeborECY
c4LSBvtAB374GL5Uwk2yAO1HsvQ7orJ+PFBwL8yZSfGmoqP4O9IA+r08RaVdGpC/yXpdLU8Q7pN5
9gROfXLUxpLanvlXhvhJZqxS3DitjC6QyuctsjEQxDFLAfEKdXT3G+bva/b9kByzCjKFRfkeyszS
kvh7YhJIu/a+c7BbcrIrdLbLw+hDIowY/nv4cNIt9XB271QQCG1MuGkON5eAOcn11JI8wjTjCzgi
GkhpFZQNC/+6/PwA43gkNQQYRyaw0C26NsJ+JyT5eKhWXWbjD2I6EBAFk1bpDVo3XVTZDio53wxb
Afh1pjVM43AmhP/LxWv2JeIgZa3c6mAV310NM2JXP4jjPJlOpcxX2AHsGreJF+jGI0QwcrwKo29Y
s4iDZc4jnYFWiFVtanLbgucqXGQpDvI9yFdmbP2AX0ZAbcTLXsrPlIUIl7F+hAKQi3xaBYMAmvXm
PvXtbikUaTyB0eKuf7j1CFoT1/wYXsSRqPesOntl8vVJqWT6p9piuPBSriSRtpxAMPvpC/BQx1Of
dv+ynAkJf6jrMSj+mPAwwjNjJad+X1aGUNVL4kEO+l8UJNPp2ZS7oAawbAiFBcxC9OHozbE8uN3h
Gbv+uSb0ZsZQXoHZzJ7dOdb+cQob8SlKZXpaiaZnLdid5nYyyqcM5xxIm48DQRo05y7vpaqRNf2L
TbxbFxAhS+tx6fKxDNBU6KdkMtFwErfhJyPGUv6U/EoWhbmAF9UiuQ2vJ4vJxY3CQ0deGpvrqlor
UDfnnXIZpJQeuGS4e+dDdLfjtcDWTzTexXCt/t/nHTfFB8YvNBZtGT32PL7srfSY9qFJi/VE7XQQ
3Ej8dc2UT6qe+DF3wGRlFZXujiTpa33X+hTavdjaT8fKbJSddWIm2DG7Up/0+3+W8ZRjCw09WnFy
HSKBwS9dWdaUKFR5gsG4TvzD2O54+AQ8VX/L8smB/Q4H/DwdA7H47sXxV8qGMmusBAipPfYUq92s
0AHPpYSkHEY4QE/ixiP6AFDX+7K6h6sVqxOhkieFiypMbKDX35enpxbuXo896Fg0mOa6iEnBT4nU
hYc7nW5HeZA3fn40WqC/KJvpLW65rI7p8dIU11/pTlOo2Cx/XAp3TGTINaPlbucOxWbxXzit/rNf
oMJinzIGRFAZWR0t3ELC/d7BmPJbwZj2VRul+LjnsaPAWG8NOYCHG8h3QCrYtYFlh1iLOGLd2lj3
EPtJzwjjRFLbG0fVjr0yZFRZAislWxGcZjXuZqqq8dGcFqYyyKvbNcWoy814gs7LIkbvksRbCNbi
wAnVhfsVTB+Q71QdQJCic0GxQZN8lJfThGmAVgnnUh/7tuEVvLbuNxj/ltb7Lc6sSDJofdJKhm+M
fO112nHhG8PbLQzlEajli0MtpZ2aai56RhpFcja/Yr3ZP85Zodt7VMzuMzt+TQrCGMYdiQ3rx7l/
7B7lzPN096fv/SpZW6/oReDha2O+Fc+oIUog63SGofcHIWNaeGvSlk8BL5v87fFKpSJ53Nh0kcYT
kX99x/oZ2+kOs8k1SOkEkuZGpxily0hCgFRj0xYdo25Bs0Tx1mTEhGdDiMAVTEC8a9B+noFZB91E
+rCuB2tVAzsBh7uxuMqZeJbwBCjHUVZ/LsR21r+e4UF8BOkObxacjiRvRCGyaD2aRCJTWrMgEJO+
quvrJGST1d0192tv2MpjfeF3jfNDTs1Woc+z5i6cEI0vHSa7ejPshsjzCMaz1ifEktLfJL8uJl9n
QjxhitNZ81WNYnnYAbDfeXhtc7X1f/5NrtUEH7TAxReh/MpGkuo3/pKhmtrW06lo5l0+oAUz31bE
bF1XjHMNOCqDKPJMUOwaPv9iahb0jeKxB94uVo09nF51kEAaKJ3yHf347/UQbXMqRH4uoH8gulNB
sIKD7+HhMjpmS2KK+s5pyMAbLgpWWbjd4NAfkXgCGakgWRze3S4bvzMqjAkZbxwrfgwHVQKTtxR9
PVQ8c4UxrpCc/+gi0qfBctfun1mxn4R066m8cClhHNrrv273LpOPrSk7Pk7HD/tFFVymEUMPZSPp
q8oNX2f3EgDP59wh3Ie5xcjXyLMc31+78Q5wQTEOZ0rfNraptJer/83+ND6lvjsAXzcnkuesub3/
6kB+Uzr5/EctmCs+Ng0/EmcOtOdU6qX9ww2OfLD7MGtnUcygmDv6ckggkCLMKleJD/yBwiZ2Ym+/
Z5fxbd3IWqZrEVsqtWIuO75Tilzpo1uqzOLgDDhEIXwS5gvmjm1Fc3zolFhTl+g+dNWEWAu+nWIn
jNPASLCwupSx5Q9MDh8/4tYjouf0Tzn7HfLNXr527oX400im1MEvrqhic8IYmnm2tbnObEx1qq/8
g7Q/kJda8gYSV70fMWgMG1pwBixafAFy+LVOxcnCNDCjJHr+snWXQ5P0NuGscNJImdzJe0sPpw0T
aRdz3vd8RQfSYQm6ZTNEzjgEhmMOM7Pg+aZkKtUZqL3FFmtuqPj6f9C0fJFa+3QOlD3B5eaw9Y7E
bLmOY6A/64GJ6jhg/tKCsuK56hrZV9vBfhQonFbQYvWWCQsPTDawcCoe6WTA7euPXtSmjt9P2a7U
ShcJ4qPp8SlurgAANxPT/8RtLwqaDYa/gSMii8zFm1xTu0L6a5iVYXmQt0o4Y9lcALm0h86m2ZaS
+kSYHrT6KRO2xMm8RXNKI7RTRyzFuN3qs3q7v6s26H8K5a8WKxvUptiRNwHhNKhzZTEpMc58lXAJ
mKnfS5bxlnqa7KWPyA4UUmXmiQYw5R5l4c+VlpbG5iWgmowgFLk66GTra2UReZq4ojrdilv8YZXn
GZTP/y6tpDqzHaLs22NIyPHDXtPGm1fO/ox26GaO1I2ZgGVJbhYD/F8RKandB6MhEXs2t3qNXK6U
h6FRJKPhLho+AdDsABySTBKlX7LZ5ja0n1igN7mwM+05l2J38Zlnmvw7Hgwr/bRh7i1ROYvvYqwU
+gAmKLatGXeUsau7j7ho8mZ6lj7QhVBD+qD/O/Lqxl6zR5IDFZf2NkY0g8OEVU9+1Ww1T90NlFsC
jjEzybgZutXw00DvQNJ7ydQ2/HWALtMaKHTt3H6x+qYpp2pupwnxm3iQxvaz1qWUCADDlQbcbnrV
AS4kz5EJCpRIi6BP5xC/EqzM41vM6WbfMT5SlRLgHxFeXTeluOUmCBuleQuecZDfhiu5wvTyN/QY
Pk8tsXYKfWg4md7fwvPtZw1wZj0rgorYB1C/7JtaymhA/ZHTCEy2/yGNK+5fg0Okl3t5MO3Tjya1
iAB9dx7cNNdMdleDuvyimjCh4fRSr/Bpheq3OiSV6N3BqepHXq6qvVMhZZqtxWU0gJx9fZB3p5JE
pthnIp0Vyi7D5EUGNaoZGawAnM4lY4tz2hXf6YClbfjDK2ULbwXX6fq1k6vU/pQ/3voEKHmw04P2
ix32r9ShPRAzrLNa4M0S0O0XdIIgkcNMoOOwGs77XG3RY/LL62HQ0jiq1PANdaVdU8zfhwcm9NZv
Ih3zi3o8YAvD/3MMZYg49l4qBEt5lILGqw+3gf5Gf81ifY1n0AzXDfn16lvdKTh8DY5UEM1zsYtn
R0q5G1R/HIP7mNvYjuWYKXzzB7L7QBgs3e7ffwEzckYE2yvybeJxya8NFEMS7XSs7pbYbqI5G4ZW
XcWJii74yM9ljjqJwDDfgjjI32KyhWO/5uPnWyqm41V3Du6o/7OF3EvPlMF+rI5gYlTQDMlsZrZP
PSzN8HoPrWfb6ILCQ0gIf2z2iZr+mNN/twOrNKOAzII05mL6WdkEwUsCXDtSO72CkUZRLvnl97zb
Ho0fHILkhFXcGtlp9sg/+qk+H2Qstf6YDypGlZ5gWJTfr+rYD5waZSIRvLQLzyPfyZrSlLW/RQdn
TNP9rl5gncs20EIOghA3immASyvTkO29avZ3Oglc9di+aMys5bJzMSzh/HxTEUDDo83T0JdH9j0V
SeMA77tpNchnGQP0e/gVHAVG2Qmu31WD3xpj9sd+BAL5y2O+DzLMX8kRXos6qroLwoDiNaBlfP/p
CIDKEmlbonKQJGr0MbVB7wsYOHt2PPlBkSsFS9YkK4IWxJAriIsO3XNgrNNmB5euc4U05GJHmHG0
7XuEIaqeTFNPEu6yG6jJZkdEcQoHBkTQPjkneGD3/GAEmnyQwog4v19BcA1fL7ycBa7RT3WJYpdd
JYTk+1gO/7JmkSBPu2trUSInd2cycFqQ74cTCOBT93MeMUohH6Fk4lO82lC70fkx1bqQuI9bk/Nr
c7Lusy3kk6dE/LcX0sh+xTk9s4xzcWToii7jEdzwTNMOJiCZP4qoSLYh5xyQZPzDKCONvLPI2iRU
+YyjkOrloWD/xSPBdntn0GvoaRx7srBx9cW2UYS4e3Ll8zy1GQI1eGpBU1NM0d+EZQhM4B1/ETPE
BLlJosIFIAFJBn+Jmbkec4TtRc3BZOnxzLw6U5daTuEwK62YSvurYKm38Xat8qUBZ3L8CU72AoXg
5dgD++nyixJj07VnaY2YGJ84soUpNEcAvlTESPqdu/SX0qbUs+Rv58WxI+6BJkx6kxHkw19dIqIZ
JWB7gaRlSyWXwsK/rYRs+M/y4gJkWHrFeqsbfOYy01if/x3qBbMmubF/S+h4LWUoXv2Q2Egkpgjd
BFekj5/JneLvgAC15B/R81K+Pq821d/FOE01HN6ohfFO+cjcoM3l5wAqowt+pgEU5qHiV4wKAFOc
boxgTKZ2QceW/Xl2h5ouIE/OAr18zkyymacAQatww2TBUsMbQ5bsSgbNUlezQD1Du+XoW6I9LQOH
CD2aUc+nZTG3WdxTv/TiKny0I4LS/BQaXVLy6Stsq55gRcL9/JGgBc7qJW9DGibYAW3Gto543HoY
bh34MOmcKdFLsYrAQ2WFNZFsQbqEk+L7Iw+KyFTOXvXaoWbPkwMVLj8G9CltWnR6vPBu+E9plEeC
KzlCRxTzHMpD+efbVX+Hy1p4kaIctau9pnBN87oLPrD0arlnv6C2qQb2BgnTOEVtD74AZJ5yovxo
kScSk90iiQm0V8jfL10oR1uztHAPJv74tF+g3voLrwCKHW6owmUTiv3JN2118vKTLK5XswAleCo0
yI/T0NH5oxapVURU8ALu1UjlCmCjoSwCiWUoU0Fcy61x6XqjG28QFadRW+XuUgQtd1otghI4A5ec
jFx+H0KIaLoPGqT12Y/AGj79UMZe9Cv+AAyiSohec9nSb7fEB3n0RNqsasQvJBKVHIzA0M+XXP3N
JJ0EddCd70giNzX/USrzXfMgrefYJIv/VyeShfFFWDWaBoZA0Vh6GIvSczCSNahyuQgn4dkvTfqM
VROucGEVoyrfYelqi3j+sQBCTuyGUHWZr4X3CLBWJ/l9T0GDhRuqK9k1MXXU6f74WiQ8mQ4v/vqx
y/o68kcHjFFfbdUrz0/xYFEsUlKyluwigdYAPRtjpdudcNmgaBjkJiEdBet5xyihcp1D4Ll9vVGt
9NdW9XbMEslIhg6Nmk7lsD/SLOVAcdXyu5ZQduwqNQfBf0bGEE1vYXZ05O0OOF2DsVXtJXdfIui7
lp9M5b6qQuPltMId1WTF0xekXd2MtbHXIvi86WdNVO+YuYt2WIMvAk9j7kaGx+jIiEgXdseSzw1p
t35LIxX1tSu6JsK8k5FeIkSsgC1msInzKx4EH7gAbsJTEEt8j6drFsEUrLqwtDipguX9rXckoJtY
WnWoydvG+E8iFNlm2th1Y+85huEviU5WdaGa/vwV+AAp39LYm5hWmd5mggLvjvzT9FwAHJcpVrtX
vr2sA5CyPGWKK8oOOdejMLwcF85qmjv+X15+Kxt56lPGrM+xDTlglyVX3e2/0fEfZAYqthIkcVHa
QUjy0FctNdxWOp6C+FoETgC2+omaTjkb+ajgrYfIamcztxu1i+94Uq+g+a11TNaa21S9KabJpnLD
1VYy9pe8u9zB55uHtAQYeScAmtMTSXGBhhtTPRi3FjvIgMk9aFofRSdKLviCfxKGbTGy3Cg6qsUa
94HoKst0ET8rG74X0U6gm+EpxWuUh7pwo4uXO6q3EzYtcufr1J+zR8HdcbWsyBEUN1qPk6KnCUpK
BOv5tQtUewYqqOJ0S/e38vbTylsx9Fo8FZwdsFxO+UvAldK8bVCprGG7+3ruvxinTt6rp+Y3nXJ0
HbKfhKvGyJIk2cfKsiGCPWeGfqgmXf0WOsn9YDIplMSvYMcLyH0qUm5iDKqzUMW+1ChziiNN9BhK
xiqXVbicgiE1zlBLrfMY9N5Qklg+9Fh5Us0XxEmVXPfMuxq0XJFrGqjCNpdL21308456cb48iUoV
1iLhexrpIoLgYP3tB1QKzRsl8sMT0GJl+EThNLZS7sCmzfPyc7HpfM6lwT/OuExlynSL1yLmkh/l
zxi7DCvsbnrDvldWKZ7T6MBXbKGTSkwXZJhEr4MIvi+5dhtvRNU6XD319udwpOQvNS18C/WrsxJZ
XDLPJShq0ZHvnmBD4dO3bq/wbxxu68yQqi+nkaFUu+bQl5KGamy8WBYh9Rg0IpRp8amh2BVFDucF
4kmjIEE+x594uDhQmtwiCeXsMmtmOfYvLmK7wgU1OYZNHOBj0BgdNlvCtYoDjRmpE2WgkjiXiAAd
VDHwyRXtT4DvS6xu0kQZbc5hEvWPPdFf+6LoXE2JgutTbWZeoG5CfEe5rrCCqeUjSvsbdAtBjrDy
AAQNAhezUK7WglwsU2DTiMyshoARQjjog5l4t1FASAVe+Pb1vi6/H72SiOESwHl0ajLMiWktHcnu
2w7on27LeADZiuDwIdfl1QpRF4VCZdMgwKT49l9BsYv8VPxPx4g17N8QbBVPr/K0VEvi0i/zJZQI
OgWLYlhCRjji5X7VqUg9W4UVYnuNh4QOsTqgl9QNoTN1Ny1V96S9RsRKm+lg1Vlxi3miu/9NRY4N
wAk0MZGd0ArRSPP0lZw36oMz5lIqVlcIjd3Q91c80VHDX1FRd0CFvGvEvzSdJw+EYVy+4y1WoIBk
I9jcC/ASNlRqfxLbsdByne8WcBDZragZ1Z4GioxhKRaRiq16iw0j+qLAooUr4NBDFPUzbZZgCQ8I
2B/0OpfsRXnmztQJtt98XrzgIGdZFNMtmT4m05jutwIjBDFFxBd8k6A/+aGLEg9xTHOgzjDqybqd
ktWSHK/2fg09+KL9NKO7BZR54WaornEKV6URcek8NG3jTkNIwJmFxhkVj95ICIOEM78pL03VL6dD
VyPZRQhv2HWIB4YI/hT4haahgdtCmRmcVp1b1zmiwov1XwhU6nYXrHt/IUNaoxGtPinhlbOm948y
YGLnAXohJkkjwXL3a33INK3iyA5xJ3a5gfDu1ahX8xwDpwB71l5OtdtL6GL783s4AimABfI5la57
6oCRXy6t/fz18kEomqhbiQc9EfOsdX80uFdfyeaUt2hSYqM47hg5RriORUEjZbCb+abj2ZsEf5IF
W+fbuVG83R8Wc4I3FRD9qL/2Ep37e3JiUtAKKWkjlEPv9/QsN8GUNB1Xc1+/8mc1ts2rKO8QrdD5
jck5/aVo9LvtFQXwmB43gZD+XM7Kt5AvrU8M43R+M1XATmx07KDieYxWtUh7M6Jvr7xiXttESPlF
Cf9vyzYtRgt4kSUWtk+tFGmnHgjEinlP3gZJ5sl3pqG0vJY/pJH4MrP1HvHKpqcQlqAOwizHq0Zv
x7OkfpjJnQVeWLaoWzpJ7S/e1NFhpl/nRUlbxrl7icP93AIHXRqDu51mp1E7deQs1nw5uSJlRHkL
V6HHA55Tv0XXahtuJRaYeIW0SrA53eYs/sg8X30ekUi1YsIaD92XLsAcMJgO/QwHonIGJ8SU1tOA
qAsFDvHDMUHx6nqYKas3AJyptVP8sKe2neCLeCKuG33vRzHQJ6nZ38DxkbPTHZKe4Ljrp4lQmHiV
mlFizooiJKz+X9l9fkj32Aa37ndh6rKUL4CtyW2F+NiiRRakaq37MXx5mDX6pi9Gixak1NMICA+e
r+dQeG5570KRRe87idlnVz+16n4Uy/8rZQKTZXZQIv6Q5sCHgFZfoqaMWJT/LwxTfV76IWI1nWBU
cQ7Dk/1hcQldJGsy5+6iMvMpaJSAEl9AEF31w6n777u3arTCc184pkc+y11hivNFNpVpo0D3WsjM
phXZgFMYZOQgn+Qk5UTGiKglZkGTbVH5nO2CxTFppou8bxST1RgqjKnIVkbf6wkz2ZvYl0SKsto0
C/FCeJcpDHuGRvlKyMuG8xDJ8DO5a9wTSrrJuZjTFZ7qQTwZwmk4M+ZzdSXgwOsbN5wvkYcFdmiv
QaVzU23G9655lH0H3ajaJGNBJl1XXZXPWqODMjcr/04EFt5Ud16/9GTrdxD0vXTbmYbUtf+KyK4P
1PZbitWcCUKVqKpmPw5wGEPRCYAR0tRCGylCteE6zwzqtP/hLhlu5zlOJ/6/3wXM09aKEMjd4+rr
s8WbdxJquZF974n6CLSparp5jbNLxAW5GQBys5VdvpyHRhMMFNZ5rfviAucKY3NOhsBH+1XNiStZ
B0rggAaKwgkjXG6/VWT0wt5xDTi3RJTU9Rj901htTIeUizkPWGbiSqT9pK4/sdIwwnHbjILRsBGG
6ny2iWTLep8vYXAi20Gwo5wcfLKAuAvI9Gj2ZPaiY0TPK1C4HLHqlVSOaowgmgkTxsbHTfs1iKZH
GvfcryEKkj9YvXjOGDORLA/wsgj34akfT77LziFQ/D6lAeGu81GLKD/6989fc4JSPR9LjFcyLlS8
su+9F9tc1iOi06E9B7LW/EGFJY2RUGKQ6e3pjfl7aUi/RwUqpWV/EGurA5KOOvzDJyN06hB4Pj7B
WQE5UH4QTR+7QCZxouDuAr+nW5N4WdSZkGkvXjvJjTAAb/OSvzoVyDrjf5iRJsrc28pfNJdXsMh+
ArWw9/b2Uy+IlVWbmb2/ZtKByqJ0V00H0QOwef6rNdNPx+v0bcoHp9aTbxTQEheoaNpOeoZPIf2A
Or6O3CvvbDgS90L4mLI7u0tL9Ha/M/Yq4gjH/B8Pn5/Xx5YgGNDmvPgrHzE99GV44gVitP2GsN1D
kkxR0eJ9QsbGwNB7exTIPSBYZTx6SNCJjXMP3Eqvav6vaDsrt85qkDxivlLu87KyU8Nv/r60cbkc
uD+GiQ/jCZh5tHgk45LZZyVPqmF+HbZNMEDs7rrOIhXUDV4l6fVzf/1cpFB0aV3uouCAaH+sAWuR
mmqd6vjdx7z4nZzuxH/wlxj80BsG3SsW227qdIIb05i2+TKJTTeU7EO3/WVrOgoM3v+R4Mey0FCj
mXqONUedohm2hUNh6Ba2WZi75h1gfmM0h/5HdblhKxbOB73qty5s7SEpx5yCkH6WBtT43CV210U3
gZ8lkxCactxOLHLGqLgOp6D312n/EZzZNl1o0R9MaJZFM39Bx0X0YdVkf0D3clgbXsp43Hx0PEsa
kUtowHvepQlntB6Lym98Laej4MJT/JyuorJ3O71vPtkbei20I8JMEOH8Cl7BNbkMx5ETypzcrwjU
zu/zrT+jyjscIIygITbsv9hrW7RsZk3Wz7Yd1JTijDW4ggtHCm7CvTAXVSVloDf/tzDTDB7/yPNi
g03H8ktjQGWcPWqpd/tlQeqihHg4LYlpHL59nIEnW1ke8na0zC3laIeYk1kN4dEjFSRN2lQGUQwo
JMjZsUaR5hc7il9yo9LTZ1uol4yUlV7qOQN43efaBk92Kcqv4Mp57vGLroQTWLcXTtDk6FWmXpXB
Xmcr3QEwOl+fLenHhn3/7xfwsFyJG7DhM5/ImeUS1TB6mVv1UvsArqHvcps5ZQpqkVEDe0+EqNoa
gUyul1i5YhLmLve5UyG9xnPrkehO+vmWK86UN30woBol2F1kac8cz5psnpT8mk9t9WeQKriuwde7
UlaQwii/ziLGlE9bjK2K9zuxH4LEbzWm1mlu5+OOPuAUSLvrf/ei3MWhmwAulUxNXjyVpCaKcgRQ
F76wJTt1MmL0Za5YV1IpjtHnl+GygbqwVQvjMRv7MHZcIsbOGLtnxBISFJN+CZRGc1Wxis0Xrhip
ZIyReROrpGywnlJRN5ofY8i7aOrERbKLKbjAqY/Lh0tTqTsHtoMGfydWd8b0fOGzRnA8GaVEKYrJ
l8GdaxPmSrQME/kXHWW3s3x/3n6iVpTWt2ltOIchJToNgksJNrhkQ2HqHO6vMQ7aBUnIvl7DGcnj
i8VWWC0bZoLRYCgdDn0sWc0Twd/YTuIR7wJYk7bfvN7BlyL1qGcyKckf05eGGe0+gksjTVqWSSV2
ijOPpMD8uE1zp7KcoKkLSWwP2A9HISaxRYUeFLHgvw7zvsu89wDouvOxuAvAmuiAYGdCAle8l6L2
Otn0S6juuZjFbjpFvCyXzV77ry17pTyidhVOrZLF7KQzKq0WqRqhil6RH+zrW222qHclgl3cRQsx
txfDB0eGCOJ/6XZebL0KWfKHA32lZzw2GYxovuhvc7zscgN7/TclXN/tN4OewpDMJJShLNpTpMHi
9bzWoTZTMkk3Inu9NnPsdeYKRsBvaliDQHAUwQnsLlPSqC/rX1eMDBARybThLfEwhiVWPJ3ENECs
ausYu3pE5RG3yA4O+8EwPrCdABHb3UUqcZg+cmWqx4DSV+X/5lE63IzTWbKnp0WxykKB928Li8tZ
Ft5xBCgtpBaVzR3rmcQIOQxT04mqtDZ7FnqbVS4BhFdqV0nDGNU8Z6iJkeqGBrmr9mIZpYG/2jUO
9jRnnYi28U3cMaVX41/uuV+68XPyqRBgav6NIL5diFWyn521opTQOA6A3vleIrzwGfjkFOK4wKb6
J7Qa68oR32RBxYwdZrUhVR75qMyF5S/i+ASH56C4c89YavD2yrTrwjU3tsn+bhBVwnfzXKuRgHuo
hwHd2N9I/LVwj7gR4lU7jK46kpRHEXAk6eRKwHBCdy4zEQdlFEGu4uqMQYULSpaTMwGExMajt9W4
wVBE2xtkmYJlDLi6F3eX8tiXt4n2jz2WwE5bVN0jDprNNR63P7/DBUWMNzu2VciLpGZ3ZLzz6Rm7
RkkG7FJNEICOrNrhAC3p+1GVwiIRPsz22TLDaWvan+hKNGke7En42vhipk/91iZeaOjHpkk+oWlD
r45dedNv+jZBwke6qt8Rho9EGX1PrGcYBgoZbZquWN8AoSBzGTFxKxBWD+c+ifEKAMEITp+g1ZOV
u6/xfQ1Gm+36985najRmnPsqNG3Ko4b9PbXDZGmDUy++8oBV7ro6okB72RBeZG8SbSDkiKX1+grf
HnKbYUBRCD9Vt06grOgo4APuBdEqdC56EgPMc+UGvZLd5KYet+EsgcOsNPOoWpZVwXa8Ra/+Fq1C
DDt+SIo0PsKv6cbA2x+JNDAjB2IrRLjKrTTG3lH4SzSqhFv7xTO6tYDd2lBoJD8fXYK/kQk6H0Pl
D/BYSfgwZHJTgZK4yW6gAhWBts0T/i6CAN40150goLhJHX+OAGeg04VKBCTWIj13amMXvBBTDd74
AEixVOyIldfFJVXG7cCFt6lR48AIJwe+n4fd8i74P7iYBp6FrSVaT1RR8bhELuxLFwr/oUlzAakH
IAZhg1bTZeA9IxJBvzpl60EbexX4n9Agte8vnPy77eM/fRrG+XiiHSgxGxQm+HzlsBTn2YOIng7H
mC4aPr6u2/Y7UC4v7ttJzO5UZkqMCifDCbVRotYxKHFv7ONiB6DCwSSo1hdRGhuTQnmkNHZuBsn9
Qrxtp0SZD6Qm5QV1dYUyInQX3khKsgkwtcGeOSu0ZGfbKBZ8ZHp+aDpi/WTIkX+CBZ9hu9hJtEOW
KsBGUimq8SIiJt99U2rai0rHwMF82dp+ZqAV3qjURypSf3dFbgOHnbDyk2wT9Gr79zw0wmkFS4wB
X2ysIIjdXYtaoYKr7xv1awgOfZx3fKGavOxhZ4TWChFPo2vwFRrKIoWoqh/1KdUsqw0e8HibFWPd
4e1yKAk4htibY8Nz5WHstF7ciD792DfD2v1VQE97ybi0LLdQ+FOMe9svXXQSKCrtTbr7ZXA7w5bI
Pr+s+D2B/b2bBcf+SnzcOTOFA2XkXy7xTmb7IPm5EDK2Y9V6FFZh1pm7r/VYFBi5Z/L3iSUmDhuJ
EQ7OEDjLlpdPSwXk4OF3s3/efCsibLeqVgcXf3b7GdFpCIfzDgNkZ4UE2ePVJeObBk8eQH0zpWqu
gpaGHEiUZCARfdX6QtuKVkxTUG8Nb+KDKze6KDorKkljdpRZPmLxgzsmpXnGhyWlymVOnihB3AUY
9gvOJDCqdzpGj/tagB2CfTnY5R5IVSsMu2X06jngdxC8qNx5bciMWqJq1iLAd7xyBk6I+gIO8lyz
2R9f4A+U8ZYwBWQz1/FKlZJS8lOA5RhldGBqut5bDNxrnLVof1m5XTEQilAVOOZDCAdPsRBy8X+Y
e7TsnPsm46tZ17On8BY4LM7TfM+4TEq+r12LIIhdgExADAucq+Wa9HDGDJDm+kkUVysHm3DtTgpp
kWONOmOb+QNiKyKOevfAYUeC2FtSgR4kF+ZZW7o7Tkk1+u1X+2NTDDWiFfLrN/LR5nh3Q/54PqJz
IWXxGzWv6oJhjbE5rzkRFH06KdxMlXh6MO9xM4vW30PE+s8FOg3WdYyASWyNdLeCCPCziJScrYiq
BjZnkcXbf7otbRGrdmcbGbTwL/nxJEoJNvyBb2JTCUiSoRn/oNa72jFP+tPekKWNyTAFBTqDbALr
gWSdGmY/+GL7Y1ULGG5ENWU1RqONJ5csnJNwQm9wladgwXoqePTyZxJkmm8bkbkmkuaAu+cnn9as
VxO4ZPGO3c0f7M6Gbr5efi9kPZ2tPLEgRN0Lvf7DFAJE8TmKuuoYmujs5d84M5nf29uCzpOZUJ4B
57efBJvPC+EpG8+0bnEher4397OJzmSON2ixGMfi90N9CSXElxk1HdyOtHaQvyuH4Ykszr8BMwVS
uFh7X5pHiz0tF2pXrLW1mlWbuoaPy5fMsvXBVg0fh2V8ev/UXm6q2K0s3cArhIymT/bq2ikLEkm2
WfTDx9IyBHeINipxr2muGUbtmmHKd7NXq/DiD9wT64EYwn66fz+xd2MFRH0uZ81lEypMW0LIj4kI
TveFEtJY7koeFh/eZfVd2+3Ic82nZ0R0xUORO+XcaL9XH8X3NiEHHtlbsjPugNkp8xKd62B99O4X
+dpzd9bTucKrlur+bpi31d3YkalBPEnmi7ILG3tgi5IRXV1Na1pOIBHJgYYeIy6hmziQ5hIZUuRE
uNYDwCrcLtlp8Vm94KcSsuqzruNlYFZxdfPvegiK3QajIZJAnnv3b+51Gc/TFIKtnzAu95SheZuA
JeWlaLwhvQyRGhT+ecnIfF+7m/s75ZgxWQfreh00y3mBw4RcoYciC5l4AJcIVdF953xs8JV4d18y
BnSm5urp23Bk0yp+Wua52WoNj3hYnuE6VAW7qMtXFiFOTS5YvUPju1I6xg5u2Z/knrjVszoClFgp
zDsFezJ6D2aI3GudwrtNUQxgpV1Mgiv2/os8nMOMW2tS+xbJqaiTdvJ1w1lA3IQejua39XfzSUUd
MNH6Z8GQS6UD5hpJQbFrjj9vIvk+Gfsz82hgYRzjGSTw8wAkK6jrcuc8vIKkjHCciYVH7ZoauWNa
nm2J3uGj8gpUzd7zGU0Y/6pHyjOPNWtGGTBTfOXZeyCVOO1AH55i2vAX/KXRfrpXNGdUFOO7I4n/
nP0aFDfoxKR/+h4QMAH7rLr9rT7eXTmwigKTswcFEq63eUWk4bjfD5cfhjrERCNI2AFIIxb9qOB+
zPHD3vJuMV7mC2X9q2IVbW/dPj9YXur0mbXNL5Zpp9vJsp0CVlmijjshfN7Grwr/FMBZRXNZsp+i
Q9r1zqRMlhLeHdta5X4zgZE9FJqT6Ar88k5UFAdpI6gQ9mkddUMJW7sxoJuzGffxkt58KEhWu//G
1XuULuA4lGPz289wzNJ31gSUaWZ263MPgQKyyJPgm+wRHi7XVkVINtVVqkappIEsjdnmclZC13Zq
mS7N4xa+LdHUYDv2qTTmLfqSL2qhKFDdnAQyzudrLpxDg31cbq8fECjSeBwcHqRftiS1jHS1SGTr
Zd08uW09gv8JXgqbBIH6AjHjYLMKqowGOfovDYPdEXu6LR1P5l81POkB1cgLlYqfPBm96QB6Mh/E
uV12D9jltGkSbD1rLVJvv4zKgUJSk2uTtuA57xPSgqC+2TlP5MtFZnvwxahoF9oE3vhPbu1j0F7K
FxnSskk3LCb1YcZjMgbtyxewzeQL4B0yRgLXVlkDz30Sf8JAZGHkUsbtyFT3iY1rlPjIs6c11FPs
ZCEG6i/gGUf+MYuxKPYO4qGQ5WHkdDffBsZijgGW2PCMIm1RkcOymvou9mpGVsnRANillCaeNJC0
9ikg2Cli+HaLzN8/xglW2wbCF7GpcNYB5qBioXOhNRptTjIyPyqNizs1Mheu9Zg3d0IkTqr4v40r
wPv2WvvA44JDGNVzKdubrdmUKSN1WSGTp+Xd3RyKe+AnNT3ttmF2x8D4FaYKUpDlIGqI3MAlzOgl
1ZE65pfYKx2suEGmk7lNtzkcdjE/uyowXG76L2UpFCvuzr0r3mF+0CwFSp81FaCDOwIJHNKw9PE4
DS1yQEz1ZL481QvAPmOqyHyh1R0sWSdNeKmRLl07ZoHuYqlk9Fdz7txK46ryPFq2DbOCl+6ChsUF
H00tYp9+r6y6D9oFNlT7HpcahLB6exgJ9/jtTEEg72AeiHpZD2YIUYG2PpNIrrjBoyXveIvF5KSk
ITL8Jr6J93VdaBIQYUsV21tKlARWAdEO3l8WUwujiSkUN4SCevoagRfa8z4ybfcP5uW8xT7GCp6r
4ciTWg3DMFKou0x83jYoUFXJZSBfgt4Y5VIpd8efjAphd9upXSBQsUhrVtSOnatbp0IvKgRWwPHg
KVYlgoDpPMkdr1pwoXdcW/GAfnVZ+EgLSEu9ybMg18BVUY3IdiPHqpnlBKwwoba5ZgmSGUl8JYbE
YXa1infJVLQuDF3vlwyjzJvJogddZL1fkoQwyb4+8SI7/fRdYX9mK7ZZmRLbgiM9X48OXrrfTJ1E
nZPwXxm6+2RugfpcAxGxZt+YdZ0ebVE1E1qLx32T5L5ZvpzLE3qZQjy/+l2urgxvXfkim7ORDFpY
1svmzrdsns1k2GeWNz6Nsc5QnKlkjOUBOxS+eiC1X/aMrFyEXlwNdbJ0iia+k6nQZhIDTmV1JxX6
ETOZd+0Sd8H+Fi21OrhfKgbFYAt+vYdZuNRnNKjGbQPEEGCTeszKabzxQ/TTyBS7LjfUc7LIeg4V
h3YQ5UutTgCXlo4btjqm96OL9tmSh8X1Wrd2V9PppTVl11SlUrQxw49juK+ndL+MmxtbCqf9Qfo1
AVTZr9PS7Fqe0RZrKbREmZrkSDXNlm4nFtNv0sx6IN6RY5R0R0bpx2J9y2ABetwsGkK2iMeUVLJ8
K82kh/C1lSSypIjyncm/T3YV9Pn1crK/1euh/7rzZ4RWz/g+TwZDdh+ptTIyFSblSPpMLUhHDsRy
pTylWPO5XC+lTGJQ9Nc+gxC+pduVaJp3U4AH4aPNLQ2nbY0+BEt0qq2x9Drs2VBuByS6pLEIdBjg
HxD4TVS4kDT4p5PonxecnhYW1hZUKfM5uOsWw0zlaGNkXTOh3e82Htb51bNCRE5PUmp82Y5+fcWe
/urSuavjoJChzt5CrLwLftBEqyuXWiYuitVSciHFgK069AdbT2/OxM5FzJazqf0bEWbVgGwerQLK
vjTuNDk5UWSdz4mh/2iUVg1/eL3XEK6rXcBi7fPSgqg+rrMHOuZ8Kc0hhxZvD0Mc1LZELwJ02gm/
WJ0BXECaeeccrcX0Lb5uoA/PZ8i5SfrU14kKQex2cOpBjIpkxXihVS90yyCu6LSchhDj34Frb+bW
Fb/ZtLm3nRZj0T39bXz1f84ljYD0u85sUYaNX1Gwt2dDcSbOR5ZbW2+Vry5uKlP7v9xkLM4FVXAU
T/d7hGP53rFqI1NGqE/+YBepTlFKJim4ftSi/vkQ/H8ddEu3ejoQz9SmG9FhPBUvjV1hD3vLP7dS
nISZQzLLOgwh6iQdXtGn7mkhbGV6nR92IOtmEoXGuhJH47uD8C0sLilLbEPhHOAQb9KceRnxWi+N
U4RIZwUKO6+y5a//HCUWLxkbKqQUrAnavuFJIIV9D9nTmPbgpguunbAEb96jR7GVPRUVx8RmkQcf
uZtmFQsYyoLqxM/ndCAjDhisFAuwDJ+DygxkGKls7s7716RveatGLaC2ic5E0kPubdGtxKtOD4iQ
vGHwvptSJkVuvUbjp6VQ0el6WjGsXcBEdty9Gp/01RfPrjBbyg9oWEwSys5EHAtqHeunlfuRb+SF
/LLDN3kzSoUsg3kXZAORX5daF3WPTmI5N/LtIiyizilj/aaxVpLeokzOQb/g9FBWKkojiGo+jab9
EfAZLmUVjxUS9gjeSg9WaIFbEKtF0ri/5qB9wi+Gjq5HDFuN4Plh0PRPRB6n+SS0XrfplY57Yr0M
10fT2Y5FaBv0gjS+LJzGQ1EZcU1H9jnkwngGEmURFXCYXjBCJbMHKfaGFYu07JW1WlkB622EiamS
sP1u6f1PYhYOlrj0PLwetmi06LzQj58VCljcWxqvNw40ULFbNG9ByGIGyyEy4GoKNOctr4AxZlu5
pwkob5oJWYmna+/9mWayWX7yLuNHE32QW+O0bwhJouRTgvIZCKjwXJ1k10qyTYs40ggVgs4Xc/8A
a30Q31WSzgz9VY7QA6zs+37hgNx19i8gPCoLLTH0AoRsRA1x4jEAW7kGqsKqnnJtK4GEYgmiSXre
OLDbdIJhLmuYOYL+eyd7QKI4a+BPO2p8HyKwgS1MnX9kETsL1stjeJ9+mNfYklDgVWFTiBtl8Gvb
9s6vg2mXm7KeTdKN4L+KlTlIO4azYz/ttAKsQOl+pqCMrXNjExgAXPJb5z2pNSlSnMXSHiix9+zZ
dTQi1CoENUPK4EeBwJSYx+/2KCIIkUYY6qxG/6j0t4KN/nEbwilajh3XVfpP93jxMnrHEUsZ0z44
842kFm77Z5UsD65cy/la4arnSn/M2itZweFU/MPy4Ee+RkCJGaxW+aYXP1gCFesGKu+6kYgNax82
wUP7EWwbiMz6UnNICFGMyc6iIwiDgy+gRu5UHH2Wzn3sEpJ+qpS/IU7qmYgZnUeGvsT3PwSRNzOH
QhiOxCnwLbL0QmyW9nh0sjoNimK+uirQ7OrH/f3l4doiKjCKeM6Th4VnrxfmW0CzW6xTOZ94GLIG
Ph3XXJIA3jGpAn3IBEKIG80F/xPztQ+xNWXcMNembTTIPdZPxpbTQyhU8OT5ExSak8KV/k0l/XMy
ffJZoBxuaPCpgJBd5VUkK4M/KmK69PInfGgODwYwQkVu+N5coXq4j25Y2VuDLM54212P0mDKrxlv
utChyFPg4BYaTKJCfZLH5Oa5xhZ4+zsNKZy0AYnh8WnrYPaWvJkZa4CdiLgg0U8wgx7hMnDjLAYM
eay5sIRhSw+FmJjsG4G/FqAX9MWaGCZymOcDr9I56yKzO7V76iyoEkg5lpJgbqdWPQitfuenyH8a
OU6coBS692QbqWCHUYZpintKSuoeMV8zq2FbYL0G19FOpmSjdi0qlKEsLyTAey0Ts5CTvt76isx+
5UeRUSKe1hfh1tAR7mEbKWn8l9WRn2io9FCikFYfHdwKmSXwaph+O+8gteYnwTAsPejLn41T3WaI
hhNxct6QuUp0+DrLf/MFFopMX1bhWAgxF1L79bU9Pu8gMokbf3gzNL4O5IeNweoHfSYBsxh1zpPN
xS6OvffMAsy/qEHb5bS6E5rDz7u8kXn6eCA9L6Zop+AZyDgCejgM7nBDWYETxDt9RYIHaeplx7oq
X57ZyhUj1rNEpoeXtLk/Qb/zXCMzm4gtu40kDWxR7AvfKwdfjFv1RGkVmYvStva8pPrqHOUWG1tl
aOtcM10LqOWgVHkuy7SF4BeJxzc+MwHYh4fU074j4F3BSRce7xoJ4UtDwkY0P1HkJnotWDokY8vg
kN8ponwBuq+8vR6Z1VrGbxF06YTjn+nTluPvKxqTTfjA2LiMvOhCrHftVoDgd15CZM2qX+m6W2Vt
lul9MU5HQ2C4e0HINgTWs41OLDq98Z0L1/8cyGZfWrioAVkzgfNZtRHrRbDuV1D8lnDXjVgbY4dc
h+4L67rhK7HCkGb1MsZBBkCnYcpg7OV2oWarrOc5Y+sDLOKnTkV5bD0HjtEQyPx0bdOtpFCbOH1S
R8lZcc+MhwjdYgLF99qpJ6bkrbT2XUJ0lMNFSXN3hAaHfSLl0kO9mKajr1dFPLcewliYqSVHqQ+S
Sx2OS44KAEtHaRLtD2KZu0CksAK2h1WAjElwEYJ6la0ZCjgO8K09KR2gOTT47qjcTkiw9fZ5H0yP
IMNzRuQ8+IqMP971E0iCwcOQOa3ubnZz0hmQ9Jq0FuMmp4CAqHOMNAK0wJcoXxv01x2zhmNAEnGJ
cp+Ur+x7Et8KB55RvlZotzAQS4aBYdmbtqHyVcw8y40RLSnkjpY6bTi13vGBl80SLzinLcKJHcNR
8fcTCi4h+dQmWhdo0QpCDRzZRh9yE3JMZIFkakRmAntI4olfruNrbr/vQJ7ExxcqmcnPwARLl4j/
yrZFW8CTwNsgr3crOMDOqbdd+/tyz0XpQFANwH121sg6VgO/B+uG8BAR7psWghCekTIKBgND9f+K
Ueqs7UOPqWTROh26FPuRxFMo8wgDt4RfaO/+hxhCRpdPDWzWqfn40ccv7L/iG/YL/s3KKV/cBCnH
zmYQE872dhr73eY6gpFBibGq2p2EVZFwpDqzwpW8k+YXhzkz8GgTvXMrcFC5kTulxiGnHgBbAY+D
w2nDEiIrsQVJ8sV3WRR7kIm8iRvbJHgh8mpGyl2IgcNyqLIftsG6iSqwZqQKDzcCURHS14wY9895
m85GLekHVTmNfa93S1ywDgzi4I5DqmwVpX8wOTUMaE9Hl14Pgc1vctsTltzsY7SyXSwmz/qL4A8h
4vdVEYC595t+rMPD7tIaKWot6jcVaH3Ku1zXM4mxM1CrOUo6gigJk3DQOxkgDZpZjOu7d0hKI24U
LCSTM8kw6039mvw5eupVBdb/eDERSWAxqCFd+oZWbr/lcH0ZttjmL//vpDQFfIep/7pwcQp7jAZt
OCp5ioD1edDWlia2BMrxYlKBszT9HJJFTm2o37Jnc91GtLZKvJaJkdKpORCT40t+PsrAkFrgiP5Z
PQPv/7dhCsNr+uks2Zqq1lm9iRmD+oJCc4gbYS0dLLqml5eHELipe6kDvaXHAlKe3cZ8UQHzC29L
I3s3Lv352DZnPAgIxZbXjSajblNBBA/qW2qXmVUeQD469XoB3sRcudj68kbl5Ceew1/lnGeIDkmJ
/O82yVM5b2LWwrI//7/t0q67SurE8qAOYZl61mUHLqcD8Kp2GT99+sDO4NeE+Yksw1Z9UyvoHDWZ
gcqKFTi0FH3hOm8rmB9OR0MafkJXNr4oQIhzXTP9150qsYBXbAN01Mm1wky7nRNWNStZK1i+l0AW
YXqYyJyzdeaAOCX53mNLsgB6ufMvV4rTmeatie6Mr9lvgjI+DB38hkcMLB7lyOR1ahHygjh8QRdk
gkAVriwSW1cM07wBh74T+FRkJ7WtROtGSWWsLJ2uJfCI7XhAB1dL6mdQby9bFG1KzcAbd6UDp76k
9HFLWOb+R7aI8d86K322aRyrw9sMBlbJ2JJbjCy5uAoNcLaQdk3KCTpyR59iKJqHW3n9Hb2Zom0s
xPHcnj0Jh4IrLA8VF8DA0hw8NZkmdk6+3Qt0phNR4rUJk3ZobsbAHMal2xrPN3xpsBG0YvcHaH5d
1iHR3DjTRZS0yypmp9pnY0NcMFtIfHA61mtPlfcxBFGiv1p5QFw3qELe/sTRJmnvTB8zPmaesyZT
hvgrajvnVEZSIfrSwgxiysx2foN68MKtI+3vwPdjHDVmtwh9FUSB7x4TzaVSX43Q5oo1wFKJPrFi
lNcvn2gIVDmh0ktD/Dhi22tO7SIYR+N/gtUbVMQMq9uNug7EOR3CcLBqK3KOOiwahK8Dn3dSL3b0
KtcmDVNOT0vO2OZ5gr2EhUY0rW43+F/voP2ayADB6xp4JisZ+4v6tPk/MHCKIv3Gqf24TMbDT76K
fAQxQY4hnEqlmZmEPZR6ynK1Tc0gjZNYAsUHgQ/S19jZ0DlTj7qCa86y7hw6l0zg/NwlK5naI0Ag
0VVuwYoDYKTw8lx3L7rWPbbfwVA6vpuqCsSqmFNXwG4HR/e4IfjPEISR1QP3bvYomr9BksJ+Bm5w
cYQDnXdQ9twJ/CvFjARajYUeGULCq4BRJI6aQV8KNlfK1mBfEhikh4W9OA5kgKL9vgr1Vh8FXkQe
lY1Z13LmE85FW/NN/L0YiEscFgXPdQxM/j+ThTEgK4k0Vjv/cvKbYLtOGbqT/92r1s1dUobh0OrZ
+fAXStXigecN8Omks5u+teAMFMZR5VQjDTr60x7Z0lAKw1TpQovGPHJ2smJ9RnxZbKILu7uu28MZ
VWimlOESOeVXAsXcVd4fdxKhoMK9HNhwXIqbPJPtCIfcgajkkq00cppKuNAy4S+9WWVCz3X8zOg8
KEK12Xab0KdqpTJ/YAUHPcTeHHxxcyGDwTAXvnJ3Cjjw43rsDxYC7W0z3c/8/37z7sL0bz6QP7Fx
4GVKn0T3do/LAfebrpIpTS+3bCcabfsUW8LaVWUkM0BItadfVmxO2WhKlPmdf8TIpRJWlUWN5x5w
ry5XS91mWPYRr6IV8eSmIp2dbnjGgZ/7mvzbQkoz2nl09RunuiaX54neSz76SSEZcCL1rwcFHjCT
H4dgYtcbFrCtRXacLZGfYEpHx7G5wPCSCxdEJTc4Y6tzu9ojbt9xlfxChKmpMeujzFLjUvNDD/FV
rlLd6/G8H8RfLUPmAPLOFqcNKuyn7KcxyfPYMvWknQOuMjMWK0vDDfcnSdYs39+i8Y7NE5VMUK4x
UAcYRYKUUVWJdtfNFH1wf/RdXTlc4IVsWiPwdYtjnlpQrhi5yLWvnTaiDC3CGrb69NIXGHrgRNcy
WOG5bM7GhHZGtCJGeN6AWyKgoPsUAYIYFJOup1YjKH8PTGvGx6MRmq/XrpAl7P+sjg7c6nV31KFg
NCngQA7TfC34WQcZEk794DXZFp41II7RusvZxU37Hn30hA1M/ArVGx2DkmzIaPEfk9IzqIzDA0u+
omU43LdiARLxnugS9H0bdNhdjgigXu+X16cMqHlzegDuEfunSsbT1/JTOwiPEvineyu1oapRwyYX
hIXNJ5wZQvX2wp8UiM270u4Rujpc359nLMh5sqqAdDXO6xHWUK3bcwWQ5vq0W4D+veOZvouXXurh
vNmdwEy+cOs1SXrHXRwNraFjeZ5h5zfHAGrWtrA+SDAyaYO6OGl2ItSmuGIz9R07+eQwwzPFWp9f
yZm4mGrmNfccUodqiES8pa+1Q7zr01Qp4gqjKjkSxog59U0YWzU5ulextDCc5qcel6j0GKDQRsMi
yYmKK2zOXGE/PLyeMZeU0rHToriQE+1/J1jXtOexdaEDRcXZF5gVHvzjLBY7EVO3A3wnSyruZxm1
1/1ORzFFL1/O2nL9y3nIjoGrCl4LN7lBP1l0xQlilmk8yL6ZQ9isE+N8IBxN+ACZOhaMLRmV5GVo
6MHWLewnJlrjONT6JbM5h7HNoX73Z4d495y5lW4nDcv5rm74G3+gDcQ+1+lo0WnrufEoCy0W/7K7
PgMd36BUoTO1rPh5jQmnEtbWGCZ55o+SKdPLc3o7AcyMgGw20Nzg4mdQlfpz9Ztjrmx+IdHimIco
+AH/ojESXJ3i+SxkXwOkpJNXdaZeY6PZrK5bkCRbyJLMMZA5KrBN5FefRUZ+p+xs8N6wm4gEO4R4
cZXBE1HExv9jXbHvzbtKdekA5qzc+LhxSDGq/V9RV6b68xY5A/F5jC+eb7vDn0htwf169QxpA7CS
bSdtP53d/iCq5b3UDuK/DosE3F23oSNRRS+CBHuKf627oOO4XglMkEiipr0C4gwZZ4G/On7rAg90
oFkm9h5o/gBN65VoKmziESplyOD8SIUUj7v+2NzfpWKV3gqCKPpyQb3CVMHqA+trfTdY2BoG7G3D
mygXvurBVVmwSaOoNcy0GPFjN05SFyF55X1IRvsvoUpi7C4iP0Ze+golFdw/v3ZN8FCoV40DhrSs
+dntv+r+xrY7fiGOS0li1nkc6PDNDNQ0zoRdLRnmzm3P2HTylxR7T6FhvLaUn1P91LVfV+oGXY8b
CyFSZQ/oRxDT4JBY8fEnMNeNEXqn35LUijyt/PtFawUhYuV3zzLAC5VREvtU0A20KyJHQJTbzXCW
nXh0Rh1OP6C94H//OiDAJWzhzSt977UxuVXJC4vTftGAvxspTeCjsdeXJwsSlqdVHaLusjJTlEy0
zl+gyoMCCwxwBV61wjvyMI6Mr9+QODR4f3Ik38dWFioAQkq15JKTbE+khhx39E3gA/0FDGpUMchw
WnDxMlLw4ZFtizY09KOpb7GU4SsS5BOVlj5W7FVfBZEWpxkOv8weVs/uP0Tjz1HktddA9DDA9B/Y
zr/HQH8Pi47fax61xrWU13pR35MF1/FlYfnRJTdSA7LKsPMgN94+qB9f//dvtesGVjn8+m26ohmq
H8KD2UDn3XYFhTi3e/ntljRv9GmAmXr9TYQLoIoJJMKoBRtz6zuIq3y1Dr5F/3Ld+xrNk5dgFd3a
60aNDMuQkkx0Ij6PDE1ZrI4BiSQaAM5Sph1ZPMA2frzjm+w/US57r/AuqDtyT99/TONKmLunlFfI
v8g4nDbZ11Q5RC2xnd0i/MNtFhaxYX0AI+W5QZAw2kulQa3V2yddyzR7mQDEvNnFUXGqXoLJiK+0
1XhVdDno4wJEhtfbFf4OdymEWYVgfBGJYrZkIqpERaQgrnmLj3JyvybnxFILv7uvQFgCe4Z2pq4K
Cw/YBvHQGtofAXOHDBTIxvnJ9+sS57adv6PbUZwgi2EmBCvbBBi6EXfNkjXOiuVrHtAmfLYn9QH9
FwqfX1ul5n5DTix5UluBiE9HHxz3Y8EEuxtUogKvE4h/ZGcD/ZPApLuT1ucIszCePx9E4JU/kgg3
mp4Cx3f9DsKXcp6gBsmEtUNCAckoJCMGkA1VzxRUjiSHVvNlj/y9jLSujcnDaM2dwStmOpZvviFH
cnM2b1/eo9yjPrx+6k4h7aRajpB0bkXZ48b/nzQkPHtbso1ucXuBlKTla6tef7UJcT6JEuVAZK4g
c+uh1xtpoANf9u+5s8aYNPIGUcx/U+ZCg1Tu2X2OhxIXzH/uai4FqaXjp+DgnZM2C3wzjhbyETgt
wkWcYjuuS97wrJYYpmKx55MsM/xYeVm+qyShCvc8IMElNJpgEk91+aId1kIoBmYT4R+nxLGl+ptd
xd/dsqiznhuOLwZe48ljFRs5uyZSArO920+SMgB+FiOJy1ZoN2WmHXWCHCZBnlfuFqYCbsnCqBYg
VNCQT1VuBvOEAQRRSQZT40g8Yhj+Omy6VneEtudA6ZZQZ8cBtigv4kXz1WZn6Zy3aCVsWuG5qvrX
lh4TRGQHxe+vR5mnvnPPC1cTZOGSou8kSNif/UAk/JFgyZ3m5o+Yg3/hj8KkW/UvttYINw7a7yxk
iClob8an/LwPIzRGZ963p5Prrv/3REZAhveybS5hIJoFbbztKYOhnTXthCHXN6aTXr0n5iO39RJD
ecvxHNnlabzKU/yGfLAuX82ErFZZ5595+a3dC68UzDAUE4ZffYvGpkTdYF0onylJb/KC9pOVuvKC
6dBM1l08ONfklT07AJHUa/khhDhAQEEqxhu+AKeRNatXgzKZw3b3LLFlF9bNJGsV5h4rIotbj/1g
KhLVhnB11LTSnMCowiG7AfG0+fgzE5O+rj97iq5djc/b6LxwWbOsKi0Kl3MSX1iX12FTSSp1IyIU
R5WHVdzbIAs45ct3oUQk7jAbODkSW6X+HohmoHQRVdINkt71HLww8MLx1DHoa4dgtZMTMc/R3nMT
ovliF8CUgejAHPiCOoGsc7t7D2eVIDS7BVRhECGo25ImJBWavs2ZbuFnGau3vt6K0UG6rPlZFkyx
XZoY+raRgW4ZSjcTcKVtVb3IW+A2z83cHpWL6InrJzpDT6YOGTGVBcuKSkXXJt2eUMP3ohU67XF6
k+gOb91AxCIICciq4bhmX1vlNFNdLpIIkHTWBNjjjhnAmgfCmY4/TUAz5jYP92Z2su1GOMI/Mz/s
mH3vPTm+V7JgeSnLun90VKJMkU7wyrSJTb4fXTJlzZFeg2rtihdY7iXikW7ii0cykr34zUbknQuv
e4aaC88T2aXg9/Y+IIgSAe4saTHfywJUSEh52CA+gRDJP1KYyGH/NiNgQArbOCiYiyDuoVv/tLW4
EpqLbd6+NV3Ni5dOyYu2sULa57pZLTPRU7LSmcdCQAc25PsApAMZl7dkK4b46wlBDo+Fw0r6oCrD
SipfqI+skgn/HHmMfOpMoX4JZUyogMqGTRG9olTtb55BzyjD4aWGPY4RPNduqtT0AXLoHcmpGiw0
jb6p8yfug364Z4iwcJMOECzqwVe2z6eXcnIj7d1IvoX5FBsvNBbNTiZ+8H6xHaxHMPdG4A3YdA9S
KRPspcgTV60eZZ+qfv8lrEfZCoS3g9pxKQS9+OAfF1PiRwNNKp7Rw0lIeyuE1vjhUab9ByhezTdu
fu/3NNYRxqqNcr/OSSRLiCaDQMJLf3gmOfrg9bIhjl1/IR2gtPHvihpxit0K9cnE6tGCYCDKNit+
Z28ZmwblZXtSmhQOd0LXKV/Ir9wTdlGatiDkEavHLKJc0sqVpuh0sXiLe3ZjrMZq/4vEgcUf8m6M
On24RAZJ0eEiyF5Wt4MmOjuNQ+DNnWNbSxqNpTskvUZAXdmz6U70XMOAvMMPWWfbAy2gcGGN4jk5
CP40fB8AIwoaD8NqWGDQU6m6v7eGRkBKJyNArxi8tbNtSHXKJUaUTG4lNuYLsUAwKruzv80rMiin
pQQ0skPsScfJyCqW2YJymcVlV+7q6RAdsKzMO1/yBFm1Dn8bAMFBdSfk5YMxZBuk5gUxK8TmGpZO
5cTMGMucByyGCbjU6TpBnO089vtwBH3hE3pkf27P9BkpVDBP251MzKkh3nSj+f/bXH5Xsg4NTUwq
uo1HbWBu54Rcu53SqAnbk+tjFgw4LDry7KpgbUcyowW8ZILkMLv6wbQ5cdJ/P9a/ZeQ81SCbxwkh
7jpnaMB+G1E3SC0k8BsoA5Blsha1RM/CwAHIzUKgSgN0ZS5oMTWxijZnf2brVwDLbCoYlNtujTNe
igsTyWz1FTgbxY2SMdo0Y5tDHGBzZV6LekBu1rm8rejGQhiPazXRYwIxutef1ep6bwQjM0ADoeN6
ePlHSSFeVB2ROsDh14VkBw3KnukRoYGABxIE57mzVzBlHqQHOo8bLaoUeDG3m1wYrV0I6toW31Oh
k4WhKi961Xgp6+8CoMy89RC1S1Uu9HBWMBKDcBoIm+3QdXaD1NmD+LMk/QQsc9QvrjbliTq6mGr9
sX4N3PttN3KRd/ikk4xYxYj9G/eJPlB80kLcGf/vFLoUHOBywzPaIz0FVfAH+2AMMP8SST6vntRs
Hi/Fik9hDxExzboreAcw1XNpLKHJ0q1Jrnv9nKOOCXI6TwqnvE0tWUDcB+h5rYvZcH9Kk81ubVWL
wj5sW1T9QjVnNAqtc04qsGHeeXPhTjFQGRRfvpp7wG71FDCMq0BrsWNgGZQlrXMKwaB1affBV+Bh
Lzee17Y7Ap+GqgqGs0bWAO+4GdqS3goQGie2L338N692gBIzpoPZm+3Wd+oq6ciAecStSbj/R35a
V5xrs55q2J0JhWi1ae24IQ5cixDma7PBlY8hLZXVdLHjiYJO7ZGQGN4AbHsURrzVjhMcHf6t/l6Q
kIia1e2tlopbu9NP82X4dm5ViJXv3+Y1wAXxN/naug9tCcj8PJg1WZWsNXNtZ9Gc7BbUB+TLjYxd
nH+jFea04oInvcvxpmBYqJW9RRiHtSZovE04GeFdnxxehwMxD0w3T9JMUDcZ2JkgIH3Qpr2+ZHhF
JSx2S5xcqsuh7wqPuvLTH3DefJ+qX+qRwtaASc7vzGnNC1F6HPPlz6IQLEa38/Tx/NpZlKaOon5h
auwfsBg+ynhNZQvqQ7Fkh9YMTULI72x2a4m3v4odQ65+Rqxr/bFYoMi5pBTU/1ugFVHyswNAmPMU
OhmvJinxBimKCvSrTGdqfNGKYxaR2I1IuL9ZKwHi0+JUdtrU5178APOlXTdF1GLdKNTbI67xz3AR
RjEBC2c6p1cfDpf6+ziGoLxBb5kTtGUoiBoIbFRPBRdK/vcerWVq8D3Fmps5cACjA5Df86QgnDp5
KFXAQAnHD913IMR1On0bXcKLQX1q4fhs7rEL5KY+yGpdD6ra03pE0+frNDcwk1QvGUc1q60hFXm+
DvjKL+FR7ZuPuIJyF8BwK4vBi1xspuafS6tJZzy4SupOiUu3dGd+UWILCYaLHKFfY9ps5y5t57aD
3lU5Q2hg+ETVFPDopB+iybis4yPr6+mFr/xtsB6fYFTqi9XS6AIPXZEzTIRsz78COEoCjvG9VI9x
McZxxqvFRZ1ub0tJFCgz6t8pgs3oUkIIbhTTpcW5dnnTRvkO+rn+/tbYlR10TQJr7byGYP3v3rU1
cq121OGAEgb1k2tEc1S+Djr3bajTVUW0l+9VIB9SkAY/HEoLFpRo9wCjXTuJyE7u2YZ2N/CII2Gz
K9taCdesSaWlXfbiy0OlM4CD54hRejx83VOlt6JApu5WgeDboIu7SPg7rN6BWZYb3mCyLyUM6OWE
GPXCLgqvfSqwnGVlwz7mOlgSOU7vBvtoI5SJW0qi9AtFiJv8Jw3O8bZMfHLnCxVgB8ZqoKHTTpc1
rfaThvxazL6KDOMCk/12SenS9FulHCOTLeG3srNA36D26OcGu9B7IYsJ58pwVEkcNk0+2Et9wQBW
nc7MQExTuAO0MaE0Tv27GIXbFqVBK67UQNh+bLFF/SXexpcNzSyXPkyaDP5UAN0+ADm83gxqA29F
zH4CVmyZ/WtCXfRg2O7KcyNyeiH5E/txQ4FWFyVFUBEme5+LEkvIx68sqs+1Dg407bJkN5/rsnbZ
B1BT80Qu1dppA6Nvvg4XAdTSCcPgM1+XEmxERojOBHOi7fZ6MOck/AITgz/QdLui7V7gPUIINN87
w+GYvWPt7YhadAEsAzxzp0i1JwjqBwmHiN0atqpIEM/ICc8TRGyEjLR7rnatBrEgqZV/sPkhTt36
4M7gB15ErSohn/4i6LSEtt/6NBiR0x1nbjxkzp9JgnooEXswNQnOvYcYOgaEt791XWjK5bJ6Jot1
zPCVjn1ZJGNcB8WeHXOADKMEGqYdWlebx7BAN8PVcyQDpD+tlIH9KlLKH/5rRJwX3QOVO8nfPcTH
cXxjYU4rTdGPlR65yQN3KPbmtoKgpknMk+JcMA6tSbzdLPYQzoddpBQKJRNCGICvRVhZ76cQl6mQ
JOxkGXrjYs42MsyhE4Pr4ouZuP8S50+6RF3iIruhKG0t1kYypfLKvt307X23H5gQJosy5FWCybyA
bjSXAnTmGFI4XDtHF1BRngBQzHBzvCom27CsxKlzkjIw59//D/sWjkQISd78Ygz05LnSTT9a5AEH
HIK89xP9K/HEe+YSIMoDbSWAcovU1CGiOTt06h7uwE7uQTYRRXTbKvtLGAENQiWMteUalH03OyJR
xNj5ej3w7g8pAmjavw5rX3tnzNpcRM0OiO0dSJ0PEyfQtLE8zalAvYhMXEA8jYJOK2p7oAP13TKg
bXWTH5EXy1hQMompnh9n/Wby5OFUvgjHDgxEQt+Ivw+4ZQL9J5Tf1mAd2GZvm4dEnqTPTcz91Fcw
KAiLPhY+obPaRnXCP56qvtA7CcUBzGzQvzDgCHvXkSKlwjQUFf9hy6p87olAfGZBurUjULWp7egM
RZNX4nUtpTcm21dH/eep/FXPA3KjSk8bhnBWt7T0SKkHKLY4yH0U4M45DTnYwO8FQ17qhCzCnMNt
l/xReor8ta+LOYRIiSydL3/Zt3b2jGL/As5QukBhhxQSdyaYh6StKZdBBXB8Vk01ZIDZdyO1GZJP
08eL86g0Za0m01WKLs/7pVPVST7/OwK5WWfAnN0nQoSZfj3+9YdRkqrwnwyVTa6eMlf77CrC3oMa
Df5asDQj85Vc9rfv9jexpBaW9qMKgDU2yr37IyAhZRm1k8XwJPC2Np4udvvWzGY9b0/bpb8EeC59
XBvS3Zcs3Ac/GOhcJzA4KP0ZC7LgKHWIOa/vZHq+S3xIY+e1OS35vURFkFq4w0dA3a7oaXF3TXoG
MJI+EOiteLO72ooLK+BHCzYVTkS5TePesg3zXZR8Rgo4oQ1Bv7NLFelwTfoJZC4Uy3G74uaAcr3F
BIMS+L0VcswlQfEHaeNFoBe/PNvTkY/dwAG1Qm761lx2QKHrf0OSdoAgs737BzoPWtm5YemzWjjy
xYrMUJQC1vOPY40twXJM2esO4s3qwbqa0ea1qieIDyeGvSF6DZK/wb+P9J4swTv8Noendx4FJpqx
Wr902fUVfUvpVfU6D3VQYpH6BQYH0y6uOHdHWO5AnBwK5i012zqZ2iLRbK/7Pd3Y7AovaN40F0x0
TMSF7TpWK9bMescH5KHCE2Ds/3RMrn8/amrb8wnqgGLygl2OEDe/yS0YE2Xz+U1m7DKmwmnPL44u
qsN5hK44bbelM4VPNdVmHno6HSo75KNtXbLUKNuGzqF+mUTP7J/BofFXAa+jf6F0FBn5jA0ig540
Qpv4nRzOwcY+NU3wjdcRppnJ2WLmLpYZPI4SwH7Cag1Cj3vvTJbOEfvao5kw94JDD3vWvO2KKrFc
X55XgAhsQrCQZCkwpKtV3PN9Q7YQOlycnbCtSHDXo//KwhcKHz5rpizPLBxlxGaMFihy7EzCCf/z
p/7iNTw2MtGQ8wBWXEA4BEP0MWIgVOSoodVhHFwPKCe3W3/T07HXbjo8XtRW3pDZlEOjqQUZeooO
6qle672zLaGGG2p5noG8EBjRWgVahqbbjGTzNR+qf17xwoCJRe0oDhIL3dDYnpcHRLNPb3318fMw
fTdm1yajCyuGWHtw9Csc0bhsAwc3c2AEwLzb8meC8MjFsQfdIrm8G+aCqhqI9pqmgRNBK0t+u3oh
llqzBkIOGamioZKWpR1dEOizgQ4nJRxs9npopVZ8wW684wQmMTW9m4tBfwr4WkbHnFSdNOSl8yEH
VCKbpn93UZxD5vJTNqRYVFQfRcvK+O4/alUyrwVWleHO2F3PE9tocP7670MxvOJ8rckQuJKVh6Wk
gGaPfWskCAjlhF8zR+8TpGhDoulVMM9gqEuXbTeaWALnmA9Wo700/nDw9m6dhjn7I6fuTtiRxsxU
dWoDAJW46gftcznsJXslHieFhN6huyQFZaqkDzMLYf3MutlAa9LUh8AxtU4bSBloaXazTkcd3ryg
J5uwGInqPcZIGb7Lq7n7m/Q7tAwuSTfUX6J6wXmLxjH3CZwTD93a+pQw4umf32KxkUy8ckio+ehY
B754YYH2Zn8f3nQyLVJB6XfL8kuzGneDalsf/FgfKNiCLY2r3fIGfeUbR1kGovQ7MJ2Kls9+6hW+
VS/oOO5HBGWDNzDpyG3+xye/uk7ABCljVTRX8seKSK25qBAh9WccBG9TLxyEQpD5vY5dpdMqobED
7cPSdTYb0epwDfbPH8CJy+rwGD49Mbkvnkw9/u61OfJiYSK4RBRX79fjc/PCbksVAcZitjvQ/9rD
qDW+czS8/E9/jB6hsvA8LWFYCDrIxBMiR36IyJyeZltPRbV2b0ZtLEfVasorYZQdmLj0pylU8fOF
qFeHy7S0jXLdtqf+ihKQQSTOg8EEDzY+bHnUtKH3UaxtU0npMV5iDVP1AiNOn4nM1ZFwCz0pRLDH
KpgitmHLLgPnFaky+RE2uJoDQ8QhYCjnT8YJipiqDt4RjJlRNG44oBdlWe9xs+2pTqtAfYWFcyxh
Ec52dyifFkWT31MURIExpWJ8CKn+4gzrQ6ZuoieVfXuALgQu4CCHZq9d/+l3XfeljmKo49VcFrN5
+8STHZMVbGojLS5zZ9n/Gq/eziVP60yLc8K6KglswKekxXbniUhUhQuNRz7zYYWVtmqfSWaKtVfB
6oe7389fP4Fz3ZCYDedbDFsb9zjdXQEXw8ivuH401YW05qxENt1N02KWC2inFtHxfR8Cb3eDGJhc
OgPxclKzMIJm1VaOjHVKSbs7K28Youi68or5xQmcr24xznuxVisQ7GdKDhlBhqUy37bAUIA/q65I
AIzH1d3Nb0nNMbM3rPXzmugFwJ0i2i8t11hdmMrpJT7373/ONWYeed2oJf8YXeEodjQ6r5g/bDyc
1Jmr+a7vq8Vg1zkaoj8WJp/CAWL7yw+bxeQSEA2FibzADAvXcbskFEZRuMYseSjB9jIfJtbAPwjh
RsrMHWdwqKscV60UlDBEAed9wFGta+MP5VpCxQ/BbE/0v8YjDXKIyr+kTKMLiRnXfNzU/iwfas1y
jplzUD4TXUgwURKAxcjQgR14edw0bG3PEl+/gjiJig6V8EsAuwgdDSIygwPy3wZpdI2RHuxo2G6s
ZyHQ1pNkg8bvgCpVjHzTIQ2jWOcQjUSekcoC/nw65c9dljGAR3WPVYYUuxHnch9+KgkjHM0kXcZq
JejiL4AxzfvzavnFuQ2+2XzX4cbbc9nh7qA7D5bc5s7EkAn++h9EngkHYHV6/Y6vFTe7495H6ebd
+qD7S1Ea/KsXxZISw6Tp5vQ2vN0FBaV497ZcGuhPXs4Rpv2NQPXJu0Ep/zwoiQ9n6BaT9crMC0mL
m1H7Y/va/45qJrm46UbPhAlBQ0yHHUQ6uSQ8KI54CsyHShVHusrdQi2qqz9ADzwj7SncLBhZupi9
SGrcwHQHYV7sd5xastFrKosZkJ64ZeeGdzpZnWUWyLjbjFO5NOBPqN7V38lAdvs30kn7X8iHZ/v8
hU/yzUHnxRFsNbI5ZyesjrdfBf/9+Ke+j3Ifb2ksY8bNjGijK2GoTEebuTdWANC7au6Ul/0xlEUp
WRtXtcxjntrw2aZ9YAsYuTvGawwDCmHqq2iDkr3b6mnUOjcY2NC/6w8caom23h/HFSBJxslN5/2H
Sk95iDT1SmXU/NRdz6j5Yp/3YuV9tIogBcrVGZ4un1vl24pvjbQYqWo3xFvTTZtoHbv5H+rbvJyq
iG6XcPLuZpZ9/hZVUs3NRol027Wl0ETDfYU+8DJTR4UO6N4duOk/HpRGZlFF2dFaHzVOwZJpzUVF
NzXJ6xNKWCG75emWaWMeJzwfn5BNnSZndtf7EAEXo7Ey8yi+3TjsVYsb01M5+O7/Rv7mrEcXQKyN
G5kSainnqq4BlNo+UtaZ9vwaz51X8QC/4BkGzOSEyK7pSbGcS6ogKVYR2jc51hnFxD1548eFJZYa
Tbwj2S1MajkQFcbA4vSdsUS/Xcmlxyg88V1JcSMiIJIlIYqa5xXnFxr6NFPy13e5Bh0MTGAqZ5/I
M8y9gM4fmSud36kda6zOPaD+pklh4G2t48/RvEt/dEYzC1muVe7Jpr+09Ahd3CNgaTwSEums4usQ
3yReCmR9jWhEZLMiO+qASRo7XHpAOKyNLJf8evbUq+wi33swIKdZYCtZ8pWComHHfF55kKDDUDlY
o7V9jz8KYij87q3cSmFiqYm6eG8RuC9It2RVAh91jKbeUf9VppR88XiuZcQMk6uh9a1BRuOdxt5g
aDYVFr90HutstIpcQWUS8ay7FnzW2h7JkDSjuDQL5PmaF6G5KSKNwvnJUVJPrzbts1mEqv0r8FzE
lMkvh7LUzGpqnR/g4l2/saqpRecybN1bqhtYOH5xBY8IR5tQIycFczUfgEFx6ilorhMnWMj+Jdpq
if3eDDkhQz8PFPY+gVuTmpGqZMU7K9CkMpWBXda9/POIdvuAXIK2y0jABj1uynZgOF2ohaOpa0KT
SMqjPLc+HjCPhemqkp0w4Da4cJ4Y6gsgu1i7kmAYzIvxywNLlExnBezqTZ2pizhrGOuFjgHjUzpA
4xO++gaeLsFVIPu2+gPu037pm7Qe4/5pp5HSeN4vYbga1fHLQuUlYBbXDJ6EnagTDsGG8BDC9oS3
KqYU3ovibM+E6pEu+NOfBMrq9zbDaMhRSgqz02tpyAgUuWAE5Xz4hiZjB9eclcJ463B9ZpHm0luA
N1GTf6QPaeWfl2sgcEaca1qSRgF6FD4mm18Vr+ilNi9Y3rztNl8TAlnRnFWGfk5p4+jZ8lG0ldhY
5Dj9FOuKICAXvbkMWLr3dpTlmecTnEAm/ouKik3eu4Kr/Kw0G1UKse04yRe3PDlOZdoo1B5yo9dG
HuTeQQsQq1fuuDPk7JKS7744dpV/WQ7NNyz2s6ix8WQ4BOajSf/SpuPFfUJ8O+QvMjA3chk4S6ug
ZVA++m8coD0e8B4zi8R7SLnqB79to6pJpFirGO3YF45+tbs8wGvXsFkLRV3/ng4JWn6l2DngCIu1
EZrGz60Iuk1K8sbjbR1e/+LdEgSzqHU/Zqeavy52xOVJRy/R6m9J+ihyOnGeUANjc7mAIChFQ0ha
wkAJwihfWj0S65cS+Cw3YotqyGl/+SxMNlSa2rf40jRqFNsQA6BsOqNbpfJPeRPR5S4cH3wEhMwW
EJj1XB5SWBmxdE1KQkY7IBVG9Mux3Zs0FXEpFCRgorV2eVXgK5AvqlWFR1E/K9rvtGZY0ninLzo7
e8qfJ3UtlZmFNdtvCpNY4HFXaWctOM0IXpJKvX/OTrKpx8Sb9eLl6klm5PWjvvdn/YyDGQ6CQgQK
ZZ5VOBpnFOF4pwoCs5chX5lAoEWlBqFy9BTwQ9wvIc+0ObwUWaEfVdTrUH22AG1UixGkZvPg/GYz
uVinY8QRzEktrd56rIeI5MXseMw2SjMUnxOgyuxcZtMDmgzL2Gh5/QC2R9jiMvcmO4tvOVbSRKG4
cZbbccYDRP4rD8gglerj2qXIg7TO5mDn1lfJQPydKaxeVOMdVdjifEWKR3bTHhlg9pM9WQ+Me7fC
YWe783b7PDPhZCP5bcryswokHwD8zA9P/f04E9lSTmpjHgZ34MecLIN9kHa9VXZq8MWsRp8C8Hq7
q//0tlIFDc7+1to7iB04HV0TBJCqKpa3ETfw6LBEyFUpdS0DdKhTENBdf6jzOaIaTqATmIsIB/Y0
zbzGmBqOdQ/JmcPgjG4o3p1sROHjDHTxsswsW0qzaP4T+hGfJQzXaUHheX+SUS4hxnSGwpaLyLI2
IbpystTK62yL5LIz4BFEnGFzm1hITZcqJn1dvlf/HVftQC1QO+kCPzbW1szBwl2d5G13gk5x/GBk
825LnEstp3jCej6lKot6F0FrtuNa8mKZaJHw8wTw39gMwjX2+t4sBom/s+C2DuE8AOBRazC2MBFG
VeynnKUyQzxTV2J5/Sthyiz88ZpWTylHq0lICpGzrQKN9rN5TiZIPR6WNfQBr8Ij2lsfqwkmi6rN
6ZUloVDpnvsQWsrA/3TUBhf1ZAonLrFOk3JrN0nHcy8QzbsQNwIoFiHMbwQIr3EEE7SxhjDC5jge
5vsy7jiDbQvFoBsQyQpJqZ7PuuzU5lAswaU2BG/snCgUqLoBO7u1HBb4IHQgMn+/lcdfnci6PWBN
4bNPyQbk72eokQ3SBhdyNQ9Fm00LzpydoAyeW3PFwVBE7mnZXb5aQr3RFzpjrf10rpu1kd9Whbq8
LK4RLQUXln6VyC+S0FuHL+t8bCCmR5SdJDkQEaspjDFjhib0agj+nwjPTysB72QNE/w6dY+tgKJA
Pdn0Ccc8SNIGzEoA6MI8CHojCdhLLUNRduQKdhZCQQrRyN8RQweTt83UPjAgNeWFXipEFXcApsu4
ts1cJkuKMhAE7L+2flWl96sxyrhTRgdxqU2aNwDUlNWU+WJzqwdYhQxWYlkFg2Jg1NlWWaGt0ZGW
ZAL/pRHG7T7BXhe2GDUmgb3F/M6D5buAjIgpHLS1O+oM/icfo2PGMJOb21VirQ2194wNpmsxM3ps
1Amkay9W4iNgxyH/gu5VDcJC6KDTuNCWRh8jlM9J+Ik80l7wM31loJbCt9WamMRcsudVbrs2SOyB
IvAngAGwf6AZGUqoICac3y0t4RBN05oGLttPRGf+BoF+qu1ZPxZXJO7CPlq6dDFyTZp/+5CetmES
FH0DA69cpSwdDUJLe5V8YTttTm9gYWJrEui6W8fqisiDAClvVod4q8ZXcMybOR1LbkmkDitGU1y6
6lP8SQRsymp/ot0t1vLns9qfxGrvLA/jZtfSircVjfyGvsk7qur3hijIQggdjhP+ZI6ocj8leQgb
994mtzu9dgXce4sempY3jiFz5ALhNeTYGhaiQ1W5i4shlW0j9cQoBxgAdZ3+GNQmacdq/TN4DZ8E
0rwqMBCHZ81frqMABzW2Hw/jFv6DUoJwBq7/FZI8BZeJtwvz74+BcDvsR5gq/MvpJqYGCg9pAu8V
pESeUsdVUvGezFtqNHfo4uiAy8AC8bBShvJc58V7VUsjMWGau6YeJieiAnHtejLwwBcK/1uIIeC1
EDqQWmPIrtW+tjfEDMUyDR88XPw4MXsoDO/2VtInKI/li/gAwRKryv7XK1y5hOZ9TJvu9a0e2NXp
X5bhM1kzaA6DokUC658/f63WpATVePZURwvlw3Jo6Ik3YMhw5mpzHW1exm97iC6DjLD6GZG5Pgc+
UNzbboqHSsb1xTepIIxr+9AslRyJMwvENs0UA+ohg/tY+mtgulolyoxA9YXCSLWVgE6Erl36nRlz
L4CwVV3qOvhOUDm9CV9qXfB/P3+1VT0IJSsif1HZL2Sn0BqKca/+lIJQV2L4Q64v+XyTw2ZSqLAV
dLqnQn2sDegStyeP95iqcuqgZibWJUWoRvQpxV31mrueM6lStb3bOYzMO7SQrhS8tHs6oRpYwRjc
McBVD4nKzyI/bwnRKM7MbubOCLdbvonZOrrUAcVDOUZ+EP79KB3ItA+dUORWXzD/NFrzd6XmEwoN
VwKR+bBQM/nXB0utS8QRoM5WiIxaPcVGKeK3YOkbgGMVURx12oWI2qUSLnwbcV25B8nPe2ESc6cw
7HB0lv4vHwocZPWw/WmlB4ZPZ0IlR9LuTYquSAMNFhEkhK2kzF+6XpQmCcsmetbgoNTwy9B3Vpss
gDVsxeoYRS+c9KMDst8V3npY/GrIKYdpZhKp88kU1RxaKXdEkwqB5xNSMAl8/tc+ku2XoRvQtO8Q
XUFFeFcOxAppBgUR239bBAWcEEoVYN4MuXFutUmavCQfImRwUUO5UQQkixSEunNZjRyKUkghKGEO
5PpZ8lHlG6AUak53ELv0DSFqhT4NUZJ6h/jCMgG/e56edUKBJhFbC0VlYL2la5NaBYPckRj9Vila
KKF0afq/vk8sUh+3I3oNh5XciKGfM6/C/GmkIMuBQ2cUl/gVNanK+Mxb3ijwQQ+3xsI+Mg7n95v9
F/OnzQkTwZDnVtYqHFEqPOHyS4etmxQD6MNHfcXOSSbAbI+vjPQ0CTSx1TYBIQkzTqgPQyEFQ3N8
NaKLfm40PB4PO3iKDLC9hpWt4hFxCMJVfCcPrx/EslP3fR4d+8e2GcgeDSR59Jce79pWEk4uajTs
AHAnGxQB62brK15iEPYFlEYaYe+2wc8oHkCtEK5dgxH/S1PO8qKtubdWerVbdn5Kapi7Dm/AT/nZ
eCJBQ1Rc5exSVD/LPk7povYrRD9HKwam+4o2/uexD9Q/wJyu/Jm8rALUQa6wXW60dKlumZHRBMkz
17Rgj4258+ZXkofz+QjCXp8QU6N+nCADIqhUSF3+HuSCiIWynql66WXfhHvS5BR8Ccxf16I/tO3l
+TpxatLvAfG833OM1OsVBpAqQsXGOptFR06+LhO+0WVA7Mxz9FXwHgTPg16E17m/2irgi09kTUON
stVsDct4roX09W0PyGLI7+nUjB6t+h8aXP6U30LMVWZsWMpkgaZP/qbpwaSpuwpW8d19Rzod28qk
ZITSuzAC8D/0mUCtVfglRY4KCgCrT+nWh8VGWq98cQtyRaTBzDLxAvRh8J5DJdx0MYPJMjjrbxUq
w210iz2eAPfGykr0OIcUv6F0oa1FAPr0DHaTkqUjMV5i/43u6DKD+9VgUo1qocJYXq0hY85kShFL
2lOlxnClNhUv/+cdCvoYBXr/gs5OkLjr4tF4tw+k6HxrAP8MzMPru43LqyaNGWah1TJaOzv0fPod
mbzJEFBS+nAI1DDsydQIfXUBNJRcILOkQReu5yaDaYBzokPe/Qrv6vMMhIJ8McuCxs3x2pGhdOIn
l/SCRzSiuCe9sSC+hAEQPAmCq/6kImbMsE+cqxouYHeuvVqiBnJSSixde+GU4wNLOXpeKW4j+QSj
VBzy81r5/jeo521PY4QPfv7lReP/B2v1ZlqXLfMYjbDi0cELzq1hTPnHX3hJN331nNYO+Vp3gc1N
R1RSqQKgqCT/ay3+wOgX25HWm2HNWedKr4gAmw645x2z1aytX6AYVLVVlR2H4rpWSgCBxTY2eVTY
vQLZD4k4gEfYhzu2w13F+s6Eeb7PyIAUI9Ux6EWBZVnKIoR7GpGaTXFSVE/OisuMszuVhtyDOFI9
2srGXlUlaOV3sWrF4pFrE6qpRqaHAscWLeKzP0umKbqKWU81BQUxdXd+1paWZtAhlX1DgoETT+xE
VmI4RijyCiEo313MQDQen41DquS+sQnUj2vlWvM18hgLYooBRszKR6Y3v9rKpW4FoHeOrZjmiE1b
4yfvjbFTVZTUwLti6whcWyp3z+ScBdqq/kQ5p6IZSyBUl1CGK5T7Nanjxmmsqbn0T2sYUVXvGFbe
Z2EOBp2ukiepONSpaLXO4uL4clui54gZALdvVoBwDwqS6AG7wDvaOrw9V9c994pTQFF+cCTlzuM2
Omvxua85AQJoUWeNob47TXzU9s8W3mIu7vUXKx/zQUAlvZ/LoNjPPoCPMlAU/P3ysfWl7fKPvgVf
vROmgjpSQ+sSQioqWYegXzrfdULVLHtMHEk219RRbRicOC+tX8e4b7rP3akzyDSKdN5vdihejrjI
uKz2WYOI+ZyzfPh0LdPkr3G6itFPDyTac5gF7okMgEwU+vGJDZQ0XtGy6ZKR0hSn70omp6V9XJY7
9+dPuDcBlOXNawQPHA4JjiR9hlvBYObeERopjJ6Dnoi1j7LcaqHsoFxvFpel3+w/KD57wsDKG5K3
fuAAJkGELMU6jDa8bDY4RVVShLlH2Eb5P3HeN0RfbQNVshj4durdmAXO0RYx9XFBTOsCfIdcy3/C
vsf3tbosx+nTPA2dVMWB4qtt6gmp6QzgyFtQhYAX0m8t07p3FuVoRYeTXd8fm0+6KickktPbhoKk
Mk5udbhbouCoRFiPiRY+nUKFYCrH/M7YGY73wzTanXdexIDu5aw2cqgKSaqmz8ydQeRX5FSEKR+h
IJBeqXC1E7+T8ikCVYpyFsfFiSaOtBvmU2yi+6FdmN1B3G5aABbMZntagc/2/JGU1v63BmrqIUfJ
DokoEet5YFcAI28wqQ0893XQsQ8hj2p5ZCAbGJiHcmhQdTmM/u5B5kqimXAjqULy0kpvjh95qWTx
3H0/4aXaYTeaaWgytFC47RrML3zschopS250eQyNZqqMLKaU9UbeA4VoTwxfT/zwbpVrHfiHsI6z
ERhD2FsJx0/DtBY4C/bx5FOgqoxKQ90WfgvGHXIJUbs5sIHJ7V1omWoXLCB+FF/fxWSd+3TnuwlB
L8lI3aENytkP6vHBst6dAzekal8NSYRG8RIQ8deNit+eFDOIdkitzWeChhmacP/iYHH9QTJgJ4Wp
2Sz1kug73anPsdjqwJ7qEzxTwpgti9UnJo0PpVd38bMembLhXifIuEjauBNE0jn8ddanH5hjFgub
CiSasgDcsvLjSBdnUqk4sJQz95K4xlVIQkfkEiv43x7rjHJ4aT8g26NV9TEqfOichgJf0ME5LqA4
3G6yCOwCvUoYHcbNG2stUTEOOrn4rYk3TASJSH4r2mht5YhiFBzrBRE3nxws5yVs6G2GKjW97gPD
yQol0Juq+k2CqpuMHNkYWw8SwL9Kis7FNoGiOpqRInnuZUhfye4Qv899ucr0v9JqnzXLV8JkIrUW
hZqvLiHpI08SeMmmXQX4Q2zAx668gDjR/uV4vq1GIWPrU0SXN+bY38N6zNmCu1dT0npVRubmc/4Q
QHPhEj47qLc5cGCQdExioxlhEHElqOeVACwQ0QYd9jXq8/Ae3sNfjJYxCsjkmWSsZHOgx3vNvNZm
Y9l6zAdynWqwgjsCXBasv8A2Snh9Ko/38wgzQ7aHixTUWgaNqt8yXRlmpXgvhSBaLVmO954CKGng
K7wd3uliuZbbG42RUe/wlnVq9ZREboIEuVmXAyTJkXiQJraJlJ8HQvVfRqbGXpt2VgUwpW7ccqMY
maj9/AanF3hxE6DFXQVGwh1pOtZcRp+ppcDlDolgyvgYf9sJisHUzNgUsGdwYSGBXM1ju+8cqTrT
d967h9AbBfsmfEnccffXQCPiW1UfgfzuVuxpicxJf9gG60Q2sFsU/cSuZJbzeptB68GsQ9RKBuoG
by4R128/+1I2oTKj/1a6fcZetNHAIM1EVK/IbF+6oftufJpPvpxeNmW15OF0d/Th1ry9H8kvZQwv
L3c7D+vYt+lD04VUd8CnikN6hV3dVXTkDdhk0r8sFHX4REj7sRuEkk3B84V/GLkeNjzcdOLPJona
jsd5I8z4cku+mt7Eig2oIz3WpMHP1PoQ2x6qE9wqqGS6ioV21werGaZGzVni0IQbjz7H6waa3c7h
27Oqx8dCeQTIOjTjF29eE/Fe6mGWW2p02Y6bJ88x7+JSyVe9W1cpQHlrhJIGgdhki50hpU7swWKE
80iiLf25T7E1f9hX+mEKY4OUEKfsT1Bl7/wRHxxhC4FEjXdxhH/Gp9gJCX2PipMOB351JwnWa7hF
78It9sSU4b/LiezLIkeS66kCiyWeO30AObuGNZ3Wkg2jlsaJKdUzkwHoW6vzSD4MDeAr9ObYvZYd
DzMgpSLo5dSafszjwVm4xn8k2GbcKZywOW/N7e4ioMofPPG5hLyQG07U7/YeJhWy8wn36rBREDjN
c+/RcvUYywKLC7fmGUz83pySoIuqGQl95VWlLe+6M+khuaKUCXt+Xa+RR0n5a4RehVsWcaJishns
JR/PnCSZubtAF6Sb7ewjY9QNVF+bWYwn90IO4+ktrTxnLaqsXA+mQUbPhV8GVC2TIZXlSMbseQwL
CAjWu3tNclQLmWZHxYpkqE3YcxJRkPefnEVLNNgOgmexBelIcl6R6AV0UUKQawgGUKyOEhTPAS3N
NVFFecOy//qltbEVW3icHsfvsWqYRWTR2tSybvO5lFn1+n1Qj6SbXT2OyY+lOq70RKnwnGRDQ/eK
GvlhPaNt7kd8kki7ItD/jF8xq0Otfkbt4BWEtamijA8Bhf/D1cqQTL0gOud/D/jOImA71merjhL/
2odO+h7sbluhGigj2olI1ayY5F2hHd++A5gvKMBI6J7JA9mi/49PV0/IrgeGg3cVEX/W/a59uzTd
3PkXThHnCBJysRHz6xMYMNBKPdGnqQVdnRR/3ZcwAeD204yd7lIMBCUTi9hz3cdOxZOrwWtFNevO
xTtGIkWyUm7sdk5fW7YD/DiD90hF/r2/uUbhI15CUJb0Qa9MHuLz39BPlHNvsqXkwBh21hy38iGV
q2Urh3S4j0Zl4Y1qoU6ps09kR2BsEgI6hTkumSNihe4vK0h7mAPEWmjMbjFooU/jIoKIgOnrGRQe
fOmmA8kMwChRFlj0M9PDRAQg1aCwosXVea3AoTqqih/Wmzb9/rOvnccPKdnYnxT9Dq+X4EMO9CiS
OVB2e7rf53Y9Y95tZpF4N1vW+YmfZZqu1qXV0wHrp9S2JrN9TRVAV0eKUYS6f7D4bSf99cA9x/bb
n5rmP+Ranu+lt1eWDaaeAlnzM9VCGvtVEBSdWAlKAdQFoiwfdzPIenW8bTVpZ8P2+TeqPwPhQNx9
AHlMgfr5qHSXYV04q+6WOymuiqtOpLh/bXJMczvkhxQujQu3CrLrV/HLZkSDH02gIn6ArUUQxs3M
Z+vMwd4bu6oFjlqf8LzY0oCeUeNNfGJfuHWv0PbwvK67vYkkYF2hz1ipWcPUKBH2vLTZrHRzskaU
YrnkkuYISK3OZn7/eZjf50pzWLjabrBcQ+4NQs16NOuG6RrdiGYwB/MkXHMc6b9QVX5PswLxbMJi
RMMMVBLqSh3bfbXhMCeS4SmlD60kmW3fdQITx8pxj3JkSHpnkoAs9FyOOqtZC9PlskuwSh1bi98e
MZIfXSs9c19qQOmTfwRIYv1P+dqPib2Q45cV1wH+z41JwCsG8ta4plsR0t2d/lEqVQQW83oQMiqE
MMXdVqkGQiHSF7ui/S9qL43tL1Ha0Ij6HFc7s77TMZXyhsAFGBHaDYn5KRLyWGj/wfU1ubkEi7x1
nsforMnkh1AbKJKJ2CLOgnGhyBEk7dVQLNlszXe9r6GAj/VF0GGMa9g0kzqVJchu2cQaud+o6CRe
AURAMTOwbFCB3/Rpl4DX9lp5uet+f/URj8d+8RxGATSzdP0c7hHzDi9ElKBVISttRdHrM9uai+xg
6bnxQ/xtg/jWhODG1BiV6/kur5UmZnP7VAe4QR5LF7HSprCTWzRLfx2VKKydLPTDHzCM1eaNikqs
/obRFqolfb8QLKTUfEqivg6Len3LCAmZxGenetiNDKHRF8IiJSs678+Di614/bDIiyO8Pz94Adjo
FGADNeQS6SL9Bg3rUFYMr/ZtHs6WpTO9Ve77L7T7ZnZ7NSls5wb4+C0+nVokUvxxl9Q3cl7xf5K3
eE7f6lTEydk9YIoq99EKQJhrWTT0PU+gaSnVIDRbQNfgkd2wGAuDD48T1Y8HbqMtjssDt7oMnzWw
qgeDfbzrvjDFw5+yADe+acOsp/u10ZB3rFdJHM0oKQwTMh7NzWFmGnskISEFYkyS74G6K1vboazW
mLMRumVxzW1IRFFzKr3x+oTMA6ltErijikHM5IzlqmbUrF9ld7nBtxHReBbIepc6YjEN3t/siJY/
BFt2VRiZMzVinrr2b6/rQQTMx7/qVMxCHj2DWeg6/3sHUqte8O/Qa/ln8qM2oCcn2o5U1nVukedW
6jUQfMycYE8abedam82U4mjJpY8eZF6ky4dzHq2aFUTQzUw0TnnTUhoDT1NayAq60DG5P29CT/IK
rR6n5RPDNbAzHXT8cjuPsDWGFr3jAoN/eWlZrg2fNaYGqfvhUjQg2fK/jEAGG8Vsuz/9cRT4VMmA
vVCZRuLzfonu8U9XK0OlucfixaHLqr/Y16E1jA4yFllLf2TqIIQiR0adds2nwASpTDnKKnHpYsGz
PtOvXjfZ5Cl/vCrV/QVb/wu01L3ITeEiIPscDr/L4ZDcK+hNsLi3NVAwywEStSkhYZAVUdnM7tP6
YADqd0YzMRAl2ilBSU/Pnni+RYqNv9G6w6meLf4QgfOVHnzKD+OVbsPVryHtwutdIIDLqvSzKDL5
ioUtZxfQZo/gsGONHqkI6SUoaccUtn7OLy5YYYM2XUFz1L6GyPo+ipOKgKKmdu/YteRWjqIhvzOa
ZzPix4v+xuUvGgTWFGpPOkx4nD08WB/yMAJy7Eqxf06ha6bHta9dKlDkO2TGlByIExbUpWIdSlH3
AcBAkzEcnlf+ZSTHTsh4b5PZjwDl4XE0DncXQr0mrGGl1y7pymG7VBqgpM+cVrHl/+VDxpe4x5Yb
njBjMOwJ993ch3N1b2zvOYC1wR7Xkzgi7d4hY81dcKTTXONQzoR4kL0MY2iIcyD0JmIZh0Px1ns/
DRZwDY84NhOUBf/YjKtXaNJjGeNUOc9d8Pl8+/sfzsRuNqWCsKkh0UCESiXRWd9Zk6wvCpEi5cKE
oN4/hoMJ/BQ+bFlrlxSPRUdgryCdJtS/68WSUVxkLjTxTA7AqoaupnKpyjL3I2jiT1HD+uHlVJNf
QUmLsqW5o5NtK4pSi5/Gm3rBmJn8dDcbz3Py7qXFeuc3g9LDCXsb8+YhTWq9BbWagnS8U67jnoi1
/71QHYK8RpZBfNFVmpn4WHYUMk92V8ghxesyCc25VWeOvN3RuXOpTzP4YBMk5NyDRZKy3wSMMPEb
MPFxPr0UrG5r4lCdwMKj/XhhLn+XWk/uDjYU2JNa7ibKVyYDj2zriwnBf5ZNE86mhiOMjAVPqnfV
Z5TLabZeR/Zx/4ygAxxq3SP3EdaMv2Bw6IyCllthBI4QfE99iL7iSP/zA7kEIITkgm2L7UejSknE
NvBTSVacsoOoJNxD5vBA1R0rcPVT51/PnEnDYbjCvMxDu+fh8SiXTwAfpLothVwEldy49BZ+vKhS
+elU2AaJ/D12fCygu84WDLw1GunIM8kLbW9b47UUxDGbb0069qTiWwHM+MUF0AAWLkQCHY813T9q
Le1Sms2aKa0/yrnAr0tHce+rQa2waIubRW3NEVM6aPFrpw1L97rHXFzZc04Ziwi0lccEj9NA4GFA
EMXeO5ijRexTRSPbt7lPERitd7sP9ZGJBq7nks4AYYumb7Fm+fZdKSH3rWK9aPtja++u3z32gX5T
bnctcjxga24hITeE7c3mXJd9B1AVf2huv7k1IXtZDTu0sN/4d8pTUaXl5WB/sRZQDdZ3hTkawsnf
M3V/GuvZR/T0X9EEfEB0OJ0zdV1XQ0ygZS4XqOZXY4CxttUdVf1I5r2vfjU0+AJo+LEo/k47JODu
FHFUlalzKITdgbwo5TwjjzeO6QyIzpv99jEJHF4TfffaacsKBByni/K50QHK4NgANnWvlIRG7sUr
5OJwSJiEtRyUTMkhw8MIxi1N+wdmjfWgibLrY878BRAQrtpLs0lRFSu1ReBzN/5ORQR2UyF/xyvv
r2WMXZRhxMd48FZ32X0TpCI1Ah9cBAH67q4iB4CzeJ8k8XHDllb+fsdf9SRJpwtRTlLft7n4JxEF
IQ3I7IjXqilbLq1g5D3WfT9vSNghPdQ44uJ+bq0p42jOQaJ0SgyEiwGRqb/64LFQgV+7En0fA1sP
Z/Jmr4fJ9LsQiruIbrggyUGBcHE9XJHXOunQxGEAibEFy31adTftfRFExhvd7BiNGHy6+fua4uN+
ciMO7/c7NODh42WGGbS1ZBoAo175IbpNVhLlzfJh+7rawgJeZSB173Ja1Dd8tKY0ma7CVEXYj0e5
w9QmakyXG4Fh8cx17jBYbegNWdMDy/d9obhuV0xCphkGr25/hZ1QOmomQST48hckrrUgDp/nrs2W
IJqXy0AhgXa7YN7XA16qKwVjgDXeFzYtDlE0COJfaC0YQPJ0bdlWnpYX9FHpgFkeKzvliTFcBZbB
pq9zM1uSQsPlu57jHLQCi9COToAsTl5O+XhGzCqfErvJUV6DFaKIcWHa6KtQbkHRk01kQhVN4mmu
y8qB/48AmUq8LlaGWqjU/Z8I03c2W+jNWsiALTERdNp3npA8ZfW6XPct/lzeqHvnO8Q6OWrEtD7I
RencV3OMnF7kofPRsIwkSCr3PRJyK1uirCywVWiCZhMpHJRdqtupAyQFYPdZ2gHvonkrJElzqEWS
Y+sKTe68DDRn+kBkJPdG+VGi0hffPC/IwVAconcwO1apwQdKW9YFNpg8w0nIs/0y4CJ2sknZYxi9
k/sjxqJbk7S4I2fkp4LUTu5udNZ8SpSfm20+fGDEMRhgOkaiVFYkLcLYqrcWqm1RHkCwmAA5nTHf
QI1Txh/pVJI6YZkPbC4GMNGcJ+/MzkW4OngvO/WqrIr8hgiMm2FzBpbeMcUK99m+YwwOk7s4bQsA
GFkNgVv9WLfF2LbPJBu7aSfdFliBKQWnGQQKkkr6xCCwYmW7JSCbgtTKfCQSB66FAZ4+Ifs4ksoZ
cpFtOmGIw2I3aECImN+m9YQLAU/CKXBWf/Tpb6oLlUdXO1vsImHFFh4cbThgzpL0NZ9ljoudoj9t
A/AHbjqhUYcdZrD/TbBMmIj58zwILKVYw/mePnlbi6i7z8dtw+nMEvNmDruZnQXKKtIoO2ynPFGc
0iq1K6HcldG3qy4GkAHMTklGmw/rjgpyr2DDVB7XjcfJLqoDZyUajW+8tkkEZo4YxgQ28j6bXLV7
meYNlXW2rpEcSQT3ZRd0zda3LRfzQZ/HY4xh/w6qjZONkehVe/D/1uvyzC6XXX3PtSwTMoyso+LO
vyrirCW8gWpSwfx82uLcGiae7QpuaXTqadaF3b6cMikLk1T5pqSEi4SuRUeLyVKR8x1+G76CnjZp
ds4B+XD3oH54342R6+6PdreOK8em2rRkbTwBS/6/4/BA6pYEXGauMK/yCHKhhEb8x7+Al1XiQDuW
nrVlRLU0jw/uIPXWkAwDVhDh2PPBSg/ZKhC37rZ9JxpD4lCCvCSFSuHbO2yD9Wbaao92BKhn2h5Z
RKdovdePLLubzUMPNvdIUEjDjZFEjy22AyPyVGHPqXtOzRUVI2PwrVUwDmi7PBEoI14IVwxTyWY9
zUPVC5v3OQ/dgIJ7NzOXh/EZ3I1Z7UWR/iOW5zlIPxHugTNh3j7mC2xa7rGjlasEFDxCEAIWyAHo
WjHqG0YbASEXd57AxbpKZyCLVuauyBb+FixNQtquS+9BESm2wFxL0cOQDkN+B+VMY+TKNXTIU7t3
uj2EQ3GMYA5wXvrFdwchQSc43yKnTGYjxHZDKdrHVkQsENG0IhQQRS0nEoSyNLUIhYyFVpTuXhKo
WYZZ7I3CreMnM22U34B/ojhd93D+KeUg469gOLY3TSCPdSvKqUj2kjmwiOWf8AkJRzzP77gdHZYi
uqTetAPJZgNRI78SrInNYHGR4lycMqgyZ4XGWEr1ym9wjbAA2g9hCcDEC0EpPUwxf6yKYBPMDejz
Kin4bQYsjMhW51jJ2ep321OY68rvnnOo+GrqQsGkoGCzhkABuakJNMpJc8HT59rQjpUXIs3icxR/
+nMQVJ/UbNe+CpFpPykwsM1Ow1g6BUoN+zMb8RdATpBTiDEqvLNvBav4hlLCE2TuDnEKEU3Yaf0d
aM6ZrMDrp6YfOqtPNPIwa/q8+BNY+Eh8v2HusyfPR0WEmLbtGtzVAGnOb/M2X1JItIJH0bsSD5yx
0LtH4GR5TdPsoQzSbxJNfPuu2nZ9Qj8sVry9FGYpBbbU1Q6THmHG9dpcBDKA7D6jJkFlAeEGc8ve
vuPKm3Zf6dqsagJ8swS4PElLJzQTsihpHGwoNdJAJDbyey1pvmSDYMMG0D+FQAkv8vMI+DQfCF4B
5BVPyxRoBEtK3cPMLJlSwy7IcWcbeE901XGp6l0ghZHe3NH1ewDM49SVJl2jbU8EhcU6/RkQDAci
CrgsNRPf+CQe8ENsbPGE1Apv/xx+ZSmRj7Dt9yRCNiQj5FYYcUC4JXdNpKMmhlU1iXUHgI2Khy05
cZheTWuCytoNEb2ic/kpXfbItCd3L2z5sEqBW//lbI0NTW7qJJitzUlszS1d1Zr3sAxHc8vE824W
AOnebxVmIcVPU0LIW9N++IDIqt6vI9az6064sUe3g98ujC8vBaldmrwEqNEIPyPA0qNawG3SUjND
YPTqyEm3/RptjRCfvnw1X05dXV7rUm3x8CMzISik5CCh5c98EKJA/wR8KbfXQDFEM6SzgXo0MBsg
u9Diw+m0GV4K/F/jdHfnMILnoH+ODpCnCkHFiM92568enms3aNScg0YY+L9kxWQKJg6c1gaSnlk9
0QUEEYw0sPU2y1xSsCYEQMCBTZj/Y+d0OIkxQR2ro7L5A5TQ2I/wVsB+X0Sc/X6F/4W8QQuhpMxi
V1jbXeXSkNwYc1EWmGU0284k+RGJBv6cQrN6NNS9Hu1qEDTp8d5QXZaQnPpBNQckbbj3afy0XC8i
1aVyM2//nWYp7V1+gNFQaYEEmatLGVd9Nt7ABeOCD6x969OwKrA44WLCd6Jylt4eEc73VyzmTB5j
r75HaeYZYdrCO3x/35SCXoE5NNvrkAy+zHIF8R54ALLYiE/4DZ31mNIjMvCosMlMHQWTIjYf/1JY
AbEsdu2czkisEbHHiOQvlFf0/vAfQmZ4n2xQef0D2vklHKrAWX7nv9T75or4QIc3PTrkAnosaduo
YrZ7VaEpjzJ1VkVwccnphpD/q8nZuw2X9UWQgkM8+5VZmczNj83yHRF6LHo7JuKE32snIYQAQnQm
yFA86cxSwXqEVnXlGogEzQ8x2C3x6tdu6+c1DIqIgSZeaak/16AuDMkJ/zZKKqjyCCITW0A8M9k9
lv6iQH+V2e53LQ9xKxJaCilyL82lZjPwYF+bFluAVuRZVE8tMtDMJasFeT96t/ZSVkoWFmTNthy0
/JskhGviwZ8fF0tOcpelVTMeU/uKNE/qOrTt0mfzFUxREwKS0uxQOdGUVMiaQP3Kb0ZV512EU9dW
2DXtNC+6K3OqtwKnfwcBlTBn1PjRyATZm2quzPuh9+dYahP6d6+D6bdWsu6kd6XW/y1rkmnGX/EI
FjMSw/1EIc2nFjubxLArEhMn43lAs+uMklsKs7Monr7o7E7EEGxreVd6bYIYspMSQwfRTNgWN++z
o3uW12Am0aCdSVEehh9wrATSR8adrIk9p06roFQmdI6tH4f9ZiSpw+kAVuZdMoFYUBaEXScV2Gh2
Je/rfPrW1XE6UBPKRbbavuvlgmiibuMydzv+NGrsxPIGUkr6sGLdt+vbQTcZsqzCjAzFuEjm23uA
VFpus49FKRc53U+g1z9JfKH/LlulaVLJVWxtkAeQcB9+w7kzcRkJW6oEe2YHc/rayrhef+y39nhK
/8hM3slLw9dCLbVszP62HcDtuWjzgHpW4UDxcOffs9bp9DJek5aCTWF1oUilZ7lwn1lYyBqJKH1B
dFt98OREH45wobFuP0I1zqmUWbfqMn7NiNCiwxNF2cuGxq/WDdOqZHE53RGB6lbUXBeNJ2OuwFRz
+J7mRrK/jMUnZrDjMqS1J60nvSNVBIrrlCr+3xqyWFSRZqM2SJcx6TvX3tIEKpDqWCa9SsR+XdeO
0HOZqUTT3o6NLvfI4PyIb7EbLTdZtPk2pDiWEdpbkiMWa1f0oy2HakLUmGGAlP55JrBHsiHP1S4h
ejt4QOUC7W91mhphafZTicwSdoMY6+fJ0LV6DQkkmnAI1XcOuGf86ntfG4nx/KHlrZoUcX1dvThk
TWlXIJcKIvgJ2PtbjWtlHU8HoPOoka/cqeiow4lEVtWXUy9KCTOLbAi4IxKcfNJzMQ6W4q0fNTLL
jdAcg6PhcBJp6Ugfaulip5S3fKtMIVca/e8QcmBLUjrlWb6vy4xyJiW5dX2SJpNvS+t8JpFliZ/L
qrLF/wg97iCbsM78NDmNHbhpaePw/+wt8HHE4yRmZZTm87sYExIX5oJF5nziLetKIOwXh6JrHhqp
qqmajyhPZx0xz0qax6bzGZOc0O6pWTKqoWz3wrhBfVobuEA/z9URdLZPyNY11XtSdskHHfBTud5v
kllmd1kfFoQK2BVCMIiMB7vKB275zwgbyopRP8kKrIRoajZxRUsSAGBhPEdu/oJGBEOwjeyYnUHg
uKgdIQYyES/62OLqtUHrJ1C8AW9w8GtxLa6rvQvX317zHD5Nu9ONVFe4zklexs/5Wvi7l2cbjVWa
NgCKLvKJgvIGip4IZ+wWDBtlbGYsUopT63Qw2XKfxH6kdq7sbGx0vVrEt9q+6X1TFHrWozZw5RQX
p1oSLRSsB6hqM+FCXoI/tza8OFlBh2HyY1pWGq8T2yelafpO1ke0/0MIyDMM8kVwe/4kmikBbYr+
XW6wMJ3mV377YDliQ91uH5S0O7e8dFKRGXOQWNf+8kdxE606rF46JSHrhzg632ObYGVU5W1JiU27
aRBKB6mKWemZJKhiBSbYE4j8DVVEBPGNMdKEQZCw68izCua3MVvYW1z0ccHJ/1w4Dm5IQYypR7xO
Xo74lLpSr6YOBWYFvp9JGLAY17j9VWHBAw9GYL1RDsjhOMcLPg9NWv84lNrY8PxCsZDnA/bNDMYg
RtQud54oxx4E/hFh/168WZH90fgXQuILQZFmLZcyZwIY23NawpzzrzRGT50Fr/A4sc0iAKDMivbm
7cR761lKpa5wZxD3MUeLmsXJLKIac3wYIdtrX1SNO1QJJuHiAqhxKzLJQ+6I7W921j8T8AuaQsbT
HbXtT0Jl+S2zQ54rfzK52DbOx8UnwO13ifGpGqj9ngMC07ZYbBPoBIboxli/WqhrzepeN/X6Dcta
DxRhkn27wz99K1ERmyGOXcyA447TnhsKoa5JoXhdcEgdmMtxYHeS4zhvgfkg4GNaQVkNi3bB0ti+
QmbEXCA/EEwR8kvpoTnbI5G0kWMSrOTH5Qc1CzXF14yS8/SO+5jz9jO0VccPqNbfcNcO1Opco+mR
uXZOELXhD4sHzHjt16eILmA8GP4hZIA6LWAj19xfQtqnxVW+2EbHa0ggBUnxvY1cX/nxiOEvit9a
uBuiaSIrxAtimBuny4y9nBuP6sbjv/+cSx1fPV2KEFpFl+AnTnwdeY6Ks65UgQi5WyB2Z8gTNCWw
psdzX2xSa6Mg+XyydAkdCySD7ToXNKh9omq8yrkMyoZmVSL748Ic3twATIQR1Dqe9QyedCqC++Sj
R/EfBC/maPLtuEGPA5fAuqDkDxiDJfnuFIdcehj1D96w9aTzaY9PpKaonPi4qLfM/R4bWVjw5g+x
TdVhJkEBGi0ZZ7YxB1+3bckw/sEHV/TZOHll8NUXrlXZsTn6zzHPDFBnKiF3lSkNMjiwG3YKpOaM
dCIgphuRWagZmqTTZeYwWQAOnEI0HTK1Gg/7djVE5A/Y5P8KkWbSsAm1WUXwwBjdjGpLT+oHGrF/
h9izCz7s8KVH/0H6ZjcfPKtJawi7Yv7Sk1wxw57s9pRfiZ4wyjLZ7tGvMhDlH5oSBxpMiYN52cp1
C9EA6g/WNNHwS4/A+j75N9uUEhbO7j2Whapk5pyMk2wddsMbZ08TgJY6QHPzKfUgYyhyLl/tGp7s
XPfeMhuvnjfAD3YQw7Rx85L0dgG2KPMaDtz5bcTy7J7SJjJtbgalj1ywSoH6yXdO1omr1kuW8CNY
R/OP3bMPeArxZQaOuxtb9t5TIAfQq2BNGGFVP+EdO0co0+KtlE9/7MS/lG1xEpvBajmdScwZmCXQ
3UvLCjzF/l9BVyGkcOOMKgSve2HV5t6Ob6jDevIBPRxX7YxIKb3HQ8fWr7hHLW+5rg1kAB9DwBrj
ATEbGfRnv8C6DoarSvtk/1nyE2BAznWeemPDhS7CPskyX//QH7AvWVxcs1pCwCmiAnBrLzg4/AQZ
mNua86KDZRrOT5xIkYnLmWAP2YwyjmZCLS6s3RNpS0zuThz/vJG+ueYYlv0uRqjZweUCEE6UhJTr
VkDMPKfFsSsnBDHt07Kwirvd5e/jnRMDRwVavhMaFmLK/V8W0AjLP+vUFIP+iwBcu3Wb67W0ZU1Q
MjLc+tKhpkPyBgvsBhclflA1PxHjZZtHwc82wr/sxfVM22CbxaTTe5z4qiig/qiLuF0Gu1hVAtDg
tCDpGGXNggx1NK08LlWwOtAp5i5zENmJmVNLtMbjLOT0+g0CndtD2Hmx3aMjQXfUMgmMlOzS+qgn
8Ea8ClqDbiMAd1fgzCJN9zhU5N3DYwBDBzQm87/HeYyXzc7Zpdd18n2Hz60qR7xmbhnYB0GXdXOB
I6/fSg0vIQhHv56vSMGjykjriWOKXRFjHRU7o8I60gbPr1ON5KYWq+7xuGmOvxP0uZv2YXpFM4pr
dfeUzgCHL85OdWspfGUzfci/YnFpS7nTSJrzOEDgH3crM0gU1sv8vMNhYJsnD6ehst9j+YwU/0A0
k1zY9qpWCwUnHf5hS538fdv8SS1Oo7g4WRL9Yw3ipvzBuIzdEcsyd8ybNoUurEgczbMKdPODgJLi
eaAPMZWbg+yzTkfUx0hda7jtCxRd+4K8tsIY3l5cSosvEZnyegfmqRqII9IFTiBDoO93uVuA9vj5
1WQK+r98JVXg5kZCnZ7TVR5OcqKDYB+CE7F0FE95ZNLHFyrgB+Io1+PtjgDkMfyUTlDE/YoeNsnW
zC0xtIF0WpVUmRCGdxT+IJAh9oKBEhe0G3JwGQ67kzgOT/pC00Uqir8rBlDJWpNyM/r0k89MHG7F
1Lp9jlQV38MrQ9i8Pw5aWghbsz5OjWKqZlrxzWjqd0ixde1fiWjCRmrSXyAE1xn1ZBh2HfHunmY0
q2/3tGxorfrDYPrkw93MiNTIyoEmBlBy7QSdY96dX6q1S+XRAxR8uK1TdCU2J5FvrcUWONrVlRUJ
7EiBEltyOosURtAEq8JIiDAgIcHaOXGUX3h41bZvgLz7PQedVXTYFLEKRvsqDKX1o9q7lQGtER1t
LVhTamdILhmV8Ow7RcYFrFaFE7NHBpRJFyvrwuAIWL3UaRGb9zOtMH3zMIB1QhybDn/LZbKphRIf
qyBxYejo5g5zD/ptX22m0jvszuK2UsTjDFBOGbGdjDqbJfbnArAj6Oe9mnFUf3PSfyvJbUJRYpKT
TBUgJQE3uZtIl8yi59o2RGI2+TuCTLw7T4vtcVZDlWWE19wrWgIEVzufoOhsiBSY5BD9IwYLpMsN
qWFvh1stMlQZMpap4XSm78D6oH5C2ZEEg5t9Tm+Ii8Qyj8DQ7RNJ9xhXoFe9yzjKbhf2B87kSKSN
z7K/eVZDSnfnRbPWvGSGhu/niYq0E9gydmr/RFp5EhpibPsfMB1iB7tCSXmRVqpkXNXWZdsdFUGY
RGjPVNWpNSngcRlnEhbI7SMB9RQEfhPm/Zzs9SS4VHC7RgdAK8wTZUMQ/vkg3SibeRT8u7e0HSf3
bQC0xKO0gN7Ay/O8B1iTIcDwWgRQ8GOVt3maN1w5jqubMGTy3H4lc/y5qfZ9Pf3zU2NDLCAnE7JH
g68HZ3hqMFaTNaRbZS4wnT2RTr90fpn/kTyBT7Z/Fklm4aWjkOtXEbG3sEnmHvTFhsf3V/w+f6EU
1xZOeFGLTAfFlkDM8ANdOEEVaMsErC3HIGHNoj+L+5buJap5pV1UHe7ffyzjyvn0iCWFdjerkS+0
leTTMqu1nZfYh5fJCXaGfcJm8JFWaAGgh704Pp1dfM/NoGY0xucEaO4eFJFkfNtkbgu39077hL7X
TS5mjPnnzH/3WlE7gkfGBwSraB99I7rFWuSdrwUP3ljFnlc1VfezzpnSDP4NeUcFveeqiPYH7YM3
maCNFPdCcHEwVRmkA7wNZ1ZeGEyf41rtPJMNCn4fTIee8B3ebWIF69feqqgaeUWLjGMUhPsk2rOA
c2CIkIdhFdIB+8heXATLmwox4rqinm8chm6v2QtSOTLokg0g+4yF19qJAGvycnNvgfCgtoFd/9oJ
ePnn5DqwIzv2XPxDx2QKaRVrb9+OQD0r0cSViQEZyavTVcKcWNIGDfzfRp89K5WhM8526KNPS2K1
a5XH4ahPJlFZvfrG4cGzyYmxk6RnGacioQCHUkKovFH5ZXFTSVbHpLSRl+RULeO9PY8FEmvKxlVI
0md36su0/FdtnobTvLf/HIqjQGGkvpnFjNJvJQrBTsmuxrIDHn4i7BZazXC5foENHL6ZLd8k25qG
JfPmujZH07yRoWa8MKcvECKPq9mMH4kBFRyVgztUB7uimfBJlqlpIRu+Yhi4rS9WeRiAauBcxI9h
X+0dO7xArsDAajsOkjFJNVO8m8+o7M5+8owVTvdrrFWNg0dvWZFDWqcVUXqnRULy1KMJTxKYcOk6
TgtXv9Ybtmm1MoYqUuCIF2EkDpMcgWOEnIw1HTbk9FvRPsrMRymP6F6qPGqwVak4IiEgajlgraQQ
fMfpDyEDAlP+pjbHnfRViQMz8N9vrtz7QqICpAL4w/sCL/hUvOa1jk9PE+Yb7tchVoayf67rwyp7
Gfb2jV9GJbP+gQcLvNWz8Uz1ugJKyqRJGECaClHczTK3A0+0/tiPhAqWEYlxA70Zt/LL1kpH/beb
KKltZVXBDEyGYC2OAF/NBoqyIHtalO6How45qzR8G6CXHx28cGWUPi2qZvZK9ugo2vGhus78IaW0
O4kp+dpZM/pwIJI4+0OmdsV0KGwnZXih4YB6s4quxiYWeVgUMLyvF5os01c6ft7m5TDlIrTzjddd
s/pcWf03E9w6SvY5vW4H9wL4G9CdkGwpoQe9wmn2Lt9MvNMVJNiafFIn87Y7nuHRakl24xko/9ia
5Sv4uk8rA0R7G8ieqigmUbyKJB4pRMYhZGOvmW4M8w6h9qXF3gHC7rmkMOkIPO0PJVjEenwqqt/Z
Q6LmjrDmiviukeJZqmjsom9mIODlMdvqGUO/fU2le/QMMjL1NgSs7/woJ+0DDncRyd9o0KrlD6Rd
c2TYNyfX2b7Pu7sZO4y6FE6ZjBav1/JviSTE256rkbWuusl0NRWAOj8PLpoGsjCfCrfUkcaqpFNU
Wp+y6ZKSKGa5spT/GhkAcm7NNvvRs7A6EhHNyg3mgxFhsXJWuqxJIc8VLTx85qHfrBVxF8w8l/CX
0YETK/l70Vccbfkwrsg+PNaFvkbZG5mVmBBQmaTCF4qr0z9ZPnDMUGSHOTabPD3yPg1/9JFHis8H
WnPUrRfPXPy0Dfu4GW5fGx2JkFTefeIvIa1s1E9L4if1plJ96qcAJMei8GtPTq/arnHEV5ahpn+a
3dGPukmclAiPZnSloWvwgH2op7PoKY4/y/7tQXYfz/XOcZjeF54hK80juh0RdJUud5mGT7jPV9FT
akKePJMcacLq1uRqRnhevxYQTc1kaBr20YSV9CmlsgKClApeuGcKIngOQ2ikXWqkpzoi+ZmzGNuR
pN8I9gibSYrrC5puwQlPUZK54wpvyqPMC2PnXHE14xM636TWyBZbx993CxrSZrOsriL1L8uK5MSt
volk+QvagBv5gMQVxh2vTOwkOSHtKgcdRTi/A1piq3raCxCEG8DthmnR8/gj5vt/v7cgRjIIxgHW
/WxwXqH4Ugj1FqSsil8cBwHRC629M41DzvpYN0LEjVFJe+4IC22zrvzkHvGDfEHlBB19P8nPmqq/
Gr1cNlWcKT8o4nKURgYO/SdGOwYiPh13mb++r51yibB2qPpjgbe08Zzre6u1KHihAeZPWIwNIzFh
/GxsfCM2F1ahwzjLe4jV+ZoNqmXc3wwSlbFFUpJ7pxCukkNmwQqd95Z7ZPlRdI/QCEEh9OqqAQXA
Wo73hagtslrdzIYluLzkEX20NyesodFqvkHYxzbaOs+eQQCOiEQpk7yYyARFpnwNY+CEqRsXsQjC
+36gZnNdwmGEUUnC9Ry/0Ycmn2uPq58LMaRTDOvwqrRWD5HHJ/nQm9E4z8vpfJJ7bARmUmp3lrRy
MHiOMcby1iiIakU/DbST/RIf8IFeNV57a6a4HeWxkRM43MAH8VmHDAFj7QVGCTwbseGuMqKirzKK
9exEw3R3L5dkxtGuXOMYArRra8SU51Mi/QkatTgp7QPjW8XEkpKNHcviCvAKJL1Dhcb/ZYXYSI7T
k4AfxVsEBrwJkRrPd9WMwRBiK+2yFjc3e8tTNGfgOC4Oe/r1U3NsOq9lab7nw8+CDdYTMdrqMbWE
ta/pgjqoccXvs3cGd+Kgzp9cCVkSFH+tF8luegRhLZ3IAociCS8rHEAAab0Hvp0oE4NauxHrx2xw
PXHfFmGNNcLKyWT3yCOAs7VaySsNgMAOlFZoeNybZFkq+PzILWF5C718kun7W9GnElAIAsJzuC5V
bGpZZ0O6cHRtS6ITuHJlnCYd6k/rBIiVKdJygX+mS4IU5+ZTCDpaa0t28HeCmZLeBhigKqQVprwv
++5y2enZFstp49/b1LlHgh3PqpUas4UJQpB1SCkg1c2L5S2g/K0dR6McUwaV632/DyRXP0l9fnZS
W+krvtOlJlGQi8eR3I68udxLzPA15e+VyyL/KyraibJqloDh2OO/WzCDbmVtbkLx7ZFhTmKCeCF1
aNV8NpdeAolk+FC0NZwXo8T99Py4+xVx2mtEllbfpsruikkWeOvcDSB1VayIrNCOZzHueXddVWPH
bQ8GupZ9CQiNOjvHerrGheEDksEXoer6MevfcMLvghOTmDn6uA5k2dsN6MKidcgSozxtiOkq51el
KZir4tgLHzf4Qmw5Qs2Fp6kPxKLAsbzfu2mi/ui3QlFHhc2L2ihQ6w+nLJlpqhp4V8W1uhETzFIL
IzGb1aeCzRW5LNyHYSUaJGUuU6duX5g7Wryfw8S/kXCjs/4n8pqlwYdvmy0DJMZDfmmbOi5d7xpM
qdehNG6bJRmU3fYfIUspHb/2ii9yAOA2ZZri8Auo6XhcEohLTo9DSObLKyHIthaKAdMW2JR06QGq
4XVeTODZpdEZYxsgH+lyOiinI2IbYhA21tQQrOrTPY4pOhtxnGmtx7MpaUTNEsUfk+g0ZQo1fHMm
tgmcuR1bVzL8oSFNyMK6mXOChYukwKm1m5LG1+cTyCZMVqyQXP6fY0eIXyERqMZ9a06nYP+8ZTIr
va1bvfHThA00hZ1mG3L5i9E99e4qvcYa2ms6DRBXSn4iqsAE5li66BB2GOqWr1WbtRgVVP1Wnmvg
/ynWkO22ublrjO634xgNYWgMoFmdatkjwfcslbJtvBR9iGpl58UXhP4UxEAxixKLaIoNmN2LCeGT
ZAK6vbmKtLo5cmRvzZ/yPnFbK0jPh6VxNZ62YAZ21PFw/1KO/nw+qcNoiQrB7wQSHATegluS/j71
Zvx5k2pGDXwOV+N4XY9qGauNxtbpZt8DEJx1TQkL6Gu1ZE202hxkppSHImZT2U3O+4hJeuqg3g/N
uUQA+oxI4Klbpaopjns3GBxzZ+PWSAiIwA3Ge43ftejkXlhJC9pEe/bzpstEAFXQ9yNuGhDlkEZV
JhyqVw74TJXl3FbZC8YzlySSSleyCWRIvb1/i/MIqtpfMCN5qX6T4ultX9uJ4Hz0VETNyVtsd1TB
qfpQi0DTw+bSMWDxfmWYLmWllraMkdTW5sZHGnM3mpkcMl+mo0LatzBklBFzw3vZYBIiDwbaOJLK
Ve9Te0BGEgH0bF44G0kKLe2WckIwU7hsyW8wQXcybBpLAgm/VJ5DdVWCg8jak8gyRitUkUeDMAoM
5ALCNxlWT+t4t/ds5frKL71Enazkfpb2w9XroSCXbOPrdDSvjajCQefTh0H/tCZHopL8y1N/b9qE
2Hpv8zEaIL52kD7+qMYowRlaisgYVRs5QvjssQjGPOzHzN15vcAHpx4xAdn0be2c9NcSbysqVOqf
lljEy8ieKYE62HZQdi3VSfnTD0vsWoh2dsqEgm8ghYq/RrKbWCB+fU/mJA9pqVHMmKDfQzCIgg8B
drCJaRZSGSfwdEL4eoMjf80bMEUjNV4GnajoFFXEfi50jU18yM/aYs7Onz53Q8Pw6t4xfP+0K2St
ATWgWA21aw8zUU+FCurKNDH6m1fwuHba2VeHHVJ5GupQul3JiXPd9sGLiStUR4R+MPPCDGaf3zpH
N4xVEndCbAh+oY3sIDVbJyLSe0/Rg7jS8ZvakgMvabMnadi2jNxEgztv7JW0RB/N8aWzogXNi+eg
AuStU7qGTE3YTm32b8UaZQJ6XUajTmugYPZZgQw9Tr0mQtiyH0jR0TUbg9yaHhZ1Br7pjYfd9XJS
vMmIPpeFysvS5GfCTUIGna996Pzodj+OpXikclhq0p/tzoY6/CYOh2kdGb7KSEbh4NMmNXn0nsV/
WLRoPIJ0yVz1os637A2gk1BagWAo4qS8q2EPGMHuX+xKdgITmbZ8ya17jgkSVTuoGfqHhl/moYZy
OzM77AFyXZnxhk+cIE0e2NyxOksLy4VNUidXhebSFxD/eNq8sPX8iochzrv4z+SXQ6ksH0GC/d9z
oBz8E5JnWxNEUMycQlQepb396f+1i+Znj3vsS62WiV0RdgIau3tdju0Kzs+v4KeAc4Y2que5Zgij
MbH3H9V5135HGe/gpjoCSJEVYNFS7WCr/mAdio4QJkPgELf0o1UkLRkdMDAkNNryDYDHAKIc4m0a
Wf2uAl+0TfLEgN21IoNYMVXs4Ex2+e4EFa3Y49DH8qSFJ8kqXn8Y7HDvF/1BtJ1pMjrKpRkpt86q
IfjmOV5vFUsF0RywQGajp1dzb1sGNpCu27zcRilnndIGbOkOLJLiy5ap6DgQT5PYO5i/k0IqA5PM
E4WsYgIu0mwdsC1tCfm/hUj2dRbj5qnguXxO9w91Uz1lEXW2iVbEIiFPGc7JKOrgmhYMkkxuNUe9
S9+VWDG+AxzLVxGgtIAQvBPyZqfk4wu1tHgq9sUzjdufW00uKGv8yEGxTFLsGVe23O6c/1ousAbT
sXBkQI9/M3AEp30ojuYAVSIx8UZR5xd8a8VsQXlcPszQBTj7rLixFNGhRtQQwtEjUo01s/3xzng8
gRTZoO3onpyXcpmfV+Xj3I1tO4DecWLG2giWsSpaEMSoz7apOb5JyR1fOPqcrc5P93z8IyMF8I9v
drUzENTpfcfgg9xgcJQzqTWak81PrtGbUosCbqojRWNzFITzNuqOoQrj7CMZW0Fv9lAPgR15NSbL
glESoORceLmyspfgYLnZfqloZjclcy39PwnZIAxiwLXp+VBE7jyfF9RuLc9dRwOLZ9wnSjtIB3Ul
7BuoGX9bvdMAD9PHNOauAkaRg0fVfv9NwR+GLl5QYPjKvuTzHsIEIzWXya1Dl5W9eOhunldmWctR
k09zRYjUxIjDzikTtX/5Xl5Vh18R/bc/F/JtpabNXGbL5SQt+Ov2GYJsvTxIGVewIW5cyZRtjFp7
g4I4xPZypQmYU8+EXbMJcSUQOosZgxwr2vUvpAQPVmCJIAVKA8qKJPslSuiuPtMpBfn+LH7PNkzx
t6HHl1FeW+mQmRC7nipzHR+UNFfT5iQrQuPJvZsbdiRuqPlirQ+vavp2xgs54aVmeaQUwF0nI215
Zf1PGmt4YYm6paAjR1PZt85wjhLRRWd2GsOgaDTtF2wW4mSSbaBC5sZALGh1NJa6cHgWtY3jXkCA
HlgBx+4T3/DzFN3UUFt0ABzZTjAEndU0FGrXFxN1jbZ82PlPJQ7UMJ8jO8RQoafCld4xpN9BC1E1
YFIteCYlpx9oGU1lKg8BkB8hKO13joVcX4/U18a+f0H7zXy73Q9MdL7Mws0RIHWpr5H0A4kbD7yD
tKOshpoa1E8POhKtfdWvuXPeEBhnolMyKedAI6xHJxNl2DhO3MpwdpNQKaRVJJ6WVyXsdiPoIhGZ
9Vbh4Fv78iYfAoI++lprc6b49Dt1zPnsK+MvWiesMVwp4dTZg4XhNXNtUhVkpsOIy8U2DCdYIG/i
Z/jmA2nJ3X6aTf3QlVP5RP/ITDLSYTSjKucu5SCcoepiCILGwSFHe64n5b/6b8Et5ZGGxtuiqtXX
+D1bGaIVIru4pTWts+H3yiL7wThCe+8GzniX2PZh1a5IHfC+vF91n3g/QyUmH68FiqQkGbEReOte
MpEpknK8tc0R9chOspjG521iOZx+yvepbZROLOjETbBBtEKHRRYNsKKIQ+PziGpppI6Qf57EGLqL
tpfhnztonFnFJI0UA1l2woFFI5AgevNMSfCoT3CLUvQXqvXsJK54ImRYQEQh9kFWIZlclZGIJUZa
HwXq90UBldecza0/0G/5mPHkjXKRArA9+94qNtHedcUbcc6GxFtSGdk4XJcbmHzepTwjupKePz/3
PB16zQtvFhIsteOw4JY0N70MLljva4JQ9j4g233Bw0PxBq53T8AjsfePY26E4JCXcKJ9f9HjAX5z
OecaWqXFS343xlWsBlR+NaEOdqBRKh5kAqjI0FqAa4xTaiLwoBVTWJuQ6fZmCrw7rLOy5fNlvUlK
u2ibAT0He0f1IXAvfzlKq+ri8uE5ohnMxt6UZkv7GCZtsmQoGCtBJR8WGvhSq2CoEu+IYIqH1PX8
p9TK9yliDUcdfSDUx8bvaRdMkxQVAbtMcP1elXvRAwypJr2wgJEwhUsx1njS5Frl/7SSLVf4qRGY
+4H56epPBevEf5z2Sh2mOE6uYWniC49AS3gxnHoRrmF9d4s/8RsefQ9vZqRpLvOlVL2quYwIxPiI
qw6FVENYZIhB+DyJfFp47pAVQR+MIlQ9kn5QDzDQiBs1n7eN1YNwAPSS0e4nIUbTLX/j5KFITlGN
oT0yS7vmqbqZ0Z4jMslQT25tztwiOrMheSPd1azuYpQ4+wBN2b3Uk+w/A4HPeR+wZ6kQ780n5PQ9
7l7kb1IdCTt/f+TWxQw5hAqxvFKKFE6jQvR3y2G35PNR0258kC+lXBq/MEgMx0y2wr1m6uBEgNE6
WkcOcyjW/Ku3bRtp+wumI7YLfQXcWlwKLA4KVPUu/H8nC5mlYqQpDkRnFvKHaNaZ0PrMq3BsfQLe
+j66lV6xo6dxUudMNlLK3nTJufGMbQLA/Pod0WG4gGpiYnIOThRQjaul1z0VLSPLvqnjxWLFaske
Rt3rqPRH2GHnsFtc1N94LcTKHx1GTlV8j1j0AnB+suwRB8kdH3JkQV6hgUlXWhaKj1Pl6Vc5N6+i
hBxhsfnMOZGkUThAgyMLYzWQC9VXkkhecyuMAg7e5bhUW1GbwtoOwTBuLS2kqzwoGzRbv/rDrDax
Y1S+HmVGEweg2JsPRlPXmxhFYp1uqg9UG0STfe8iR4v0rVhQAq14Cl8MgxVch5hkLPagQpH7mtUF
yqsYm88YSWhoAqfi1GM3pKru0Dekm4ufs7jFo+qkcb2+Va9192XagbuxLXXfKfUC9Kj/I1+27ao8
H2QcfIsaW2jesgdWNYpxF1ips6PPsdV35ftDCDRKHFvIqiefu3vam++BzIaNXTcvd4OOfC811cYG
PA8QAvHxixkHES8jWzZqcJwNsfS3EnROqvB5LAcWqMeYHgTpJt9ayN9YC+NC8PSHpTqSLjDDZEFr
sJnzR4Rvt8zFujAMtePmSEDkw+lZA0FhtvcB9uG7x+l57ccc6QZDt8mNyLsj41US+60hV1H+1kQ0
rlU0elxRk191ForUGDySU0eRR3uI3XJ+BBt1+xbw1/IvuVV12AHshcQ0SuFvLu33vYbWy8mKM9Ot
xArROKjwC1k4oo8r0t+O1tLKmdEGGDx5rBJdBAt9GMAsXo6GwtsZD3v6XzQ00oIDmo2noBZjDk6z
UwfYEoi2kvo7DCsj77xVvalTmHz15yPCOJ+DQuQEk7Zvkj64sN/GpYDjXVK0wOjElsycL8bntAd5
U8T6Ii9eYQM1lx5kLoWLCVkwWTGfsKvAI3rAQXfNHF6Y1CirRT+50ihlKKmyqTHKG0YBveKVdd1x
r34rG6WytvF1M7+LoMgKu3x2AQfZpAkg3XY42Ovy6JSzRLn6z4tZTRju6IiehldcjrHNYC9i9f1n
V3yWLa68xM+j+qGs1ZoNBWmMy9ehiGrdjeVRWCkWpasAaTxCqv04OGpP1EbcK1P76lhzTrFOJ0Ol
XjeWhfRN4RrwboL5aoNqIXdLZbcwZSssYFAku57BJq/jiRjN7cSlY5B9dxwD6GucEdc5hxDLjZxE
bdH2z58EA5avixyftCSW/0rlZxgHOth/vLzYANA4mXI1M7BdTOLsIQ49SLOgTA9UaM/cK6M5ERuB
jvX+hctGoNICHy52qRaEEOHYAjBlBSJxA7LYIC223SiWNEhQPhJ10P4XPlIYQTZx5q7Q+ptt8msK
UF8n9Q5JmTJI+XS+ddcx1Es/yKFN3oZ3EDD8A8A2ID6MDetEngRz3pDQIhn2S7u113kFlSGGXvLI
zZQsIcLTtfe1mGesRu26L7ZMLDeCXMfwM/nRvnFYRgf63SAusLxcQGrwtbB8teGX+J2JYpWwEeUr
RfljOQQncFkqtxhogVk0asHLA5z+Fh3SCgMPgpwbgNgxTa63ihFYCVZJ8FYGo1E4pBO4id+ZACS2
yIrb8ohToC8nIgbSJN33ehUykAEV8EWzGj2FY9TtiFX73qxsveosnigvuPTj9oQb3jWz5na2Femm
tbVcMXNlCbbUqBETeZVx8pD73/6NtyR9Qhs18CRA1XBoeikUDSMAOxOHV+P39RY5jsunLyR0Uj+0
Uv2G6FCM1wJUeWNGGq8L4a5tXQOvfPzjBVsJ+xIw0MndbDYp9pLS9QnYzFJMmH/A0jzNso5mZaQc
W4QUnlp0mK14f5FfyNbPlXnVaBmqHL9eaUhX/LYVYdp2j4tdOE4Bt7d9EiNDk1U/lUT+Fs1lncYN
QvHDAggumIW8QKh3xtXF9p+1Dl1r7jFsx/orilrChpksjw59U2I7LZ3YjArHxBn7dsyqw5ozVPdq
C3p9w5UHHJDkbHeRUiT6snG2y+cjwhwr04Pt/a5jQnJtXGWMt2FwG2d3IwwO7cPFLMOIQMqePut1
IFXLh+3eU5mL5ulhcYrhgmDtuVXq1uMtIO0t/tSLuN6VVqIdcz3Kkp/L4AhgOqgKy/KqH9PR8MDN
gDX4DNyRnTb20Chq0uzVoQheSBUl2bZcK4NIcJhpOaQ4krd9fHHOl3JuHb65U5ZfPJm7XAi6t7M7
Uz7J088PRXxjdWs3w/zJk0fL1ckaTmsBXDlVR4irfFh6eYHlYx22DazrVEGoOp2NbROT6B/0RP7S
By2hcTjcPY5sCq42mGpP2mYM1mS1HquJR74wxhhVXJ7uAg4vgcHrv6+izMVtdI45onR3V6e7YrYV
BqxtY+eEwwIMxsXsYaAeiPCbCQxH2G0zRNzEBMEmuXOseapInnv0DQNeGgY8DCdDh0PoaXj82IBZ
NlGokvKYzacj3sWqrgYcBPOwOWi5dnXuZ5fb4C0O5ICYehdng3Y4021H1BDYgDQtDlpkFFRKFyx/
wEBuEJf2ZpIZUwOBz6/XyyQzqn42weHhq+iUAecYemoi7Q2C0Jwrj+IXis3fRs4Cbrf+PuztE1YL
QtvvlGzd54Jt/LfMZadQ0g1Bi3iqkZ5MdkX+gl+AZ8WAWDF80h8BrBUe6Lo0Nu784AfxbVR6MvCZ
HUE9/1xRUBC8jCoDiXN/iORCed6DF7EDKqGE/cdcQL2gnRL0Q0KQHpf7VfhzJVOu63fy5+rXLP1E
nxt3sQvd8ks5JUcxIIcZoL06sHG8M6aHEQf4+JfkNJRNThZP18Ibbj8wpq6PT+lPcW4cHgA7/t5z
+LlUin9HA2yGsrpVC1hP9A9jcf5oijeugaiqyFIFxBDuTF0TyXpKqU/cm+DoQ0SqUn1CWaaZ3ywt
Vs4xZ7D4LPZrSbNrB7UNqzQQrWtf5gvJibmG1Kl1QQubDTGw02OYDFZGToj9qyGGhVDVxMxNGlQf
G2toMrXvU6+hZGGj5JTkZcBpMXjsgZ18VMMo7gFllbPrFEuMXGV7eljD/hII0RPH0D9lkkr5C6sx
M7Zy0YmKED6luDKW68IUHMQ+TnvRJrQWbWUf3azKGXO0aFSjPq5+AuA6p+PpUnMlrmza9TMy0A0J
DUcLHzBdy5oFYKyU+ixk2Y9Llnf9LwvLwZUcILXjub+MNLkqaducUMNNPAljfgsvysvSr4w92gQB
6SFakJDSTn0ckJXKZ4hDw15YZTZlFqnI/xnvxxM7dOOYL0GjtKOG8UMjpa8ESaOGyN1D+uAO5CAq
W6ZVNYoIdWzR9FwEGJDeNFBclb1KYUY6DA3P68Pk4T9vxgrvXHZCop8AgqxE24QMO7z1uzUD4YT1
FkDZrUsdGTGT79O38qRiYMzeh6jraQSewtFypiS5cVNx4tqkzcsAJr5XLM+3YAPFovuVnrZakwEf
1CXOy+U3AJVurJ3Yd8P3neiuPZOvV1HZTjhpCqa9tnlkF6q/BK6by8jUcS4sbjNsiE8PivfY1lef
FB2WYtIf31II2iqSAmMZt+jS093tZO/QPvO+3KSoxhjeMqz51VTKweAlr1RVbNLJTrChf8k4Pj3F
PJMjs2OBp0RhqDdwn5f4zEYWD5NA6fxekaAJnDaBJfa4VUET7m9UR6RI5IkT6pow3RExdGbsVqp8
yeMZKLBcegJz6h4lDsO8gyKfThgfa3hZHtWVbrRkxfm093fwl+yxPrCCoQcjID9W8Fyi1hxXYerF
ISX3YkM7wEkHKPgY3/IAY9OQN1NZ8vQx1tJGxa+UD1FU+cKCG3j6icYEujGSa6IrT4uSPlHNbp1R
r7F6QFa0UUlsA6GY+PATU8Nx3+OWI/EUgCfzl0FfPJChvf7uZ3q01a+yzJchYf6TzgI+ryJDqwhQ
3CX1XFpPLAyksQ5rvXaihRFUhy4DiNOVSiaUirg8//4Z32OSB6avXFvsYO7ATGV2idhLlfYSVzJA
qg1rWVMHesPlNKrtsm9CvY1y2BC8+pwNgCaOwQid7uzK+jW4F6fZPAeVp6sS8kvGWzS8ck/5+sek
ywGjIet0mgn5oKXhDoDtPDZ8h+7407FsmNoc+TKWPTPQea5sHDQzhKoOWaKN59pdq66C/IrYErJG
iwf7cLcZj9By0HIoNa5fxeDHKQBtU2ocBdIxX5q9ZaFviMNifthz0CIdpjQuMdXH9xFckcU1iVW1
xDqWIgCZ05WZQgP8ucy0aC7o/gksEQD/PDvQnFQAX2BHJ53rD1fJfsuYZL0Y7remegE7PHNNltuB
2gku7XrtfVSTuQCbSUeB55GMcn4AhAp/p51SUHcXsnTAQfkbjmuhkyg8R5+v+KP+2pkXm8QvyLUU
LmkftbZQrRw+UiZ2pID+CvxB40ypN3+3DB/UnuHQ+u3/bsmAmez6+Vl+47WfZ1Gfv7yVluZVl/OG
VYBFJC6+G6qFfARDtyrnibWj8Y5YQrOPFQqff1pawogZBre4hBZTiGZ0Z1Y6ztuvgnal2VudNU71
Ai/8DEilaFc5UPzWPVKJLJjJXJYOqIeXKFvshCO4N83RTqyWx1LSXCXyg3eko2SH3HaQsX0Ghy8r
Dgx16LyV5jZyFkld9Spw3TwFzhKhJKHQwngcnhILb9AA1du4QrtMlqvRGCgfvXuHOXbzyKln/nDf
TSfbdOObis5caX/ioBGDu4TifSGLtp3ZGMJZ4/H0s2IgAP/bb0vv3m+8kOsDeuT1PkwKOlAbvaQF
/UjV6iyrEXc7XcXuCHkhS8lLhxP4nr8JVq96Ba/1Z3OdmsYxAwuMrPNJvRIlKY9N8kOIb/So8OpK
PU2NEt0WWR+mPiF9VW7VWpR5SuEhG/nXJTa/pXq6yIzhdFxRNvWYG8ULzG0+p/ZPYxhN3lY+rdDq
9XW+Z19MAlGrnnvGgu1wEZHblLbBgml7D+cN3DLiYEyLpScWp4Jk0wINPWGVZzauGClFAxz8CWx9
K3e409guuXJHfrK7DdIIhpvktDVG5XnzvYQEYSnNtKttlwWg6PueeykgCSQcZjKx/gwVaNqLuWzt
g7D9NvgEYJevI0coN9tyzPT71FKBvMt6Z54kZYDVMZnp9vHTn1FZRHjIQF+aak9iB9DlCc+U71zG
g30XTcs+lDgt6FxcRudjLQF7KTuYqMe/PA8ao0jS7R570GxJJJ9OsuN8wxXIvbJ5T+UKfVB2qFiL
Upt/wx4Ol8J9mjh5Hpz6c0kJ9ZHtHMooeFBpKaZS3fFMoatT1cnl10zl62FbRoRXiGdHxwWPcVL0
CVp8Nr1tat1tvolA5p3GqPirtReB6uFRWejbScDIrgIED0InLLTOjWfcyZjZUG8BTGabZDu7Tt8C
fVEZeXmbrEMEnCsCGJaH2po8u+ButOCCaf1qLI3/FP93bVYQ/GTbj8E9+k9tmheVrN1GldEeui5s
hlRgT9pK08EQgk1oCNJ+jKouupy1jrq37lXI1sa0+57gd6M3a2wPGVmY13tltk4yt0xSy1dGnSJc
TOmQJ7lFIIXjngmJOTVZl/osYC4AYCivmEYGctUW2r6649ulW21sHxrpmjxzFZOzjn0yRDlHpx50
MLtq4ESI59Vt7T/7oDDP9AG1u/f/0QL3c6PqbWrTlk4XjGGg0hi1lmYpdCKXfXcPvsM7a/nECT5w
LNdQU6vHakJKUTrTBjSAJQqoqnBv8nEsIeYWfqASKBl6ZW8QdLTfsaFk8nH8g65rLq7eeRID60J8
jOIT0FaVAP3w3C0uULe6VEbmmLCYbYHkAYsCKTkg6FvckIJnyLc+Cef3rXuEj+BMxfnHklXgX8FY
XNz1d4F3w+RR4k6+s/J1y2kMoWMimrL8OU4ZaQfg/CRbo0Gal3Q3GzPuH3KUg5mQK7iSZ5j4pfoO
iK+6YRz3uL338Rh4vP0e2V7Fi3OXXcxNJ6TRkScMyisWXAqqMGVqlP8UPSNJp3laQ4lvl2ZLWecU
Wzqw0vIoHXY+p/ZM+NlItlsyOgM2XcFchG4k9UiEMgsBThbVS2G5iCFZIM+hcZyTd9WB1u5WY101
RvXi/tlcUJROPUUnn3Wwkq557Y/SG48bcWirwZL47rvojL3vNehrQG8tZx2I1PfLML7yN6lTg4JY
HdTQsyu5w+aa702uYx100z03vJEyuXjeKyfguYIVWUhYF0SABOcqfVZ+d2YX1bHi/cX2aMn8FDSI
kNxSYhcEsv/wkbHyxOGv4wHWhHFY+l5c2NuNukVHtUYMXLdKCA+ETZ3M9srz5PYANP8rOwD1iNWb
CyTBQ2mpuYk4zRa8ERrRwmkI1Sz/2yFSD+WekMkKkH1PypCvl0HW3YzMQdtxo+QCdSL11TyxcDX6
K22K3xmGTYRjCsDbdsPLhDtbTuAhV2jYacsIdA6VIx4cpEQow7NRd34XvpF8XHMN9S26pzlcfBds
tgXQjzTaM4JsXntiJuW7rP0ibzFj/xcv7mMcchx38wJQukTGfmeDpRIU3O6+rvBadhCFM0sMZl5R
A7D+S2s/9+Z+mlpGbB3UYYiiqZq3tlwP6tZmEsZGDJTs5kV++83YGHdGHlCDypOeq12ZzADtEzaX
QZ0XMcCIVa9Qm+lNhdoS0ApGh3vQLoAfvqlmB7MoxyZj8D7PT23ZgRbyhngadq5X2dzsKo4sdA6X
uU0gCItEkyWxcZG12wtrZtORD3So04rZ2MutcpqZV8bj7WCqW4Ovba9rYlrEUIJLzrrkXcKjY1zy
KjfVQ+45jFqkWeXbb7X2DFIBJ5zv28RrJz/gXc5MpDlLCu2qSFxtm+150XSVzvkfy2B6pyZtOb39
qBVgE4ATxm89RvhFWhbdq8vsfw8u3kJplvvUriHB48qyiZYhIJFtpqKurpEKYS5eYhcFw3rO/uLs
cRm21x0BRZJURgkHy6B0DEhi5UGeZxty48ENeuGMWrnRMkAsx03wduOHa+aMf4rW0eT1ttiw/B0T
s4A0FlSmYXu0gGjBq1i1jf3uYW9SuuuZgNv2j3P2VXWzX0/WhWPbsRwYKfFYbNJGirll8IVk93Nn
TW7fOpjj0WrqgzCKjfqDoWYD4ID7wCcZ9LFFPQ/5XHs0UffcJCDMZKL2zNgox/PFMKaVJa72Z6us
A6agAxAqrseuEl+baKQBnV/2Evrn1NI5N2B7jzKT8r7Zxp4M9Nc1smoO2GPlXzU/WDZVjsQ35aHq
+gxJ95vjkWsi7T7IuJWn0TPqcXRN7tXZI7sVR8ctpKyCk2+CrAzRyZDQZFSjJXY7T70XSuLOjQ1U
L20v5NSeWrAkGPqNAHlhOg+jRpvq8OfCV5Ldu+qekOpQfICgMceSjwu/JjGFh+J6iAQRCjzHtgLa
+eEKuJAJ2Pj0K5ymPdaCfn2W0RqpRiQMNVNhmqFToKZtXCkEN7tsdIA+W4Ci6K+M0W3T/CWV1DPA
CdglqFC2IyGag9MM3ZN1Y/Ci97//DSw/eHhNGYQw7ttZv/qmKzr2z2g7OoaheWE+59GBF7NI2/5W
Tzg9NUMxQ53zSz6YVCSR0Ktp93g4PU227+XiFLIKxovwGzdxZaCqferrfJsI00QL1xNSb1PmmCME
73lZ3X9sT6dlgpWOWLst0E0cSaf6qyN9qcl7WKvrY8KmySLXe/4hYLz6qRXYG140HTUyUhfA8vOx
IYLPA7SNa+kDflrU1pd+gtCSw95bAgXXXMjjTbvVlC0Fps/ACmKDg1cwPqLDs6t4zpmqucQpAHvM
yERZnJoy1S2vVFSWD051UQb9I/a6cDWDygSe4fl8zrl5xeK12D5ius5EtS4c6piWTeBuRx5odulw
b1zesJEsvSA60z6XHxhiVt4U+8KtrzJ1JYUTYcZepWQofLRgHBscBsiIwv9XgQ61Y+BaEfRUagKm
M5YmSDjFoDvH4OY4BPdsPDqN689Y6ugJRP6BRqGjedp6U+Wl1zehClSOMMkPMfQCfgoAj71j/dlL
fOpn07dEpa66+eyGfG5GxTU2hlVc8GiXLTs6YSCPUbNpGUZdtSFUjEAKnppxJisf65qY1iNSnDzZ
FZYMSHQNpdUZGsW9nibVpb4lqZzoBGttHHBRlMxTD1HETCgc+wrOWl/YJ4B5XM2cZCgB9qLfNrR/
w9HYgX2UkGtU/R9iGchkcDrBNENMLpQtupKNojfCRK9jkvEzGnuX3dkE1NPzuhIQUNhdP/jmIqbI
GX6g2fBZ/HGijM3mCn7oojOeaAcSg3NhdGZf3Pl8HNtcm6Eggu+etIQc3zLk16RCPz68nyY7ay50
hUgWBxZIPAvQy4v8k1VFU+kh6WDmsS6926mwpcZdCeZKDo0RwNvA2/kZdLcFHttQuapPmOYc/YEA
64CNjbSI9Y2Gt1HM0jJ4BTS+SZ+qpbbvHKMgKhrqGwvBpTB9sfLpfubJNU/gIuqwjrii9CiCN8p8
t8uMGK+ay6GS0ChePMGtsoViNhXx37vdZx7Pd8ftCkdcYNwKo2keu5l8bJf0/Ws1jVazayIUkWZK
T+1Ipm+hgCo+wxbmolVUhEh+9smaS0Ds7lhFgZ/Vt24dVqIjs0/qEnr5v9UGDigaXxJ3bZpYANQf
OqiL300lXR1vBdB1ZEbK2bJ2LOwGhsgbshB6NNPbp5Uv6AepgaBZ1Q8aDt7LnZZ5HJoOFx59D1sI
ecH2wVuHkhm/9dRwDyJVQGqAc5xOgYj/JafHW9P7CrWuEsE7qRhRenrJwyifZdL1f6K1xRGM2ghh
Bc5Ag6GXFhO6BZKhILuKnJzRHcN5IfI6xgtcTMh6cxVUeHuaZm9nS50iM4FwBOfKdKW2MtsR2zwz
tZk6QTJaAZ1fxFyCkM0bbJpYp34mzaXyjrI/wQmqSunfbmtQQuhNjhtSQ1cbJAzZGPuIwY69/SHe
/+YARu0G35XeBJrzpLzpYK+7CRzkBVUa3SnHlKYjdly4yofNUEd04HLnlROPBXSPAF9bQloTVRkd
x7I7eQoC/LxEi+CrmtHz1ZXV2p3BTqrF14p8FSwxrFQyPMjdTXjYGPbSqFhaVACKWJ/fNWLqSRS+
dmU7UTeqT+0hQzwlEczhrjgkBO1aoCaL6s32xEVlRkdtrnw5zEr/a1fAAxium/izVxwJ5klW+HUY
O9ujUB04tpvGF/d7CZMQE+S7UMhNnEVm77BXWvoH+C+w3fT6YErWzju7UKwfUUjazumW6fWO+4gq
ygRSHmbWcsydd3D4tf+1ywX8OR/lOI4XP0/Ljf3eJaaMyPpzMkW4lDcNw2aqVm3wFdEYnQvi9sTx
HMQmi0q6xjMLj8eP6ioQj19WkblRCmQr4q9lws3W193XPkKtwKoHfXjQKTZOxmY2rcqMcqm6yliX
ih4tsQj1fmqZGqWXFU5geh6iJjEtVkjSIU9VVcNA04NrR8XBiJkbluQrK8xLq83twOKHwDTWh1n1
vplQV3Hkg2xNgKwYimdigrdG84v3RJGvTaO1rZ28RHhxKwrPSnYRz7n49DId07NncqVz6tYqOmzT
2agu50HDUwD2cbg+XXKWBUjGtbyZBDTvAB88/1evo74edGj2vrdLAtQ4sTQzxsnbBEVy5pdVm+L0
woUGnD8c45QR7SNxy+jSlxMCXHG/10pDgRCmmEk5j9vzijHls9yJm/rz7JKlQ2ys2X9cfMwD2AoI
VYnjMBApwjYz2tpn5WP1TvI16mS3HvOPu1adTx689rtKHEu32PACV3IsWoZM8xUAGu+VjBAIfX6z
7efdAu16sHVcjNTrHyHedfvYCza4oQ27e09zBH+yVgPZn/YPp/v6Y6NBbcg4owTzfV9+rqX7YgdX
Gwun/7KLoBneeDYcAYMWpVqazlGwsmQ/wULf+46Do8eza9Jh1EwlgNWEOopUqWsIu74umvNC2QVV
qLlrjnPAW5lgr0h5/2LhsjgcptWxezhmye0qb1zY8COhtjdI8ZYoQ7jfG4jmmD+c6dYE3YK+0dXj
CFMP6ysLnYZhOg0t+S4jX1HUFq6vhyd5Wbg1JDaXJ6zAbzfnzhDXibztGi99WvcZ+58SrxnHHhqw
YyxUZ/t3V/lM/8HC34ndi09oVvb8t5DKnfDQ5D1tjz661R8atvGIFBd3gjKfG6ueOc9l46X2rzus
1ZSJ4oonG6ey2kytG5N/Sso88GnPvsRDh6xHMMxPDffKXp8Q4OMK7DE0QNnmf+IXFeSKVipXEre0
O33lfwjo7Hp/6lPfx0ziHsjBsa3HG5k+Cag2xAhm8I1OI/ShSDA3xOqcxGRZURA/otV3Oft69ejH
ZeNIWdcIdXkgRlr0X27xt0aAeD4FvzyT9eSGLWHvrwtkgcGAMxNuabUXqUlLkJL/3r40rM1M8wTw
XgSRGK8As9DyZJ4TpcT0YBYVk2cWH/o+vtI69tNDaLh9ephxsfBLly8ou1ZB4PMqZZEgnFA0w87q
Z+5Y6JR2C8JFHXgoIRUexoa56vEgGXgkjhHVyf2hdSeg26HfutG3Ri3UCgs+RP3Z8Thg5fTAKBU4
CQLluYnhsak0ywoEgocuo3NQ3fL6ZBDhYPafAT8dDeM2+eEG3jLZqboXJA4g/5bRzIhrN635QYSt
0YgG75Kqsja+guAHyJT96QUvPiHuQ16bS6/Zncw6ixj2WQo5c13/TQLzHFzOCKp+CZcJgJfIgY/B
pQjhtWZSHPGApNXTcNbfPztS9lZtGUiBpHuCy/SB4h96A1r71WxPsUsYuh0xSh549YEZ/YQo54f4
NP8vGxNV5GAYG0Bqz1rV+DfYBABSgnyYZkz8L0ZblOZXPfXc/QYPyewdrCNqMoHJH29aYluogsRS
SvleOp4RLa/c9NWVY6+OFE9Bju7ZegvrD/jrQK/8Kz322ipTszk4ORK1gJ54nNFlB8lCj1tFqOdI
deAUXFrTHo5mz0mnksdq5V8CnR9hZxmskLy9doRvBgk74Rqng1TX+50eWPtBCtGr7/HmehJS7vBK
GOxYmz1vzc6gOJ9eJN1Nms2j1mk5jWrxKOyI7pJzQ5505iWpA2dX1dspmaP7EwZiQ8RACniT9w1t
kjpkdc/xWsbONDn0fHe66TY+mfjGlN3dIsPz39oYBOEzjw5+ANC/IgzqXGqZ9CMUlE9/Kq6cmhWG
uE+F4ocW05sgofTcnycuNBQEq8fzY86xCcZai7WDULMaCLVHqsJ1/oLk8hiSh/NgcT46OWoS4xFu
xbHPbglppoqhyQRS79J7EK5T37xQ7RSlOFF9XdSa4P0pcdQbeBJ7+DFV7nv1P8IRcXmvCu7IvkWc
fKMaB+33NKYpZZVcgXyZobO5nmMDV4RzsfwzbYRpvUEGYOSSGieBMlSH/vZTLcfQiVWsU9rW4xZ4
I+x6NM9Ho4sLCTY3ClU0Zh3OXa78lRdQFC8bVYbhtNLuYg1Zy8ku0FAuMGAFixzxf1K3FBnJIh4c
naK+bc8qstV15MpXOgLGaTW2gq4wBH+Lx6Lkt4hHTOnzS2VkTsZRhR5SaCrDWYkpcIHo3UKoo9NY
Nh0nek1luzs3tZp8UVFi4sCjxTcmG7Uq/bedLx158wepRtFDjhVcdcRjNmURYlVqoU+EwOP+XAmU
HrpsX1nAmuvnD8KVzR+ulP1KHAJMsnsujSF3xaX+cFfzhJZWiqmphYPcb4vYoqLN1sPJCyWGe9uQ
gSPYIQVoCLv6x8BXBNnH0Z/zTVQ0pjB8+qDtjjpqNQMsTAZW57sr+XPEo73C5XvbRdLYjsDsNVm9
66uox7kR9hNS/usxx0/RghoI8XYyPtPUEzCRx7kRGv3uIgYITdDU5HtJFROLyO+25bgqvTfFLN36
ecwPT9KPxA9pfTpQ1jFE95PwYCoYrTla8BGFR2kBrBAxGCBihUvisShJSI7ewajshdo+p8MDAkIW
44x/DT7GZVyVbHxrtXgRIxaxb+DeBa+Se1uzJJAdRODYMkdEfGnLE/Iv0gojj2x8XjZlDGYQcDFd
vP/7LfZMb6sPk2bbgBvUMsaX6BLl7VEIJ3qc5MRmp6HhLMUI/bo15Cx40xP9mAfZj3L2tTq7Anby
wpIqnhPkoTH2RKk7NGn9hm+FTRzqvrYgqmaRdUUvvgtvOlOu65KbZ5vc7LkBKNZyEdGuVpMhd9XQ
AZ2VeabvPhj8koea0bZh9oL660wEq5VM2SOXt3zuQmnDWyRH2199ea+SPd585MExZ1N30I8ylq9w
pHQR9AHheVfIZGOVdn8aZ8u1BnTe5ilZ806edNLf5qKd8kQch9949qp9ExCDdjHpK9rLK8c8mm4y
+LI5r7Y5Gc7q7MHJxb7rhQlHdKuaoms5IGwe+fb53le+mtmoLU37BDVp+xHksMsnZbZEXrRDzkUd
/3c0nvUpF7dqwO0qK1FpErWB/udNt5/9iogLEkEvg5VWSkCROCUzEwsFlBEThLIuQuYldzL8iDYE
GH0neIXVuJADeyU+ZQmHeH13RmNWA1iBZRrqYfzJ3pEkUrU1hZodCIEcrKqaO5QytUqX3zIPCjPy
De+BVaBMP849ZY2LIQM/+ivv+eJ1JwTfDmN9rSVglRLsEb4WfYsgUAU/+tmPuUaqxNq5K9QVxB6s
QY4cLTAst7slwXgYfgaBQTRVtJIAHwYpa/sYNNPfyaKZX2mqYTXIRNMnQRDJRYHF2UQASevf3kiE
x/OWyr/bFMMcsU2H3ULIHywOkRUNSxI1GVaSujRaOZrcH9fixbmRRqQTFzLMsZ1e7MfF+v24GhkJ
rZYQc2kvDnHXYJQtN3Mg274FLTy7BxTCYEN0n+EHoXABmdvlU7BYvlRqHi01xwVGm9s9nyhm2oVL
9xfrJiNJQJXvOv2jbPpDxDheESBZOq9gIL3Qx8aZjaGreYnKYawUXuezO8MOtIn1ftn+kvPbrxCv
0KFhmbFpILuqNQALVqn+bti07N4jEHY9+RQr/AZvqN8rSgtgL1kyj+OTUiFcmPIzR7p4MqOfY5q0
8FGxyIJ9oVIOj6morU9Whpc7uV4sCwJTnx+/aiex14NY9hNX49+Z3QU4RgsjNVH/X6wq1WA1JTzM
31NE1Hp6pr3eSkA+YVMnoByc7S0ARkMLFw5o/7YxJxSWLDhykM3xiQpzp77cZVtYy5JPXQkD8Ude
FKkRpY905OMITRQwxA6gVuw82bOp2B33LiMj/hWsh/H3s4LCzAVa1Rz5oXoGMzgGLCqlWIrM68fs
HlYq85SEqhfRgPf4evE2+wMmsGzW9kq8NNYcbS7v2y2q2eqLFOK9nSLzmQiB9tBuMUYg/j0AuvYG
i09wufwJ2LDQxDPCH6IoJXjbYTbYfoCEEL2jG0NHkh48sHKFy6PQmllyZWOaml8Reg2wZGQaAYls
TlJ7RtUzTVcQ61puu318wEWvT1iGRsIlEHtXPdV9xT5QD8m2kpdq+XlvsA6eXbgPBwNsSc5k4lmV
rWRh+XsFnY+8sYlSSsUEy8N64ctzxG/a4sPby+Hx2nPnO9sUc0btIssSJgCf+j6vWs8L8u2/jWgm
bMutBSIG6mZJZOtYF5i+qftsNmR5GMgFF0rsb0HitGWph8FtqYctoSHElcaA9pKUHvSmLTpScMD9
GsA+DmJWD6oBGSeumXhmD8xYU5c1Okz7ZODZSLJR+3xE6dOuB8udyjoU+9ky1OdxGf9vyNR+GjCe
w4Lj8OjMQoLkSWQ9o9aeE1PRCcPySvQZA9dJrCiE9ijfw1BGpdldVq00qLBdFuJmcw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
