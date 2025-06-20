LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.STD_LOGIC_unSIGNED.all;

LIBRARY std;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;

ENTITY read_file IS
   PORT( 
      clk           : IN  std_logic;
		clkx3         : IN  std_logic;
		filed_enable  : IN  std_logic;
      line_enable   : IN  std_logic;
      line_sync     : IN  std_logic;
      reset         : IN  std_logic;
      PRE_cmos_data : OUT std_logic_vector (7 DOWNTO 0)
   );
END read_file ;

ARCHITECTURE behave OF read_file IS
   file   input_file1    : text open read_mode is "C:\FPGA_PC\logtel\text_io_for_project\dirty_file.txt";
   signal PRE_cmos_data1 : std_logic_vector(7 DOWNTO 0);
BEGIN
   process(clk, RESET)
      variable l		     : line;
      variable temp_input : integer;
   begin
      if RESET = '1' then 
         PRE_cmos_data1 <= (others => '0') ;	
      elsif rising_edge(clk) then
         if line_sync = '1' and filed_enable = '1' then
            if not(endfile(input_file1)) then
               readline(input_file1, l);
               PRE_cmos_data1 <= (others => '0') ;	                      
            end if;
         elsif  filed_enable = '1' and line_enable = '1' then
            read(l,temp_input); 
            PRE_cmos_data1 <= conv_std_logic_vector(temp_input, 8);  
         end if;
      end if;
   end process;
 
   PRE_cmos_data <= (PRE_cmos_data1(7)) & PRE_cmos_data1(6 DOWNTO 0);
  
END ARCHITECTURE behave;



