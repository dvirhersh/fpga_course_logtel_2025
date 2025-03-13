----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/04/2025 02:52:41 PM
-- Design Name: 
-- Module Name: duty_cycle_tb - Behavioral
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

entity PWM_Generator_TB is
--  Port ( );
end PWM_Generator_TB ;

architecture Behavioral of PWM_Generator_TB is
 -- Component Declaration
 component PWM_Generator
     Port ( RESET  : in  STD_LOGIC;
            DATA   : in  STD_LOGIC_VECTOR(6 downto 0);
            LOAD   : in  STD_LOGIC;
            CLOCK  : in  STD_LOGIC;
            PWM    : out STD_LOGIC);
 end component;

 -- Signal Declarations
 signal RESET  : STD_LOGIC := '0';
 signal DATA   : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
 signal LOAD   : STD_LOGIC := '0';
 signal CLOCK  : STD_LOGIC := '0';
 signal PWM    : STD_LOGIC;

 -- Clock period definitions
 constant CLOCK_PERIOD : time := 10 ns;  -- 100 MHz clock
 
begin

-- Instantiate the Unit Under Test (UUT)
UUT: PWM_Generator port map (
    RESET => RESET,
    DATA => DATA,
    LOAD => LOAD,
    CLOCK => CLOCK,
    PWM => PWM
);

-- Clock process
CLOCK_process: process
begin
    CLOCK <= '0';
    wait for CLOCK_PERIOD/2;
    CLOCK <= '1';
    wait for CLOCK_PERIOD/2;
end process;

-- Stimulus process
stim_proc: process
begin
    -- Initialize
    RESET <= '1';
    wait for 100 ns;
    RESET <= '0';
    wait for 100 ns;

    -- Test initial 50% duty cycle
    wait for 20 us;

    -- Change duty cycle to 25%
    DATA <= std_logic_vector(to_unsigned(25, 7));
    LOAD <= '1';
    wait for CLOCK_PERIOD;
    LOAD <= '0';
    wait for 20 us;

    -- Change duty cycle to 75%
    DATA <= std_logic_vector(to_unsigned(75, 7));
    LOAD <= '1';
    wait for CLOCK_PERIOD;
    LOAD <= '0';
    wait for 20 us;

    -- Change duty cycle to 10%
    DATA <= std_logic_vector(to_unsigned(10, 7));
    LOAD <= '1';
    wait for CLOCK_PERIOD;
    LOAD <= '0';
    wait for 20 us;

    -- Change duty cycle to 90%
    DATA <= std_logic_vector(to_unsigned(90, 7));
    LOAD <= '1';
    wait for CLOCK_PERIOD;
    LOAD <= '0';
    wait for 20 us;

    -- End simulation
    wait;
end process;

end Behavioral;
