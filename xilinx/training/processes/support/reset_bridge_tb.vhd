--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:28:23 06/04/2009
-- Design Name:   
-- Module Name:   C:/training/dsgnVHDL/labs/Spartan3E/processes/reset_bridge_tb.vhd
-- Project Name:  processes
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reset_bridge
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

USE ieee.numeric_std.ALL;
 
ENTITY reset_bridge_tb IS
END reset_bridge_tb;
 
ARCHITECTURE behavior OF reset_bridge_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reset_bridge
    PORT(
         clk_dst : IN  std_logic;
         rst_in : IN  std_logic;
         rst_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_dst : std_logic := '0';
   signal rst_in : std_logic := '0';

 	--Outputs
   signal rst_out : std_logic;

   -- Clock period definitions
   constant clk_dst_period : time := 10ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reset_bridge PORT MAP (
          clk_dst => clk_dst,
          rst_in => rst_in,
          rst_out => rst_out
        );
	
	-- clock generation
	clk_dst <= not clk_dst after 5 ns;
	
	-- reset generation
	makeRst: process
      begin
			rst_in <= '0';
			wait for clk_dst_period * 20;
			
			-- test the reset for a 1 clock period wide pulse
			rst_in <= '1';
			wait for clk_dst_period;
			
			-- clear
			rst_in <= '0';
			wait for clk_dst_period * 10;
			
			-- test against a sub 1 clock period wide pulse
			rst_in <= '1';
			wait for clk_dst_period * 0.3;
			
			-- clear
			rst_in <= '0';
			wait for clk_dst_period * 10;
			
			-- try again with longer reset
			rst_in <= '1';
			wait for clk_dst_period * 2;
			
			-- clear
			rst_in <= '0';
			wait for clk_dst_period * 10;
			
			-- attempt to create a metastable situation
			wait for clk_dst_period * 0.2;
			
			rst_in <= '1';
			wait for clk_dst_period * 0.5;
			
			rst_in <= '0';
			wait;
			
		end process makeRst;		
		
	

END;
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