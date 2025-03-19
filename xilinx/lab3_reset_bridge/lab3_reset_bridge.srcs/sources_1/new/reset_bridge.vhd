----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2025 01:11:57 PM
-- Design Name: 
-- Module Name: reset_bridge - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reset_bridge is
    Port ( clk_dst : in  STD_LOGIC;
           rst_in  : in  STD_LOGIC;
           rst_out : out STD_LOGIC);
end reset_bridge;

architecture Behavioral of reset_bridge is

    signal rst_meta : STD_LOGIC := '1';

begin

    process (clk_dst) begin
        if rising_edge (clk_dst) then
            rst_meta <= rst_in;   -- First stage of synchronization
            rst_out  <= rst_meta; -- Second stage
        end if;
    end process;
    
end Behavioral;

