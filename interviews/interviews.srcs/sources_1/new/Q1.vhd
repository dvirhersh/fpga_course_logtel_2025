----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2025 01:54:50 PM
-- Design Name: 
-- Module Name: Q1 - Behavioral
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

entity Q1 is
    Port ( sys_clk  : in  STD_LOGIC;
           input_1  : in  STD_LOGIC;
           output_2 : out STD_LOGIC);
end Q1;

architecture Behavioral of Q1 is

    signal previous_input_1 : STD_LOGIC ;

begin

    process(sys_clk)
    begin
        if rising_edge(sys_clk) then
            previous_input_1 <= input_1;
            if previous_input_1 /= input_1 then
                output_2 <= '1';
            else
                output_2 <= '0';
            end if;
        end if;
    end process;

end Behavioral;
