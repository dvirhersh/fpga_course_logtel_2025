// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 24 15:21:32 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA_2025/logtel/lab5_memories/lab5_memories.gen/sources_1/ip/blk_mem_gen_0_2/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18400)
`pragma protect data_block
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
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
