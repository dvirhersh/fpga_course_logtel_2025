library ieee;
use ieee.std_logic_1164.all;

entity T10_StdLogicTb is
end entity T10_StdLogicTb;

architecture sim of T10_StdLogicTb is 

    signal signal1   : std_logic := '0';
    signal signal2   : std_logic := '0';
    signal signal3   : std_logic := '0';

begin

    process
    begin
        wait for 10 ns;
        signal1 <= not signal1;
    end process;

    -- Driver A
    process
    begin
        signal2 <= 'Z';    
        signal3 <= '0';  
        wait;  
    end process;

    -- Driver B
    process (signal1)
    begin
        if signal1 = '0' then
            signal2 <= 'Z';
            signal3 <= 'Z';
        else
            signal2 <= '1';
            signal3 <= '1';
        end if;
    end process;

end architecture sim;
