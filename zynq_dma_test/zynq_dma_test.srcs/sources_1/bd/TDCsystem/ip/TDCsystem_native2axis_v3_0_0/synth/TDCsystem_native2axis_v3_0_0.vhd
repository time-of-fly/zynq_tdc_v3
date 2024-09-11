-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:native2axis_v3:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TDCsystem_native2axis_v3_0_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    fifo_rd_en_0 : OUT STD_LOGIC;
    fifo_rd_data_0 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fifo_empty_0 : IN STD_LOGIC;
    fifo_prog_full_0 : IN STD_LOGIC;
    fifo_rd_en_1 : OUT STD_LOGIC;
    fifo_rd_data_1 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    fifo_empty_1 : IN STD_LOGIC;
    fifo_prog_full_1 : IN STD_LOGIC;
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tready : IN STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axis_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_tlast : OUT STD_LOGIC
  );
END TDCsystem_native2axis_v3_0_0;

ARCHITECTURE TDCsystem_native2axis_v3_0_0_arch OF TDCsystem_native2axis_v3_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF TDCsystem_native2axis_v3_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT native2axis_v3 IS
    GENERIC (
      DATA_WIDTH : INTEGER;
      KEEP_WIDTH : INTEGER;
      FIFO_DEPTH : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      fifo_rd_en_0 : OUT STD_LOGIC;
      fifo_rd_data_0 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      fifo_empty_0 : IN STD_LOGIC;
      fifo_prog_full_0 : IN STD_LOGIC;
      fifo_rd_en_1 : OUT STD_LOGIC;
      fifo_rd_data_1 : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      fifo_empty_1 : IN STD_LOGIC;
      fifo_prog_full_1 : IN STD_LOGIC;
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tready : IN STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axis_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axis_tlast : OUT STD_LOGIC
    );
  END COMPONENT native2axis_v3;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF TDCsystem_native2axis_v3_0_0_arch: ARCHITECTURE IS "native2axis_v3,Vivado 2023.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF TDCsystem_native2axis_v3_0_0_arch : ARCHITECTURE IS "TDCsystem_native2axis_v3_0_0,native2axis_v3,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF TDCsystem_native2axis_v3_0_0_arch: ARCHITECTURE IS "TDCsystem_native2axis_v3_0_0,native2axis_v3,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=native2axis_v3,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,DATA_WIDTH=64,KEEP_WIDTH=8,FIFO_DEPTH=1024}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF TDCsystem_native2axis_v3_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN TDCsystem_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TDCsystem_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
BEGIN
  U0 : native2axis_v3
    GENERIC MAP (
      DATA_WIDTH => 64,
      KEEP_WIDTH => 8,
      FIFO_DEPTH => 1024
    )
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      fifo_rd_en_0 => fifo_rd_en_0,
      fifo_rd_data_0 => fifo_rd_data_0,
      fifo_empty_0 => fifo_empty_0,
      fifo_prog_full_0 => fifo_prog_full_0,
      fifo_rd_en_1 => fifo_rd_en_1,
      fifo_rd_data_1 => fifo_rd_data_1,
      fifo_empty_1 => fifo_empty_1,
      fifo_prog_full_1 => fifo_prog_full_1,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tready => m_axis_tready,
      m_axis_tdata => m_axis_tdata,
      m_axis_tkeep => m_axis_tkeep,
      m_axis_tlast => m_axis_tlast
    );
END TDCsystem_native2axis_v3_0_0_arch;
