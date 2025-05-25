// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May 25 12:50:12 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ovo_7670_caputre_0_0_stub.v
// Design      : design_1_ovo_7670_caputre_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ovo_7670_caputre,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pclk, camera_v_sync, camera_h_ref, zoom_x2, din, 
  addr, dout, wr_en)
/* synthesis syn_black_box black_box_pad_pin="pclk,camera_v_sync,camera_h_ref,zoom_x2,din[7:0],addr[18:0],dout[11:0],wr_en" */;
  input pclk;
  input camera_v_sync;
  input camera_h_ref;
  input zoom_x2;
  input [7:0]din;
  output [18:0]addr;
  output [11:0]dout;
  output wr_en;
endmodule
