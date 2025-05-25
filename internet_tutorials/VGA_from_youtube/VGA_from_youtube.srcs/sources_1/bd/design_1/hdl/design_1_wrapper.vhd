--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun May 25 12:49:05 2025
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk_0 : in STD_LOGIC;
    cntl_0 : in STD_LOGIC;
    Blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Hsynq_0 : out STD_LOGIC;
    Red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Vsynq_0 : out STD_LOGIC;
    camera_h_ref_0 : in STD_LOGIC;
    camera_v_sync_0 : in STD_LOGIC;
    pclk_0 : in STD_LOGIC;
    din_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_finished_0 : out STD_LOGIC;
    sioc_0 : out STD_LOGIC;
    reset_0 : out STD_LOGIC;
    siod_0 : inout STD_LOGIC;
    pwdn_0 : out STD_LOGIC;
    xclk_0 : out STD_LOGIC;
    resend_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Blue_0(3 downto 0) => Blue_0(3 downto 0),
      Green_0(3 downto 0) => Green_0(3 downto 0),
      Hsynq_0 => Hsynq_0,
      Red_0(3 downto 0) => Red_0(3 downto 0),
      Vsynq_0 => Vsynq_0,
      camera_h_ref_0 => camera_h_ref_0,
      camera_v_sync_0 => camera_v_sync_0,
      clk_0 => clk_0,
      cntl_0 => cntl_0,
      config_finished_0 => config_finished_0,
      din_0(7 downto 0) => din_0(7 downto 0),
      pclk_0 => pclk_0,
      pwdn_0 => pwdn_0,
      resend_0 => resend_0,
      reset_0 => reset_0,
      sioc_0 => sioc_0,
      siod_0 => siod_0,
      xclk_0 => xclk_0
    );
end STRUCTURE;
