--<insert:  c:\HW\releasedULD\headers\clk_div.head>
-- -----------------------------------------------------------------------------
--
-- module:    clk_div
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   This module is a programmable divider use for generating the sample clock
--   (clk_samp). It continuously counts down from pre_clk_tx-1 to 0, asserting
--   en_clk_samp during the 0  count.
--   
-- To ensure proper reset of the FFs running on the derived clock,
--   en_clk_samp is asserted during  reset.
--   
--  Notes:
--   pre_clk_tx must be at least 2 for this module to work. Since it is not
--   allowed to be less than 32 (by the parser), this is not a problem.
-- 
-- known issues:
-- status           id     found     description                      by fixed date  by    comment
-- 
-- version history:
--   version    date    author     description
--    11.1-001 20 APR 2009 WK       New for version 11.1            
-- 
-- -----------------------------------------------------------------------
-- 
-- 
--<copyright-disclaimer-start>
--  ************************************************************************************************************
--  * © Copyright 2009-2022 Xilinx, Inc. All rights reserved.                                                  *
--  * This file contains confidential and proprietary information of Xilinx, Inc. and                          *
--  * is protected under U.S. and international copyright and other intellectual property laws.                *
--  * DISCLAIMER                                                                                               *
--  * This disclaimer is not a license and does not grant any rights to the materials distributed              *
--  * herewith. Except as otherwise provided in a valid license issued to you by Xilinx, and to the            *
--  * maximum extent permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS"               *
--  * AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,                 *
--  * IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,     *
--  * OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,  *
--  * including negligence, or under any other theory of liability) for any loss or damage of any kind or      *
--  * nature related to, arising under or in connection with these materials, including for any direct, or     *
--  * any indirect, special, incidental, or consequential loss or damage (including loss of data, profits,     *
--  * goodwill, or any type of loss or damage suffered as a result of any action brought by a third party)     *
--  * even if such damage or loss was reasonably foreseeable or Xilinx had been advised of the possibility     *
--  * of the same.                                                                                             *
--  * CRITICAL APPLICATIONS                                                                                    *
--  * Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring    *
--  * fail-safe performance, such as life-support or safety devices or systems, Class III medical devices,     *
--  * nuclear facilities, applications related to the deployment of airbags, or any other applications that    *
--  * could lead to death, personal injury, or severe property or environmental damage (individually and       *
--  * collectively, "Critical Applications"). Customer assumes the sole risk and liability of any use of       *
--  * Xilinx products in Critical Applications, subject only to applicable laws and regulations governing      *
--  * limitations on product liability.                                                                        *
--  * THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.                 *
--  *                                                                                                          *
--  ************************************************************************************************************
--<copyright-disclaimer-end>
--
-- -----------------------------------------------------------------------
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity clk_div is
    Port ( clk_tx                 : in  std_logic;                       -- transmitter clock
           rst_clk_tx             : in  std_logic;                       -- reset signal synchronized to the transmitter clock
           prescale_clk_tx        : in  std_logic_vector (15 downto 0);  -- current prescaler value synchronized to clk_tx
           en_clk_samp            : out std_logic                        -- indication that the clk_samp is in the first clk_tx period after the rising edge. Asserted during clk_tx period after en_clk_samp
          );
end clk_div;

architecture Behavioral of clk_div is

begin

    clkDiv: process (clk_tx)
          variable internal_counter : integer range 0 to 65535 := 0;           -- set of registers for maintaining the count
       begin
          if rising_edge(clk_tx) then                                          -- synchronous event test
             if (rst_clk_tx = '1') then                                        -- reset asserted?
                internal_counter := 0;                                         -- reset the internal counter
                en_clk_samp      <= '0';                                       -- deassert the enable
             else                                                              -- non-reset behavior
                en_clk_samp      <= '0';                                       -- keep enable deasserted. overridden by count = 0 below
                if (internal_counter = 0) then                                 -- are we done with the count?
                   en_clk_samp      <= '1';                                    -- assert enable
                   internal_counter := to_integer(unsigned(prescale_clk_tx));  -- reset the internal counter the the specified value 
                else
                   internal_counter := internal_counter - 1;                   -- decrement count by 1
                end if;                                                        -- end of done with count
             end if;                                                           -- end of reset/normal operation
          end if;                                                              -- end of synchronous events
       end process clkDiv;

end Behavioral;

