----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2025 04:34:07 PM
-- Design Name: 
-- Module Name: PLL_CLK_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PLL_CLK_tb is
--  Port ( );
end PLL_CLK_tb;

architecture Behavioral of PLL_CLK_tb is

component PLL_CLK is
    Port ( CLK : in  STD_LOGIC;
           SW  : in  STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (3 downto 0));
end component PLL_CLK;

    signal CLK : std_logic := '0';
    signal SW  : std_logic := '1';
    signal LED : std_logic_vector (3 downto 0);

    constant clock_period : time := 10 ns;

begin

    CLK <= not CLK after clock_period / 2;
    SW  <= '0' after clock_period * 10;

    uut : PLL_CLK
    port map (
        CLK => CLK,
        SW  => SW,
        LED => LED
    );

end Behavioral;
