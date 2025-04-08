----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2025 10:50:55 AM
-- Design Name: 
-- Module Name: FRAME_BUFFER - Behavioral
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

entity FRAME_BUFFER is
  Port ( 
        CLK : in STD_LOGIC;
        PIX_DATA : in STD_LOGIC_VECTOR(7 downto 0);
        PIX_CLK : in STD_LOGIC;
        HREF : in STD_LOGIC;
        VSYNC : in STD_LOGIC;
        FRAME_ADDR : out STD_LOGIC_VECTOR(18 downto 0);
        FRAME_DATA : out STD_LOGIC_VECTOR(11 downto 0)
  );
end FRAME_BUFFER;

architecture Behavioral of FRAME_BUFFER is

    signal addr : STD_LOGIC_VECTOR(18 downto 0) := (others => '0');
    signal data : STD_LOGIC_VECTOR(11 downto 0);
    signal we   : STD_LOGIC := '0';

begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if VSYNC = '1' then
                addr <= (others => '0');
            elsif HREF = '1' then
                addr <= std_logic_vector(unsigned(addr) + 1);
                data <= std_logic_vector(resize(unsigned(PIX_DATA), 12));
                FRAME_ADDR <= addr;
                FRAME_DATA <= data;
            end if;
        end if;
    end process;

end Behavioral;