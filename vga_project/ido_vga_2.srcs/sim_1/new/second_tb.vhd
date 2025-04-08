library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_cam_tb is
end top_cam_tb;

architecture Behavioral of top_cam_tb is

    -- System signals
    signal clk        : std_logic := '0';
    signal reset      : std_logic := '1';

    -- Camera signals
    signal CAM_PCLK   : std_logic := '0';
    signal CAM_VSYNC  : std_logic := '1';  -- מתחיל על 1 (idle)
    signal CAM_HREF   : std_logic := '0';
    signal CAM_D      : std_logic_vector(7 downto 0) := (others => '0');

    -- Instantiate the top-level module
    component top_cam_system is
        Port (
            clk        : in  std_logic;
            reset      : in  std_logic;
            CAM_PCLK   : in  std_logic;
            CAM_VSYNC  : in  std_logic;
            CAM_HREF   : in  std_logic;
            CAM_D      : in  std_logic_vector(7 downto 0)
        );
    end component;

begin

    -- Clock generator (system clk = 100 MHz)
    clk_process : process
    begin
        while true loop
            clk <= not clk;
            wait for 5 ns; -- 100 MHz
        end loop;
    end process;

    -- Pixel clock generator (CAM_PCLK = 25 MHz)
    pclk_process : process
    begin
        while true loop
            CAM_PCLK <= not CAM_PCLK;
            wait for 20 ns; -- 25 MHz
        end loop;
    end process;

    -- Connect the system
    uut: top_cam_system
        port map (
            clk       => clk,
            reset     => reset,
            CAM_PCLK  => CAM_PCLK,
            CAM_VSYNC => CAM_VSYNC,
            CAM_HREF  => CAM_HREF,
            CAM_D     => CAM_D
        );

    -- Stimuli: emulate camera sending 2 pixels
    stim_process : process
    begin
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;

        -- Frame start
        CAM_VSYNC <= '0';
        wait for 20 ns;

        -- Line start
        CAM_HREF <= '1';

        -- Pixel 1: RGB565 = 0x1F3B
        wait until rising_edge(CAM_PCLK);
        CAM_D <= x"1F"; -- byte 1
        wait until rising_edge(CAM_PCLK);
        CAM_D <= x"3B"; -- byte 2

        -- Pixel 2: RGB565 = 0xAA55
        wait until rising_edge(CAM_PCLK);
        CAM_D <= x"AA";
        wait until rising_edge(CAM_PCLK);
        CAM_D <= x"55";

        -- Line end
        wait until rising_edge(CAM_PCLK);
        CAM_HREF <= '0';

        -- Frame end
        wait for 50 ns;
        CAM_VSYNC <= '1';

        -- End sim after a bit
        wait for 500 ns;
        assert false report "Simulation Finished" severity failure;
    end process;

end Behavioral;
