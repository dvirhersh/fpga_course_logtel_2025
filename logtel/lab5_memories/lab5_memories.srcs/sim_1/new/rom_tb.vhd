-- vhdl-linter-disable component not-declared
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2025 04:18:27 PM
-- Design Name: 
-- Module Name: rom_tb - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rom_tb is
--  Port ( );
end rom_tb;

architecture Behavioral of rom_tb is

  COMPONENT blk_mem_gen_0
    PORT (
      clka : IN STD_LOGIC;
      addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
    );
  END COMPONENT;

  signal clka  : STD_LOGIC := '0';
  signal addra : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '1');
  signal douta : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');

  constant ClockFrequencyHz : integer := 100e6; -- 100 MHz
  constant ClockPeriod   : time    := 1000 ms / ClockFrequencyHz;

begin

  clka <= not clka after ClockPeriod / 2;

  addra_stimuli : process
  begin
    addra <= addra + 1;
    wait for ClockPeriod;
  end process;

  uut_rom_1_2 : blk_mem_gen_0
  PORT MAP (
    clka  => clka,
    addra => addra,
    douta => douta
  );

end Behavioral;
