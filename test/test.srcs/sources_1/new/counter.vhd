library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all; -- vhdl-linter-disable-line not-declared

entity counter_rtl is
    Port (
        RESET   : in  STD_LOGIC;
        SW      : in  STD_LOGIC;
        CLOCK   : in  STD_LOGIC;
        COUNTER : out STD_LOGIC_VECTOR(6 downto 0)
    );
end counter_rtl;

architecture Behavioral of counter_rtl is
    signal sw_sync_1 : STD_LOGIC := '0';
    signal sw_sync_2 : STD_LOGIC := '0';
    signal sw_prev   : STD_LOGIC := '0';
    signal count     : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    signal sw_debounced : STD_LOGIC := '0';

    -- Debounce counter
    constant DEBOUNCE_LIMIT : integer := 10;
    signal debounce_counter : integer range 0 to DEBOUNCE_LIMIT := 0;

begin

    -- Synchronize the switch input to clock domain
    sync_proc : process(CLOCK)
    begin
        if rising_edge(CLOCK) then
            if RESET = '1' then
                sw_sync_1 <= '0';
                sw_sync_2 <= '0';
            else
                sw_sync_1 <= SW;
                sw_sync_2 <= sw_sync_1;
            end if;
        end if;
    end process;

    -- Debounce logic
    debounce_proc : process(CLOCK)
    begin
        if rising_edge(CLOCK) then
            if RESET = '1' then
                debounce_counter <= 0;
                sw_debounced <= '0';
            elsif sw_sync_2 = sw_debounced then
                debounce_counter <= 0;
            else
                if debounce_counter < DEBOUNCE_LIMIT then
                    debounce_counter <= debounce_counter + 1;
                else
                    debounce_counter <= 0;
                    sw_debounced <= sw_sync_2;
                end if;
            end if;
        end if;
    end process;

    -- Counter logic with edge detection
    count_proc : process(CLOCK)
    begin
        if rising_edge(CLOCK) then
            if RESET = '1' then
                count <= (others => '0');
                sw_prev <= '0';
            else
                sw_prev <= sw_debounced;
                if (sw_debounced = '1' and sw_prev = '0' and count < 100) then
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;

    COUNTER <= count;
end Behavioral;
