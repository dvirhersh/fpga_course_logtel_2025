----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2025 06:35:55 PM
-- Design Name: 
-- Module Name: EDGE_DETECTOR - Behavioral
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

entity EDGE_DETECTOR is
    Port ( CLK    : in  STD_LOGIC;
           RST    : in  STD_LOGIC;
           SW     : in  STD_LOGIC;
           SW_OUT : out STD_LOGIC);
end EDGE_DETECTOR;

architecture Behavioral of EDGE_DETECTOR is

    signal sw_meta : std_logic := '0';
    signal sw_sync : std_logic := '0';

begin

    sync_input : process(CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                sw_sync <= '0';
                sw_meta <= '0';
            else
                sw_meta <= SW;
                sw_sync <= sw_meta;
            end if;
        end if;
    end process;

    SW_OUT <= sw_sync;

end Behavioral;
