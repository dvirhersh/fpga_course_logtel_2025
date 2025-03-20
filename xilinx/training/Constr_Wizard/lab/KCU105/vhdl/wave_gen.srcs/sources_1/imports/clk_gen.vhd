--<insert:  c:\HW\releasedULD\headers\clk_gen.head>
-- -----------------------------------------------------------------------------
--
-- module:    clk_gen
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   This module is the clock generator for the  design.
--   It takes in a single clock input (nominally 100MHz), and  generates
--   three output clocks using a single clock generator:
--     clk_rx   - running at the same frequency as the input clock
--     clk_tx   - either running at hte same frequency as the input clock
--                or running at 31/32 times the frequency
--   clk_samp   - a decimated version of clk_tx using a BUFHCE (from clk_tx)
--              - running at 1/prescale the frequency of clk_tx
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

library UNISIM;
use UNISIM.VComponents.all;

library work;
use work.wave_gen_pkg.all;                    -- load component definitions


entity clk_gen is
    Port (
          clk_pin_p         : in  std_logic;                       -- primary clock input (un-buffered)
          clk_pin_n         : in  std_logic;                       --   - and differential input
          rst_i             : in  std_logic;                       -- external reset
          rst_clk_tx        : in  std_logic;                       -- reset synchronized to clk_tx for clk_samp divider
          prescale_clk_tx   : in  std_logic_vector(15 downto 0);   -- current prescalar value synchronized to clk_tx
          clk_rx            : out std_logic;                       -- clock for UART receiver and parser portion of the design
          clk_tx            : out std_logic;                       -- clock for UART transmitter and output portion of the design
          en_clk_samp       : out std_logic;                       -- indication that the next rising edge of clk_tx will coincide with the rising edge of clk_samp
          clk_samp          : out std_logic;                       -- clock for the sampling portion of the design (waveform output)
          clock_locked      : out std_logic                        -- Locked signal from MMCM
         );
end clk_gen;


architecture Behavioral of clk_gen is

       signal clk_rx_internal              : std_logic := 'U';
       signal clk_tx_internal              : std_logic := 'U';
       signal clk_samp_internal            : std_logic := 'U';
       signal en_clk_samp_internal         : std_logic := 'U';                 -- connection between the clk_div module and the BUFGCE
      


       component clk_core
       port
        (-- Clock in ports
         clk_in1_p         : in     std_logic;
         clk_in1_n         : in     std_logic;
         -- Clock out ports
         clk_out1          : out    std_logic;
         clk_out2          : out    std_logic;
         -- Status and control signals
         reset             : in     std_logic;
         locked            : out    std_logic
        );
       end component;
       
       ATTRIBUTE SYN_BLACK_BOX : BOOLEAN;
       ATTRIBUTE SYN_BLACK_BOX OF clk_core : COMPONENT IS TRUE;
       
       
       ATTRIBUTE BLACK_BOX_PAD_PIN : STRING;
       ATTRIBUTE BLACK_BOX_PAD_PIN OF clk_core : COMPONENT IS "clk_in1_p,clk_in1_n,clk_out1,clk_out2,reset,locked";


    begin

       -- instantiate the prescale divider
       clk_div_i0: clk_div 
          port map(clk_tx            => clk_tx_internal,
                   rst_clk_tx        => rst_clk_tx,
                   prescale_clk_tx   => prescale_clk_tx,
                   en_clk_samp       => en_clk_samp_internal
                   

                );
       en_clk_samp <= en_clk_samp_internal;


       -- Instantiate clk_core - generated by the Clocking Wizard

       clk_core_i0: clk_core
          port map ( 

          -- Clock in ports
          clk_in1_p => clk_pin_p,
          clk_in1_n => clk_pin_n,
         -- Clock out ports  
          clk_out1 => clk_rx_internal,
          clk_out2 => clk_tx_internal,
         -- Status and control signals                
          reset => rst_i,
          locked => clock_locked            
        );
        
      

        BUFGCE_clk_samp_i0 : BUFGCE
        generic map (
           CE_TYPE => "SYNC",     -- SYNC, ASYNC
           IS_CE_INVERTED => '0', -- Programmable inversion on CE
           IS_I_INVERTED => '0'   -- Programmable inversion on I
        )
        port map (
           O => clk_samp_internal,           -- 1-bit output: Buffer
           CE => en_clk_samp_internal, -- 1-bit input: Buffer enable
           I => clk_tx_internal        -- 1-bit input: Buffer
        );

       clk_rx   <= clk_rx_internal;
       clk_tx   <= clk_tx_internal;
       clk_samp <= clk_samp_internal;

end Behavioral;

