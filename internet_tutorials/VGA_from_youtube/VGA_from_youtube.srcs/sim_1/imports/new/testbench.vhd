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
    component top
        port (
            clk    : in  std_logic;
            Hsynq  : out std_logic;
            Vsynq  : out std_logic;
            Red    : out std_logic_vector(3 downto 0);
            Green  : out std_logic_vector(3 downto 0);
            Blue   : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: top
        port map (
            clk    => clk,
            Hsynq  => Hsynq,
            Vsynq  => Vsynq,
            Red    => Red,
            Green  => Green,
            Blue   => Blue
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
