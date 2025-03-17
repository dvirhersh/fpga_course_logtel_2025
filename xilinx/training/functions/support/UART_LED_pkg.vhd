--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package UART_LED_pkg is
 component uart_rx is
      generic (
               BAUD_RATE         : integer := 57600;                 -- serves as clock divisor
               CLOCK_RATE        : integer := 100000000              -- freq of clk
            );
       Port ( rst_clk_rx         : in  STD_LOGIC;
              clk_rx             : in  STD_LOGIC;
              rxd_i              : in  STD_LOGIC;
              rx_data            : out STD_LOGIC_VECTOR (7 downto 0);
              rx_data_rdy        : out STD_LOGIC;
              frm_err            : out STD_LOGIC
            );
   end component uart_rx;      
    
   component reset_bridge is
       Port(clk_dst         : IN std_logic;
            rst_in         : IN std_logic;          
            rst_out         : OUT std_logic
           );
   end component reset_bridge;
       
   component meta_harden is
       Port ( clk_dst            : in  STD_LOGIC;
              rst_dst            : in  STD_LOGIC;
              signal_src         : in  STD_LOGIC;
              signal_dst         : out  STD_LOGIC
              );
   end component meta_harden;
   
   component LED_manager is
       Port(
           Channel_1_data      : IN  std_logic_vector(7 downto 0);
           Channel_2_data         : IN  std_logic_vector(7 downto 0);
           Channel_1_enable    : IN  std_logic;
           Channel_2_enable     : IN  std_logic;
           Selector             : IN  std_logic;
           clock                 : IN  std_logic;
           reset                 : IN  std_logic;          
           data_out             : OUT std_logic_vector(7 downto 0)
       );
    end component LED_manager;
-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
constant gnd_i                  : std_logic_vector(7 downto 0) := (others=>'0');
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end UART_LED_pkg;

package body UART_LED_pkg is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end UART_LED_pkg;


----------------------------------------------------------------------------------------------------------------

--<copyright-disclaimer-start>
--  **************************************************************************************************************
--  * © 2023 Advanced Micro Devices, Inc. All rights reserved.                                                   *
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
--  * limitations applicable to the purchase or use of AMD’s products are as set forth in a signed agreement     *
--  * between the parties or in AMD's Standard Terms and Conditions of Sale. GD-18                               *
--  *                                                                                                            *
--  **************************************************************************************************************
--<copyright-disclaimer-end>

--  ************************************************************************************************************
