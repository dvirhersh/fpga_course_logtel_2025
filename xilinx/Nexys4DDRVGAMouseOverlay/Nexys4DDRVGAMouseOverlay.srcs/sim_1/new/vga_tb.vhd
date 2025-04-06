-- Testbench for vga_ctrl

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_vga_ctrl is
end tb_vga_ctrl;

architecture Behavioral of tb_vga_ctrl is

    -- Component declaration
    component vga_ctrl
        Port (
            CLK_I : in STD_LOGIC;
            VGA_HS_O : out STD_LOGIC;
            VGA_VS_O : out STD_LOGIC;
            VGA_RED_O : out STD_LOGIC_VECTOR (3 downto 0);
            VGA_BLUE_O : out STD_LOGIC_VECTOR (3 downto 0);
            VGA_GREEN_O : out STD_LOGIC_VECTOR (3 downto 0);
            PS2_CLK : inout STD_LOGIC;
            PS2_DATA : inout STD_LOGIC
        );
    end component;

    -- Clock and signal declarations
    signal CLK_I : STD_LOGIC := '0';
    signal VGA_HS_O : STD_LOGIC;
    signal VGA_VS_O : STD_LOGIC;
    signal VGA_RED_O : STD_LOGIC_VECTOR (3 downto 0);
    signal VGA_BLUE_O : STD_LOGIC_VECTOR (3 downto 0);
    signal VGA_GREEN_O : STD_LOGIC_VECTOR (3 downto 0);
    signal PS2_CLK : STD_LOGIC := 'Z';
    signal PS2_DATA : STD_LOGIC := 'Z';

    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: vga_ctrl
        Port map (
            CLK_I => CLK_I,
            VGA_HS_O => VGA_HS_O,
            VGA_VS_O => VGA_VS_O,
            VGA_RED_O => VGA_RED_O,
            VGA_BLUE_O => VGA_BLUE_O,
            VGA_GREEN_O => VGA_GREEN_O,
            PS2_CLK => PS2_CLK,
            PS2_DATA => PS2_DATA
        );

    -- Clock generation
    clk_process :process
    begin
        while true loop
            CLK_I <= '0';
            wait for CLK_PERIOD/2;
            CLK_I <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    -- Stimulus process (basic simulation only)
    stim_proc: process
    begin
        -- Wait a few cycles
        wait for 500 ns;

        -- Optionally drive PS2_CLK and PS2_DATA if needed
        PS2_CLK <= '1';
        PS2_DATA <= '0';

        wait for 500 ns;

        PS2_CLK <= 'Z';
        PS2_DATA <= 'Z';

        -- Wait and finish
        wait for 5 ms;
        assert false report "Simulation Ended" severity failure;
    end process;

end Behavioral;
