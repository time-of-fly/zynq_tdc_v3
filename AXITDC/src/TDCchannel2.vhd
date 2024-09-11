----------------------------------------------------------------------------------
-- TDC channel Top design file
-- Version: 1.0
--
-- Author: Michel Adamic
-- Created: 25.4.2019
-- Modified: 6.5.2019 (added counter)
-- 29.5.2019 -> TDC valid chain
-- 4.6.2019 -> Added control.vhd.
-- 13.6.2019 -> we(3 downto 0)
-- 27.6.2019 -> TDC enable

-- Version 2.0
-- 28.9.2019 -> 64-bit data, trigger index input/output, DLenable
--
-- Connects all the components together into a TDC channel.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MyPkg.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
-- library UNISIM;
-- use UNISIM.VComponents.all;


entity TDCchannel2 is
   generic (
      COARSE_WIDTH : integer :=56;
      NTaps : integer := 192  -- No. of taps; multiple of 12! NTaps <= 200!
      --ADDR_WIDTH : integer := 11    -- BRAM buffer address size
   );
   Port ( 
      -- TDC channel input
      clk : in std_logic; -- TDC channel clock
      hit: in std_logic;   -- channel signal input

      -- BRAM interface
      --addr : out STD_LOGIC_VECTOR (ADDR_WIDTH-1 downto 0);   -- BRAM address
      
      --we : out STD_LOGIC_VECTOR (7 downto 0);   -- write enable
      
      -- AXI control signals
      run : in std_logic;  -- collect data
      clr : in std_logic;  -- clear BRAM
      rdy : out std_logic; -- FSM ready
      overflow : out std_logic; -- BRAM full
      --buffered data out
      data : out STD_LOGIC_VECTOR (63 downto 0);   -- BRAM data
      rd_en : in std_logic;
      rd_clk : in std_logic;
      fifo_empty : out std_logic;                                  
      fifo_prog_full : out std_logic
      -- Trigger index IO

   );
end TDCchannel2;

architecture RTL of TDCchannel2 is

   constant SUM_WIDTH : integer := bitSize(NTaps); -- bitSize is defined in MyPkg
   attribute keep : string;
   -- Sum FINE + COARSE = 32!
   constant FINE_BITS : integer := 8;
   constant COARSE_BITS : integer := COARSE_WIDTH;

   -- Internal
   signal thermo : std_logic_vector(NTaps-1 downto 0); -- thermometer code -> Encoder input
   signal validIn, validOut : std_logic; -- TDC timestamp valid
   signal ones : std_logic_vector(SUM_WIDTH-1 downto 0); -- number of 1's -> Encoder output
   signal DLenable : std_logic := '1';  -- Delay line enable
   
   signal fine : std_logic_vector(FINE_BITS-1 downto 0) := (others => '0'); -- fine measurement
   signal coarse : std_logic_vector(COARSE_BITS-1 downto 0);   -- coarse measurement
   signal coarse_hit : std_logic_vector(COARSE_BITS-1 downto 0);   -- coarse measurement
   signal timestamp : std_logic_vector(63 downto 0);  -- timestamp
   component control2 is
    generic (
      COARSE_WIDTH : integer := 56
    );
    port (
      clk : in std_logic;
      timestamp : in std_logic_vector(63 downto 0);
      valid : in std_logic;
      data : out std_logic_vector(63 downto 0);
      rd_en : in std_logic;
      rd_clk : in std_logic;
      fifo_empty : out std_logic;
      fifo_prog_full : out std_logic;
      clr : in std_logic;
      running : out std_logic;
      overflow_reg : out std_logic
    );
  end component;

begin
   
   Delay_line:
   entity work.delayLine(rtl)
   generic map (
      NTaps => NTaps
   )
   port map (
      clk => clk,
      hit => hit,
      coarse => coarse,
      coarse_out => coarse_hit,
      enable => DLenable,
      thermo => thermo,
      valid => validIn
   );

   encoder:
   entity work.encoder(rtl)
   generic map (
      NTaps => Ntaps
   )
   port map (
      clk => clk,
      thermo => thermo,
      ones => ones,
      ValidIn => ValidIn,
      ValidOut => ValidOut
   );
   
   counter:
   entity work.counter(rtl)
      generic map (
         BITS => COARSE_WIDTH
      )
      port map (
         clk => clk,
         coarse => coarse
      );
      
   controlv2:
   control2
      port map (
         clk => clk,
         timestamp => timestamp,
         valid => validOut,

         data => data,
         rd_en => rd_en,
         rd_clk => rd_clk,
         fifo_empty => fifo_empty,
         fifo_prog_full => fifo_prog_full,

         --run => run,
         clr => clr,
         running => rdy,
         overflow_reg => overflow
      );
      
   -- Signal concatenation
   fine(SUM_WIDTH-1 downto 0) <= ones;
   timestamp <= coarse_hit & fine;
   
end RTL;