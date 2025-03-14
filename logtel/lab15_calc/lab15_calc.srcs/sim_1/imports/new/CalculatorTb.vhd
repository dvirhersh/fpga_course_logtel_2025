-- vhdl-linter-disable component type-resolved
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2025 05:22:24 PM
-- Design Name: 
-- Module Name: CalculatorTb - Behavioral
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

entity CalculatorTb is
--  Port ( );
end CalculatorTb;

architecture Behavioral of CalculatorTb is

   constant ClockFrequencyHz : integer := 100e6; -- 100 MHz
   signal   CLK_PERIOD       : time    := 1000 ms / ClockFrequencyHz;

    COMPONENT Calculator 
    Port ( CLK       : in  STD_LOGIC;
           RESET     : in  STD_LOGIC;
           DATA_IN_A : in  STD_LOGIC_VECTOR (15 downto 0);
           DATA_IN_B : in  STD_LOGIC_VECTOR (15 downto 0);
           SEL       : in  STD_LOGIC_VECTOR (2 downto 0);
           DATA_OUT  : out STD_LOGIC_VECTOR (19 downto 0));
    end COMPONENT;

    signal CLK       : STD_LOGIC := '0';
    signal RESET     : STD_LOGIC := '1';  -- Added reset signal, 
    signal DATA_IN_A : STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
    signal DATA_IN_B : STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
    signal SEL       : STD_LOGIC_VECTOR(2 DOWNTO 0)  := (others => '0');
    signal DATA_OUT  : STD_LOGIC_VECTOR(19 DOWNTO 0);
   
begin

    -- Clock generation process
    CLK <= not CLK after CLK_PERIOD / 2;
    
    -- Instantiate calculator
    uut : Calculator
    PORT MAP (
        CLK        => CLK,
        RESET      => RESET,
        DATA_IN_A  => DATA_IN_A,
        DATA_IN_B  => DATA_IN_B,
        SEL        => SEL,
        DATA_OUT   => DATA_OUT
    );

    DATA_IN_A <= std_logic_vector(to_unsigned(1000, DATA_IN_A'length));
    DATA_IN_B <= std_logic_vector(to_unsigned(3   , DATA_IN_B'length));

    process begin
        wait for CLK_PERIOD * 10;
        SEL <= "000";
        wait for CLK_PERIOD * 10;
        RESET <= '0';
        wait for CLK_PERIOD * 10;
        RESET <= '1';
        wait for CLK_PERIOD * 10;
        SEL <= "001";
        wait for CLK_PERIOD * 10;
        RESET <= '0';
        wait for CLK_PERIOD * 10;
        RESET <= '1';
        wait for CLK_PERIOD * 10;
        SEL <= "010";
        wait for CLK_PERIOD * 10;
        RESET <= '0';
        wait for CLK_PERIOD * 10;
        RESET <= '1';
        wait for CLK_PERIOD * 10;
        SEL <= "011";
        wait for CLK_PERIOD * 10;
        RESET <= '0';
        wait for CLK_PERIOD * 100;
        RESET <= '1';      
        --  "001" after 1000*CLK_PERIOD, "010" after 2000*CLK_PERIOD, 
        --             "011" after 2000*CLK_PERIOD, "100" after 5000*CLK_PERIOD, 
        --             "101" after 8000*CLK_PERIOD;
        wait;
  end process;
    
end Behavioral;
