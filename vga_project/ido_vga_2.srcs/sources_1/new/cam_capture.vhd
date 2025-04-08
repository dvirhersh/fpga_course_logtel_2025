library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cam_capture is
    Port (
        clk       : in  std_logic;  -- שעון מערכת
        reset     : in  std_logic;
        CAM_PCLK  : in  std_logic;
        CAM_VSYNC : in  std_logic;
        CAM_HREF  : in  std_logic;
        CAM_D     : in  std_logic_vector(7 downto 0);
        pixel_out : out std_logic_vector(15 downto 0); -- RGB565
        pixel_valid : out std_logic
    );
end cam_capture;

architecture Behavioral of cam_capture is
    signal cam_pclk_prev : std_logic := '0';
    signal byte_buffer   : std_logic_vector(7 downto 0) := (others => '0');
    signal byte_count    : integer range 0 to 1 := 0;
    signal capturing     : boolean := false;
begin

    process(clk)
    begin
        if rising_edge(clk) then
            -- Detect rising edge of CAM_PCLK
            if cam_pclk_prev = '0' and CAM_PCLK = '1' then
                if CAM_VSYNC = '0' and CAM_HREF = '1' then
                    capturing <= true;
                    
                    if byte_count = 0 then
                        byte_buffer <= CAM_D;
                        byte_count <= 1;
                        pixel_valid <= '0';
                    else
                        pixel_out <= byte_buffer & CAM_D;  -- Combine two bytes into one RGB565 pixel
                        byte_count <= 0;
                        pixel_valid <= '1';
                    end if;

                else
                    capturing <= false;
                    byte_count <= 0;
                    pixel_valid <= '0';
                end if;
            end if;
            cam_pclk_prev <= CAM_PCLK;
        end if;
    end process;
end Behavioral;
