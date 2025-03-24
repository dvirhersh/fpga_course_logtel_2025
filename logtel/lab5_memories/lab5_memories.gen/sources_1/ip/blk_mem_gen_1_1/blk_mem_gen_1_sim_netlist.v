// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 24 15:23:00 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA_2025/logtel/lab5_memories/lab5_memories.gen/sources_1/ip/blk_mem_gen_1_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
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
  blk_mem_gen_1_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20928)
`pragma protect data_block
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
/+32xLSw4B+8
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
