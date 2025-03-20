--<insert: c:\HW\releasedULD\headers\uart_tx.head>
-- -----------------------------------------------------------------------------
--
-- module:    uart_tx
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   UART transmit  controller
--   Implements the state machines for doing RS232  transmission.
--   
-- Whenever a character is ready for transmission (as indicated by  the
--   empty signal from the character FIFO), this module will transmit  the
--    character.
--   
-- The basis of this design is a simple state machine. When in IDLE,  it
--   waits for the character FIFO to indicate that a character is  available,
--   at which time, it immediately starts transmition. It spends  16
--   baud_x16_en periods in the START state, transmitting the  START
--   condition (1'b0), then tranisitions to the DATA state, where it  sends
--   the 8 data bits (LSbit first), each lasting 16 baud_x16_en periods,  and
--   finally going to the STOP state for 16 periods, where it transmits  the
--   STOP value  (1'b1).
--   
-- On the last baud_x16_en period of the last data bit (in the  DATA
--   state), it issues the POP signal to the character FIFO. Since the SM  is
--   only enabled when baud_x16_en is asserted, the resulting pop  signal
--   must then be ANDed with baud_x16_en to ensure that only one  character
--   is popped at a time.  
--   
-- On the last baud_x16_en period of the STOP state, the empty  indication
--   from the character FIFO is inspected; if asserted, the SM returns  to
--   the IDLE state, otherwise it transitions directly to the START state  to
--   start the transmission of the next  character.
--   
-- There are two internal counters - one which counts off the 16 pulses  of
--   baud_x16_en, and a second which counts the 8 bits of  data.
--   
-- The generation of the output (txd_tx) follows one complete  baud_x16_en
--   period after the state machine and other internal  counters.
--   
-- Multicycle and False  Paths
--   All flip-flops within this module share the same chip enable,  generated
--   by the Baud rate generator. Hence, all paths from FFs to FFs in  this
--   module are multicycle  paths.
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


entity uart_tx is
    Generic( CLOCK_RATE     : integer := 50_000_000;
             BAUD_RATE      : integer :=    115_200);
    Port ( clk_tx           : in  std_logic;
           rst_clk_tx       : in  std_logic;
           char_fifo_empty  : in  std_logic;
           char_fifo_dout   : in  std_logic_vector (7 downto 0);
           char_fifo_rd_en  : out std_logic;
           txd_tx           : out std_logic
          );
end uart_tx;


architecture Behavioral of uart_tx is
       
       signal baud_x16_en   : std_logic := 'U';

    begin

       -- 
       -- free running counter that divides the incoming clock by a value to generate
       -- a 16 x baud rate enable signal
       --
       -- all paths that start and end on flip-flops enabled by baud_x16_en are multi-cycle
       -- 
       uart_baud_gen_tx_i0: uart_baud_gen 
           generic map (CLOCK_RATE  => CLOCK_RATE,
                        BAUD_RATE   => BAUD_RATE)                      
           port map    (rst         => rst_clk_tx,
                        clk         => clk_tx, 
                        baud_x16_en => baud_x16_en
                 );

       uart_tx_ctl_i0: uart_tx_ctl
           Port map (clk_tx          => clk_tx,
                     rst_clk_tx      => rst_clk_tx,
                     baud_x16_en     => baud_x16_en,
                     char_fifo_empty => char_fifo_empty,
                     char_fifo_rd_en => char_fifo_rd_en,
                     char_fifo_dout  => char_fifo_dout,
                     txd_tx          => txd_tx
                    );


    end Behavioral;

