// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May 25 12:20:35 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/fpga_course_logtel_2025/internet_tutorials/VGA_from_youtube/VGA_from_youtube.srcs/sources_1/bd/design_1/ip/design_1_vga_top_0_0/design_1_vga_top_0_0_sim_netlist.v
// Design      : design_1_vga_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vga_top_0_0,vga_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "vga_top,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_vga_top_0_0
   (pixel_clk,
    cntl,
    frame_pixel,
    Hsynq,
    Vsynq,
    Red,
    Green,
    Blue,
    frame_address);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clock_devider_0_0_divided_clk, INSERT_VIP 0" *) input pixel_clk;
  input cntl;
  input [11:0]frame_pixel;
  output Hsynq;
  output Vsynq;
  output [3:0]Red;
  output [3:0]Green;
  output [3:0]Blue;
  output [18:0]frame_address;

  wire [3:0]Blue;
  wire [3:0]Green;
  wire Hsynq;
  wire [3:0]Red;
  wire Vsynq;
  wire cntl;
  wire [18:0]frame_address;
  wire [11:0]frame_pixel;
  wire pixel_clk;

  design_1_vga_top_0_0_vga_top U0
       (.Blue(Blue),
        .Green(Green),
        .Hsynq(Hsynq),
        .Red(Red),
        .Vsynq(Vsynq),
        .cntl(cntl),
        .frame_address(frame_address),
        .frame_pixel(frame_pixel),
        .pixel_clk(pixel_clk));
endmodule

(* ORIG_REF_NAME = "horizontal_counter" *) 
module design_1_vga_top_0_0_horizontal_counter
   (E,
    D,
    \frame_pixel[11] ,
    \frame_pixel[3] ,
    \count_reg[7]_0 ,
    ltOp17_in,
    \count_reg[8]_0 ,
    Hsynq,
    pixel_clk,
    frame_pixel,
    Red120_out,
    cntl);
  output [0:0]E;
  output [3:0]D;
  output [3:0]\frame_pixel[11] ;
  output [3:0]\frame_pixel[3] ;
  output [0:0]\count_reg[7]_0 ;
  output ltOp17_in;
  output \count_reg[8]_0 ;
  output Hsynq;
  input pixel_clk;
  input [11:0]frame_pixel;
  input Red120_out;
  input cntl;

  wire \Blue_reg[3]_i_2_n_0 ;
  wire \Blue_reg[3]_i_3_n_0 ;
  wire [3:0]D;
  wire [0:0]E;
  wire \Green_reg[3]_i_2_n_0 ;
  wire \Green_reg[3]_i_3_n_0 ;
  wire Hsynq;
  wire Red113_out;
  wire Red116_out;
  wire Red120_out;
  wire \Red_reg[3]_i_13_n_0 ;
  wire \Red_reg[3]_i_15_n_0 ;
  wire \Red_reg[3]_i_4_n_0 ;
  wire \Red_reg[3]_i_5_n_0 ;
  wire \Red_reg[3]_i_6_n_0 ;
  wire \Red_reg[3]_i_8_n_0 ;
  wire cntl;
  wire \count[9]_i_1__0_n_0 ;
  wire \count[9]_i_3__0_n_0 ;
  wire \count[9]_i_4_n_0 ;
  wire \count[9]_i_5_n_0 ;
  wire [9:0]count_reg;
  wire [0:0]\count_reg[7]_0 ;
  wire \count_reg[8]_0 ;
  wire [11:0]frame_pixel;
  wire [3:0]\frame_pixel[11] ;
  wire [3:0]\frame_pixel[3] ;
  wire ltOp;
  wire ltOp17_in;
  wire pixel_clk;
  wire [9:0]plusOp;

  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    \Blue_reg[0]_i_1 
       (.I0(frame_pixel[0]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(Red116_out),
        .I4(\Red_reg[3]_i_4_n_0 ),
        .I5(\Blue_reg[3]_i_2_n_0 ),
        .O(\frame_pixel[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    \Blue_reg[1]_i_1 
       (.I0(frame_pixel[1]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(Red116_out),
        .I4(\Red_reg[3]_i_4_n_0 ),
        .I5(\Blue_reg[3]_i_2_n_0 ),
        .O(\frame_pixel[3] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    \Blue_reg[2]_i_1 
       (.I0(frame_pixel[2]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(Red116_out),
        .I4(\Red_reg[3]_i_4_n_0 ),
        .I5(\Blue_reg[3]_i_2_n_0 ),
        .O(\frame_pixel[3] [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    \Blue_reg[3]_i_1 
       (.I0(frame_pixel[3]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(Red116_out),
        .I4(\Red_reg[3]_i_4_n_0 ),
        .I5(\Blue_reg[3]_i_2_n_0 ),
        .O(\frame_pixel[3] [3]));
  LUT5 #(
    .INIT(32'h000C000E)) 
    \Blue_reg[3]_i_2 
       (.I0(\Blue_reg[3]_i_3_n_0 ),
        .I1(Red116_out),
        .I2(ltOp),
        .I3(cntl),
        .I4(Red113_out),
        .O(\Blue_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1426042444244024)) 
    \Blue_reg[3]_i_3 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .I2(count_reg[6]),
        .I3(count_reg[7]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(\Blue_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0111110000000000)) 
    \Blue_reg[3]_i_4 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .I2(count_reg[4]),
        .I3(count_reg[5]),
        .I4(count_reg[6]),
        .I5(count_reg[7]),
        .O(Red113_out));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \Green_reg[0]_i_1 
       (.I0(frame_pixel[4]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(\Red_reg[3]_i_4_n_0 ),
        .I4(\Green_reg[3]_i_2_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \Green_reg[1]_i_1 
       (.I0(frame_pixel[5]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(\Red_reg[3]_i_4_n_0 ),
        .I4(\Green_reg[3]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \Green_reg[2]_i_1 
       (.I0(frame_pixel[6]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(\Red_reg[3]_i_4_n_0 ),
        .I4(\Green_reg[3]_i_2_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \Green_reg[3]_i_1 
       (.I0(frame_pixel[7]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(\Red_reg[3]_i_4_n_0 ),
        .I4(\Green_reg[3]_i_2_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00000032)) 
    \Green_reg[3]_i_2 
       (.I0(\Red_reg[3]_i_8_n_0 ),
        .I1(Red116_out),
        .I2(\Green_reg[3]_i_3_n_0 ),
        .I3(cntl),
        .I4(ltOp),
        .O(\Green_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20004444)) 
    \Green_reg[3]_i_3 
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(count_reg[7]),
        .O(\Green_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000007)) 
    Hsynq_INST_0
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(count_reg[9]),
        .I4(count_reg[8]),
        .O(Hsynq));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \Red_reg[0]_i_1 
       (.I0(frame_pixel[8]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(\Red_reg[3]_i_4_n_0 ),
        .I4(\Red_reg[3]_i_5_n_0 ),
        .O(\frame_pixel[11] [0]));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \Red_reg[1]_i_1 
       (.I0(frame_pixel[9]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(\Red_reg[3]_i_4_n_0 ),
        .I4(\Red_reg[3]_i_5_n_0 ),
        .O(\frame_pixel[11] [1]));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \Red_reg[2]_i_1 
       (.I0(frame_pixel[10]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(\Red_reg[3]_i_4_n_0 ),
        .I4(\Red_reg[3]_i_5_n_0 ),
        .O(\frame_pixel[11] [2]));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \Red_reg[3]_i_1 
       (.I0(frame_pixel[11]),
        .I1(Red120_out),
        .I2(cntl),
        .I3(\Red_reg[3]_i_4_n_0 ),
        .I4(\Red_reg[3]_i_5_n_0 ),
        .O(\frame_pixel[11] [3]));
  LUT6 #(
    .INIT(64'h0000111100011111)) 
    \Red_reg[3]_i_11 
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .I2(count_reg[5]),
        .I3(count_reg[6]),
        .I4(count_reg[7]),
        .I5(count_reg[4]),
        .O(\count_reg[8]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Red_reg[3]_i_13 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(\Red_reg[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000010000000F)) 
    \Red_reg[3]_i_14 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(count_reg[9]),
        .I3(count_reg[8]),
        .I4(count_reg[7]),
        .I5(count_reg[6]),
        .O(ltOp));
  LUT6 #(
    .INIT(64'h0303030C0302030C)) 
    \Red_reg[3]_i_15 
       (.I0(count_reg[4]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(count_reg[7]),
        .I4(count_reg[6]),
        .I5(count_reg[5]),
        .O(\Red_reg[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Red_reg[3]_i_2 
       (.I0(\Red_reg[3]_i_6_n_0 ),
        .I1(Red116_out),
        .I2(\Red_reg[3]_i_4_n_0 ),
        .I3(\Red_reg[3]_i_8_n_0 ),
        .O(\count_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01010103)) 
    \Red_reg[3]_i_4 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .I2(\Red_reg[3]_i_13_n_0 ),
        .I3(count_reg[5]),
        .I4(count_reg[4]),
        .I5(cntl),
        .O(\Red_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \Red_reg[3]_i_5 
       (.I0(ltOp),
        .I1(cntl),
        .I2(\Red_reg[3]_i_15_n_0 ),
        .I3(\Red_reg[3]_i_6_n_0 ),
        .O(\Red_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h3424)) 
    \Red_reg[3]_i_6 
       (.I0(count_reg[7]),
        .I1(count_reg[9]),
        .I2(count_reg[8]),
        .I3(count_reg[6]),
        .O(\Red_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000001C00000018)) 
    \Red_reg[3]_i_7 
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(count_reg[9]),
        .I4(count_reg[8]),
        .I5(count_reg[4]),
        .O(Red116_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000011A8)) 
    \Red_reg[3]_i_8 
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(count_reg[5]),
        .I3(count_reg[8]),
        .I4(count_reg[9]),
        .O(\Red_reg[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    \Red_reg[3]_i_9 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(count_reg[6]),
        .I3(count_reg[7]),
        .I4(count_reg[8]),
        .I5(count_reg[9]),
        .O(ltOp17_in));
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
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1__0 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[6]_i_1__0 
       (.I0(count_reg[5]),
        .I1(\count[9]_i_5_n_0 ),
        .I2(count_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[7]_i_1__0 
       (.I0(\count[9]_i_5_n_0 ),
        .I1(count_reg[6]),
        .I2(count_reg[5]),
        .I3(count_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[8]_i_1__0 
       (.I0(\count[9]_i_5_n_0 ),
        .I1(count_reg[5]),
        .I2(count_reg[6]),
        .I3(count_reg[7]),
        .I4(count_reg[8]),
        .O(plusOp[8]));
  LUT5 #(
    .INIT(32'hF0004000)) 
    \count[9]_i_1__0 
       (.I0(\count[9]_i_3__0_n_0 ),
        .I1(count_reg[4]),
        .I2(count_reg[9]),
        .I3(count_reg[8]),
        .I4(\count[9]_i_4_n_0 ),
        .O(\count[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \count[9]_i_2__0 
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .I2(count_reg[7]),
        .I3(count_reg[6]),
        .I4(count_reg[5]),
        .I5(\count[9]_i_5_n_0 ),
        .O(plusOp[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[9]_i_3__0 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(\count[9]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \count[9]_i_4 
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .O(\count[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[9]_i_5 
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[2]),
        .O(\count[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(count_reg[0]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(count_reg[1]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(count_reg[2]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(count_reg[3]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(count_reg[4]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(count_reg[5]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(count_reg[6]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(count_reg[7]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(count_reg[8]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(count_reg[9]),
        .R(\count[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    v_enable_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\count[9]_i_1__0_n_0 ),
        .Q(E),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "vertical_counter" *) 
module design_1_vga_top_0_0_vertical_counter
   (E,
    Red120_out,
    Vsynq,
    cntl,
    ltOp17_in,
    \Blue_reg[3]_i_1 ,
    \count_reg[0]_0 ,
    pixel_clk);
  output [0:0]E;
  output Red120_out;
  output Vsynq;
  input cntl;
  input ltOp17_in;
  input \Blue_reg[3]_i_1 ;
  input [0:0]\count_reg[0]_0 ;
  input pixel_clk;

  wire \Blue_reg[3]_i_1 ;
  wire [0:0]E;
  wire Red120_out;
  wire \Red_reg[3]_i_10_n_0 ;
  wire \Red_reg[3]_i_12_n_0 ;
  wire [9:0]V_Count_Value;
  wire Vsynq;
  wire Vsynq_INST_0_i_1_n_0;
  wire cntl;
  wire count;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[9]_i_3_n_0 ;
  wire [0:0]\count_reg[0]_0 ;
  wire ltOp17_in;
  wire pixel_clk;
  wire [9:1]plusOp__0;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \Red_reg[3]_i_10 
       (.I0(V_Count_Value[4]),
        .I1(V_Count_Value[3]),
        .I2(V_Count_Value[2]),
        .I3(V_Count_Value[0]),
        .I4(V_Count_Value[1]),
        .O(\Red_reg[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Red_reg[3]_i_12 
       (.I0(V_Count_Value[6]),
        .I1(V_Count_Value[7]),
        .I2(V_Count_Value[8]),
        .O(\Red_reg[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000A0008000A0020)) 
    \Red_reg[3]_i_3 
       (.I0(ltOp17_in),
        .I1(\Red_reg[3]_i_10_n_0 ),
        .I2(V_Count_Value[9]),
        .I3(\Blue_reg[3]_i_1 ),
        .I4(\Red_reg[3]_i_12_n_0 ),
        .I5(V_Count_Value[5]),
        .O(Red120_out));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    Vsynq_INST_0
       (.I0(V_Count_Value[2]),
        .I1(V_Count_Value[3]),
        .I2(V_Count_Value[4]),
        .I3(V_Count_Value[1]),
        .I4(V_Count_Value[9]),
        .I5(Vsynq_INST_0_i_1_n_0),
        .O(Vsynq));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Vsynq_INST_0_i_1
       (.I0(V_Count_Value[8]),
        .I1(V_Count_Value[7]),
        .I2(V_Count_Value[6]),
        .I3(V_Count_Value[5]),
        .O(Vsynq_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000055555777)) 
    \count[0]_i_1__0 
       (.I0(V_Count_Value[9]),
        .I1(Vsynq_INST_0_i_1_n_0),
        .I2(V_Count_Value[2]),
        .I3(V_Count_Value[3]),
        .I4(V_Count_Value[4]),
        .I5(V_Count_Value[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(V_Count_Value[0]),
        .I1(V_Count_Value[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(V_Count_Value[0]),
        .I1(V_Count_Value[1]),
        .I2(V_Count_Value[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(V_Count_Value[2]),
        .I1(V_Count_Value[1]),
        .I2(V_Count_Value[0]),
        .I3(V_Count_Value[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(V_Count_Value[3]),
        .I1(V_Count_Value[0]),
        .I2(V_Count_Value[1]),
        .I3(V_Count_Value[2]),
        .I4(V_Count_Value[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(V_Count_Value[2]),
        .I1(V_Count_Value[1]),
        .I2(V_Count_Value[0]),
        .I3(V_Count_Value[3]),
        .I4(V_Count_Value[4]),
        .I5(V_Count_Value[5]),
        .O(plusOp__0[5]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \count[6]_i_1 
       (.I0(V_Count_Value[5]),
        .I1(V_Count_Value[4]),
        .I2(V_Count_Value[3]),
        .I3(\count[6]_i_2_n_0 ),
        .I4(V_Count_Value[2]),
        .I5(V_Count_Value[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_2 
       (.I0(V_Count_Value[1]),
        .I1(V_Count_Value[0]),
        .O(\count[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \count[7]_i_1 
       (.I0(V_Count_Value[6]),
        .I1(\count[9]_i_3_n_0 ),
        .I2(V_Count_Value[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \count[8]_i_1 
       (.I0(V_Count_Value[7]),
        .I1(\count[9]_i_3_n_0 ),
        .I2(V_Count_Value[6]),
        .I3(V_Count_Value[8]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h8888888888808080)) 
    \count[9]_i_1 
       (.I0(V_Count_Value[9]),
        .I1(\count_reg[0]_0 ),
        .I2(Vsynq_INST_0_i_1_n_0),
        .I3(V_Count_Value[2]),
        .I4(V_Count_Value[3]),
        .I5(V_Count_Value[4]),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \count[9]_i_2 
       (.I0(V_Count_Value[8]),
        .I1(V_Count_Value[6]),
        .I2(\count[9]_i_3_n_0 ),
        .I3(V_Count_Value[7]),
        .I4(V_Count_Value[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[9]_i_3 
       (.I0(V_Count_Value[2]),
        .I1(V_Count_Value[1]),
        .I2(V_Count_Value[0]),
        .I3(V_Count_Value[3]),
        .I4(V_Count_Value[4]),
        .I5(V_Count_Value[5]),
        .O(\count[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(V_Count_Value[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(plusOp__0[1]),
        .Q(V_Count_Value[1]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(plusOp__0[2]),
        .Q(V_Count_Value[2]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(plusOp__0[3]),
        .Q(V_Count_Value[3]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(plusOp__0[4]),
        .Q(V_Count_Value[4]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(plusOp__0[5]),
        .Q(V_Count_Value[5]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(plusOp__0[6]),
        .Q(V_Count_Value[6]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(plusOp__0[7]),
        .Q(V_Count_Value[7]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(plusOp__0[8]),
        .Q(V_Count_Value[8]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(pixel_clk),
        .CE(\count_reg[0]_0 ),
        .D(plusOp__0[9]),
        .Q(V_Count_Value[9]),
        .R(count));
  LUT2 #(
    .INIT(4'h8)) 
    \fr_address_reg[18]_i_2 
       (.I0(cntl),
        .I1(Red120_out),
        .O(E));
endmodule

(* ORIG_REF_NAME = "vga_top" *) 
module design_1_vga_top_0_0_vga_top
   (Red,
    Green,
    Blue,
    frame_address,
    Vsynq,
    Hsynq,
    pixel_clk,
    frame_pixel,
    cntl);
  output [3:0]Red;
  output [3:0]Green;
  output [3:0]Blue;
  output [18:0]frame_address;
  output Vsynq;
  output Hsynq;
  input pixel_clk;
  input [11:0]frame_pixel;
  input cntl;

  wire [3:0]Blue;
  wire [3:0]Green;
  wire Hsynq;
  wire [3:0]Red;
  wire Red120_out;
  wire VGA_Horiz_n_1;
  wire VGA_Horiz_n_10;
  wire VGA_Horiz_n_11;
  wire VGA_Horiz_n_12;
  wire VGA_Horiz_n_13;
  wire VGA_Horiz_n_15;
  wire VGA_Horiz_n_2;
  wire VGA_Horiz_n_3;
  wire VGA_Horiz_n_4;
  wire VGA_Horiz_n_5;
  wire VGA_Horiz_n_6;
  wire VGA_Horiz_n_7;
  wire VGA_Horiz_n_8;
  wire VGA_Horiz_n_9;
  wire Vsynq;
  wire cntl;
  wire enable_V_Counter;
  wire fr_address;
  wire \fr_address_reg[12]_i_1_n_0 ;
  wire \fr_address_reg[12]_i_1_n_1 ;
  wire \fr_address_reg[12]_i_1_n_2 ;
  wire \fr_address_reg[12]_i_1_n_3 ;
  wire \fr_address_reg[16]_i_1_n_0 ;
  wire \fr_address_reg[16]_i_1_n_1 ;
  wire \fr_address_reg[16]_i_1_n_2 ;
  wire \fr_address_reg[16]_i_1_n_3 ;
  wire \fr_address_reg[18]_i_1_n_3 ;
  wire \fr_address_reg[4]_i_1_n_0 ;
  wire \fr_address_reg[4]_i_1_n_1 ;
  wire \fr_address_reg[4]_i_1_n_2 ;
  wire \fr_address_reg[4]_i_1_n_3 ;
  wire \fr_address_reg[8]_i_1_n_0 ;
  wire \fr_address_reg[8]_i_1_n_1 ;
  wire \fr_address_reg[8]_i_1_n_2 ;
  wire \fr_address_reg[8]_i_1_n_3 ;
  wire [18:0]frame_address;
  wire [11:0]frame_pixel;
  wire ltOp17_in;
  wire pixel_clk;
  wire [18:0]plusOp_0;
  wire [3:1]\NLW_fr_address_reg[18]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_fr_address_reg[18]_i_1_O_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Blue_reg[0] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_12),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Blue[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Blue_reg[1] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_11),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Blue[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Blue_reg[2] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_10),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Blue[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Blue_reg[3] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_9),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Blue[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Green_reg[0] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_4),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Green[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Green_reg[1] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_3),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Green[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Green_reg[2] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_2),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Green[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Green_reg[3] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_1),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Green[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Red_reg[0] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_8),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Red[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Red_reg[1] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_7),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Red[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Red_reg[2] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_6),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Red[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Red_reg[3] 
       (.CLR(1'b0),
        .D(VGA_Horiz_n_5),
        .G(VGA_Horiz_n_13),
        .GE(1'b1),
        .Q(Red[3]));
  design_1_vga_top_0_0_horizontal_counter VGA_Horiz
       (.D({VGA_Horiz_n_1,VGA_Horiz_n_2,VGA_Horiz_n_3,VGA_Horiz_n_4}),
        .E(enable_V_Counter),
        .Hsynq(Hsynq),
        .Red120_out(Red120_out),
        .cntl(cntl),
        .\count_reg[7]_0 (VGA_Horiz_n_13),
        .\count_reg[8]_0 (VGA_Horiz_n_15),
        .frame_pixel(frame_pixel),
        .\frame_pixel[11] ({VGA_Horiz_n_5,VGA_Horiz_n_6,VGA_Horiz_n_7,VGA_Horiz_n_8}),
        .\frame_pixel[3] ({VGA_Horiz_n_9,VGA_Horiz_n_10,VGA_Horiz_n_11,VGA_Horiz_n_12}),
        .ltOp17_in(ltOp17_in),
        .pixel_clk(pixel_clk));
  design_1_vga_top_0_0_vertical_counter VGA_Verti
       (.\Blue_reg[3]_i_1 (VGA_Horiz_n_15),
        .E(fr_address),
        .Red120_out(Red120_out),
        .Vsynq(Vsynq),
        .cntl(cntl),
        .\count_reg[0]_0 (enable_V_Counter),
        .ltOp17_in(ltOp17_in),
        .pixel_clk(pixel_clk));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[0] 
       (.CLR(1'b0),
        .D(plusOp_0[0]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \fr_address_reg[0]_i_1 
       (.I0(frame_address[0]),
        .O(plusOp_0[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[10] 
       (.CLR(1'b0),
        .D(plusOp_0[10]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[11] 
       (.CLR(1'b0),
        .D(plusOp_0[11]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[12] 
       (.CLR(1'b0),
        .D(plusOp_0[12]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[12]));
  CARRY4 \fr_address_reg[12]_i_1 
       (.CI(\fr_address_reg[8]_i_1_n_0 ),
        .CO({\fr_address_reg[12]_i_1_n_0 ,\fr_address_reg[12]_i_1_n_1 ,\fr_address_reg[12]_i_1_n_2 ,\fr_address_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[12:9]),
        .S(frame_address[12:9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[13] 
       (.CLR(1'b0),
        .D(plusOp_0[13]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[14] 
       (.CLR(1'b0),
        .D(plusOp_0[14]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[15] 
       (.CLR(1'b0),
        .D(plusOp_0[15]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[16] 
       (.CLR(1'b0),
        .D(plusOp_0[16]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[16]));
  CARRY4 \fr_address_reg[16]_i_1 
       (.CI(\fr_address_reg[12]_i_1_n_0 ),
        .CO({\fr_address_reg[16]_i_1_n_0 ,\fr_address_reg[16]_i_1_n_1 ,\fr_address_reg[16]_i_1_n_2 ,\fr_address_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[16:13]),
        .S(frame_address[16:13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[17] 
       (.CLR(1'b0),
        .D(plusOp_0[17]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[17]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[18] 
       (.CLR(1'b0),
        .D(plusOp_0[18]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[18]));
  CARRY4 \fr_address_reg[18]_i_1 
       (.CI(\fr_address_reg[16]_i_1_n_0 ),
        .CO({\NLW_fr_address_reg[18]_i_1_CO_UNCONNECTED [3:1],\fr_address_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fr_address_reg[18]_i_1_O_UNCONNECTED [3:2],plusOp_0[18:17]}),
        .S({1'b0,1'b0,frame_address[18:17]}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[1] 
       (.CLR(1'b0),
        .D(plusOp_0[1]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[2] 
       (.CLR(1'b0),
        .D(plusOp_0[2]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[3] 
       (.CLR(1'b0),
        .D(plusOp_0[3]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[4] 
       (.CLR(1'b0),
        .D(plusOp_0[4]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[4]));
  CARRY4 \fr_address_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\fr_address_reg[4]_i_1_n_0 ,\fr_address_reg[4]_i_1_n_1 ,\fr_address_reg[4]_i_1_n_2 ,\fr_address_reg[4]_i_1_n_3 }),
        .CYINIT(frame_address[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[4:1]),
        .S(frame_address[4:1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[5] 
       (.CLR(1'b0),
        .D(plusOp_0[5]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[6] 
       (.CLR(1'b0),
        .D(plusOp_0[6]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[7] 
       (.CLR(1'b0),
        .D(plusOp_0[7]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[8] 
       (.CLR(1'b0),
        .D(plusOp_0[8]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[8]));
  CARRY4 \fr_address_reg[8]_i_1 
       (.CI(\fr_address_reg[4]_i_1_n_0 ),
        .CO({\fr_address_reg[8]_i_1_n_0 ,\fr_address_reg[8]_i_1_n_1 ,\fr_address_reg[8]_i_1_n_2 ,\fr_address_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp_0[8:5]),
        .S(frame_address[8:5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fr_address_reg[9] 
       (.CLR(1'b0),
        .D(plusOp_0[9]),
        .G(fr_address),
        .GE(1'b1),
        .Q(frame_address[9]));
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
