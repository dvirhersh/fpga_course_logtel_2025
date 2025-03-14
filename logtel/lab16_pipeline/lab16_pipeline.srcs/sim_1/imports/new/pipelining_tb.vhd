----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 04:17:27 PM
-- Design Name: 
-- Module Name: pipelining_tb - Behavioral
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

entity pipelining_tb is
--  Port ( );
end pipelining_tb;

ARCHITECTURE behavior OF pipelining_tb IS 

component pipelining is
    Port ( CLOCK    : in STD_LOGIC;
           RESET    : in STD_LOGIC;
           A        : in STD_LOGIC_VECTOR (59 downto 0);
           B        : in STD_LOGIC_VECTOR (59 downto 0);
           COMP_OUT : out STD_LOGIC
           );
end component pipelining;

    constant ClockFrequency : integer := 200e6; -- 200 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;

    signal CLOCK    : STD_LOGIC := '0';
    signal RESET    : STD_LOGIC := '1';
    signal A        : STD_LOGIC_VECTOR (59 downto 0);
    signal B        : STD_LOGIC_VECTOR (59 downto 0);
    signal COMP_OUT : STD_LOGIC;

begin

    CLOCK <= not CLOCK after ClockPeriod / 2;
   
    -- Stimulus process
    stim_proc: PROCESS
    BEGIN	    
        -- Apply Reset

        RESET <= '1';
        WAIT FOR 13 ns;
        RESET <= '0';

        -- Apply test vectors
        A <= X"000_0000_0000_0001";
        B <= X"000_0000_0000_0001";
        WAIT FOR 3*ClockPeriod;

        A <= X"000_0000_0000_0010";
        B <= X"000_0000_0000_0001";
        WAIT FOR 4*ClockPeriod;

        A <= X"FFF_FFFF_FFFF_FFFF";
        B <= X"FFF_FFFF_FFFF_FFFF";
        WAIT FOR 5*ClockPeriod;

        A <= X"234_5678_9ABC_DEF0";
        B <= X"FED_CBA9_8765_4321";
        WAIT FOR 6*ClockPeriod;

        -- End simulation
        WAIT FOR 10 * ClockPeriod;
        WAIT;
    END PROCESS;

    -- Instantiate the Unit Under Test (UUT)
    uut: pipelining PORT MAP (
        CLOCK => CLOCK,
        RESET => RESET,
        A => A,
        B => B,
        COMP_OUT => COMP_OUT
    );
END behavior;