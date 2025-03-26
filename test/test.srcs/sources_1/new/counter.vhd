library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;  -- vhdl-linter-disable-line not-declared

entity counter_rtl is
    Port (
        RESET   : in  STD_LOGIC;
        SW      : in  STD_LOGIC;
        CLOCK   : in  STD_LOGIC;
        COUNTER : out STD_LOGIC
    );
end counter_rtl;

architecture Behavioral of counter_rtl is

    signal sw_sync      : STD_LOGIC := '0';
    signal sw_prev      : STD_LOGIC := '0';

    signal reset_meta   : STD_LOGIC := '0';
    signal reset_sync   : STD_LOGIC := '0';

    signal count        : STD_LOGIC := '0';

begin

    sync_reset : process(CLOCK)
    begin
        if rising_edge(CLOCK) then
            reset_meta <= RESET;
            reset_sync <= reset_meta;
        end if;
    end process;

    sync_sw : process(CLOCK)
    begin
        if rising_edge(CLOCK) then
            if reset_sync = '1' then
                sw_sync <= '0';
                sw_prev <= '0';
            else
                sw_sync <= SW;
                sw_prev <= sw_sync;
            end if;
        end if;
    end process;

    -- Count on rising edge of SW
    count_proc : process(CLOCK)
    begin
        if rising_edge(CLOCK) then
            if reset_sync = '1' then
                count <= '0';
            elsif sw_sync = '1' and sw_prev = '0' then
                count <= not count;
            end if;
        end if;
    end process;

    COUNTER <= count;

end Behavioral;
