--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun May 25 12:49:05 2025
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
    camera_h_ref_0 : in STD_LOGIC;
    camera_v_sync_0 : in STD_LOGIC;
    clk_0 : in STD_LOGIC;
    cntl_0 : in STD_LOGIC;
    config_finished_0 : out STD_LOGIC;
    din_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk_0 : in STD_LOGIC;
    pwdn_0 : out STD_LOGIC;
    resend_0 : in STD_LOGIC;
    reset_0 : out STD_LOGIC;
    sioc_0 : out STD_LOGIC;
    siod_0 : inout STD_LOGIC;
    xclk_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
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
  component design_1_ov7670_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    resend : in STD_LOGIC;
    config_finished : out STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC;
    reset : out STD_LOGIC;
    pwdn : out STD_LOGIC;
    xclk : out STD_LOGIC
  );
  end component design_1_ov7670_controller_0_0;
  component design_1_ovo_7670_caputre_0_0 is
  port (
    pclk : in STD_LOGIC;
    camera_v_sync : in STD_LOGIC;
    camera_h_ref : in STD_LOGIC;
    zoom_x2 : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : out STD_LOGIC
  );
  end component design_1_ovo_7670_caputre_0_0;
  signal Net : STD_LOGIC;
  signal blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal camera_h_ref_0_1 : STD_LOGIC;
  signal camera_v_sync_0_1 : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal clock_devider_0_divided_clk : STD_LOGIC;
  signal cntl_0_1 : STD_LOGIC;
  signal din_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ov7670_controller_0_config_finished : STD_LOGIC;
  signal ov7670_controller_0_pwdn : STD_LOGIC;
  signal ov7670_controller_0_reset : STD_LOGIC;
  signal ov7670_controller_0_sioc : STD_LOGIC;
  signal ov7670_controller_0_xclk : STD_LOGIC;
  signal ovo_7670_caputre_0_addr : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal ovo_7670_caputre_0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ovo_7670_caputre_0_wr_en : STD_LOGIC;
  signal pclk_0_1 : STD_LOGIC;
  signal resend_0_1 : STD_LOGIC;
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
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  Blue_0(3 downto 0) <= vga_top_0_Blue(3 downto 0);
  Green_0(3 downto 0) <= vga_top_0_Green(3 downto 0);
  Hsynq_0 <= vga_top_0_Hsynq;
  Red_0(3 downto 0) <= vga_top_0_Red(3 downto 0);
  Vsynq_0 <= vga_top_0_Vsynq;
  camera_h_ref_0_1 <= camera_h_ref_0;
  camera_v_sync_0_1 <= camera_v_sync_0;
  clk_0_1 <= clk_0;
  cntl_0_1 <= cntl_0;
  config_finished_0 <= ov7670_controller_0_config_finished;
  din_0_1(7 downto 0) <= din_0(7 downto 0);
  pclk_0_1 <= pclk_0;
  pwdn_0 <= ov7670_controller_0_pwdn;
  resend_0_1 <= resend_0;
  reset_0 <= ov7670_controller_0_reset;
  sioc_0 <= ov7670_controller_0_sioc;
  xclk_0 <= ov7670_controller_0_xclk;
blk_mem_gen_0: component design_1_blk_mem_gen_0_0
     port map (
      addra(18 downto 0) => ovo_7670_caputre_0_addr(18 downto 0),
      addrb(18 downto 0) => vga_top_0_frame_address(18 downto 0),
      clka => pclk_0_1,
      clkb => clock_devider_0_divided_clk,
      dina(11 downto 0) => ovo_7670_caputre_0_dout(11 downto 0),
      doutb(11 downto 0) => blk_mem_gen_0_doutb(11 downto 0),
      wea(0) => ovo_7670_caputre_0_wr_en
    );
clock_devider_0: component design_1_clock_devider_0_0
     port map (
      clk => clk_0_1,
      divided_clk => clock_devider_0_divided_clk
    );
ov7670_controller_0: component design_1_ov7670_controller_0_0
     port map (
      clk => clk_0_1,
      config_finished => ov7670_controller_0_config_finished,
      pwdn => ov7670_controller_0_pwdn,
      resend => resend_0_1,
      reset => ov7670_controller_0_reset,
      sioc => ov7670_controller_0_sioc,
      siod => siod_0,
      xclk => ov7670_controller_0_xclk
    );
ovo_7670_caputre_0: component design_1_ovo_7670_caputre_0_0
     port map (
      addr(18 downto 0) => ovo_7670_caputre_0_addr(18 downto 0),
      camera_h_ref => camera_h_ref_0_1,
      camera_v_sync => camera_v_sync_0_1,
      din(7 downto 0) => din_0_1(7 downto 0),
      dout(11 downto 0) => ovo_7670_caputre_0_dout(11 downto 0),
      pclk => pclk_0_1,
      wr_en => ovo_7670_caputre_0_wr_en,
      zoom_x2 => '0'
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
