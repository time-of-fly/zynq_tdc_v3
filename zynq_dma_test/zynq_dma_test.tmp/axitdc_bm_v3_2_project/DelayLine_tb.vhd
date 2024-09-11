library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity delayLine_tb is
end delayLine_tb;

architecture Behavioral of delayLine_tb is
    constant NTaps : integer := 192;
    signal clk : std_logic := '0';
    signal hit : std_logic := '0';
    signal enable : std_logic := '0';
    signal thermo : std_logic_vector(NTaps-1 downto 0);
    signal valid : std_logic;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.delayLine
        generic map (NTaps => NTaps)
        port map (
            clk => clk,
            hit => hit,
            enable => enable,
            thermo => thermo,
            valid => valid
        );

    -- Clock process
    clk_process: process
    begin
        wait for 5 ns;
        clk <= not clk;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize
        enable <= '0';
        hit <= '0';
        wait for 100 ns;

        -- Enable the delay line
        enable <= '1';
        wait for 97 ns;

        -- Generate a hit
        hit <= '1';
        wait for 10 ns;
        hit <= '0';

        -- Wait for propagation and synchronization
        wait for 500 ns;

        -- Check results
        if valid = '0' then
            report "ERROR: Valid signal not asserted" severity ERROR;
        end if;

        if thermo = (thermo'range => '0') then
            report "ERROR: No thermometer code detected" severity ERROR;
        end if;

        -- End simulation
        wait for 100 ns;
        report "Simulation finished" severity NOTE;
        wait;
    end process;

end Behavioral;