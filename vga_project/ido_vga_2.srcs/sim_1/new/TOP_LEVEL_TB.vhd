-- Testbench for TOP_LEVEL_PMOD_CAMERA

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TOP_LEVEL_PMOD_CAMERA_TB is
end TOP_LEVEL_PMOD_CAMERA_TB;

architecture behavior of TOP_LEVEL_PMOD_CAMERA_TB is

    -- Component declaration
    component TOP_LEVEL_PMOD_CAMERA
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
    end component;

    -- Testbench signals
    signal CLK_tb       : STD_LOGIC := '0';
    signal CAM_D_tb     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal CAM_HREF_tb  : STD_LOGIC := '0';
    signal CAM_VSYNC_tb : STD_LOGIC := '0';
    signal CAM_PCLK_tb  : STD_LOGIC := '0';
    signal SW_tb        : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal BTN_tb       : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal LED_tb       : STD_LOGIC_VECTOR(15 downto 0);
    signal VGA_R_tb     : STD_LOGIC_VECTOR(3 downto 0);
    signal VGA_G_tb     : STD_LOGIC_VECTOR(3 downto 0);
    signal VGA_B_tb     : STD_LOGIC_VECTOR(3 downto 0);
    signal VGA_HS_tb    : STD_LOGIC;
    signal VGA_VS_tb    : STD_LOGIC;

    constant CLK_PERIOD : time := 10 ns;
    constant PCLK_PERIOD : time := 20 ns;

begin

    -- Instantiate UUT
    uut: TOP_LEVEL_PMOD_CAMERA
        port map (
            CLK       => CLK_tb,
            CAM_D     => CAM_D_tb,
            CAM_HREF  => CAM_HREF_tb,
            CAM_VSYNC => CAM_VSYNC_tb,
            CAM_PCLK  => CAM_PCLK_tb,
            SW        => SW_tb,
            BTN       => BTN_tb,
            LED       => LED_tb,
            VGA_R     => VGA_R_tb,
            VGA_G     => VGA_G_tb,
            VGA_B     => VGA_B_tb,
            VGA_HS    => VGA_HS_tb,
            VGA_VS    => VGA_VS_tb
        );

    -- System clock generation
    clk_process : process
    begin
        CLK_tb <= '0';
        wait for CLK_PERIOD / 2;
        CLK_tb <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Camera pixel clock generation
    pclk_process : process
    begin
        CAM_PCLK_tb <= '0';
        wait for PCLK_PERIOD / 2;
        CAM_PCLK_tb <= '1';
        wait for PCLK_PERIOD / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Simulate camera sync
        CAM_VSYNC_tb <= '1';
        wait for 40 ns;
        CAM_VSYNC_tb <= '0';

        -- Simulate a line of pixel data
        for i in 0 to 10 loop
            CAM_HREF_tb <= '1';
            CAM_D_tb <= std_logic_vector(to_unsigned(i * 20, 8));
            wait for PCLK_PERIOD;
        end loop;

        CAM_HREF_tb <= '0';
        wait for 200 ns;

        -- Change switch inputs for color pattern
        SW_tb <= X"F0F0";
        BTN_tb <= "00001";

        wait for 1 us;

        -- End simulation
        wait;
    end process;

end behavior;
