----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/19/2023 01:04:40 PM
-- Design Name: 
-- Module Name: LED_manager_tb - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED_manager_tb is
--  Port ( );
end LED_manager_tb;

architecture Behavioral of LED_manager_tb is

COMPONENT LED_manager is
    Port ( Channel_1_data : in STD_LOGIC_VECTOR (7 downto 0);
           Channel_2_data : in STD_LOGIC_VECTOR (7 downto 0);
           Channel_1_enable : in STD_LOGIC;
           Channel_2_enable : in STD_LOGIC;
           selector : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end COMPONENT;
signal Channel_1_data :std_logic_vector(7 downto 0) := (others => '0');
signal Channel_2_data :std_logic_vector(7 downto 0) := (others => '0');
signal Channel_1_enable :std_logic := '0';
signal Channel_2_enable :std_logic := '0';
signal selector :std_logic := '0';
signal clock :std_logic := '0';
signal reset :std_logic := '0';

signal data_out : std_logic_vector(7 downto 0);

constant clock_period : time := 10ns;





begin
uut: LED_manager PORT MAP (
           Channel_1_data => Channel_1_data,
           Channel_2_data => Channel_2_data,
           Channel_1_enable => Channel_1_enable,
           Channel_2_enable => Channel_2_enable,
           selector => selector,
           clock => clock,
           reset => reset,
           data_out => data_out
           );
reset <= '1','0' after clock_period * 10;

clock<= not clock after 5 ns; 

selector <='0', '1' after clock_period *20, '0' after clock_period *50, '1' after clock_period *100;


           Channel_1_data <= Channel_1_data + X"03" after clock_period * 2;
           Channel_2_data <= Channel_2_data + X"04" after clock_period * 3;
           Channel_1_enable <= '1';
           Channel_2_enable <= '1';
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
