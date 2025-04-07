-- Testbench for VGA_CONTROLLER

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGA_CONTROLLER_TB is
end VGA_CONTROLLER_TB;

architecture behavior of VGA_CONTROLLER_TB is

    -- Component Declaration
    component VGA_CONTROLLER
        Port ( 
            CLK    : in  STD_LOGIC;
            SW     : in  STD_LOGIC_VECTOR (15 downto 0);
            BTN    : in  STD_LOGIC_VECTOR (4 downto 0);
            LED    : out STD_LOGIC_VECTOR (15 downto 0);
            VGA_HS : out STD_LOGIC;
            VGA_VS : out STD_LOGIC;
            VGA_R  : out STD_LOGIC_VECTOR (3 downto 0);
            VGA_G  : out STD_LOGIC_VECTOR (3 downto 0);
            VGA_B  : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- Testbench signals
    signal CLK_tb    : STD_LOGIC := '0';
    signal SW_tb     : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal BTN_tb    : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
    signal LED_tb    : STD_LOGIC_VECTOR (15 downto 0);
    signal VGA_HS_tb : STD_LOGIC;
    signal VGA_VS_tb : STD_LOGIC;
    signal VGA_R_tb  : STD_LOGIC_VECTOR (3 downto 0);
    signal VGA_G_tb  : STD_LOGIC_VECTOR (3 downto 0);
    signal VGA_B_tb  : STD_LOGIC_VECTOR (3 downto 0);

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: VGA_CONTROLLER
        Port map (
            CLK    => CLK_tb,
            SW     => SW_tb,
            BTN    => BTN_tb,
            LED    => LED_tb,
            VGA_HS => VGA_HS_tb,
            VGA_VS => VGA_VS_tb,
            VGA_R  => VGA_R_tb,
            VGA_G  => VGA_G_tb,
            VGA_B  => VGA_B_tb
        );

    -- Clock generation process
    clk_process :process
    begin
        CLK_tb <= '0';
        wait for CLK_PERIOD/2;
        CLK_tb <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Hold reset and set switches
        SW_tb <= X"F0F0";  -- Some color pattern
        BTN_tb <= (others => '0');

        -- Run simulation for some time
        wait for 5 ms;

        -- Change switch value to test color change
        SW_tb <= X"0F0F";
        wait for 5 ms;

        -- Finish simulation
        wait;
    end process;

end behavior;
