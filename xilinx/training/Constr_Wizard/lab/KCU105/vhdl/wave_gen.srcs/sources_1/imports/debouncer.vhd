--<insert: c:\HW\releasedULD\headers\debouncer.head>
-- -----------------------------------------------------------------------------
--
-- module:    debouncer
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   Simple switch debouncer. Filters out any transition that lasts less than
--   FILTER clocks long
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
use IEEE.MATH_REAL.ALL;


entity debouncer is
    generic ( FILTER     : integer := 2_000_000        -- number of clocks required to acknowledge a valid change in switch state
           );
   port (clk             : in  std_logic;              -- clock input
         rst             : in  std_logic;              -- active high reset - synchronous to clock
         signal_in       : in  std_logic;              -- un-debounced signal
         signal_out      : out std_logic               -- debounced signal
         );
    constant RELOAD      : integer := FILTER - 1;  

end debouncer;


architecture Behavioral of debouncer is
       
       signal signal_in_clk : std_logic := 'U';

       component meta_harden is
         port ( clk_dst          : in  std_logic;
                rst_dst         : in  std_logic;
                signal_src       : in  std_logic;
                signal_dst       : out std_logic
           );
       end component;
       
    begin

       -- Anti-meta-stability/synchronization circuit
       meta_harden_signal_in_i0: meta_harden
                   port map (clk_dst    => clk,
                            rst_dst        => rst,
                            signal_src     => signal_in,
                            signal_dst     => signal_in_clk);

       -- Only transition the output if the input has been stable at a new value for FILTER clocks
       dbnc: process (clk)
             variable signal_out_reg    : std_logic := 'U';
             variable count             : integer range 0 to FILTER := FILTER;
          begin
             if rising_edge(clk) then                     -- everything happens synchronously with the driving clock
                if (rst = '1') then                       -- if the reset is asserted
                   signal_out_reg := signal_in_clk;       -- initializes to the last value of signal_in when exiting reset
                   count      := RELOAD;                  -- start with an expired counter
                else                                      -- reset not asserted - do "normal" activities                 
                   if (signal_in_clk = signal_out_reg) then  -- if the current input is the same as the last debounced output...
                      count := RELOAD;                    -- reload the counter
                    elsif (count = 0) then                -- Otherwise, it is different... if the count has expired
                      signal_out_reg := signal_in_clk;    -- then it has been different long enough - time to switch the output
                      count := RELOAD;                    -- and reload the counter
                    else                                  -- otherwise we are still waiting for it to be different for "long enough"
                      count := count - 1;                 -- decrement the counter
                   end if;                                -- end of transition check
                end if;                                   -- end of reset/normal operation                
             end if;                                      -- end of synchronous events test      

            signal_out <= signal_out_reg;                 -- drive the output with the previously latched value                
            
          end process dbnc;
             
    end Behavioral;


