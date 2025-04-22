--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Apr 22 12:53:58 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    VGA_H_sync : out STD_LOGIC;
    camera_h_ref : in STD_LOGIC;
    camera_v_sync : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    cntl_in : in STD_LOGIC;
    config_finished : out STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk : in STD_LOGIC;
    pwdn : out STD_LOGIC;
    resend_in : in STD_LOGIC;
    reset : out STD_LOGIC;
    resetn : in STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC;
    vga_V_sync : out STD_LOGIC;
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    xclk : out STD_LOGIC;
    zoom : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    cntl_in : in STD_LOGIC;
    resend_in : in STD_LOGIC;
    zoom : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    camera_h_ref : in STD_LOGIC;
    camera_v_sync : in STD_LOGIC;
    pclk : in STD_LOGIC;
    config_finished : out STD_LOGIC;
    pwdn : out STD_LOGIC;
    reset : out STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC;
    xclk : out STD_LOGIC;
    VGA_H_sync : out STD_LOGIC;
    vga_V_sync : out STD_LOGIC;
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      VGA_H_sync => VGA_H_sync,
      camera_h_ref => camera_h_ref,
      camera_v_sync => camera_v_sync,
      clk_in1 => clk_in1,
      cntl_in => cntl_in,
      config_finished => config_finished,
      din(7 downto 0) => din(7 downto 0),
      pclk => pclk,
      pwdn => pwdn,
      resend_in => resend_in,
      reset => reset,
      resetn => resetn,
      sioc => sioc,
      siod => siod,
      vga_V_sync => vga_V_sync,
      vga_blue(3 downto 0) => vga_blue(3 downto 0),
      vga_green(3 downto 0) => vga_green(3 downto 0),
      vga_red(3 downto 0) => vga_red(3 downto 0),
      xclk => xclk,
      zoom => zoom
    );
end STRUCTURE;
