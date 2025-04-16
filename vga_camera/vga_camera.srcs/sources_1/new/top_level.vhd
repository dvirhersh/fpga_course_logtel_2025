library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity camera_to_vga_top is
    Port (
        clk       : in  std_logic;        -- 100 MHz system clock
        reset     : in  std_logic;

        -- Camera signals (PMOD JA & JB)
        pclk      : in  std_logic;
        vsync     : in  std_logic;
        href      : in  std_logic;
        cam_data  : in  std_logic_vector(7 downto 0);
        sioc      : out std_logic;
        siod      : inout std_logic;

        -- VGA signals (from your vga_controller.vhd)
        VGA_HS    : out std_logic;
        VGA_VS    : out std_logic;
        VGA_R     : out std_logic_vector(3 downto 0);
        VGA_G     : out std_logic_vector(3 downto 0);
        VGA_B     : out std_logic_vector(3 downto 0)
    );
end camera_to_vga_top;

architecture Behavioral of camera_to_vga_top is

    -- I2C init module
    component ov5640_i2c_init
        Port (
            clk     : in  std_logic;
            reset   : in  std_logic;
            sioc    : out std_logic;
            siod    : inout std_logic;
            done    : out std_logic
        );
    end component;

    -- Camera capture
    component camera_interface
        Port (
            clk         : in  std_logic;
            reset       : in  std_logic;
            pclk        : in  std_logic;
            vsync       : in  std_logic;
            href        : in  std_logic;
            cam_data    : in  std_logic_vector(7 downto 0);
            pixel_data  : out std_logic_vector(7 downto 0);
            pixel_valid : out std_logic
        );
    end component;

    -- VGA controller (already working)
    component vga_controller
        Port (
            CLK      : in  std_logic;
            SW       : in  std_logic_vector(15 downto 0) := (others => '0');
            BTN      : in  std_logic_vector(4 downto 0)  := (others => '0');
            LED      : out std_logic_vector(15 downto 0);
            VGA_HS   : out std_logic;
            VGA_VS   : out std_logic;
            VGA_R    : out std_logic_vector(3 downto 0);
            VGA_G    : out std_logic_vector(3 downto 0);
            VGA_B    : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Signals
    signal pixel_data  : std_logic_vector(7 downto 0);
    signal pixel_valid : std_logic;
    signal i2c_done    : std_logic;

begin

    -- I2C configuration
    i2c_inst: ov5640_i2c_init
        port map (
            clk   => clk,
            reset => reset,
            sioc  => sioc,
            siod  => siod,
            done  => i2c_done
        );

    -- Camera interface
    cam_inst: camera_interface
        port map (
            clk         => clk,
            reset       => reset,
            pclk        => pclk,
            vsync       => vsync,
            href        => href,
            cam_data    => cam_data,
            pixel_data  => pixel_data,
            pixel_valid => pixel_valid
        );

    -- VGA display (grayscale mapping to RGB)
    vga_inst: vga_controller
        port map (
            CLK      => clk,
            LED      => open,
            VGA_HS   => VGA_HS,
            VGA_VS   => VGA_VS,
            VGA_R    => VGA_R,
            VGA_G    => VGA_G,
            VGA_B    => VGA_B
        );

end Behavioral;
