// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 24 15:22:58 2025
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
oUwZCSJI3AZylDQ+tAriFHNeLuL6/Uu1zQ==
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
