----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/19/2023 12:29:02 PM
-- Design Name: 
-- Module Name: LED_manager - Behavioral
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

entity LED_manager is
    Port ( Channel_1_data : in STD_LOGIC_VECTOR (7 downto 0);
           Channel_2_data : in STD_LOGIC_VECTOR (7 downto 0);
           Channel_1_enable : in STD_LOGIC;
           Channel_2_enable : in STD_LOGIC;
           selector : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end LED_manager;

architecture Behavioral of LED_manager is
COMPONENT register8
PORT (
        clock: in STD_LOGIC;
        reset: in STD_LOGIC; 
        enable: in STD_LOGIC;
        data_in: in STD_LOGIC_VECTOR(7 downto 0);
        data_out: out STD_LOGIC_VECTOR(7 downto 0)
        );
END COMPONENT;

signal Channel_1_registered_data : std_logic_vector(7 downto 0);
signal Channel_2_registered_data : std_logic_vector(7 downto 0);
signal mux_data_selected : std_logic_vector(7 downto 0);

begin
regCh1: register8 port map(clock => clock,
                        reset => reset,
                        enable => Channel_1_enable,
                        data_in => Channel_1_data,
                        data_out => Channel_1_registered_data);
regCh2: register8 port map(clock => clock,
                        reset => reset,
                        enable => Channel_2_enable,
                        data_in => Channel_2_data,
                        data_out => Channel_2_registered_data);                        
with selector select
    mux_data_selected <= Channel_1_registered_data when '0',
                         Channel_2_registered_data when '1',
                         (others => '-')when others;
                         
                         
data_out <= mux_data_selected when rising_edge(clock);
 
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
