--<insert: c:\HW\releasedULD\headers\out_ddr_flop.head>
-- -----------------------------------------------------------------------------
--
-- module:    out_ddr_flop
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   This is a wrapper around a basic DDR output flop. A version of this module
--   with identical ports exists for all target technologies for this design
--   (Spartan 3E and Virtex 5).
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

library UNISIM;
use UNISIM.VComponents.all;

entity out_ddr_flop is
    Port ( clk        : in  std_logic;
           rst        : in  std_logic;
           d_rise     : in  std_logic;
           d_fall     : in  std_logic;
           q          : out  std_logic
       );
end out_ddr_flop;

architecture Behavioral of out_ddr_flop is
       
       constant logic_high   : std_logic := '1';
       constant logic_low    : std_logic := '0';

    begin
       -- ODDRE1: Dedicated Dual Data Rate (DDR) Output Register
       --         Kintex UltraScale
       -- Xilinx HDL Language Template, version 2013.4

       ODDR_inst : ODDRE1
       generic map (
          SRVAL => '0'  -- Initializes the ODDRE1 Flip-Flops to the specified value (1'b0, 1'b1)
       )
       port map (
          Q => q,       -- 1-bit output: Data output to IOB
          C => clk,     -- 1-bit input: High-speed clock input
          D1 => d_rise, -- 1-bit input: Parallel data input 1
          D2 => d_fall, -- 1-bit input: Parallel data input 2
          SR => rst     -- 1-bit input: Active High Reset
       );

    end Behavioral;

