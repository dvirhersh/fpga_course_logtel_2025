library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity camera_interface is
    Port (
        clk         : in  std_logic;  -- System clock (e.g., 100MHz)
        reset       : in  std_logic;

        -- OV5640 camera signals
        pclk        : in  std_logic;
        vsync       : in  std_logic;
        href        : in  std_logic;
        cam_data    : in  std_logic_vector(7 downto 0);

        -- Framebuffer or VGA interface
        pixel_data  : out std_logic_vector(7 downto 0); -- grayscale
        pixel_valid : out std_logic;
        frame_done  : out std_logic
    );
end camera_interface;

architecture Behavioral of camera_interface is
    signal byte_count : std_logic := '0';
    signal pixel_buf  : std_logic_vector(15 downto 0);
begin

    process(pclk)
    begin
        if rising_edge(pclk) then
            if reset = '1' then
                pixel_valid <= '0';
                frame_done  <= '0';
                byte_count  <= '0';
            else
                if vsync = '1' then
                    frame_done <= '1';
                else
                    frame_done <= '0';
                end if;

                if href = '1' then
                    if byte_count = '0' then
                        pixel_buf(15 downto 8) <= cam_data;
                        byte_count <= '1';
                        pixel_valid <= '0';
                    else
                        pixel_buf(7 downto 0) <= cam_data;
                        byte_count <= '0';
                        -- Convert RGB565 to grayscale
                        pixel_data <= pixel_buf(15 downto 13) & pixel_buf(10 downto 8) & pixel_buf(4 downto 3); -- simple average
                        pixel_valid <= '1';
                    end if;
                else
                    pixel_valid <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
