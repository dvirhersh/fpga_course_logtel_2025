--<insert: c:\HW\releasedULD\headers\uart_baud_gen.head>
-- -----------------------------------------------------------------------------
--
-- module:    uart_baud_gen
-- project:   wave_gen
-- company:   Xilinx, Inc.
-- author:    WK, AW
-- 
-- comment:
--   Generates a 16x Baud enable. This signal is generated 16 times per  bit
--   at the correct baud rate as determined by the parameters for the  system
--   clock frequency and the Baud  rate
--   
-- 1) Divider must be at least 2 (thus CLOCK_RATE must be at least 32x
--   BAUD_RATE)
-- 
-- known issues:
-- status           id     found     description                      by fixed date  by    comment
-- 
-- version history:
--   version    date    author     description
--    11.1-001 20 APR 2009 WK       First version for 11.1          
-- 
-- ---------------------------------------------------------------------------
-- 
-- disclaimer:
--   Disclaimer: LIMITED WARRANTY AND DISCLAMER. These designs  are
--   provided to you as is . Xilinx and its licensors make, and  you
--   receive no warranties or conditions, express,  implied,
--   statutory or otherwise, and Xilinx specifically disclaims  any
--   implied warranties of merchantability, non-infringement,  or
--   fitness for a particular purpose. Xilinx does not warrant  that
--   the functions contained in these designs will meet  your
--   requirements, or that the operation of these designs will  be
--   uninterrupted or error free, or that defects in the  Designs
--   will be corrected. Furthermore, Xilinx does not warrant  or
--   make any representations regarding use or the results of  the
--   use of the designs in terms of correctness,  accuracy,
--   reliability, or  otherwise.
--   
-- LIMITATION OF LIABILITY. In no event will Xilinx or  its
--   licensors be liable for any loss of data, lost profits,  cost
--   or procurement of substitute goods or services, or for  any
--   special, incidental, consequential, or indirect  damages
--   arising from the use or operation of the designs  or
--   accompanying documentation, however caused and on any  theory
--   of liability. This limitation will apply even if  Xilinx
--   has been advised of the possibility of such damage.  This
--   limitation shall apply not-withstanding the failure of  the
--   essential purpose of any limited remedies  herein.
--   
-- Copyright � 2002, 2008, 2009 Xilinx,  Inc.
--   All rights reserved
-- 
-- -----------------------------------------------------------------------------
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity uart_baud_gen is
     Generic (CLOCK_RATE    : integer := 100_000_000;                    -- clock rate
              BAUD_RATE     : integer :=     115_200                     -- desired baud rate
             );                      
    Port ( rst              : in  STD_LOGIC;                             -- external reset in
           clk              : in  STD_LOGIC;                             -- clock 
           baud_x16_en      : out STD_LOGIC                              -- 16 times the baud rate
           );
end uart_baud_gen;


architecture Behavioral of uart_baud_gen is
    begin

          clk_divider: process (clk)
             constant OVERSAMPLE_RATE      : integer := BAUD_RATE * 16;
             constant OVERSAMPLE_VALUE     : integer := (CLOCK_RATE+OVERSAMPLE_RATE/2)/OVERSAMPLE_RATE - 1;     -- one enable produced every this many counts
             variable internal_count       : integer range 0 to OVERSAMPLE_VALUE := 0;  -- internal counter
          begin
             if (rising_edge(clk)) then                                     -- synchronous process
                if (rst = '1') then                                         -- if reset is active
                   internal_count := OVERSAMPLE_VALUE;                      -- reset the count in preparation for count-down
                   baud_x16_en   <= '0';                                    -- drive the external enable inactive
                else                                                        -- every 16xbaud interval, generate a one-clock enable pulse
                   internal_count := internal_count - 1;                    -- decrement the counter   
                   baud_x16_en <= '0';                                      -- hold the enable inactive            
                   if (internal_count = 0) then                             -- at terminal count?
                      baud_x16_en   <= '1';                                 -- generate the active high enable
                      internal_count := OVERSAMPLE_VALUE;                   -- reset the count
                   end if;                                                  -- end of count reached
                end if;                                                     -- end of non-reset activities
             end if;                                                        -- end of synchronous activities
          end process clk_divider;

    end Behavioral;

----------------------------------------------------------------------------------------------------------------

--<copyright-disclaimer-start>
--  **************************************************************************************************************
--  * � 2023 Advanced Micro Devices, Inc. All rights reserved.                                                   *
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
--  * limitations applicable to the purchase or use of AMD�s products are as set forth in a signed agreement     *
--  * between the parties or in AMD's Standard Terms and Conditions of Sale. GD-18                               *
--  *                                                                                                            *
--  **************************************************************************************************************
--<copyright-disclaimer-end>
