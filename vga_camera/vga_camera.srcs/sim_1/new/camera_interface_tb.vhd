library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_camera_interface is
end tb_camera_interface;

architecture sim of tb_camera_interface is
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '1';
    signal pclk        : std_logic := '0';
    signal vsync       : std_logic := '0';
    signal href        : std_logic := '0';
    signal cam_data    : std_logic_vector(7 downto 0) := (others => '0');
    signal pixel_data  : std_logic_vector(7 downto 0);
    signal pixel_valid : std_logic;
    signal frame_done  : std_logic;

    constant PCLK_PERIOD : time := 40 ns;

    component camera_interface
        Port (
            clk         : in  std_logic;
            reset       : in  std_logic;
            pclk        : in  std_logic;
            vsync       : in  std_logic;
            href        : in  std_logic;
            cam_data    : in  std_logic_vector(7 downto 0);
            pixel_data  : out std_logic_vector(7 downto 0);
            pixel_valid : out std_logic;
            frame_done  : out std_logic
        );
    end component;

begin
    uut: camera_interface
        port map (
            clk         => clk,
            reset       => reset,
            pclk        => pclk,
            vsync       => vsync,
            href        => href,
            cam_data    => cam_data,
            pixel_data  => pixel_data,
            pixel_valid => pixel_valid,
            frame_done  => frame_done
        );

    -- System clock (for reference, not used internally yet)
    clk_process : process
    begin
        wait for 5 ns;
        clk <= not clk;
    end process;

    -- Camera pixel clock
    pclk_process : process
    begin
        wait for PCLK_PERIOD / 2;
        pclk <= not pclk;
    end process;

    -- Stimulus
    stim_proc: process
        type pixel_array is array (0 to 2) of std_logic_vector(15 downto 0);
        constant pixels : pixel_array := (
            x"F800",  -- Red
            x"07E0",  -- Green
            x"001F"   -- Blue
        );
        variable i : integer := 0;
    begin
        wait for 100 ns;
        reset <= '0';

        -- Start of frame
        vsync <= '0';
        wait for 2 * PCLK_PERIOD;

        for i in 0 to 2 loop
            href <= '1';

            -- First byte (MSB of RGB565)
            cam_data <= pixels(i)(15 downto 8);
            wait for PCLK_PERIOD;

            -- Second byte (LSB of RGB565)
            cam_data <= pixels(i)(7 downto 0);
            wait for PCLK_PERIOD;

            href <= '0';
            wait for PCLK_PERIOD;
        end loop;

        -- End of frame
        vsync <= '1';
        wait for PCLK_PERIOD;
        vsync <= '0';

        wait for 200 ns;
        assert false report "Simulation finished." severity failure;
    end process;

end sim;
