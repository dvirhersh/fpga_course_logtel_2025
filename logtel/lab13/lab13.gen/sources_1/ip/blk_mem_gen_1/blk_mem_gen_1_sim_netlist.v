// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 24 15:34:00 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA_2025/logtel/lab13/lab13.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
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
YRzWfCvbIZao
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
