----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2025 04:03:31 PM
-- Design Name: 
-- Module Name: LED_manager_tb - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- vhdl-linter-disable-line not-declared
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED_manager_tb is
--  Port ( );
end LED_manager_tb;

architecture Behavioral of LED_manager_tb is

    component LED_manager
        Port (
            Channel_1_data   : in STD_LOGIC_VECTOR (7 downto 0);
            Channel_2_data   : in STD_LOGIC_VECTOR (7 downto 0);
            Channel_1_enable : in STD_LOGIC;
            Channel_2_enable : in STD_LOGIC;
            selector         : in STD_LOGIC;
            clock            : in STD_LOGIC;
            reset            : in STD_LOGIC;
            data_out         : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    signal Channel_1_data       : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal Channel_2_data   : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal Channel_1_enable : STD_LOGIC := '0';
    signal Channel_2_enable : STD_LOGIC := '0';
    signal selector         : STD_LOGIC := '0';
    signal clock            : STD_LOGIC := '0';
    signal reset            : STD_LOGIC := '0';
    signal data_out         : STD_LOGIC_VECTOR (7 downto 0);

    constant clock_period : time := 10 ns;

begin

    uut: LED_manager
        port map (
            Channel_1_data   => Channel_1_data,
            Channel_2_data   => Channel_2_data,
            Channel_1_enable => Channel_1_enable,
            Channel_2_enable => Channel_2_enable,
            selector         => selector,
            clock            => clock,
            reset            => reset,
            data_out         => data_out
    );

    reset <= '1', '0' after clock_period * 10;
    clock <= not clock after 5 ns;

    selector <= '0', '1' after clock_period * 20, '0' after clock_period * 50, '1' after clock_period * 100;

    -- data generation
    Channel_1_data <= Channel_1_data + X"03" after clock_period * 2;
    Channel_2_data <= Channel_2_data + X"04" after clock_period * 3;
    Channel_1_enable <= '1';
    Channel_2_enable <= '1';
      
end Behavioral;
