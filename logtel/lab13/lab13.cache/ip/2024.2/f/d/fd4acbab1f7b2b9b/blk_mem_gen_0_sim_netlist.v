// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 24 15:31:51 2025
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
Qhw/AEE=
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
