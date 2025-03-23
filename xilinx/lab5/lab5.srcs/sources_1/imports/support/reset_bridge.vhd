----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:11:08 06/04/2009 
-- Design Name: 
-- Module Name:    reset_bridge - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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


entity reset_bridge is
    Port ( clk_dst : in  STD_LOGIC;
           rst_in  : in  STD_LOGIC;
           rst_out : out STD_LOGIC);
end reset_bridge;

architecture Behavioral of reset_bridge is

	begin

		process (clk_dst,rst_in)
		   variable rst_meta : std_logic := 'U';
		begin  
			if rst_in = '1' then
				rst_meta := '1';		-- the meta-stable likely flop is driven high internal to the process
				rst_out  <= '1';		-- the output of the module is also driven high
			elsif (rising_edge(clk_dst)) then
				rst_out <= rst_meta;	-- feed the second flop the output of the first flop
				rst_meta := '0';		-- clear the meta-stable likely flop 				
			end if;
		end process;

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
