--<insert: c:\HW\releasedULD\headers\clkx_bus.head>
-- -----------------------------------------------------------------------------
--
-- module:    clkx_bus
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   This is a basic meta-stability hardener; it double synchronizes  an
--   asynchronous signal onto a new clock  domain.
--   
-- Multicycle and False Paths, Timing  Exceptions
--   A tighter timing constraint should be placed between the  signal_meta
--   and signal_dst flip-flops to allow for meta-stability settling time
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
use work.wave_gen_pkg.all;                                            -- load the compondent definitions


entity clkx_bus is
    generic (PW          : in  integer :=  3;                         -- pulse width
             WIDTH       : in  integer := 16                          -- bus width
          );
    Port ( 
           clk_src       : in  std_logic;                             -- source clock
           rst_clk_src   : in  std_logic;                             -- reset - synchronous to source clock
           clk_dst       : in  std_logic;                             -- destination clock
           rst_clk_dst   : in  std_logic;                             -- reset - synchronous to destination clock
           bus_src       : in  std_logic_vector (WIDTH-1 downto 0);   -- bus input - synchronous to source clock
           bus_new_src   : in  std_logic;                             -- active high indicator that bus_src has changed this source clock
           bus_dst       : out std_logic_vector (WIDTH-1 downto 0);   -- bus output - synchronous to destination clock
           bus_new_dst   : out std_logic                              -- active high indicator that bus_dst has changed this destination clock
          );
end clkx_bus;


architecture Behavioral of clkx_bus is

       signal bus_new_stretch_src    : std_logic := 'U';              -- 
       signal bus_samp_src           : std_logic_vector(WIDTH-1 downto 0) := (others=>'U');
       signal bus_new_stretch_dst    : std_logic := 'U';
       signal bus_new_stretch_old_dst: std_logic := 'U';

    begin

       -- generate the stretched version of the source bus
       -- when a new value is detected on the source bus, we count from PW-1 downto 0 and delay the assertion
       -- of the "new" signal until the end of the stretch
       strch_src: process (clk_src)
             variable bus_new_cnt_src : integer range 0 to PW := 0;   -- pulse width counter
          begin
             if rising_edge(clk_src) then                    -- synchronize this processes activities with the source clock
                if (rst_clk_src = '1') then                  -- are we dealing with a reset event from the source domain?
                   bus_new_cnt_src     := 0;
                   bus_new_stretch_src <= '0';
                else                                         -- not a reset event, do "normal" events
                   bus_new_stretch_src <= '0';               -- normally not stretching the pulse
                   if (bus_new_cnt_src /= 0) then            -- if the count is not zero, then 
                      bus_new_cnt_src     := bus_new_cnt_src - 1;-- decrement the count 
                      bus_new_stretch_src <= '1';            -- assert the new data signal
                   elsif (bus_new_src = '1') then            -- count is zero, is there new data to process?
                      bus_new_cnt_src     := PW - 1;         -- reset the pulse width counter
                      bus_new_stretch_src <= '1';            -- mark this for stretching too
                   end if;                                   -- end of counting check
                end if;                                      -- end of reset/normal activities
             end if;                                         -- end of synchronous events
          end process strch_src;

       -- Sample the incoming bus whenever the "new" signal is asserted to ensure
       -- that we have a stable version of it between assertions of "new"
       newSamp: process (clk_src)
          begin
             if rising_edge(clk_src) then                    -- keep this synchronous to the clk_src domain
                if (rst_clk_src = '1') then                  -- is there a reset even asserted?
                   bus_samp_src <= (others=>'0');
                else                                         -- no reset, do normal events
                   bus_samp_src <= bus_src;
                end if;                                      -- end of reset/non-reset tasks
             end if;                                         -- end of synchronous tasks
          end process newSamp;


       -- Metastability harden the bus_new_stretch_src
       meta_harden_bus_new_i0: meta_harden 
          port map (clk_dst    => clk_dst,
                    rst_dst    => rst_clk_dst,
                    signal_src => bus_new_stretch_src,
                    signal_dst => bus_new_stretch_dst
                   );
       

       -- Capture the value of bus_new_stretch_dst for edge detection
       cptr_bus_dst: process (clk_dst)
          begin
             if rising_edge(clk_dst) then                    -- keep this synchronous to the destination clock domain
                if (rst_clk_dst = '1') then                  -- is the destination in reset?
                   bus_new_stretch_old_dst <= '0';
                else                                         -- reset not active, do "normal" events
                   bus_new_stretch_old_dst <= bus_new_stretch_dst;
                end if;                                      -- end of reset/non-reset events
             end if;                                         -- end of synchronous events
          end process cptr_bus_dst;


       -- Now generate the outputs
       genOuts: process (clk_dst)
          begin
             if rising_edge(clk_dst) then                    -- keep this synchronous to the destination clock domain
                if (rst_clk_dst = '1') then                  -- is the destination in reset?
                   bus_dst     <= bus_src;
                   bus_new_dst <= '0';
                else                                         -- reset not active, do "normal" events
                   bus_new_dst <= '0';                       -- normally no new data, unless...
                   if ((bus_new_stretch_dst = '1') and (bus_new_stretch_old_dst = '0')) then -- rising edge change in state detected
                         -- This is the first clock that bus_new_stretch_dst is asserted
                         -- We know that bus_samp_src is stable, so we can sample it on the
                         -- destination clock even though it is on the other clock domain.
                         -- We also need to pulse the bus_new_dst for one clock
                         bus_dst     <= bus_samp_src;
                         bus_new_dst <= '1';
                   else
                   end if;
                end if;                                      -- end of reset/non-reset events
             end if;                                         -- end of synchronous events
          end process genOuts;


    end Behavioral;

