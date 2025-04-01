-- VGA Controller for Nexys A7 (Artix-7 100T)
-- Generates 640x480 @ 60Hz VGA signals

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity vga_controller is
    Port (
        CLK100MHZ : in  STD_LOGIC;
        HSYNC     : out STD_LOGIC;
        VSYNC     : out STD_LOGIC;
        RED       : out STD_LOGIC_VECTOR (3 downto 0);
        GREEN     : out STD_LOGIC_VECTOR (3 downto 0);
        BLUE      : out STD_LOGIC_VECTOR (3 downto 0)
    );
end vga_controller;

architecture Behavioral of vga_controller is

    -- VGA timing constants for 640x480 @ 60Hz, 25.175MHz pixel clock
    constant H_ACTIVE   : integer := 640;
    constant H_FRONT    : integer := 16;
    constant H_SYNC     : integer := 96;
    constant H_BACK     : integer := 48;
    constant H_TOTAL    : integer := H_ACTIVE + H_FRONT + H_SYNC + H_BACK;

    constant V_ACTIVE   : integer := 480;
    constant V_FRONT    : integer := 10;
    constant V_SYNC     : integer := 2;
    constant V_BACK     : integer := 33;
    constant V_TOTAL    : integer := V_ACTIVE + V_FRONT + V_SYNC + V_BACK;

    signal pix_clk     : STD_LOGIC := '0';
    signal h_counter   : integer range 0 to H_TOTAL - 1 := 0;
    signal v_counter   : integer range 0 to V_TOTAL - 1 := 0;
    signal clk_divider : integer range 0 to 1 := 0;

begin

    -- Generate ~25MHz pixel clock from 100MHz input
    process (CLK100MHZ)
    begin
        if rising_edge(CLK100MHZ) then
            clk_divider <= clk_divider + 1;
            if clk_divider = 1 then
                pix_clk <= not pix_clk;
                clk_divider <= 0;
            end if;
        end if;
    end process;

    -- Horizontal and Vertical counters
    process (pix_clk)
    begin
        if rising_edge(pix_clk) then
            if h_counter = H_TOTAL - 1 then
                h_counter <= 0;
                if v_counter = V_TOTAL - 1 then
                    v_counter <= 0;
                else
                    v_counter <= v_counter + 1;
                end if;
            else
                h_counter <= h_counter + 1;
            end if;
        end if;
    end process;

    -- Generate HSYNC and VSYNC
    HSYNC <= '0' when (h_counter >= H_ACTIVE + H_FRONT and h_counter < H_ACTIVE + H_FRONT + H_SYNC) else '1';
    VSYNC <= '0' when (v_counter >= V_ACTIVE + V_FRONT and v_counter < V_ACTIVE + V_FRONT + V_SYNC) else '1';

    -- Generate simple color pattern (e.g., white square in center)
    process (pix_clk)
    begin
        if rising_edge(pix_clk) then
            if h_counter < H_ACTIVE and v_counter < V_ACTIVE then
                if h_counter > 200 and h_counter < 440 and v_counter > 150 and v_counter < 330 then
                    RED   <= "1111";
                    GREEN <= "1111";
                    BLUE  <= "1111";
                else
                    RED   <= "0000";
                    GREEN <= "0000";
                    BLUE  <= "0000";
                end if;
            else
                RED   <= "0000";
                GREEN <= "0000";
                BLUE  <= "0000";
            end if;
        end if;
    end process;

end Behavioral;
