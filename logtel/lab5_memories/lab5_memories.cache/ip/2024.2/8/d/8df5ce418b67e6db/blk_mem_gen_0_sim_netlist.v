// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 24 15:21:30 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1884 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18416)
`pragma protect data_block
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
gJ3HQ1s=
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
