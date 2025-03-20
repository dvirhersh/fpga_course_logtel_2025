--<insert: c:\HW\releasedULD\headers\wave_gen.head>
-- -----------------------------------------------------------------------------
--
-- module:    wave_gen
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   This is the top level of the wave  generator.
--   It directly instantiates the I/O pads and all the submodules  required
--   to implement the  design.
--   
-- Multicycle and False  Paths
--   Some exist, embedded within the submodules. See the  submodule
--   descriptions.
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

library WORK;
use WORK.wave_gen_pkg.all;                             -- load components


entity lb_ctl is
    Generic (CLOCK_RATE     : integer := 50_000_000);  -- clock frequency
    Port (clk_tx            : in  std_logic;           -- transmitter clock domain (destination)
          rst_clk_tx        : in  std_logic;           -- reset synchronized to transmitter clock domain
          lb_sel_async      : in  std_logic;           -- loopback selector (high = do loopback, low = use output from uart_tx)
          txd_clk_tx        : in  std_logic;           -- transmit data from uart
          rxd_async         : in  std_logic;           -- received data - not synchronous to this clock
          txd_o             : out std_logic            -- loopback output - either from the transmitter data or the receive loopback
          );
end lb_ctl;


architecture Behavioral of lb_ctl is
       signal lb_sel_clk_tx : std_logic := 'U';     -- loopback signal synchronized with the tx clock domain
       signal rxd_i_clk_tx  : std_logic;
    begin
    
       -- debounce the loopback control signal
       debouncer_i0: debouncer 
                   generic map (FILTER => CLOCK_RATE/10) -- 100ms to register a change  *note* - set filter to something really small for verification 
                   port map (clk=>clk_tx, rst=>rst_clk_tx, signal_in=>lb_sel_async, signal_out=>lb_sel_clk_tx);

       meta_harden_rxd_i_i0: meta_harden port map (rst_dst=>rst_clk_tx, clk_dst=>clk_tx, signal_src=>rxd_async, signal_dst=>rxd_i_clk_tx);

       -- construct the multiplexer
        lbMux: process (clk_tx)
          begin
             if rising_edge(clk_tx) then
                if (rst_clk_tx = '1') then
                   txd_o <= '0';
                else
                   if (lb_sel_clk_tx = '1') then
                     txd_o <= rxd_i_clk_tx;
                   else
                     txd_o <= txd_clk_tx;
                   end if;
                end if;
             end if;
          end process lbMux;


    end Behavioral;

