----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    26/08/2010 
-- Design Name: 
-- Module Name:    samp_ram - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--    This is an inferrable WRITE_FIRST dual port RAM
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library utilities_lib;
use utilities_lib.string_utilities_synth_pkg.all;

entity samp_ram is
   generic (DATA_WIDTH: integer := 16;
            ADDR_WIDTH: integer := 10   -- 2^10 = 1024
           );
   port (
         -- A port
         clka    : in  std_logic;
         wea     : in  std_logic_vector(0 downto 0);
         addra   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
         dina    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
         douta   : out std_logic_vector(DATA_WIDTH-1 downto 0);
         -- B port
         clkb    : in  std_logic;                     
         web     : in  std_logic_vector(0 downto 0);
         addrb   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
         dinb    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
         doutb   : out std_logic_vector(DATA_WIDTH-1 downto 0)
        );
end entity samp_ram;


architecture Behavioral of samp_ram is
       type ram_type is array ((2**ADDR_WIDTH)-1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);
       shared variable mem_array: ram_type;

    begin
    
      process (clka)
            variable noMetas : boolean := true;      
         begin
            if rising_edge(clka) then
                noMetas := true;
                metasInDataA: if (areMetaChars(dina)) then
                    noMetas := false;
                    report "(samp_ram) Metacharacter found on 'B' side of RAM (data) - not processed";                   
                end if metasInDataA;
                
                metasInAddrA: if (areMetaChars(addra)) then
                    noMetas := false;
                    report "(samp_ram) Metacharacter found on 'B' side of RAM (addr) - not processed";                   
                end if metasInAddrA;
                
                noMetasAtAll: if (noMetas) then            
                   if (wea = "1") then
                      mem_array(to_integer(unsigned(addra))) := dina;
                      douta <= dina;
                   else
                      douta <= mem_array(to_integer(unsigned(addra)));
                   end if;
                end if noMetasAtAll;
            end if;            
         end process;
    
      process (clkb)
            variable noMetas : boolean := true;
         begin
            if rising_edge(clkb) then
               -- check for metacharacters in the address
               noMetas := true;
               metasInDataB: if (areMetaChars(dinb)) then
                  noMetas := false;
                  report "(samp_ram) Metacharacter found on 'B' side of RAM (data) - not processed";                  
               end if metasInDataB;
               
               metasInAddrB: if (areMetaChars(addrb)) then
                  noMetas := false;
                  report "(samp_ram) Metacharacter found on 'B' side of RAM (addr) - not processed";                  
               end if metasInAddrB;
               
               noMetasAtAll: if (noMetas) then
                   if (web = "1") then
                      mem_array(to_integer(unsigned(addrb))) := dinb;
                      doutb <= dinb;
                   else
                      doutb <= mem_array(to_integer(unsigned(addrb)));
                   end if;
               end if noMetasAtAll;
            end if;
         end process;
           
    end architecture behavioral;

--<copyright-disclaimer-start>
--  ************************************************************************************************************
--  * © Copyright 2022 Xilinx, Inc. All rights reserved.                                                       *
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
