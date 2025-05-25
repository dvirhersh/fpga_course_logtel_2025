--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun May 25 12:19:53 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    Blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Hsynq_0 : out STD_LOGIC;
    Red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Vsynq_0 : out STD_LOGIC;
    clk_0 : in STD_LOGIC;
    cntl_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clock_devider_0_0 is
  port (
    clk : in STD_LOGIC;
    divided_clk : out STD_LOGIC
  );
  end component design_1_clock_devider_0_0;
  component design_1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 18 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 18 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_1_blk_mem_gen_0_0;
  component design_1_vga_top_0_0 is
  port (
    pixel_clk : in STD_LOGIC;
    cntl : in STD_LOGIC;
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Hsynq : out STD_LOGIC;
    Vsynq : out STD_LOGIC;
    Red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_address : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  end component design_1_vga_top_0_0;
  signal blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal clock_devider_0_divided_clk : STD_LOGIC;
  signal cntl_0_1 : STD_LOGIC;
  signal vga_top_0_Blue : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_top_0_Green : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_top_0_Hsynq : STD_LOGIC;
  signal vga_top_0_Red : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vga_top_0_Vsynq : STD_LOGIC;
  signal vga_top_0_frame_address : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
begin
  Blue_0(3 downto 0) <= vga_top_0_Blue(3 downto 0);
  Green_0(3 downto 0) <= vga_top_0_Green(3 downto 0);
  Hsynq_0 <= vga_top_0_Hsynq;
  Red_0(3 downto 0) <= vga_top_0_Red(3 downto 0);
  Vsynq_0 <= vga_top_0_Vsynq;
  clk_0_1 <= clk_0;
  cntl_0_1 <= cntl_0;
blk_mem_gen_0: component design_1_blk_mem_gen_0_0
     port map (
      addra(18 downto 0) => B"0000000000000000000",
      addrb(18 downto 0) => vga_top_0_frame_address(18 downto 0),
      clka => '0',
      clkb => clock_devider_0_divided_clk,
      dina(11 downto 0) => B"000000001000",
      doutb(11 downto 0) => blk_mem_gen_0_doutb(11 downto 0),
      wea(0) => '0'
    );
clock_devider_0: component design_1_clock_devider_0_0
     port map (
      clk => clk_0_1,
      divided_clk => clock_devider_0_divided_clk
    );
vga_top_0: component design_1_vga_top_0_0
     port map (
      Blue(3 downto 0) => vga_top_0_Blue(3 downto 0),
      Green(3 downto 0) => vga_top_0_Green(3 downto 0),
      Hsynq => vga_top_0_Hsynq,
      Red(3 downto 0) => vga_top_0_Red(3 downto 0),
      Vsynq => vga_top_0_Vsynq,
      cntl => cntl_0_1,
      frame_address(18 downto 0) => vga_top_0_frame_address(18 downto 0),
      frame_pixel(11 downto 0) => blk_mem_gen_0_doutb(11 downto 0),
      pixel_clk => clock_devider_0_divided_clk
    );
end STRUCTURE;
