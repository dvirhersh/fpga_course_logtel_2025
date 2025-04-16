library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_ov5640_i2c_init is
end tb_ov5640_i2c_init;

architecture behavior of tb_ov5640_i2c_init is
    -- Testbench signals
    signal clk       : std_logic := '0';
    signal reset     : std_logic := '1';
    signal sioc      : std_logic;
    signal siod      : std_logic;
    signal siod_drv  : std_logic := 'Z';
    signal done      : std_logic;

    -- Instantiate the DUT
    component ov5640_i2c_init
        Port (
            clk     : in  std_logic;
            reset   : in  std_logic;
            sioc    : out std_logic;
            siod    : inout std_logic;
            done    : out std_logic
        );
    end component;

begin
    -- I2C open-drain behavior
    siod <= siod_drv;

    -- DUT instantiation
    DUT: ov5640_i2c_init
        port map (
            clk   => clk,
            reset => reset,
            sioc  => sioc,
            siod  => siod_drv,
            done  => done
        );

    -- Clock process (100 MHz)
    clk_process : process
    begin
        while now < 5 ms loop
            clk <= '0'; wait for 5 ns;
            clk <= '1'; wait for 5 ns;
        end loop;
        wait;
    end process;

    -- Stimulus
    stim_proc : process
    begin
        -- Apply reset
        wait for 50 ns;
        reset <= '0';

        -- Wait for the init to finish
        wait until done = '1';
        report "OV5640 I2C Initialization completed successfully!" severity note;

        -- Stop sim
        wait for 100 ns;
        assert false report "Simulation done." severity failure;
    end process;

end behavior;
