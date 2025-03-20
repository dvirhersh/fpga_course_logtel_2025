--<insert:  c:\HW\releasedULD\headers\rst_gen.head>
-- -----------------------------------------------------------------------------
--
-- module:    rst_gen
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
use IEEE.NUMERIC_STD.ALL;

library work;
use work.wave_gen_pkg.all;                    -- load component definitions


entity rst_gen is
    Port (clk_tx         : in  std_logic;     -- transmitter clock
          clk_rx         : in  std_logic;     -- receiver clock
          clk_samp       : in  std_logic;     -- sample clock
          rst_i          : in  std_logic;     -- asynchronous reset input
          clock_locked   : in  std_logic;     -- Locked signal from clk_core
          rst_clk_tx     : out std_logic;     -- reset synchronized to clk_tx
          rst_clk_rx     : out std_logic;     -- reset synchronized to clk_rx
          rst_clk_samp   : out std_logic      -- reset synchronized to clk_samp
         );
end rst_gen;


architecture Behavioral of rst_gen is

      signal int_rst     : std_logic := 'U';  -- asynchronous reset or MMCM not locked
    begin
       
      int_rst <= rst_i or not(clock_locked);

       -- generate 3 copies of the debouncer, each gets the same signal in, but in 3 different time domains
       reset_bridge_clk_tx_i0:   reset_bridge port map (clk_dst=>clk_tx,   rst_in=>int_rst, rst_dst=>rst_clk_tx);
       reset_bridge_clk_rx_i0:   reset_bridge port map (clk_dst=>clk_rx,   rst_in=>int_rst, rst_dst=>rst_clk_rx);
       reset_bridge_clk_samp_i0: reset_bridge port map (clk_dst=>clk_samp, rst_in=>int_rst, rst_dst=>rst_clk_samp);

    end Behavioral;

