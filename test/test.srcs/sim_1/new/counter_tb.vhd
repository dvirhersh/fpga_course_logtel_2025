library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_tb is
end counter_tb;

architecture Behavioral of counter_tb is
    component counter_rtl
        Port (
            RESET   : in  STD_LOGIC;
            SW      : in  STD_LOGIC;
            CLOCK   : in  STD_LOGIC;
            COUNTER : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    signal RESET   : STD_LOGIC := '0';
    signal SW      : STD_LOGIC := '0';
    signal CLOCK   : STD_LOGIC := '0';
    signal COUNTER : STD_LOGIC_VECTOR(6 downto 0);

    constant clock_period : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: counter_rtl
        port map (
            RESET   => RESET,
            SW      => SW,
            CLOCK   => CLOCK,
            COUNTER => COUNTER
        );

    -- Clock generation
    CLOCK <= not CLOCK after clock_period / 2;

    -- Stimulus process
    stim_proc: process
    begin
        -- Apply reset
        RESET <= '1';
        wait for 2 * clock_period;
        RESET <= '0';

        -- Begin incrementing: apply SW = '1' for 100+ clock cycles
        wait for 2 * clock_period;
        for i in 0 to 110 loop
            SW <= '1';
            wait for 20*clock_period;
            SW <= '0';
            wait for 20*clock_period;
        end loop;

        wait for 10 * clock_period;

        assert false report "Test completed: counter should be > 100" severity failure;
    end process;

end Behavioral;
