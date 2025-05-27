----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2025 02:13:20 PM
-- Design Name: 
-- Module Name: Q1_V2 - Behavioral
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

entity Q1_V2 is
    Port ( sys_clk : in STD_LOGIC;
           input_1 : in STD_LOGIC;
           output_2 : out STD_LOGIC);
end Q1_V2;

architecture Behavioral of Q1_V2 is
    signal Q0, Q1 : STD_LOGIC := '0';
begin

    process(sys_clk)
    begin
        if rising_edge(sys_clk) then
            Q0 <= input_1;
            Q1 <= Q0;
        end if;
    end process;

    output_2 <= Q0 xor Q1;
    
end Behavioral;
