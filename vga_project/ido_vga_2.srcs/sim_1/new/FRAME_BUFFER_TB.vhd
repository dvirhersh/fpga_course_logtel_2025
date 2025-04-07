-- Testbench for FRAME_BUFFER

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FRAME_BUFFER_TB is
end FRAME_BUFFER_TB;

architecture behavior of FRAME_BUFFER_TB is

    -- Component Declaration
    component FRAME_BUFFER
        Port (
            CLK         : in  STD_LOGIC;
            PIX_DATA    : in  STD_LOGIC_VECTOR(7 downto 0);
            PIX_CLK     : in  STD_LOGIC;
            HREF        : in  STD_LOGIC;
            VSYNC       : in  STD_LOGIC;
            FRAME_ADDR  : out STD_LOGIC_VECTOR(18 downto 0);
            FRAME_DATA  : out STD_LOGIC_VECTOR(11 downto 0)
        );
    end component;

    -- Testbench signals
    signal CLK_tb        : STD_LOGIC := '0';
    signal PIX_DATA_tb   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal PIX_CLK_tb    : STD_LOGIC := '0';
    signal HREF_tb       : STD_LOGIC := '0';
    signal VSYNC_tb      : STD_LOGIC := '0';
    signal FRAME_ADDR_tb : STD_LOGIC_VECTOR(18 downto 0);
    signal FRAME_DATA_tb : STD_LOGIC_VECTOR(11 downto 0);

    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate Unit Under Test (UUT)
    uut: FRAME_BUFFER
        Port map (
            CLK        => CLK_tb,
            PIX_DATA   => PIX_DATA_tb,
            PIX_CLK    => PIX_CLK_tb,
            HREF       => HREF_tb,
            VSYNC      => VSYNC_tb,
            FRAME_ADDR => FRAME_ADDR_tb,
            FRAME_DATA => FRAME_DATA_tb
        );

    -- Clock generation
    clk_process :process
    begin
        CLK_tb <= '0';
        wait for CLK_PERIOD / 2;
        CLK_tb <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initial reset and sync pulse
        VSYNC_tb <= '1';
        wait for 20 ns;
        VSYNC_tb <= '0';

        -- Simulate several pixel data during active HREF
        for i in 0 to 10 loop
            PIX_DATA_tb <= std_logic_vector(to_unsigned(i * 20, 8));
            HREF_tb <= '1';
            wait for CLK_PERIOD;
        end loop;

        HREF_tb <= '0';
        wait for 100 ns;

        -- Another frame with sync
        VSYNC_tb <= '1';
        wait for 10 ns;
        VSYNC_tb <= '0';

        -- End simulation
        wait;
    end process;

end behavior;
