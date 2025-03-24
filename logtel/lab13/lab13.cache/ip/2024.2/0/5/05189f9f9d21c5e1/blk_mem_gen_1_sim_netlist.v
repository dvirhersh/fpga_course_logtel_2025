// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 24 15:33:59 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [9:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [9:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [9:0]dina;
  wire [9:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.76775 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "10" *) 
  (* C_READ_WIDTH_B = "10" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "10" *) 
  (* C_WRITE_WIDTH_B = "10" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[9:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[9:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20944)
`pragma protect data_block
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
xTfXa2SjCWhOZFwTERJ9Nf5pPdt9eXXEJA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
