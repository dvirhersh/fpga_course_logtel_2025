----------------------------------------------------------------------------------
-- Testbench for register8
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity register8_tb is
end register8_tb;

architecture Behavioral of register8_tb is

    -- Component declaration for the DUT (Device Under Test)
    component register8
        Port (
            clock    : in  STD_LOGIC;
            reset    : in  STD_LOGIC;
            enable   : in  STD_LOGIC;
            data_in  : in  STD_LOGIC_VECTOR (7 downto 0);
            data_out : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    -- Signals to connect to DUT
    signal clock    : STD_LOGIC := '0';
    signal reset    : STD_LOGIC := '0';
    signal enable   : STD_LOGIC := '0';
    signal data_in  : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal data_out : STD_LOGIC_VECTOR (7 downto 0);

    -- Clock period definition
    constant CLOCK_PERIOD : time := 10 ns;

begin

    -- Instantiate the DUT (register8)
    uut: register8
        port map (
            clock    => clock,
            reset    => reset,
            enable   => enable,
            data_in  => data_in,
            data_out => data_out
        );

    -- Clock process definition
    clock_process : process
    begin
        while now < 200 ns loop
            clock <= '0';
            wait for CLOCK_PERIOD / 2;
            clock <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Stimulus process
    stim_process: process
    begin
        -- Apply reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Test case 1: Enable low, data shouldn't change
        enable <= '0';
        data_in <= "10101010";
        wait for 20 ns;

        -- Test case 2: Enable high, data should update
        enable <= '1';
        wait for 20 ns;

        -- Test case 3: Change data while enable is high
        data_in <= "11001100";
        wait for 20 ns;

        -- Test case 4: Disable register, data_out should hold value
        enable <= '0';
        data_in <= "00000000";
        wait for 20 ns;

        -- Test case 5: Apply reset, data_out should go to zero
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- End of test
        wait;
    end process;

end Behavioral;
