----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2025 10:47:56 AM
-- Design Name: 
-- Module Name: CAMERA_INTERFACE - Behavioral
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

entity CAMERA_INTERFACE is
  Port ( 
        CAM_D : in STD_LOGIC_VECTOR(7 downto 0);
        CAM_HREF : in STD_LOGIC;
        CAM_VSYNC : in STD_LOGIC;
        CAM_PCLK : in STD_LOGIC;
        PIX_DATA : out STD_LOGIC_VECTOR(7 downto 0);
        PIX_CLK : out STD_LOGIC;
        HREF : out STD_LOGIC;
        VSYNC : out STD_LOGIC
  );
end CAMERA_INTERFACE;

architecture Behavioral of CAMERA_INTERFACE is

begin

    process(CAM_PCLK)
    begin
        if rising_edge(CAM_PCLK) then
            PIX_DATA <= CAM_D;
            PIX_CLK <= CAM_PCLK;
            HREF <= CAM_HREF;
            VSYNC <= CAM_VSYNC;
        end if;
    end process;

end Behavioral;