library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vertical_counter is
    generic (V_MAX : integer := 525);
    port (
        clk_25MHz         : in  std_logic;
        enable_V_Counter  : in  std_logic;
        V_Count_Value     : out std_logic_vector(15 downto 0)
    );
end entity vertical_counter;

architecture Behavioral of vertical_counter is
    signal count : unsigned(15 downto 0) := (others => '0');
begin

    process(clk_25MHz)
    begin
        if rising_edge(clk_25MHz) then
            if enable_V_Counter = '1' then
                if count < V_MAX - 1 then
                    count <= count + 1;
                else
                    count <= (others => '0');
                end if;
            end if;
        end if;
    end process;

    V_Count_Value <= std_logic_vector(count);

end architecture Behavioral;
