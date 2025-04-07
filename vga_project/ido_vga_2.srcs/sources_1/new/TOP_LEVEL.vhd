-- TOP LEVEL DESIGN integrating CAMERA_INTERFACE, FRAME_BUFFER, and VGA_CONTROLLER

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TOP_LEVEL_PMOD_CAMERA is
  Port ( 
        CLK       : in  STD_LOGIC;
        CAM_D     : in  STD_LOGIC_VECTOR(7 downto 0);
        CAM_HREF  : in  STD_LOGIC;
        CAM_VSYNC : in  STD_LOGIC;
        CAM_PCLK  : in  STD_LOGIC;
        SW        : in  STD_LOGIC_VECTOR(15 downto 0);
        BTN       : in  STD_LOGIC_VECTOR(4 downto 0);
        LED       : out STD_LOGIC_VECTOR(15 downto 0);
        VGA_R     : out STD_LOGIC_VECTOR(3 downto 0);
        VGA_G     : out STD_LOGIC_VECTOR(3 downto 0);
        VGA_B     : out STD_LOGIC_VECTOR(3 downto 0);
        VGA_HS    : out STD_LOGIC;
        VGA_VS    : out STD_LOGIC
  );
end TOP_LEVEL_PMOD_CAMERA;

architecture Structural of TOP_LEVEL_PMOD_CAMERA is

    -- Clocking signals
    signal CLK148_5 : STD_LOGIC;
    signal reset    : STD_LOGIC := '0';
    signal locked   : STD_LOGIC;

    -- Camera interface to frame buffer
    signal pix_data : STD_LOGIC_VECTOR(7 downto 0);
    signal pix_clk  : STD_LOGIC;
    signal href     : STD_LOGIC;
    signal vsync    : STD_LOGIC;

    -- Frame buffer to VGA controller
    signal frame_addr : STD_LOGIC_VECTOR(18 downto 0);
    signal frame_data : STD_LOGIC_VECTOR(11 downto 0);

    -- Component Declarations
    component clk_wiz_0
        port (
            clk_in1  : in  STD_LOGIC;
            clk_out1 : out STD_LOGIC;
            reset    : in  STD_LOGIC;
            locked   : out STD_LOGIC
        );
    end component;

    component CAMERA_INTERFACE
        Port ( 
            CAM_D     : in  STD_LOGIC_VECTOR(7 downto 0);
            CAM_HREF  : in  STD_LOGIC;
            CAM_VSYNC : in  STD_LOGIC;
            CAM_PCLK  : in  STD_LOGIC;
            PIX_DATA  : out STD_LOGIC_VECTOR(7 downto 0);
            PIX_CLK   : out STD_LOGIC;
            HREF      : out STD_LOGIC;
            VSYNC     : out STD_LOGIC
        );
    end component;

    component FRAME_BUFFER
        Port ( 
            CLK        : in  STD_LOGIC;
            PIX_DATA   : in  STD_LOGIC_VECTOR(7 downto 0);
            PIX_CLK    : in  STD_LOGIC;
            HREF       : in  STD_LOGIC;
            VSYNC      : in  STD_LOGIC;
            FRAME_ADDR : out STD_LOGIC_VECTOR(18 downto 0);
            FRAME_DATA : out STD_LOGIC_VECTOR(11 downto 0)
        );
    end component;

    component VGA_CONTROLLER
        Port ( 
            CLK       : in  STD_LOGIC;
            SW        : in  STD_LOGIC_VECTOR(15 downto 0);
            BTN       : in  STD_LOGIC_VECTOR(4 downto 0);
            LED       : out STD_LOGIC_VECTOR(15 downto 0);
            VGA_HS    : out STD_LOGIC;
            VGA_VS    : out STD_LOGIC;
            VGA_R     : out STD_LOGIC_VECTOR(3 downto 0);
            VGA_G     : out STD_LOGIC_VECTOR(3 downto 0);
            VGA_B     : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

begin

    -- Clock generation from input clock to 148.5 MHz
    clk_gen : clk_wiz_0
        port map (
            clk_in1  => CLK,
            clk_out1 => CLK148_5,
            reset    => reset,
            locked   => locked
        );

    -- Camera interface logic
    cam_interface_inst : CAMERA_INTERFACE
        port map (
            CAM_D     => CAM_D,
            CAM_HREF  => CAM_HREF,
            CAM_VSYNC => CAM_VSYNC,
            CAM_PCLK  => CAM_PCLK,
            PIX_DATA  => pix_data,
            PIX_CLK   => pix_clk,
            HREF      => href,
            VSYNC     => vsync
        );

    -- Frame buffer logic
    frame_buffer_inst : FRAME_BUFFER
        port map (
            CLK        => CLK148_5,
            PIX_DATA   => pix_data,
            PIX_CLK    => pix_clk,
            HREF       => href,
            VSYNC      => vsync,
            FRAME_ADDR => frame_addr,
            FRAME_DATA => frame_data
        );

    -- VGA controller logic (can be extended to read from buffer later)
    vga_controller_inst : VGA_CONTROLLER
        port map (
            CLK     => CLK148_5,
            SW      => SW,
            BTN     => BTN,
            LED     => LED,
            VGA_HS  => VGA_HS,
            VGA_VS  => VGA_VS,
            VGA_R   => VGA_R,
            VGA_G   => VGA_G,
            VGA_B   => VGA_B
        );

end Structural;
