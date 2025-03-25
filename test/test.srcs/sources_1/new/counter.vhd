library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_rtl is
    Port (
        RESET   : in  STD_LOGIC;
        SW      : in  STD_LOGIC;
        CLOCK   : in  STD_LOGIC;
        COUNTER : out STD_LOGIC_VECTOR(6 downto 0)
    );
end counter_rtl;

architecture Behavioral of counter_rtl is
    signal SW_SYNC : STD_LOGIC := '0';
    signal SW_PREV : STD_LOGIC := '0';
    signal count   : UNSIGNED(6 downto 0) := (others => '0');
begin

    -- Synchronize the switch input to the clock domain
    sync_proc : process(CLOCK)
    begin
        if rising_edge(CLOCK) then
            if RESET = '1' then
                SW_SYNC <= '0';
                SW_PREV <= '0';
            else
                SW_SYNC <= SW;
                SW_PREV <= SW_SYNC;
            end if;
        end if;
    end process;

    -- Counter logic
    count_proc : process(CLOCK)
    begin
        if rising_edge(CLOCK) then
            if RESET = '1' then
                count <= (others => '0');
            elsif SW_SYNC = '1' and SW_PREV = '0' then
                count <= count + 1;
            end if;
        end if;
    end process;

    COUNTER <= STD_LOGIC_VECTOR(count);
end Behavioral;
