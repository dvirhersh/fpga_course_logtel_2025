library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity top is
    port (
        pixel_clk : in  std_logic;
        cntl      : in  std_logic;
        Hsynq     : out std_logic;
        Vsynq     : out std_logic;
        Red       : out std_logic_vector(3 downto 0);
        Green     : out std_logic_vector(3 downto 0);
        Blue      : out std_logic_vector(3 downto 0)
    );
end entity top;

architecture Behavioral of top is

    constant FRAME_WIDTH : integer := 640;   -- Width of the frame
    constant FRAME_HEIGHT : integer := 480;  -- Height of the frame
    constant H_FP : integer := 16;           -- Horizontal Front Porch
    constant H_PW : integer := 96;           -- Horizontal Pulse Width
    constant H_MAX : integer := 800;         -- Total Horizontal Pixels (640 + Front Porch + Back Porch + Sync)
    constant V_FP : integer := 10;           -- Vertical Front Porch
    constant V_PW : integer := 2;            -- Vertical Pulse Width
    constant V_MAX : integer := 525;         -- Total Vertical Pixels (480 + Front Porch + Back Porch + Sync)
    constant BITS_WIDTH : integer := 12;     -- Data width for bits
    constant ADDR_WIDTH : integer := 19;     -- Address width
    constant PIX_WIDTH : integer := 12;      -- Pixel data width
    constant VGABIT_WIDTH : integer := 4;    -- VGA color depth
    constant CAMERA_WIDTH : integer := 640;  -- Camera width
    constant CAMERA_HEIGHT : integer := 480; -- Camera height

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
    Hsynq <= '1' when H_Count_Value < H_PW else '0'; -- 96
    Vsynq <= '1' when V_Count_Value < V_PW else '0'; -- 2

    -- Display window condition
    process(H_Count_Value, V_Count_Value)
    begin
        if cntl = '1' then
            if (H_Count_Value > 143 and H_Count_Value < 784 and
                V_Count_Value > 34  and V_Count_Value < 515) then
                Red   <= x"6";
                Green <= x"1";
                Blue  <= x"F";
            else
                Red   <= x"0";
                Green <= x"0";
                Blue  <= x"0";
            end if;
        else
            if H_Count_Value < FRAME_WIDTH/8 then
                -- black
                Red   <= "0000";
                Blue  <= "0000";
                Green <= "0000";
            elsif(H_Count_Value >= FRAME_WIDTH/8 and H_Count_Value < FRAME_WIDTH/4) then
                -- blue
                Red   <= "0000";
                Blue  <= "1111";
                Green <= "0000";
            elsif(H_Count_Value >= FRAME_WIDTH/4 and H_Count_Value < FRAME_WIDTH/8 * 3) then
                -- green
                Red   <= "0000";
                Blue  <= "0000";
                Green <= "1111";
            elsif(H_Count_Value >= FRAME_WIDTH/8 * 3 and H_Count_Value < FRAME_WIDTH/2) then
                -- cyan
                Red   <= "0000";
                Blue  <= "1111";
                Green <= "1111";
            elsif(H_Count_Value >= FRAME_WIDTH/2 and H_Count_Value < FRAME_WIDTH/8 * 5) then
                -- red 
                Red   <= "1111";
                Blue  <= "0000";
                Green <= "0000";
            elsif(H_Count_Value >= FRAME_WIDTH/8 * 5 and H_Count_Value < FRAME_WIDTH/4 * 3) then
                -- magenta
                Red   <= "1111";
                Blue  <= "1111";
                Green <= "0000";
            elsif(H_Count_Value >= FRAME_WIDTH/4 * 3 and H_Count_Value < FRAME_WIDTH/8 * 7) then
                -- yellow
                Red   <= "1111";
                Blue  <= "0000";
                Green <= "1111";
            elsif(H_Count_Value >= FRAME_WIDTH/8 * 7 and H_Count_Value < FRAME_WIDTH) then
                -- white 
                Red   <= "1111";
                Blue  <= "1111";
                Green <= "1111";
            end if;
        end if;
    end process;

end architecture Behavioral;
