----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/18/2025 06:19:08 PM
-- Design Name: 
-- Module Name: GPIO_Demo_tb - Behavioral
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

entity GPIO_Demo_tb is
--  Port ( );
end GPIO_Demo_tb;

architecture Behavioral of GPIO_Demo_tb is

component GPIO_demo
    port(
        SW 			: in  STD_LOGIC_VECTOR (15 downto 0);
        BTN 		: in  STD_LOGIC_VECTOR (4 downto 0);
        CLK 		: in  STD_LOGIC;
        LED 		: out  STD_LOGIC_VECTOR (15 downto 0);
        SSEG_CA 	: out  STD_LOGIC_VECTOR (7 downto 0);
        SSEG_AN 	: out  STD_LOGIC_VECTOR (7 downto 0);
        UART_TXD 	: out  STD_LOGIC;
        RGB1_Red	: out  STD_LOGIC;
        RGB1_Green	: out  STD_LOGIC;
        RGB1_Blue	: out  STD_LOGIC;	
        RGB2_Red	: out  STD_LOGIC;
        RGB2_Green	: out  STD_LOGIC;
        RGB2_Blue	: out  STD_LOGIC;
        micClk      : out STD_LOGIC;
        micLRSel    : out STD_LOGIC;
        micData     : in STD_LOGIC;
        ampPWM      : out STD_LOGIC;
        ampSD       : out STD_LOGIC		
    );
end component;

       signal SW         : STD_LOGIC_VECTOR (15 downto 0);
       signal BTN 		 : STD_LOGIC_VECTOR (4 downto 0) := (others => '1');
       signal CLK 		 : STD_LOGIC := '0';
       signal LED 		 : STD_LOGIC_VECTOR (15 downto 0);
       signal SSEG_CA 	 : STD_LOGIC_VECTOR (7 downto 0);
       signal SSEG_AN 	 : STD_LOGIC_VECTOR (7 downto 0);
       signal UART_TXD 	 : STD_LOGIC;
       signal RGB1_Red	 : STD_LOGIC;
       signal RGB1_Green : STD_LOGIC;
       signal RGB1_Blue	 : STD_LOGIC;	
       signal RGB2_Red	 : STD_LOGIC;
       signal RGB2_Green : STD_LOGIC;
       signal RGB2_Blue	 : STD_LOGIC;
       signal micClk     : STD_LOGIC;
       signal micLRSel   : STD_LOGIC;
       signal micData    : STD_LOGIC;
       signal ampPWM     : STD_LOGIC;
       signal ampSD      : STD_LOGIC;		
       constant clock_period : time := 10 ns;

begin

    uut : GPIO_demo port map (
        SW => SW,
        BTN => BTN,
        CLK => CLK,
        LED => LED,
        SSEG_CA => SSEG_CA,
        SSEG_AN => SSEG_AN,
        UART_TXD => UART_TXD,
        RGB1_Red => RGB1_Red,
        RGB1_Blue => RGB1_Blue,
        RGB1_Green => RGB1_Green,
        RGB2_Red => RGB2_Red,
        RGB2_Blue => RGB2_Blue,
        RGB2_Green => RGB2_Green,        
        micClk => micClk,
        micLRSel => micLRSel,
        micData => micData,
        ampPWM => ampPWM,
        ampSD => ampSD
    );
    CLK <= not CLK after clock_period / 2;
    BTN(4) <= '1', '0' after clock_period * 100;

end Behavioral;
