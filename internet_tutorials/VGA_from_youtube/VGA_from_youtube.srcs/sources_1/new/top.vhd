library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity top is
    port (
        pixel_clk : in  std_logic;
        Hsynq     : out std_logic;
        Vsynq     : out std_logic;
        Red       : out std_logic_vector(3 downto 0);
        Green     : out std_logic_vector(3 downto 0);
        Blue      : out std_logic_vector(3 downto 0)
    );
end entity top;

architecture Behavioral of top is

    signal enable_V_Counter  : std_logic;
    signal H_Count_Value     : std_logic_vector(15 downto 0);
    signal V_Count_Value     : std_logic_vector(15 downto 0);

begin

    VGA_Horiz : entity work.horizontal_counter
        port map (
            clk_25MHz         => pixel_clk,
            enable_V_Counter  => enable_V_Counter,
            H_Count_Value     => H_Count_Value
        );

    VGA_Verti : entity work.vertical_counter
        port map (
            clk_25MHz         => pixel_clk,
            enable_V_Counter  => enable_V_Counter,
            V_Count_Value     => V_Count_Value
        );

    -- Sync signals
    Hsynq <= '1' when H_Count_Value < 96 else '0';
    Vsynq <= '1' when V_Count_Value < 2 else '0';

    -- Display window condition
    process(H_Count_Value, V_Count_Value)
    begin
        if (H_Count_Value > 143 and H_Count_Value < 784 and
            V_Count_Value > 34  and V_Count_Value < 515) then
            Red   <= x"F";
            Green <= x"1";
            Blue  <= x"6";
        else
            Red   <= x"0";
            Green <= x"0";
            Blue  <= x"0";
        end if;
    end process;

end architecture Behavioral;
