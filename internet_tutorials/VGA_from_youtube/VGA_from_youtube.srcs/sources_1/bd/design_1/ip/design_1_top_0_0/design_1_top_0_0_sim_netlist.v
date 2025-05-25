// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May 25 11:43:21 2025
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
    cntl,
    Hsynq,
    Vsynq,
    Red,
    Green,
    Blue);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clock_devider_0_0_divided_clk, INSERT_VIP 0" *) input pixel_clk;
  input cntl;
  output Hsynq;
  output Vsynq;
  output [3:0]Red;
  output [3:0]Green;
  output [3:0]Blue;

  wire [2:2]\^Blue ;
  wire [2:0]\^Green ;
  wire Hsynq;
  wire [1:0]\^Red ;
  wire Vsynq;
  wire cntl;
  wire pixel_clk;

  assign Blue[3] = \^Blue [2];
  assign Blue[2] = \^Blue [2];
  assign Blue[1] = \^Blue [2];
  assign Blue[0] = \^Blue [2];
  assign Green[3] = \^Green [2];
  assign Green[2] = \^Green [2];
  assign Green[1] = \^Green [2];
  assign Green[0] = \^Green [0];
  assign Red[3] = \^Red [0];
  assign Red[2] = \^Red [1];
  assign Red[1:0] = \^Red [1:0];
  design_1_top_0_0_top U0
       (.Blue(\^Blue ),
        .Green({\^Green [2],\^Green [0]}),
        .Hsynq(Hsynq),
        .Red({\^Red [0],\^Red [1]}),
        .Vsynq(Vsynq),
        .cntl(cntl),
        .pixel_clk(pixel_clk));
endmodule

(* ORIG_REF_NAME = "horizontal_counter" *) 
module design_1_top_0_0_horizontal_counter
   (E,
    AR,
    D,
    \count_reg[8]_0 ,
    \count_reg[6]_0 ,
    cntl_0,
    \count_reg[6]_1 ,
    \count_reg[8]_1 ,
    Hsynq,
    \count_reg[9]_0 ,
    \count_reg[4]_0 ,
    pixel_clk,
    cntl,
    \Red[1] ,
    \Red[1]_0 );
  output [0:0]E;
  output [0:0]AR;
  output [1:0]D;
  output [1:0]\count_reg[8]_0 ;
  output [0:0]\count_reg[6]_0 ;
  output cntl_0;
  output \count_reg[6]_1 ;
  output [0:0]\count_reg[8]_1 ;
  output Hsynq;
  output \count_reg[9]_0 ;
  output \count_reg[4]_0 ;
  input pixel_clk;
  input cntl;
  input \Red[1] ;
  input \Red[1]_0 ;

  wire [0:0]AR;
  wire \Blue_reg[3]_i_4_n_0 ;
  wire \Blue_reg[3]_i_5_n_0 ;
  wire \Blue_reg[3]_i_6_n_0 ;
  wire [1:0]D;
  wire [0:0]E;
  wire Hsynq;
  wire \Red[1] ;
  wire \Red[1]_0 ;
  wire \Red_reg[2]_i_3_n_0 ;
  wire \Red_reg[2]_i_4_n_0 ;
  wire \Red_reg[3]_i_3_n_0 ;
  wire cntl;
  wire cntl_0;
  wire \count[5]_i_1__0_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire \count[9]_i_3_n_0 ;
  wire \count[9]_i_4_n_0 ;
  wire \count[9]_i_5_n_0 ;
  wire [9:0]count_reg;
  wire \count_reg[4]_0 ;
  wire [0:0]\count_reg[6]_0 ;
  wire \count_reg[6]_1 ;
  wire [1:0]\count_reg[8]_0 ;
  wire [0:0]\count_reg[8]_1 ;
  wire \count_reg[9]_0 ;
  wire pixel_clk;
  wire [9:0]plusOp;

  LUT6 #(
    .INIT(64'h00A2FFFF00A20000)) 
    \Blue_reg[3]_i_1 
       (.I0(\Red[1] ),
        .I1(\Red_reg[2]_i_3_n_0 ),
        .I2(\Red_reg[2]_i_4_n_0 ),
        .I3(\Red[1]_0 ),
        .I4(cntl),
        .I5(\Blue_reg[3]_i_4_n_0 ),
        .O(cntl_0));
  LUT2 #(
    .INIT(4'hE)) 
    \Blue_reg[3]_i_2 
       (.I0(\count_reg[6]_0 ),
        .I1(\Blue_reg[3]_i_5_n_0 ),
        .O(\count_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h0000000000001F00)) 
    \Blue_reg[3]_i_3 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(count_reg[6]),
        .I3(\Blue_reg[3]_i_6_n_0 ),
        .I4(count_reg[9]),
        .I5(cntl),
        .O(\count_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h1044445133326444)) 
    \Blue_reg[3]_i_4 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .I2(count_reg[4]),
        .I3(count_reg[5]),
        .I4(count_reg[6]),
        .I5(count_reg[7]),
        .O(\Blue_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000500005400)) 
    \Blue_reg[3]_i_5 
       (.I0(count_reg[9]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(count_reg[8]),
        .I5(count_reg[7]),
        .O(\Blue_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Blue_reg[3]_i_6 
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .O(\Blue_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008808)) 
    \Green_reg[0]_i_1 
       (.I0(cntl),
        .I1(\Red[1] ),
        .I2(\Red_reg[2]_i_3_n_0 ),
        .I3(\Red_reg[2]_i_4_n_0 ),
        .I4(\Red[1]_0 ),
        .I5(\count_reg[8]_0 [1]),
        .O(\count_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000034141606)) 
    \Green_reg[3]_i_1 
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .I2(count_reg[7]),
        .I3(count_reg[5]),
        .I4(count_reg[6]),
        .I5(cntl),
        .O(\count_reg[8]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00FF0FE0)) 
    \Green_reg[3]_i_2 
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(count_reg[7]),
        .I3(count_reg[9]),
        .I4(count_reg[8]),
        .I5(cntl),
        .O(\count_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0000000000011111)) 
    \Green_reg[3]_i_3 
       (.I0(cntl),
        .I1(count_reg[8]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(count_reg[7]),
        .I5(count_reg[9]),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000111)) 
    Hsynq_INST_0
       (.I0(count_reg[8]),
        .I1(count_reg[7]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(count_reg[9]),
        .O(Hsynq));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAEAAAEA)) 
    \Red_reg[2]_i_1 
       (.I0(D[1]),
        .I1(cntl),
        .I2(\Red[1] ),
        .I3(\Red_reg[2]_i_3_n_0 ),
        .I4(\Red_reg[2]_i_4_n_0 ),
        .I5(\Red[1]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Red_reg[2]_i_3 
       (.I0(count_reg[4]),
        .I1(count_reg[7]),
        .O(\Red_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFEEEA)) 
    \Red_reg[2]_i_4 
       (.I0(count_reg[9]),
        .I1(count_reg[7]),
        .I2(count_reg[6]),
        .I3(count_reg[5]),
        .I4(count_reg[8]),
        .O(\Red_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \Red_reg[2]_i_8 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .I2(count_reg[4]),
        .I3(count_reg[5]),
        .I4(count_reg[6]),
        .I5(count_reg[7]),
        .O(\count_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h00000000000011A8)) 
    \Red_reg[3]_i_1 
       (.I0(count_reg[8]),
        .I1(count_reg[7]),
        .I2(count_reg[6]),
        .I3(count_reg[9]),
        .I4(\Red_reg[3]_i_3_n_0 ),
        .I5(cntl),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABBBBB)) 
    \Red_reg[3]_i_2 
       (.I0(\count_reg[6]_0 ),
        .I1(count_reg[8]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(count_reg[7]),
        .I5(count_reg[9]),
        .O(\count_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h0001000100010101)) 
    \Red_reg[3]_i_3 
       (.I0(count_reg[9]),
        .I1(count_reg[7]),
        .I2(count_reg[8]),
        .I3(count_reg[6]),
        .I4(count_reg[5]),
        .I5(count_reg[4]),
        .O(\Red_reg[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count[5]_i_1__0 
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .I2(count_reg[2]),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .I5(count_reg[3]),
        .O(\count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \count[6]_i_1 
       (.I0(count_reg[6]),
        .I1(\count[9]_i_5_n_0 ),
        .I2(count_reg[4]),
        .I3(count_reg[5]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \count[7]_i_1 
       (.I0(count_reg[7]),
        .I1(count_reg[5]),
        .I2(count_reg[4]),
        .I3(\count[9]_i_5_n_0 ),
        .I4(count_reg[6]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \count[8]_i_1 
       (.I0(count_reg[8]),
        .I1(\count[9]_i_5_n_0 ),
        .I2(count_reg[6]),
        .I3(count_reg[5]),
        .I4(count_reg[7]),
        .I5(count_reg[4]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h8888888088888888)) 
    \count[9]_i_1 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .I2(count_reg[5]),
        .I3(count_reg[7]),
        .I4(count_reg[6]),
        .I5(\count[9]_i_3_n_0 ),
        .O(\count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \count[9]_i_2 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .I2(\count[9]_i_4_n_0 ),
        .I3(\count[9]_i_5_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \count[9]_i_4 
       (.I0(count_reg[6]),
        .I1(count_reg[5]),
        .I2(count_reg[7]),
        .I3(count_reg[4]),
        .O(\count[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[9]_i_5 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(\count[9]_i_5_n_0 ));
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
        .D(\count[5]_i_1__0_n_0 ),
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
   (Red,
    Green,
    Blue,
    Hsynq,
    Vsynq,
    cntl,
    pixel_clk);
  output [1:0]Red;
  output [1:0]Green;
  output [0:0]Blue;
  output Hsynq;
  output Vsynq;
  input cntl;
  input pixel_clk;

  wire [0:0]Blue;
  wire [1:0]Green;
  wire Hsynq;
  wire [1:0]Red;
  wire VGA_Horiz_n_1;
  wire VGA_Horiz_n_11;
  wire VGA_Horiz_n_12;
  wire VGA_Horiz_n_2;
  wire VGA_Horiz_n_3;
  wire VGA_Horiz_n_4;
  wire VGA_Horiz_n_5;
  wire VGA_Horiz_n_6;
  wire VGA_Horiz_n_7;
  wire VGA_Horiz_n_8;
  wire VGA_Horiz_n_9;
  wire VGA_Verti_n_0;
  wire VGA_Verti_n_1;
  wire Vsynq;
  wire cntl;
  wire enable_V_Counter;
  wire pixel_clk;

  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Blue_reg[3] 
       (.CLR(VGA_Horiz_n_12),
        .D(VGA_Horiz_n_7),
        .G(VGA_Horiz_n_8),
        .GE(1'b1),
        .Q(Blue));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Green_reg[0] 
       (.CLR(VGA_Horiz_n_1),
        .D(VGA_Horiz_n_5),
        .G(VGA_Horiz_n_6),
        .GE(1'b1),
        .Q(Green[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Green_reg[3] 
       (.CLR(VGA_Horiz_n_1),
        .D(VGA_Horiz_n_4),
        .G(VGA_Horiz_n_6),
        .GE(1'b1),
        .Q(Green[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Red_reg[2] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_3),
        .G(VGA_Horiz_n_9),
        .GE(1'b1),
        .Q(Red[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Red_reg[3] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_2),
        .G(VGA_Horiz_n_9),
        .GE(1'b1),
        .Q(Red[1]));
  design_1_top_0_0_horizontal_counter VGA_Horiz
       (.AR(VGA_Horiz_n_1),
        .D({VGA_Horiz_n_2,VGA_Horiz_n_3}),
        .E(enable_V_Counter),
        .Hsynq(Hsynq),
        .\Red[1] (VGA_Verti_n_0),
        .\Red[1]_0 (VGA_Verti_n_1),
        .cntl(cntl),
        .cntl_0(VGA_Horiz_n_7),
        .\count_reg[4]_0 (VGA_Horiz_n_12),
        .\count_reg[6]_0 (VGA_Horiz_n_6),
        .\count_reg[6]_1 (VGA_Horiz_n_8),
        .\count_reg[8]_0 ({VGA_Horiz_n_4,VGA_Horiz_n_5}),
        .\count_reg[8]_1 (VGA_Horiz_n_9),
        .\count_reg[9]_0 (VGA_Horiz_n_11),
        .pixel_clk(pixel_clk));
  design_1_top_0_0_vertical_counter VGA_Verti
       (.\Blue_reg[3]_i_1 (VGA_Horiz_n_11),
        .E(enable_V_Counter),
        .Vsynq(Vsynq),
        .\count_reg[6]_0 (VGA_Verti_n_0),
        .\count_reg[9]_0 (VGA_Verti_n_1),
        .pixel_clk(pixel_clk));
endmodule

(* ORIG_REF_NAME = "vertical_counter" *) 
module design_1_top_0_0_vertical_counter
   (\count_reg[6]_0 ,
    \count_reg[9]_0 ,
    Vsynq,
    \Blue_reg[3]_i_1 ,
    E,
    pixel_clk);
  output \count_reg[6]_0 ;
  output \count_reg[9]_0 ;
  output Vsynq;
  input \Blue_reg[3]_i_1 ;
  input [0:0]E;
  input pixel_clk;

  wire \Blue_reg[3]_i_1 ;
  wire [0:0]E;
  wire \Red_reg[2]_i_6_n_0 ;
  wire \Red_reg[2]_i_7_n_0 ;
  wire [9:0]V_Count_Value;
  wire Vsynq;
  wire Vsynq_INST_0_i_1_n_0;
  wire count;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[3]_i_1__0_n_0 ;
  wire \count[4]_i_1__0_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[9]_i_3__0_n_0 ;
  wire \count[9]_i_4__0_n_0 ;
  wire \count_reg[6]_0 ;
  wire \count_reg[9]_0 ;
  wire pixel_clk;
  wire [9:5]plusOp__0;

  LUT6 #(
    .INIT(64'h00000000FEFEFEEE)) 
    \Red_reg[2]_i_2 
       (.I0(V_Count_Value[6]),
        .I1(\Red_reg[2]_i_6_n_0 ),
        .I2(V_Count_Value[5]),
        .I3(\Red_reg[2]_i_7_n_0 ),
        .I4(V_Count_Value[4]),
        .I5(\Blue_reg[3]_i_1 ),
        .O(\count_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80AAAAAAAA)) 
    \Red_reg[2]_i_5 
       (.I0(V_Count_Value[9]),
        .I1(V_Count_Value[0]),
        .I2(V_Count_Value[1]),
        .I3(V_Count_Value[3]),
        .I4(V_Count_Value[2]),
        .I5(\count[9]_i_3__0_n_0 ),
        .O(\count_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Red_reg[2]_i_6 
       (.I0(V_Count_Value[9]),
        .I1(V_Count_Value[8]),
        .I2(V_Count_Value[7]),
        .O(\Red_reg[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \Red_reg[2]_i_7 
       (.I0(V_Count_Value[0]),
        .I1(V_Count_Value[1]),
        .I2(V_Count_Value[3]),
        .I3(V_Count_Value[2]),
        .O(\Red_reg[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    Vsynq_INST_0
       (.I0(V_Count_Value[4]),
        .I1(V_Count_Value[5]),
        .I2(V_Count_Value[6]),
        .I3(Vsynq_INST_0_i_1_n_0),
        .O(Vsynq));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Vsynq_INST_0_i_1
       (.I0(V_Count_Value[7]),
        .I1(V_Count_Value[8]),
        .I2(V_Count_Value[9]),
        .I3(V_Count_Value[2]),
        .I4(V_Count_Value[3]),
        .I5(V_Count_Value[1]),
        .O(Vsynq_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00002AFF)) 
    \count[0]_i_1__0 
       (.I0(\count[9]_i_3__0_n_0 ),
        .I1(V_Count_Value[2]),
        .I2(V_Count_Value[3]),
        .I3(V_Count_Value[9]),
        .I4(V_Count_Value[0]),
        .O(\count[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00002AFF2AFF0000)) 
    \count[1]_i_1__0 
       (.I0(\count[9]_i_3__0_n_0 ),
        .I1(V_Count_Value[2]),
        .I2(V_Count_Value[3]),
        .I3(V_Count_Value[9]),
        .I4(V_Count_Value[1]),
        .I5(V_Count_Value[0]),
        .O(\count[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h223308CC08CC08CC)) 
    \count[2]_i_1__0 
       (.I0(\count[9]_i_3__0_n_0 ),
        .I1(V_Count_Value[2]),
        .I2(V_Count_Value[3]),
        .I3(V_Count_Value[9]),
        .I4(V_Count_Value[0]),
        .I5(V_Count_Value[1]),
        .O(\count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h283C20F020F020F0)) 
    \count[3]_i_1__0 
       (.I0(\count[9]_i_3__0_n_0 ),
        .I1(V_Count_Value[2]),
        .I2(V_Count_Value[3]),
        .I3(V_Count_Value[9]),
        .I4(V_Count_Value[1]),
        .I5(V_Count_Value[0]),
        .O(\count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_1__0 
       (.I0(V_Count_Value[4]),
        .I1(V_Count_Value[2]),
        .I2(V_Count_Value[3]),
        .I3(V_Count_Value[1]),
        .I4(V_Count_Value[0]),
        .O(\count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(V_Count_Value[2]),
        .I1(V_Count_Value[3]),
        .I2(V_Count_Value[1]),
        .I3(V_Count_Value[0]),
        .I4(V_Count_Value[4]),
        .I5(V_Count_Value[5]),
        .O(plusOp__0[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count[6]_i_1__0 
       (.I0(V_Count_Value[6]),
        .I1(V_Count_Value[2]),
        .I2(V_Count_Value[3]),
        .I3(\count[6]_i_2_n_0 ),
        .I4(V_Count_Value[4]),
        .I5(V_Count_Value[5]),
        .O(plusOp__0[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \count[6]_i_2 
       (.I0(V_Count_Value[1]),
        .I1(V_Count_Value[0]),
        .O(\count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[7]_i_1__0 
       (.I0(V_Count_Value[7]),
        .I1(\count[9]_i_4__0_n_0 ),
        .I2(V_Count_Value[6]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[8]_i_1__0 
       (.I0(V_Count_Value[8]),
        .I1(V_Count_Value[6]),
        .I2(\count[9]_i_4__0_n_0 ),
        .I3(V_Count_Value[7]),
        .O(plusOp__0[8]));
  LUT5 #(
    .INIT(32'hD5000000)) 
    \count[9]_i_1__0 
       (.I0(\count[9]_i_3__0_n_0 ),
        .I1(V_Count_Value[2]),
        .I2(V_Count_Value[3]),
        .I3(E),
        .I4(V_Count_Value[9]),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[9]_i_2__0 
       (.I0(V_Count_Value[9]),
        .I1(V_Count_Value[7]),
        .I2(\count[9]_i_4__0_n_0 ),
        .I3(V_Count_Value[6]),
        .I4(V_Count_Value[8]),
        .O(plusOp__0[9]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \count[9]_i_3__0 
       (.I0(V_Count_Value[8]),
        .I1(V_Count_Value[7]),
        .I2(V_Count_Value[4]),
        .I3(V_Count_Value[5]),
        .I4(V_Count_Value[6]),
        .O(\count[9]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[9]_i_4__0 
       (.I0(V_Count_Value[5]),
        .I1(V_Count_Value[4]),
        .I2(V_Count_Value[0]),
        .I3(V_Count_Value[1]),
        .I4(V_Count_Value[3]),
        .I5(V_Count_Value[2]),
        .O(\count[9]_i_4__0_n_0 ));
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
        .D(\count[1]_i_1__0_n_0 ),
        .Q(V_Count_Value[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(pixel_clk),
        .CE(E),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(V_Count_Value[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(pixel_clk),
        .CE(E),
        .D(\count[3]_i_1__0_n_0 ),
        .Q(V_Count_Value[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(pixel_clk),
        .CE(E),
        .D(\count[4]_i_1__0_n_0 ),
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
