----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/04/2025 02:51:08 PM
-- Design Name: 
-- Module Name: duty_cycle - Behavioral
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

entity PWM_Generator is
    Port ( RESET  : in  STD_LOGIC;
           DATA   : in  STD_LOGIC_VECTOR(6 downto 0);
           LOAD   : in  STD_LOGIC;
           CLOCK  : in  STD_LOGIC;
           PWM    : out STD_LOGIC);
end PWM_Generator;

architecture Behavioral of PWM_Generator is
    signal counter : unsigned(6 downto 0) := (others => '0');
    signal duty_cycle : unsigned(6 downto 0) := to_unsigned(50, 7);
    signal update_counter : unsigned(10 downto 0) := (others => '0');
begin
    process(CLOCK, RESET)
    begin
        if RESET = '1' then
            counter <= (others => '0');
            duty_cycle <= to_unsigned(50, 7);
            update_counter <= (others => '0');
            PWM <= '0';
        elsif rising_edge(CLOCK) then
            -- Update duty cycle every 10 microseconds
            if update_counter = 999 then
                update_counter <= (others => '0');
                if LOAD = '1' then
                    duty_cycle <= unsigned(DATA);
                end if;
            else
                update_counter <= update_counter + 1;
            end if;

            -- Generate PWM signal
            if counter < 100 then
                counter <= counter + 1;
            else
                counter <= (others => '0');
            end if;

            if counter < duty_cycle then
                PWM <= '1';
            else
                PWM <= '0';
            end if;
        end if;
    end process;
end Behavioral;
