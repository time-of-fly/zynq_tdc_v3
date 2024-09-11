------------------------------------------------------------------------------------
-- AXI TDC channel top wrapper
-- Version: 1.0
--
-- Author: Michel Adamic
-- Created: 7.6.2019
-- Modified: 12.6.2019 -> BRAM PORTB disconnect
-- 13.6.2019 -> AXI ID WIDTH signals
--
-- 29.9.2019
-- Version 2.0 -> New core, 64-bit BRAM data, AXI stays at 32 bits
--
-- Connects all the components and IPs together into an AXI interfaced TDC channel.
------------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AXITDC is
   generic (
      NTaps : integer := 192;
      COARSE_WIDTH : integer := 56  -- No. of taps; multiple of 12! NTaps <= 200!
      -- ADDR_WIDTH : integer := 11    -- BRAM buffer address size
   );
   Port (
   s_axi_aclk : IN STD_LOGIC;
   s_axi_aresetn : IN STD_LOGIC;
   
   -- AXI Lite (GPIO)
   s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
   s_axi_awvalid : IN STD_LOGIC;
   s_axi_awready : OUT STD_LOGIC;
   s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
   s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
   s_axi_wvalid : IN STD_LOGIC;
   s_axi_wready : OUT STD_LOGIC;
   s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
   s_axi_bvalid : OUT STD_LOGIC;
   s_axi_bready : IN STD_LOGIC;
   s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
   s_axi_arvalid : IN STD_LOGIC;
   s_axi_arready : OUT STD_LOGIC;
   s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
   s_axi_rvalid : OUT STD_LOGIC;
   s_axi_rready : IN STD_LOGIC;
   
  
   -- TDC
   clk : in std_logic;
   hit : in std_logic;
   --fifo
    data : out STD_LOGIC_VECTOR (63 downto 0);   -- BRAM data
    rd_en : in std_logic;
    rd_clk : in std_logic;
    fifo_empty : out std_logic;                                  
    fifo_prog_full : out std_logic
   );
end AXITDC;

architecture Structure of AXITDC is

   constant ADDR_WIDTH : integer := 11;   -- fixed to 2K
   
   -- AXI GPIO component & signals
   component axi_gpio_0 is
      Port (
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC;
      gpio_io_i : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      gpio2_io_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
      );
   end component;
   
   signal gpio_in : STD_LOGIC_VECTOR(1 DOWNTO 0);
   signal gpio_out : STD_LOGIC_VECTOR(1 DOWNTO 0);
   

   
   
   -- Dual Port BRAM component

   
   -- TDC component signals
   signal run, clr, rdy, full : std_logic;
   --signal addr : std_logic_vector(ADDR_WIDTH-1 downto 0);
   --signal data : std_logic_vector(63 downto 0);
   --signal we : std_logic_vector(7 downto 0);
   
begin

   -- AXI GPIO port map
   AXI_control: axi_gpio_0
      port map(
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awready => s_axi_awready,
      s_axi_wdata => s_axi_wdata,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wready => s_axi_wready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_araddr => s_axi_araddr,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arready => s_axi_arready,
      s_axi_rdata => s_axi_rdata,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_rready => s_axi_rready,
      gpio_io_i => gpio_in,
      gpio2_io_o => gpio_out        
   );
      
   -- TDC port map
   TDCv2:
   entity work.TDCchannel2(rtl)
      generic map(
         NTaps => NTaps,
         --ADDR_WIDTH => ADDR_WIDTH
         COARSE_WIDTH => COARSE_WIDTH
      )
      port map(
         clk => clk,
         hit => hit,
         --fifo out
         data => data,
         rd_en => rd_en,
         fifo_empty => fifo_empty,
         fifo_prog_full => fifo_prog_full,
         rd_clk => rd_clk,
         --control
         run => run,
         clr => clr,
         rdy => rdy,
         overflow => full
      );

   -- synchronizers
   sync_0:
   entity work.sync(rtl)
   port map(
      target_clk => clk,
      asyn => gpio_out(0),
      syn => clr
   );
   
   sync_1:
   entity work.sync(rtl)
   port map(
      target_clk => clk,
      asyn => gpio_out(1),
      syn => run
   ); 
   
   sync_2:
   entity work.sync(rtl)
   port map(
      target_clk => s_axi_aclk,
      asyn => rdy,
      syn => gpio_in(0)
   );
   
   sync_3:
   entity work.sync(rtl)
   port map(
      target_clk => s_axi_aclk,
      asyn => full,
      syn => gpio_in(1)
   ); 
   
end Structure;
