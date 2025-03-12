-- vhdl-linter-disable component not-declared
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2025 09:41:38 AM
-- Design Name: 
-- Module Name: design_for_rom_reading - Behavioral
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

entity design_for_rom_reading is
    Port ( CLK  : in  STD_LOGIC;
           RST  : in  STD_LOGIC;
           DATA : out STD_LOGIC_VECTOR (7 downto 0));
end design_for_rom_reading;

architecture Behavioral of design_for_rom_reading is

  COMPONENT blk_mem_gen_0
    PORT (
      clka  : IN  STD_LOGIC;
      addra : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
      douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
    );
  END COMPONENT;

  signal counter : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '1');
  
begin

  read_from_rom : process(CLK)
  begin
    if rising_edge(CLK) then
        if RST = '1' then
            counter <= (others => '1');
        else    
            counter <= counter + 1;
        end if;
    end if;
  end process;
  
  uut_rom_4 : blk_mem_gen_0
  PORT MAP (
    clka  => CLK,
    addra => counter,
    douta => DATA
  );

end Behavioral;
