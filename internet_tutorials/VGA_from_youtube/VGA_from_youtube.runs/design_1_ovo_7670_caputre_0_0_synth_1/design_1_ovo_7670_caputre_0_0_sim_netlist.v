// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May 25 12:50:12 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ovo_7670_caputre_0_0_sim_netlist.v
// Design      : design_1_ovo_7670_caputre_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ovo_7670_caputre_0_0,ovo_7670_caputre,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ovo_7670_caputre,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pclk,
    camera_v_sync,
    camera_h_ref,
    zoom_x2,
    din,
    addr,
    dout,
    wr_en);
  input pclk;
  input camera_v_sync;
  input camera_h_ref;
  input zoom_x2;
  input [7:0]din;
  output [18:0]addr;
  output [11:0]dout;
  output wr_en;

  wire [18:0]addr;
  wire camera_h_ref;
  wire camera_v_sync;
  wire [7:0]din;
  wire [11:0]dout;
  wire pclk;
  wire wr_en;
  wire zoom_x2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ovo_7670_caputre U0
       (.addr(addr),
        .camera_h_ref(camera_h_ref),
        .camera_v_sync(camera_v_sync),
        .din(din),
        .dout(dout),
        .pclk(pclk),
        .wr_en(wr_en),
        .zoom_x2(zoom_x2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ovo_7670_caputre
   (dout,
    addr,
    wr_en,
    camera_h_ref,
    pclk,
    camera_v_sync,
    din,
    zoom_x2);
  output [11:0]dout;
  output [18:0]addr;
  output wr_en;
  input camera_h_ref;
  input pclk;
  input camera_v_sync;
  input [7:0]din;
  input zoom_x2;

  wire [18:0]addr;
  wire address;
  wire address0__2;
  wire \address[18]_i_4_n_0 ;
  wire \address[18]_i_5_n_0 ;
  wire \address[18]_i_6_n_0 ;
  wire \address[3]_i_2_n_0 ;
  wire \address_reg[11]_i_1_n_0 ;
  wire \address_reg[11]_i_1_n_1 ;
  wire \address_reg[11]_i_1_n_2 ;
  wire \address_reg[11]_i_1_n_3 ;
  wire \address_reg[11]_i_1_n_4 ;
  wire \address_reg[11]_i_1_n_5 ;
  wire \address_reg[11]_i_1_n_6 ;
  wire \address_reg[11]_i_1_n_7 ;
  wire \address_reg[15]_i_1_n_0 ;
  wire \address_reg[15]_i_1_n_1 ;
  wire \address_reg[15]_i_1_n_2 ;
  wire \address_reg[15]_i_1_n_3 ;
  wire \address_reg[15]_i_1_n_4 ;
  wire \address_reg[15]_i_1_n_5 ;
  wire \address_reg[15]_i_1_n_6 ;
  wire \address_reg[15]_i_1_n_7 ;
  wire \address_reg[18]_i_2_n_2 ;
  wire \address_reg[18]_i_2_n_3 ;
  wire \address_reg[18]_i_2_n_5 ;
  wire \address_reg[18]_i_2_n_6 ;
  wire \address_reg[18]_i_2_n_7 ;
  wire \address_reg[3]_i_1_n_0 ;
  wire \address_reg[3]_i_1_n_1 ;
  wire \address_reg[3]_i_1_n_2 ;
  wire \address_reg[3]_i_1_n_3 ;
  wire \address_reg[3]_i_1_n_4 ;
  wire \address_reg[3]_i_1_n_5 ;
  wire \address_reg[3]_i_1_n_6 ;
  wire \address_reg[3]_i_1_n_7 ;
  wire \address_reg[7]_i_1_n_0 ;
  wire \address_reg[7]_i_1_n_1 ;
  wire \address_reg[7]_i_1_n_2 ;
  wire \address_reg[7]_i_1_n_3 ;
  wire \address_reg[7]_i_1_n_4 ;
  wire \address_reg[7]_i_1_n_5 ;
  wire \address_reg[7]_i_1_n_6 ;
  wire \address_reg[7]_i_1_n_7 ;
  wire camera_h_ref;
  wire camera_v_sync;
  wire \counter_col[10]_i_1_n_0 ;
  wire \counter_col[10]_i_3_n_0 ;
  wire [10:5]counter_col_reg;
  wire \counter_col_reg_n_0_[0] ;
  wire \counter_col_reg_n_0_[1] ;
  wire \counter_col_reg_n_0_[2] ;
  wire \counter_col_reg_n_0_[3] ;
  wire \counter_col_reg_n_0_[4] ;
  wire counter_row0;
  wire \counter_row[10]_i_3_n_0 ;
  wire [10:3]counter_row_reg;
  wire \counter_row_reg_n_0_[0] ;
  wire \counter_row_reg_n_0_[1] ;
  wire \counter_row_reg_n_0_[2] ;
  wire [7:0]din;
  wire [11:0]dout;
  wire geqOp__8;
  wire latch_href;
  wire \latched_data_reg_n_0_[10] ;
  wire \latched_data_reg_n_0_[12] ;
  wire \latched_data_reg_n_0_[13] ;
  wire \latched_data_reg_n_0_[14] ;
  wire \latched_data_reg_n_0_[15] ;
  wire \latched_data_reg_n_0_[8] ;
  wire \latched_data_reg_n_0_[9] ;
  wire [15:8]p_0_in;
  wire p_0_in1_in;
  wire p_0_in_0;
  wire pclk;
  wire [10:0]plusOp;
  wire [10:0]plusOp__0;
  wire wr_en;
  wire wr_en_i_1_n_0;
  wire \write_state[0]_i_1_n_0 ;
  wire \write_state[1]_i_1_n_0 ;
  wire \write_state_reg_n_0_[0] ;
  wire zoom_x2;
  wire [3:2]\NLW_address_reg[18]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_address_reg[18]_i_2_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hA2)) 
    \address[18]_i_1 
       (.I0(p_0_in_0),
        .I1(zoom_x2),
        .I2(address0__2),
        .O(address));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \address[18]_i_3 
       (.I0(\address[18]_i_4_n_0 ),
        .I1(\address[18]_i_5_n_0 ),
        .I2(counter_row_reg[9]),
        .I3(\address[18]_i_6_n_0 ),
        .I4(counter_row_reg[10]),
        .I5(geqOp__8),
        .O(address0__2));
  LUT6 #(
    .INIT(64'h0000000015555555)) 
    \address[18]_i_4 
       (.I0(counter_col_reg[9]),
        .I1(counter_col_reg[5]),
        .I2(counter_col_reg[6]),
        .I3(counter_col_reg[7]),
        .I4(counter_col_reg[8]),
        .I5(counter_col_reg[10]),
        .O(\address[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    \address[18]_i_5 
       (.I0(counter_row_reg[5]),
        .I1(counter_row_reg[3]),
        .I2(counter_row_reg[4]),
        .I3(counter_row_reg[6]),
        .I4(counter_row_reg[7]),
        .I5(counter_row_reg[8]),
        .O(\address[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000777FFFFFFFFF)) 
    \address[18]_i_6 
       (.I0(counter_row_reg[6]),
        .I1(counter_row_reg[5]),
        .I2(counter_row_reg[4]),
        .I3(counter_row_reg[3]),
        .I4(counter_row_reg[7]),
        .I5(counter_row_reg[8]),
        .O(\address[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \address[18]_i_7 
       (.I0(counter_col_reg[6]),
        .I1(counter_col_reg[5]),
        .I2(counter_col_reg[7]),
        .I3(counter_col_reg[8]),
        .I4(counter_col_reg[9]),
        .I5(counter_col_reg[10]),
        .O(geqOp__8));
  LUT1 #(
    .INIT(2'h1)) 
    \address[3]_i_2 
       (.I0(addr[0]),
        .O(\address[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[3]_i_1_n_7 ),
        .Q(addr[0]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[11]_i_1_n_5 ),
        .Q(addr[10]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[11]_i_1_n_4 ),
        .Q(addr[11]),
        .R(camera_v_sync));
  CARRY4 \address_reg[11]_i_1 
       (.CI(\address_reg[7]_i_1_n_0 ),
        .CO({\address_reg[11]_i_1_n_0 ,\address_reg[11]_i_1_n_1 ,\address_reg[11]_i_1_n_2 ,\address_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[11]_i_1_n_4 ,\address_reg[11]_i_1_n_5 ,\address_reg[11]_i_1_n_6 ,\address_reg[11]_i_1_n_7 }),
        .S(addr[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[15]_i_1_n_7 ),
        .Q(addr[12]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[15]_i_1_n_6 ),
        .Q(addr[13]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[15]_i_1_n_5 ),
        .Q(addr[14]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[15]_i_1_n_4 ),
        .Q(addr[15]),
        .R(camera_v_sync));
  CARRY4 \address_reg[15]_i_1 
       (.CI(\address_reg[11]_i_1_n_0 ),
        .CO({\address_reg[15]_i_1_n_0 ,\address_reg[15]_i_1_n_1 ,\address_reg[15]_i_1_n_2 ,\address_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[15]_i_1_n_4 ,\address_reg[15]_i_1_n_5 ,\address_reg[15]_i_1_n_6 ,\address_reg[15]_i_1_n_7 }),
        .S(addr[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[18]_i_2_n_7 ),
        .Q(addr[16]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[17] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[18]_i_2_n_6 ),
        .Q(addr[17]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[18] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[18]_i_2_n_5 ),
        .Q(addr[18]),
        .R(camera_v_sync));
  CARRY4 \address_reg[18]_i_2 
       (.CI(\address_reg[15]_i_1_n_0 ),
        .CO({\NLW_address_reg[18]_i_2_CO_UNCONNECTED [3:2],\address_reg[18]_i_2_n_2 ,\address_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_reg[18]_i_2_O_UNCONNECTED [3],\address_reg[18]_i_2_n_5 ,\address_reg[18]_i_2_n_6 ,\address_reg[18]_i_2_n_7 }),
        .S({1'b0,addr[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[3]_i_1_n_6 ),
        .Q(addr[1]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[3]_i_1_n_5 ),
        .Q(addr[2]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[3]_i_1_n_4 ),
        .Q(addr[3]),
        .R(camera_v_sync));
  CARRY4 \address_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\address_reg[3]_i_1_n_0 ,\address_reg[3]_i_1_n_1 ,\address_reg[3]_i_1_n_2 ,\address_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\address_reg[3]_i_1_n_4 ,\address_reg[3]_i_1_n_5 ,\address_reg[3]_i_1_n_6 ,\address_reg[3]_i_1_n_7 }),
        .S({addr[3:1],\address[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[7]_i_1_n_7 ),
        .Q(addr[4]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[7]_i_1_n_6 ),
        .Q(addr[5]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[7]_i_1_n_5 ),
        .Q(addr[6]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[7]_i_1_n_4 ),
        .Q(addr[7]),
        .R(camera_v_sync));
  CARRY4 \address_reg[7]_i_1 
       (.CI(\address_reg[3]_i_1_n_0 ),
        .CO({\address_reg[7]_i_1_n_0 ,\address_reg[7]_i_1_n_1 ,\address_reg[7]_i_1_n_2 ,\address_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[7]_i_1_n_4 ,\address_reg[7]_i_1_n_5 ,\address_reg[7]_i_1_n_6 ,\address_reg[7]_i_1_n_7 }),
        .S(addr[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[11]_i_1_n_7 ),
        .Q(addr[8]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(pclk),
        .CE(address),
        .D(\address_reg[11]_i_1_n_6 ),
        .Q(addr[9]),
        .R(camera_v_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_col[0]_i_1 
       (.I0(\counter_col_reg_n_0_[0] ),
        .O(plusOp__0[0]));
  LUT4 #(
    .INIT(16'hAABA)) 
    \counter_col[10]_i_1 
       (.I0(camera_v_sync),
        .I1(p_0_in_0),
        .I2(camera_h_ref),
        .I3(latch_href),
        .O(\counter_col[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_col[10]_i_2 
       (.I0(counter_col_reg[8]),
        .I1(counter_col_reg[6]),
        .I2(\counter_col[10]_i_3_n_0 ),
        .I3(counter_col_reg[7]),
        .I4(counter_col_reg[9]),
        .I5(counter_col_reg[10]),
        .O(plusOp__0[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_col[10]_i_3 
       (.I0(counter_col_reg[5]),
        .I1(\counter_col_reg_n_0_[3] ),
        .I2(\counter_col_reg_n_0_[1] ),
        .I3(\counter_col_reg_n_0_[0] ),
        .I4(\counter_col_reg_n_0_[2] ),
        .I5(\counter_col_reg_n_0_[4] ),
        .O(\counter_col[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_col[1]_i_1 
       (.I0(\counter_col_reg_n_0_[0] ),
        .I1(\counter_col_reg_n_0_[1] ),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_col[2]_i_1 
       (.I0(\counter_col_reg_n_0_[0] ),
        .I1(\counter_col_reg_n_0_[1] ),
        .I2(\counter_col_reg_n_0_[2] ),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_col[3]_i_1 
       (.I0(\counter_col_reg_n_0_[1] ),
        .I1(\counter_col_reg_n_0_[0] ),
        .I2(\counter_col_reg_n_0_[2] ),
        .I3(\counter_col_reg_n_0_[3] ),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_col[4]_i_1 
       (.I0(\counter_col_reg_n_0_[2] ),
        .I1(\counter_col_reg_n_0_[0] ),
        .I2(\counter_col_reg_n_0_[1] ),
        .I3(\counter_col_reg_n_0_[3] ),
        .I4(\counter_col_reg_n_0_[4] ),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_col[5]_i_1 
       (.I0(\counter_col_reg_n_0_[3] ),
        .I1(\counter_col_reg_n_0_[1] ),
        .I2(\counter_col_reg_n_0_[0] ),
        .I3(\counter_col_reg_n_0_[2] ),
        .I4(\counter_col_reg_n_0_[4] ),
        .I5(counter_col_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_col[6]_i_1 
       (.I0(\counter_col[10]_i_3_n_0 ),
        .I1(counter_col_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_col[7]_i_1 
       (.I0(\counter_col[10]_i_3_n_0 ),
        .I1(counter_col_reg[6]),
        .I2(counter_col_reg[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_col[8]_i_1 
       (.I0(counter_col_reg[6]),
        .I1(\counter_col[10]_i_3_n_0 ),
        .I2(counter_col_reg[7]),
        .I3(counter_col_reg[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_col[9]_i_1 
       (.I0(counter_col_reg[7]),
        .I1(\counter_col[10]_i_3_n_0 ),
        .I2(counter_col_reg[6]),
        .I3(counter_col_reg[8]),
        .I4(counter_col_reg[9]),
        .O(plusOp__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[0] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[0]),
        .Q(\counter_col_reg_n_0_[0] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[10] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[10]),
        .Q(counter_col_reg[10]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[1] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[1]),
        .Q(\counter_col_reg_n_0_[1] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[2] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[2]),
        .Q(\counter_col_reg_n_0_[2] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[3] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[3]),
        .Q(\counter_col_reg_n_0_[3] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[4] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[4]),
        .Q(\counter_col_reg_n_0_[4] ),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[5] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[5]),
        .Q(counter_col_reg[5]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[6] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[6]),
        .Q(counter_col_reg[6]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[7] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[7]),
        .Q(counter_col_reg[7]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[8] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[8]),
        .Q(counter_col_reg[8]),
        .R(\counter_col[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_col_reg[9] 
       (.C(pclk),
        .CE(p_0_in_0),
        .D(plusOp__0[9]),
        .Q(counter_col_reg[9]),
        .R(\counter_col[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_row[0]_i_1 
       (.I0(\counter_row_reg_n_0_[0] ),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_row[10]_i_1 
       (.I0(camera_h_ref),
        .I1(latch_href),
        .O(counter_row0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_row[10]_i_2 
       (.I0(counter_row_reg[8]),
        .I1(counter_row_reg[6]),
        .I2(\counter_row[10]_i_3_n_0 ),
        .I3(counter_row_reg[7]),
        .I4(counter_row_reg[9]),
        .I5(counter_row_reg[10]),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_row[10]_i_3 
       (.I0(counter_row_reg[5]),
        .I1(counter_row_reg[3]),
        .I2(\counter_row_reg_n_0_[1] ),
        .I3(\counter_row_reg_n_0_[0] ),
        .I4(\counter_row_reg_n_0_[2] ),
        .I5(counter_row_reg[4]),
        .O(\counter_row[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_row[1]_i_1 
       (.I0(\counter_row_reg_n_0_[0] ),
        .I1(\counter_row_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_row[2]_i_1 
       (.I0(\counter_row_reg_n_0_[0] ),
        .I1(\counter_row_reg_n_0_[1] ),
        .I2(\counter_row_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_row[3]_i_1 
       (.I0(\counter_row_reg_n_0_[1] ),
        .I1(\counter_row_reg_n_0_[0] ),
        .I2(\counter_row_reg_n_0_[2] ),
        .I3(counter_row_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_row[4]_i_1 
       (.I0(\counter_row_reg_n_0_[2] ),
        .I1(\counter_row_reg_n_0_[0] ),
        .I2(\counter_row_reg_n_0_[1] ),
        .I3(counter_row_reg[3]),
        .I4(counter_row_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_row[5]_i_1 
       (.I0(counter_row_reg[3]),
        .I1(\counter_row_reg_n_0_[1] ),
        .I2(\counter_row_reg_n_0_[0] ),
        .I3(\counter_row_reg_n_0_[2] ),
        .I4(counter_row_reg[4]),
        .I5(counter_row_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_row[6]_i_1 
       (.I0(\counter_row[10]_i_3_n_0 ),
        .I1(counter_row_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_row[7]_i_1 
       (.I0(\counter_row[10]_i_3_n_0 ),
        .I1(counter_row_reg[6]),
        .I2(counter_row_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_row[8]_i_1 
       (.I0(counter_row_reg[6]),
        .I1(\counter_row[10]_i_3_n_0 ),
        .I2(counter_row_reg[7]),
        .I3(counter_row_reg[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_row[9]_i_1 
       (.I0(counter_row_reg[7]),
        .I1(\counter_row[10]_i_3_n_0 ),
        .I2(counter_row_reg[6]),
        .I3(counter_row_reg[8]),
        .I4(counter_row_reg[9]),
        .O(plusOp[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[0] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[0]),
        .Q(\counter_row_reg_n_0_[0] ),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[10] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[10]),
        .Q(counter_row_reg[10]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[1] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[1]),
        .Q(\counter_row_reg_n_0_[1] ),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[2] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[2]),
        .Q(\counter_row_reg_n_0_[2] ),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[3] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[3]),
        .Q(counter_row_reg[3]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[4] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[4]),
        .Q(counter_row_reg[4]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[5] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[5]),
        .Q(counter_row_reg[5]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[6] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[6]),
        .Q(counter_row_reg[6]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[7] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[7]),
        .Q(counter_row_reg[7]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[8] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[8]),
        .Q(counter_row_reg[8]),
        .R(camera_v_sync));
  FDRE #(
    .INIT(1'b0)) 
    \counter_row_reg[9] 
       (.C(pclk),
        .CE(counter_row0),
        .D(plusOp[9]),
        .Q(counter_row_reg[9]),
        .R(camera_v_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \dout[11]_i_1 
       (.I0(camera_v_sync),
        .O(p_0_in1_in));
  FDRE \dout_reg[0] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[9]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(\latched_data_reg_n_0_[14] ),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(\latched_data_reg_n_0_[15] ),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[10]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[11]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[12]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[15]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(\latched_data_reg_n_0_[8] ),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(\latched_data_reg_n_0_[9] ),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(\latched_data_reg_n_0_[10] ),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(\latched_data_reg_n_0_[12] ),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(\latched_data_reg_n_0_[13] ),
        .Q(dout[9]),
        .R(1'b0));
  FDRE latch_href_reg
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(camera_h_ref),
        .Q(latch_href),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[0] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(din[0]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[10] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[10]),
        .Q(\latched_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[12] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[12]),
        .Q(\latched_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[13] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[13]),
        .Q(\latched_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[14] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[14]),
        .Q(\latched_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[15] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[15]),
        .Q(\latched_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[1] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(din[1]),
        .Q(p_0_in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[2] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(din[2]),
        .Q(p_0_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[3] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(din[3]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[4] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(din[4]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[5] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(din[5]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[6] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(din[6]),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[7] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(din[7]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[8] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[8]),
        .Q(\latched_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_data_reg[9] 
       (.C(pclk),
        .CE(p_0_in1_in),
        .D(p_0_in[9]),
        .Q(\latched_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8B8A8B8)) 
    wr_en_i_1
       (.I0(wr_en),
        .I1(camera_v_sync),
        .I2(p_0_in_0),
        .I3(zoom_x2),
        .I4(address0__2),
        .O(wr_en_i_1_n_0));
  FDRE wr_en_reg
       (.C(pclk),
        .CE(1'b1),
        .D(wr_en_i_1_n_0),
        .Q(wr_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \write_state[0]_i_1 
       (.I0(\write_state_reg_n_0_[0] ),
        .I1(camera_h_ref),
        .I2(camera_v_sync),
        .O(\write_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \write_state[1]_i_1 
       (.I0(\write_state_reg_n_0_[0] ),
        .I1(camera_v_sync),
        .O(\write_state[1]_i_1_n_0 ));
  FDRE \write_state_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(\write_state[0]_i_1_n_0 ),
        .Q(\write_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \write_state_reg[1] 
       (.C(pclk),
        .CE(1'b1),
        .D(\write_state[1]_i_1_n_0 ),
        .Q(p_0_in_0),
        .R(1'b0));
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
