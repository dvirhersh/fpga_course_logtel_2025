----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/29/2016 11:58:32 AM
-- Design Name: 
-- Module Name: DP_memory - Behavioral
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

entity DP_memory is
    Port ( PortA_clk : in STD_LOGIC;
           PortA_addr : in STD_LOGIC_VECTOR (9 downto 0);
           PortA_dataIn : in STD_LOGIC_VECTOR (7 downto 0);
           PortA_writeEnable : in STD_LOGIC;
           PortA_dataOut : out STD_LOGIC_VECTOR (7 downto 0);
           PortB_clk : in STD_LOGIC;
           PortB_addr : in STD_LOGIC_VECTOR (9 downto 0);
           PortB_dataIn : in STD_LOGIC_VECTOR (7 downto 0);
           PortB_writeEnable : in STD_LOGIC;
           PortB_dataOut : out STD_LOGIC_VECTOR (7 downto 0));
end DP_memory;

architecture Behavioral of DP_memory is
    type memoryByteArray is array(0 to 1023) of std_logic_vector(7 downto 0);
    shared variable memoryBlock : memoryByteArray:=(others =>(others=> '0'));
begin

   PortA: process(portA_clk)    
          variable address : integer range 0 to 1023 := 0;
        begin
    
         if rising_edge(PortA_clk) then
             address:= to_integer(unsigned(portA_addr));
             if(portA_writeEnable='1') then
               memoryBlock(address):=PortA_dataIn;
             end if;
             portA_dataOut<= memoryBlock(address);
         end if;
    end process PortA;
        
            PortB: process(portB_clk)
           variable address: integer range 0 to 1023:=0;
         begin
            
            if rising_edge(PortB_clk) then
                address:= to_integer(unsigned(portB_addr));
                if(portB_writeEnable='1') then
                 memoryBlock(address):=PortB_dataIn;
                end if;
                portB_dataOut<= memoryBlock(address);
            end if;
      end process PortB;

end Behavioral;
--<copyright-disclaimer-start>
--  **************************************************************************************************************
--  * © 2023 Advanced Micro Devices, Inc. All rights reserved.                                                   *
--  * DISCLAIMER                                                                                                 *
--  * The information contained herein is for informational purposes only, and is subject to change              *
--  * without notice. While every precaution has been taken in the preparation of this document, it              *
--  * may contain technical inaccuracies, omissions and typographical errors, and AMD is under no                *
--  * obligation to update or otherwise correct this information.  Advanced Micro Devices, Inc. makes            *
--  * no representations or warranties with respect to the accuracy or completeness of the contents of           *
--  * this document, and assumes no liability of any kind, including the implied warranties of noninfringement,  *
--  * merchantability or fitness for particular purposes, with respect to the operation or use of AMD            *
--  * hardware, software or other products described herein.  No license, including implied or                   *
--  * arising by estoppel, to any intellectual property rights is granted by this document.  Terms and           *
--  * limitations applicable to the purchase or use of AMD’s products are as set forth in a signed agreement     *
--  * between the parties or in AMD's Standard Terms and Conditions of Sale. GD-18                               *
--  *                                                                                                            *
--  **************************************************************************************************************
--<copyright-disclaimer-end>
