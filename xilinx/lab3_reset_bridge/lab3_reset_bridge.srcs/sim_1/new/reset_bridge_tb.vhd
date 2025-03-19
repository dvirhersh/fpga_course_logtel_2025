----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2025 01:25:22 PM
-- Design Name: 
-- Module Name: reset_bridge_tb - Behavioral
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

entity reset_bridge_tb is
--  Port ( );
end reset_bridge_tb;

architecture behavior of reset_bridge_tb is 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT reset_bridge
    PORT(
        clk_dst : IN  std_logic;
        rst_in  : IN  std_logic;
        rst_out : OUT std_logic
    );
    END COMPONENT;
    
    -- Signals for Testbench
    SIGNAL clk_dst : std_logic := '0';
    SIGNAL rst_in  : std_logic := '0';
    SIGNAL rst_out : std_logic;
    
    -- Clock period definition
    CONSTANT clk_period : time := 10 ns;

BEGIN
    
    -- Instantiate the Unit Under Test (UUT)
    uut: reset_bridge PORT MAP (
          clk_dst => clk_dst,
          rst_in  => rst_in,
          rst_out => rst_out
    );
    
    -- Clock process definition
    clk_process : PROCESS
    BEGIN
        WHILE TRUE LOOP
            clk_dst <= '0';
            WAIT FOR clk_period / 2;
            clk_dst <= '1';
            WAIT FOR clk_period / 2;
        END LOOP;
        WAIT;
    END PROCESS;
    
    -- Stimulus process
    stim_proc: PROCESS
    BEGIN	    
        -- Apply initial reset
        rst_in <= '1';
        WAIT FOR 30 ns;
        
        -- Deassert reset
        rst_in <= '0';
        WAIT FOR 50 ns;
        
        -- Apply reset again
        rst_in <= '1';
        WAIT FOR 20 ns;
        
        -- Deassert reset
        rst_in <= '0';
        WAIT FOR 50 ns;
        
        -- End simulation
        WAIT;
    END PROCESS;
    
END behavior;
