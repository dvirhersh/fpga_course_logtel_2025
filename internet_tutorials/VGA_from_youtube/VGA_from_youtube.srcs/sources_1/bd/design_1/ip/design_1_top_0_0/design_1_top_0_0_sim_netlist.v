// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May 25 11:06:18 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/fpga_course_logtel_2025/internet_tutorials/VGA_from_youtube/VGA_from_youtube.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (pixel_clk,
    Hsynq,
    Vsynq,
    Red,
    Green,
    Blue);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clock_devider_0_0_divided_clk, INSERT_VIP 0" *) input pixel_clk;
  output Hsynq;
  output Vsynq;
  output [3:0]Red;
  output [3:0]Green;
  output [3:0]Blue;

  wire \<const0> ;
  wire Hsynq;
  wire [3:3]\^Red ;
  wire Vsynq;
  wire pixel_clk;

  assign Blue[3] = \<const0> ;
  assign Blue[2] = \^Red [3];
  assign Blue[1] = \^Red [3];
  assign Blue[0] = \<const0> ;
  assign Green[3] = \<const0> ;
  assign Green[2] = \<const0> ;
  assign Green[1] = \<const0> ;
  assign Green[0] = \^Red [3];
  assign Red[3] = \^Red [3];
  assign Red[2] = \^Red [3];
  assign Red[1] = \^Red [3];
  assign Red[0] = \^Red [3];
  GND GND
       (.G(\<const0> ));
  design_1_top_0_0_top U0
       (.Hsynq(Hsynq),
        .Red(\^Red ),
        .Vsynq(Vsynq),
        .pixel_clk(pixel_clk));
endmodule

(* ORIG_REF_NAME = "horizontal_counter" *) 
module design_1_top_0_0_horizontal_counter
   (E,
    Hsynq,
    \count_reg[4]_0 ,
    pixel_clk);
  output [0:0]E;
  output Hsynq;
  output \count_reg[4]_0 ;
  input pixel_clk;

  wire [0:0]E;
  wire Hsynq;
  wire \count[9]_i_1_n_0 ;
  wire \count[9]_i_3_n_0 ;
  wire [9:0]count_reg;
  wire \count_reg[4]_0 ;
  wire pixel_clk;
  wire [9:0]plusOp;

  LUT6 #(
    .INIT(64'h0FFF0FF00FFE1FF0)) 
    \Blue[1]_INST_0_i_3 
       (.I0(count_reg[4]),
        .I1(count_reg[6]),
        .I2(count_reg[8]),
        .I3(count_reg[9]),
        .I4(count_reg[7]),
        .I5(count_reg[5]),
        .O(\count_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h00010101)) 
    Hsynq_INST_0
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(count_reg[6]),
        .I4(count_reg[5]),
        .O(Hsynq));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(count_reg[5]),
        .O(plusOp[5]));
  LUT3 #(
    .INIT(8'hD2)) 
    \count[6]_i_1 
       (.I0(count_reg[5]),
        .I1(\count[9]_i_3_n_0 ),
        .I2(count_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \count[7]_i_1 
       (.I0(\count[9]_i_3_n_0 ),
        .I1(count_reg[5]),
        .I2(count_reg[6]),
        .I3(count_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \count[8]_i_1 
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(count_reg[5]),
        .I3(\count[9]_i_3_n_0 ),
        .I4(count_reg[8]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'hFEFF000000000000)) 
    \count[9]_i_1 
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\count[9]_i_3_n_0 ),
        .I4(count_reg[8]),
        .I5(count_reg[9]),
        .O(\count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \count[9]_i_2 
       (.I0(count_reg[8]),
        .I1(\count[9]_i_3_n_0 ),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(count_reg[7]),
        .I5(count_reg[9]),
        .O(plusOp[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \count[9]_i_3 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .O(\count[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(count_reg[0]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(count_reg[1]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(count_reg[2]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(count_reg[3]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(count_reg[4]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(count_reg[5]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(count_reg[6]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(count_reg[7]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(count_reg[8]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(count_reg[9]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    v_enable_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\count[9]_i_1_n_0 ),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (Hsynq,
    Red,
    Vsynq,
    pixel_clk);
  output Hsynq;
  output [0:0]Red;
  output Vsynq;
  input pixel_clk;

  wire Hsynq;
  wire [0:0]Red;
  wire VGA_Horiz_n_2;
  wire Vsynq;
  wire enable_V_Counter;
  wire pixel_clk;

  design_1_top_0_0_horizontal_counter VGA_Horiz
       (.E(enable_V_Counter),
        .Hsynq(Hsynq),
        .\count_reg[4]_0 (VGA_Horiz_n_2),
        .pixel_clk(pixel_clk));
  design_1_top_0_0_vertical_counter VGA_Verti
       (.E(enable_V_Counter),
        .Red(Red),
        .\Red[3] (VGA_Horiz_n_2),
        .Vsynq(Vsynq),
        .pixel_clk(pixel_clk));
endmodule

(* ORIG_REF_NAME = "vertical_counter" *) 
module design_1_top_0_0_vertical_counter
   (Red,
    Vsynq,
    \Red[3] ,
    E,
    pixel_clk);
  output [0:0]Red;
  output Vsynq;
  input \Red[3] ;
  input [0:0]E;
  input pixel_clk;

  wire \Blue[1]_INST_0_i_1_n_0 ;
  wire \Blue[1]_INST_0_i_2_n_0 ;
  wire [0:0]E;
  wire [0:0]Red;
  wire \Red[3] ;
  wire [9:0]V_Count_Value;
  wire Vsynq;
  wire Vsynq_INST_0_i_1_n_0;
  wire count;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[9]_i_3__0_n_0 ;
  wire pixel_clk;
  wire [9:1]plusOp__0;

  LUT5 #(
    .INIT(32'h0100F800)) 
    \Blue[1]_INST_0 
       (.I0(V_Count_Value[5]),
        .I1(\Blue[1]_INST_0_i_1_n_0 ),
        .I2(\Blue[1]_INST_0_i_2_n_0 ),
        .I3(\Red[3] ),
        .I4(V_Count_Value[9]),
        .O(Red));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \Blue[1]_INST_0_i_1 
       (.I0(V_Count_Value[2]),
        .I1(V_Count_Value[3]),
        .I2(V_Count_Value[4]),
        .I3(V_Count_Value[1]),
        .I4(V_Count_Value[0]),
        .O(\Blue[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Blue[1]_INST_0_i_2 
       (.I0(V_Count_Value[8]),
        .I1(V_Count_Value[7]),
        .I2(V_Count_Value[6]),
        .O(\Blue[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    Vsynq_INST_0
       (.I0(V_Count_Value[4]),
        .I1(V_Count_Value[3]),
        .I2(V_Count_Value[2]),
        .I3(V_Count_Value[1]),
        .I4(V_Count_Value[9]),
        .I5(Vsynq_INST_0_i_1_n_0),
        .O(Vsynq));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Vsynq_INST_0_i_1
       (.I0(V_Count_Value[6]),
        .I1(V_Count_Value[7]),
        .I2(V_Count_Value[8]),
        .I3(V_Count_Value[5]),
        .O(Vsynq_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000055555777)) 
    \count[0]_i_1__0 
       (.I0(V_Count_Value[9]),
        .I1(Vsynq_INST_0_i_1_n_0),
        .I2(V_Count_Value[3]),
        .I3(V_Count_Value[2]),
        .I4(V_Count_Value[4]),
        .I5(V_Count_Value[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(V_Count_Value[0]),
        .I1(V_Count_Value[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(V_Count_Value[1]),
        .I1(V_Count_Value[0]),
        .I2(V_Count_Value[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(V_Count_Value[2]),
        .I1(V_Count_Value[0]),
        .I2(V_Count_Value[1]),
        .I3(V_Count_Value[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1__0 
       (.I0(V_Count_Value[3]),
        .I1(V_Count_Value[1]),
        .I2(V_Count_Value[0]),
        .I3(V_Count_Value[2]),
        .I4(V_Count_Value[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1__0 
       (.I0(V_Count_Value[4]),
        .I1(V_Count_Value[2]),
        .I2(V_Count_Value[0]),
        .I3(V_Count_Value[1]),
        .I4(V_Count_Value[3]),
        .I5(V_Count_Value[5]),
        .O(plusOp__0[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \count[6]_i_1__0 
       (.I0(V_Count_Value[5]),
        .I1(V_Count_Value[3]),
        .I2(\count[6]_i_2_n_0 ),
        .I3(V_Count_Value[2]),
        .I4(V_Count_Value[4]),
        .I5(V_Count_Value[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_2 
       (.I0(V_Count_Value[0]),
        .I1(V_Count_Value[1]),
        .O(\count[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \count[7]_i_1__0 
       (.I0(V_Count_Value[6]),
        .I1(\count[9]_i_3__0_n_0 ),
        .I2(V_Count_Value[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \count[8]_i_1__0 
       (.I0(V_Count_Value[7]),
        .I1(\count[9]_i_3__0_n_0 ),
        .I2(V_Count_Value[6]),
        .I3(V_Count_Value[8]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h8888888888808080)) 
    \count[9]_i_1__0 
       (.I0(V_Count_Value[9]),
        .I1(E),
        .I2(Vsynq_INST_0_i_1_n_0),
        .I3(V_Count_Value[3]),
        .I4(V_Count_Value[2]),
        .I5(V_Count_Value[4]),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \count[9]_i_2__0 
       (.I0(V_Count_Value[8]),
        .I1(V_Count_Value[6]),
        .I2(\count[9]_i_3__0_n_0 ),
        .I3(V_Count_Value[7]),
        .I4(V_Count_Value[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[9]_i_3__0 
       (.I0(V_Count_Value[4]),
        .I1(V_Count_Value[2]),
        .I2(V_Count_Value[0]),
        .I3(V_Count_Value[1]),
        .I4(V_Count_Value[3]),
        .I5(V_Count_Value[5]),
        .O(\count[9]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(pixel_clk),
        .CE(E),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(V_Count_Value[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(pixel_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(V_Count_Value[1]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(pixel_clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(V_Count_Value[2]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(pixel_clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(V_Count_Value[3]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(pixel_clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(V_Count_Value[4]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(pixel_clk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(V_Count_Value[5]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(pixel_clk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(V_Count_Value[6]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(pixel_clk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(V_Count_Value[7]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(pixel_clk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(V_Count_Value[8]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(pixel_clk),
        .CE(E),
        .D(plusOp__0[9]),
        .Q(V_Count_Value[9]),
        .R(count));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
