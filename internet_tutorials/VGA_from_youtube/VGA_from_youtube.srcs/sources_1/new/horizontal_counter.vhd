library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity horizontal_counter is
    generic (H_MAX : integer := 800);
    port (
        clk_25MHz         : in  std_logic;
        enable_V_Counter  : out std_logic;
        H_Count_Value     : out std_logic_vector(15 downto 0)
    );
end entity horizontal_counter;

architecture Behavioral of horizontal_counter is
    signal count : unsigned(15 downto 0) := (others => '0');
    signal v_enable : std_logic := '0';
begin

    process(clk_25MHz)
    begin
        if rising_edge(clk_25MHz) then
            if count < H_MAX - 1 then
                count    <= count + 1;
                v_enable <= '0';
            else
                count    <= (others => '0');
                v_enable <= '1';
            end if;
        end if;
    end process;

    H_Count_Value    <= std_logic_vector(count);
    enable_V_Counter <= v_enable;

end architecture Behavioral;
