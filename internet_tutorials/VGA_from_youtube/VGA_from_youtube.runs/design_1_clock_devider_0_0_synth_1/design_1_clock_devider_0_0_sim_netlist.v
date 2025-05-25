// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun May 25 11:06:17 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_clock_devider_0_0_sim_netlist.v
// Design      : design_1_clock_devider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_devider
   (divided_clk,
    clk);
  output divided_clk;
  input clk;

  wire clk;
  wire clk_out;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire clk_out_i_3_n_0;
  wire clk_out_i_4_n_0;
  wire clk_out_i_5_n_0;
  wire clk_out_i_6_n_0;
  wire clk_out_i_7_n_0;
  wire clk_out_i_8_n_0;
  wire clk_out_i_9_n_0;
  wire [31:0]counter_value;
  wire [0:0]counter_value_0;
  wire \counter_value_reg[12]_i_1_n_0 ;
  wire \counter_value_reg[12]_i_1_n_1 ;
  wire \counter_value_reg[12]_i_1_n_2 ;
  wire \counter_value_reg[12]_i_1_n_3 ;
  wire \counter_value_reg[16]_i_1_n_0 ;
  wire \counter_value_reg[16]_i_1_n_1 ;
  wire \counter_value_reg[16]_i_1_n_2 ;
  wire \counter_value_reg[16]_i_1_n_3 ;
  wire \counter_value_reg[20]_i_1_n_0 ;
  wire \counter_value_reg[20]_i_1_n_1 ;
  wire \counter_value_reg[20]_i_1_n_2 ;
  wire \counter_value_reg[20]_i_1_n_3 ;
  wire \counter_value_reg[24]_i_1_n_0 ;
  wire \counter_value_reg[24]_i_1_n_1 ;
  wire \counter_value_reg[24]_i_1_n_2 ;
  wire \counter_value_reg[24]_i_1_n_3 ;
  wire \counter_value_reg[28]_i_1_n_0 ;
  wire \counter_value_reg[28]_i_1_n_1 ;
  wire \counter_value_reg[28]_i_1_n_2 ;
  wire \counter_value_reg[28]_i_1_n_3 ;
  wire \counter_value_reg[31]_i_2_n_2 ;
  wire \counter_value_reg[31]_i_2_n_3 ;
  wire \counter_value_reg[4]_i_1_n_0 ;
  wire \counter_value_reg[4]_i_1_n_1 ;
  wire \counter_value_reg[4]_i_1_n_2 ;
  wire \counter_value_reg[4]_i_1_n_3 ;
  wire \counter_value_reg[8]_i_1_n_0 ;
  wire \counter_value_reg[8]_i_1_n_1 ;
  wire \counter_value_reg[8]_i_1_n_2 ;
  wire \counter_value_reg[8]_i_1_n_3 ;
  wire [31:1]data0;
  wire divided_clk;
  wire [3:2]\NLW_counter_value_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_value_reg[31]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_out_i_1
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(clk_out_i_4_n_0),
        .I3(clk_out_i_5_n_0),
        .I4(divided_clk),
        .O(clk_out_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_out_i_2
       (.I0(counter_value[18]),
        .I1(counter_value[19]),
        .I2(counter_value[16]),
        .I3(counter_value[17]),
        .I4(clk_out_i_6_n_0),
        .O(clk_out_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_out_i_3
       (.I0(counter_value[26]),
        .I1(counter_value[27]),
        .I2(counter_value[24]),
        .I3(counter_value[25]),
        .I4(clk_out_i_7_n_0),
        .O(clk_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    clk_out_i_4
       (.I0(counter_value[2]),
        .I1(counter_value[3]),
        .I2(counter_value[1]),
        .I3(counter_value[0]),
        .I4(clk_out_i_8_n_0),
        .O(clk_out_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_out_i_5
       (.I0(counter_value[10]),
        .I1(counter_value[11]),
        .I2(counter_value[8]),
        .I3(counter_value[9]),
        .I4(clk_out_i_9_n_0),
        .O(clk_out_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_out_i_6
       (.I0(counter_value[21]),
        .I1(counter_value[20]),
        .I2(counter_value[23]),
        .I3(counter_value[22]),
        .O(clk_out_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_out_i_7
       (.I0(counter_value[29]),
        .I1(counter_value[28]),
        .I2(counter_value[31]),
        .I3(counter_value[30]),
        .O(clk_out_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_out_i_8
       (.I0(counter_value[5]),
        .I1(counter_value[4]),
        .I2(counter_value[7]),
        .I3(counter_value[6]),
        .O(clk_out_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_out_i_9
       (.I0(counter_value[13]),
        .I1(counter_value[12]),
        .I2(counter_value[15]),
        .I3(counter_value[14]),
        .O(clk_out_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(divided_clk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_value[0]_i_1 
       (.I0(counter_value[0]),
        .O(counter_value_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter_value[31]_i_1 
       (.I0(clk_out_i_2_n_0),
        .I1(clk_out_i_3_n_0),
        .I2(clk_out_i_4_n_0),
        .I3(clk_out_i_5_n_0),
        .O(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_value_0),
        .Q(counter_value[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(counter_value[10]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(counter_value[11]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(counter_value[12]),
        .R(clk_out));
  CARRY4 \counter_value_reg[12]_i_1 
       (.CI(\counter_value_reg[8]_i_1_n_0 ),
        .CO({\counter_value_reg[12]_i_1_n_0 ,\counter_value_reg[12]_i_1_n_1 ,\counter_value_reg[12]_i_1_n_2 ,\counter_value_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter_value[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(counter_value[13]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(counter_value[14]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(counter_value[15]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(counter_value[16]),
        .R(clk_out));
  CARRY4 \counter_value_reg[16]_i_1 
       (.CI(\counter_value_reg[12]_i_1_n_0 ),
        .CO({\counter_value_reg[16]_i_1_n_0 ,\counter_value_reg[16]_i_1_n_1 ,\counter_value_reg[16]_i_1_n_2 ,\counter_value_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter_value[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(counter_value[17]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(counter_value[18]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(counter_value[19]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(counter_value[1]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(counter_value[20]),
        .R(clk_out));
  CARRY4 \counter_value_reg[20]_i_1 
       (.CI(\counter_value_reg[16]_i_1_n_0 ),
        .CO({\counter_value_reg[20]_i_1_n_0 ,\counter_value_reg[20]_i_1_n_1 ,\counter_value_reg[20]_i_1_n_2 ,\counter_value_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter_value[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(counter_value[21]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(counter_value[22]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(counter_value[23]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[24]),
        .Q(counter_value[24]),
        .R(clk_out));
  CARRY4 \counter_value_reg[24]_i_1 
       (.CI(\counter_value_reg[20]_i_1_n_0 ),
        .CO({\counter_value_reg[24]_i_1_n_0 ,\counter_value_reg[24]_i_1_n_1 ,\counter_value_reg[24]_i_1_n_2 ,\counter_value_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter_value[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[25]),
        .Q(counter_value[25]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[26]),
        .Q(counter_value[26]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[27]),
        .Q(counter_value[27]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[28]),
        .Q(counter_value[28]),
        .R(clk_out));
  CARRY4 \counter_value_reg[28]_i_1 
       (.CI(\counter_value_reg[24]_i_1_n_0 ),
        .CO({\counter_value_reg[28]_i_1_n_0 ,\counter_value_reg[28]_i_1_n_1 ,\counter_value_reg[28]_i_1_n_2 ,\counter_value_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(counter_value[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[29]),
        .Q(counter_value[29]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(counter_value[2]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[30]),
        .Q(counter_value[30]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[31]),
        .Q(counter_value[31]),
        .R(clk_out));
  CARRY4 \counter_value_reg[31]_i_2 
       (.CI(\counter_value_reg[28]_i_1_n_0 ),
        .CO({\NLW_counter_value_reg[31]_i_2_CO_UNCONNECTED [3:2],\counter_value_reg[31]_i_2_n_2 ,\counter_value_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_value_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,counter_value[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(counter_value[3]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(counter_value[4]),
        .R(clk_out));
  CARRY4 \counter_value_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_value_reg[4]_i_1_n_0 ,\counter_value_reg[4]_i_1_n_1 ,\counter_value_reg[4]_i_1_n_2 ,\counter_value_reg[4]_i_1_n_3 }),
        .CYINIT(counter_value[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter_value[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(counter_value[5]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(counter_value[6]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(counter_value[7]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(counter_value[8]),
        .R(clk_out));
  CARRY4 \counter_value_reg[8]_i_1 
       (.CI(\counter_value_reg[4]_i_1_n_0 ),
        .CO({\counter_value_reg[8]_i_1_n_0 ,\counter_value_reg[8]_i_1_n_1 ,\counter_value_reg[8]_i_1_n_2 ,\counter_value_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter_value[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_value_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(counter_value[9]),
        .R(clk_out));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_clock_devider_0_0,clock_devider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "clock_devider,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    divided_clk);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 divided_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME divided_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clock_devider_0_0_divided_clk, INSERT_VIP 0" *) output divided_clk;

  wire clk;
  wire divided_clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_devider U0
       (.clk(clk),
        .divided_clk(divided_clk));
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
