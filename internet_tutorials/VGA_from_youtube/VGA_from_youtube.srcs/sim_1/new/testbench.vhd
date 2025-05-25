library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end entity testbench;

architecture sim of testbench is

    signal clk    : std_logic := '0';
    signal Hsynq  : std_logic;
    signal Vsynq  : std_logic;
    signal Red    : std_logic_vector(3 downto 0);
    signal Green  : std_logic_vector(3 downto 0);
    signal Blue   : std_logic_vector(3 downto 0);

    -- Component declaration for the Unit Under Test (UUT)
    component design_1_wrapper
        port (
            clk_0    : in  std_logic;
            Hsynq_0  : out std_logic;
            Vsynq_0  : out std_logic;
            Red_0    : out std_logic_vector(3 downto 0);
            Green_0  : out std_logic_vector(3 downto 0);
            Blue_0   : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: design_1_wrapper
        port map (
            clk_0    => clk,
            Hsynq_0  => Hsynq,
            Vsynq_0  => Vsynq,
            Red_0    => Red,
            Green_0  => Green,
            Blue_0   => Blue
        );

    -- Clock generation: 100 MHz clock => 10 ns period
    clk_process: process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

end architecture sim;
