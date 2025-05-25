// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May 25 11:06:18 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/fpga_course_logtel_2025/internet_tutorials/VGA_from_youtube/VGA_from_youtube.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.v
// Design      : design_1_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top,Vivado 2019.2" *)
module design_1_top_0_0(pixel_clk, Hsynq, Vsynq, Red, Green, Blue)
/* synthesis syn_black_box black_box_pad_pin="pixel_clk,Hsynq,Vsynq,Red[3:0],Green[3:0],Blue[3:0]" */;
  input pixel_clk;
  output Hsynq;
  output Vsynq;
  output [3:0]Red;
  output [3:0]Green;
  output [3:0]Blue;
endmodule
