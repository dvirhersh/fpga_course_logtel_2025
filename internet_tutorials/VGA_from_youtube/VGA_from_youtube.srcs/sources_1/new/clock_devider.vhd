library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_devider is
    generic (
        div_value : integer := 1  -- division value
    );
    port (
        clk          : in  std_logic;  -- input clock (e.g. 100MHz)
        divided_clk  : out std_logic  -- output clock (e.g. 25kHz)
    );
end entity clock_devider;

architecture Behavioral of clock_devider is
    signal counter_value : integer := 0;
    signal clk_out       : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if counter_value = div_value then
                counter_value <= 0;
                clk_out       <= not clk_out;
            else
                counter_value <= counter_value + 1;
            end if;
        end if;
    end process;

    divided_clk <= clk_out;

end architecture Behavioral;
