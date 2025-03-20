--<insert:  c:\HW\releasedULD\headers\reset_bridge.head>
-- -----------------------------------------------------------------------------
--
-- module:    reset_gen
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   This module is the reset generator for the  design.
--   It takes the asynchronous reset in (from the IBUF), and  generates
--   three synchronous resets - one on each clock domain.
-- 
-- known issues:
-- status           id     found     description                      by fixed date  by    comment
-- 
-- version history:
--   version    date    author     description
--    11.1-001 20 APR 2009 WK       First version for 11.1          
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

entity reset_bridge is
    Port (clk_dst     : in  std_logic;     -- destination clock
          rst_in      : in  std_logic;     -- async reset signal
          rst_dst     : out std_logic      -- sync'd reset signal
          );
end reset_bridge;


architecture Behavioral of reset_bridge is
  
    signal rst_meta: std_logic;            -- can go metastable on deassertion of rst_in

    begin
       
       -- reset signal must assert asynchronously, but deassert synchronously
       rstSync: process (clk_dst, rst_in)
          begin
             if (rst_in = '1') then           -- if the reset is active then asynchronously
                rst_meta <= '1';              -- set the meta net to 1 and
                rst_dst  <= '1';              -- assert the reset; otherwise
             elsif rising_edge(clk_dst) then  -- when the reset is low, don't deassert the reset until the 2nd rising edge of the synchronizing clock
                rst_meta <= '0';              -- clock a 0 into the first flop - this can go metastable
                rst_dst  <= rst_meta;         -- let the 0 propagate through on the 2nd clock
             end if;                          -- end of synchronous tasks
          end process rstSync;

    end Behavioral;

