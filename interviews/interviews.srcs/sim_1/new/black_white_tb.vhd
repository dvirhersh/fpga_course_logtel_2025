----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2025 03:59:37 PM
-- Design Name: 
-- Module Name: black_white_tb - Behavioral
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

entity black_white_tb is
--  Port ( );
end black_white_tb;

architecture Behavioral of black_white_tb is

    component black_white
        Port (
            clk     : in  STD_LOGIC;
            rst     : in  STD_LOGIC;
            input_a : in  STD_LOGIC_VECTOR (1 downto 0);
            y_out   : out STD_LOGIC_VECTOR(1 downto 0) -- Encoded output
        );
    end component;

    signal clk     : STD_LOGIC := '0';
    signal rst     : STD_LOGIC := '1';
    signal input_a : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal y_out   : STD_LOGIC_VECTOR(1 downto 0);

    constant CLK_PERIOD : time := 10 ns;

begin

    uut: black_white
        port map (
            clk     => clk,
            rst     => rst,
            input_a => input_a,
            y_out   => y_out
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        wait for 20 ns;
        rst <= '0';

        -- Test WW -> WB
        input_a <= "01";
        wait for 3*CLK_PERIOD;

        -- Test WB -> BB
        input_a <= "11";
        wait for 3*CLK_PERIOD;

        -- Test BB -> BW
        input_a <= "10";
        wait for 3*CLK_PERIOD;

        -- Test BW -> WW
        input_a <= "00";
        wait for 3*CLK_PERIOD;

        -- Test WB -> WW
        input_a <= "01";
        wait for 3*CLK_PERIOD;
        input_a <= "00";
        wait for 3*CLK_PERIOD;

        -- Test BB -> WB
        -- input_a <= "11";
        wait for 3*CLK_PERIOD;
        input_a <= "10";
        wait for 3*CLK_PERIOD;

        -- Test BW -> BB
        input_a <= "11";
        wait for 3*CLK_PERIOD;
        input_a <= "01";
        wait for 3*CLK_PERIOD;

        wait;
    end process;

end Behavioral;
