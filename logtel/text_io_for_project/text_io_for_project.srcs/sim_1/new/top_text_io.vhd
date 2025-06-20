
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_bench IS
END test_bench;
 
ARCHITECTURE behavior OF test_bench IS 
 
   COMPONENT read_file
   PORT(
      clk           : IN  std_logic;
      clkx3         : IN  std_logic;
      filed_enable  : IN  std_logic;
      line_enable   : IN  std_logic;
      line_sync     : IN  std_logic;
      reset         : IN  std_logic;
      PRE_cmos_data : OUT std_logic_vector(7 downto 0)
   );
   END COMPONENT;
	 
COMPONENT write_file IS
  PORT( 
     VIDEO_CLK              : IN std_logic;
     VIDEO_OUT_FIELD_ENABLE : IN std_logic;
     VIDEO_OUT_LINE_ENABLE  : IN std_logic;
     VIDEO_OUT_LINE_SYNC    : IN std_logic;
     reset                  : IN std_logic;
     EZOOM_DATA_OUTPUT      : IN std_logic_vector(7 downto 0 )
  );


 END COMPONENT;
   signal clk ,clkx3   : std_logic := '0';
   signal filed_enable : std_logic := '0';
   signal line_enable  : std_logic := '0';
   signal line_sync    : std_logic := '0';
   signal reset        : std_logic := '0';

 	--Outputs
   signal PRE_cmos_data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 36 ns;
 
BEGIN
   reset <= '1','0' after 200 ns ;

   uut : read_file PORT MAP (
         clk           => clk,
         clkx3         => clkx3,
         filed_enable  => filed_enable,
         line_enable   => line_enable,
         line_sync     => line_sync,
         reset         => reset,
         PRE_cmos_data => PRE_cmos_data
      );

   uut1 : write_file 
   PORT map( 
      VIDEO_CLK              => clk,
      VIDEO_OUT_FIELD_ENABLE => filed_enable,
      VIDEO_OUT_LINE_ENABLE  => line_enable,
      VIDEO_OUT_LINE_SYNC    => line_sync,
      reset                  => reset,
      EZOOM_DATA_OUTPUT      => PRE_cmos_data
   );

   -- Clock process definitions
   clk_process : process begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
-------------------------------------------- 
   -- Clockx3 process definitions
   clkx3_process : process begin
		clkx3 <= '0';
		wait for clk_period/18;
		clkx3 <= '1';
		wait for clk_period/18;
   end process;
-------------------------------------------- 
filed_enable_process : process begin
		filed_enable <= '0';
		wait for clk_period*650;
		filed_enable <= '1';
		wait for clk_period*312000;
   end process;
	--------------------------------------------
line_enable_process : process begin
		line_enable <= '0';
		wait for clk_period*10;
		line_enable <= '1';
		wait for clk_period*640;
   end process;
	--------------------------------------
line_sync_process : process begin
		line_sync <= '0';
		wait for clk_period*4;
		line_sync<= '1';
		wait for clk_period*1;
		line_sync<= '0';
		wait for clk_period*645;
		---------------------------------------------
   end process;
END;
