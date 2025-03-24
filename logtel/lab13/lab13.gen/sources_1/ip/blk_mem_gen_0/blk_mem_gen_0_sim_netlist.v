// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 24 15:31:52 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA_2025/logtel/lab13/lab13.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
