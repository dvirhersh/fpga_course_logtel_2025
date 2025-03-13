-- vhdl-linter-disable type-resolved
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/04/2025 02:19:30 PM
-- Design Name: 
-- Module Name: pll_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all; -- vhdl-linter-disable-line not-declared
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pll_tb is
--  Port ( );
end pll_tb;

architecture Behavioral of pll_tb is

    component clk_wiz_0
        port
            (-- Clock out ports
             clk_out1 : out std_logic;
             clk_out2 : out std_logic;
             clk_out3 : out std_logic;
             clk_out4 : out std_logic;
             -- Status and control signals
             reset    : in  std_logic;
             locked   : out std_logic;
             clk_in1  : in  std_logic
            );
    end component;

    signal clk_out1 : std_logic;
    signal clk_out2 : std_logic;
    signal clk_out3 : std_logic;
    signal clk_out4 : std_logic;
    signal reset    : std_logic := '1';
    signal locked   : std_logic;
    signal clk_in1  : std_logic := '0';

    signal counter_1 : std_logic_vector (9 downto 0) := (others => '0');
    signal counter_2 : std_logic_vector (9 downto 0) := (others => '0');
    signal counter_3 : std_logic_vector (9 downto 0) := (others => '0');
    signal counter_4 : std_logic_vector (9 downto 0) := (others => '0');

begin

pll : clk_wiz_0
   port map ( 
  -- Clock out ports  
   clk_out1 => clk_out1,
   clk_out2 => clk_out2,
   clk_out3 => clk_out3,
   clk_out4 => clk_out4,
   reset    => reset,
   locked   => locked,
   clk_in1  => clk_in1
 );

    clk_in1 <= not clk_in1 after 5 ns;
    reset   <= '0' after 100 ns;
    
    process(clk_out1 ,reset, locked) begin
        if reset = '1' or locked = '0' then
            counter_1 <= (others => '0');
        elsif rising_edge (clk_out1) then   
            counter_1 <= counter_1 + 1;
        end if;
    end process;

    process(clk_out2 ,reset, locked) begin
        if reset = '1' or locked = '0' then
            counter_2 <= (others => '0');
        elsif rising_edge (clk_out2) then   
            counter_2 <= counter_2 + 1;
        end if;
    end process;
    
    
   process(clk_out3 ,reset, locked) begin
        if reset = '1' or locked = '0' then
            counter_3 <= (others => '0');
        elsif rising_edge (clk_out3) then   
            counter_3 <= counter_3 + 1;
        end if;
    end process;
    
    process(clk_out4 ,reset, locked) begin
        if reset = '1' or locked = '0' then
            counter_4 <= (others => '0');
        elsif rising_edge (clk_out4) then   
            counter_4 <= counter_4 + 1;
        end if;
    end process;

end Behavioral;
