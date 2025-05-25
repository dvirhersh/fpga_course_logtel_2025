-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 25 11:43:21 2025
-- Host        : dvirhersh_comp running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/fpga_course_logtel_2025/internet_tutorials/VGA_from_youtube/VGA_from_youtube.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_top_0_0 is
  Port ( 
    pixel_clk : in STD_LOGIC;
    cntl : in STD_LOGIC;
    Hsynq : out STD_LOGIC;
    Vsynq : out STD_LOGIC;
    Red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_top_0_0;

architecture stub of design_1_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_clk,cntl,Hsynq,Vsynq,Red[3:0],Green[3:0],Blue[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top,Vivado 2019.2";
begin
end;
