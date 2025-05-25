-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 25 11:06:18 2025
-- Host        : dvirhersh_comp running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/fpga_course_logtel_2025/internet_tutorials/VGA_from_youtube/VGA_from_youtube.srcs/sources_1/bd/design_1/ip/design_1_clock_devider_0_0/design_1_clock_devider_0_0_stub.vhdl
-- Design      : design_1_clock_devider_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_clock_devider_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    divided_clk : out STD_LOGIC
  );

end design_1_clock_devider_0_0;

architecture stub of design_1_clock_devider_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,divided_clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "clock_devider,Vivado 2019.2";
begin
end;
