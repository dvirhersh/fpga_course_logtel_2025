// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Wed Mar 12 20:45:58 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/logtel/lab5_memories/lab5_memories.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.1" *) 
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
  wire clkb;
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
  (* C_READ_DEPTH_A = "255" *) 
  (* C_READ_DEPTH_B = "255" *) 
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
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "255" *) 
  (* C_WRITE_DEPTH_B = "255" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "10" *) 
  (* C_WRITE_WIDTH_B = "10" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_10 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
udNP8Uje7hpcvCYAXvDW9r2oHQyRipDN507b+1w27rP7xb4Nz9QLRyKQf6hKRcDEOVPPDU4KvXyQ
S7Bed2F6O4Ldaml88+U6QsrNFaZ4fNsTrKjEE3lLix8fjqIyUXKSNeepsabnRAwnPTjGP0ckeQ0z
/6vK6vS6Oh2J5EcQEag=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AJCFEJ1YmO8l6c55nmqjPHpq03iIwIWhcq4gzpGTG9q8+B6G84WceO3Y0MOwVkIC+rza8yWW4W96
aueSQ6zP9DeJpaQAa5CXah55dY7AxCSywtOyZ62CZYm1RxvTaNigNnppCye+yAHN5Qei2IV4ZMwt
hFhXp7bbKeSQsqyTcPao+XMOfUQgs6uHRQoMvRFgoHByuZ20V72oOw3MoBmzaFgyRicvku2AVEWd
uJDCqcRlHIZZ1c+O+dCjOvRg+9aaQ1DE8gyCtne0FhQEvVnAPjcTzeUg2I0bZrpUQbbS8p5716Jl
/R7teOvv2VpnKxyFvW5lTVImrqIsvdk38CH5aw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d1PZzLTrVgGa7lAGrEOnBHSkyRph92ENzEYYfBv5ShW44EZ/4/Dy5IpHq0athhXF90+7+EiPDjze
BIUrzaCZjSn3hPfQYuPqbUjXLseT1xBYmtHZtyzpQYUr38hRTWh6IjNX2anC6vrScheJp7oDyY1/
IpdhxPVK/6z5GGw/+fk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iXAE+ZmeGhifmLMp5oEFkhP/d/cDFVKwwxydC1lMN6LBRLFXElE5VcBvIEPtGNusskpxv/GPCPge
Az6W1/YbULAD2vlMA71EljrnHet4zg4sh561cjLPQN2DUNHr/8qxlo4ONww5HrNW+aj3zt0V9iXd
LMCR8NG58iQqMP1t5ybi/4urLnu1EF4AFJP8eDrIn+UhiFljJ04qUkg6UteUS1Qbzshw6awFUiey
WBeovfV6FXCJKwHugmJ9lX0v8OpeazDBCdnLiduAGRdSYyvX8gZsv3vJDGtRy/jgipU3YvWtjuVV
YtKThRWW0HDHoUbtraCor3GB7nSBYetgLBhI2w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CCwrvinvzJ/ig55I5/d/Amnn8e78wAQQ3CZeQChsQV8lNb/2YZzJQqDeIZnIw2PW9XMMQWu1BZ8c
iNYcwzM1UFZoOaZeVnYUYwb2RIF29CtoBJrR/IdRvyNiLiX6yB25jHmLHr0ZI2+HcOU/DUGMCHdj
rXeeb/zWm2+BlGVXo8nZQsBLb7Ax2MZrkpa0MTARS71LcKF7w1t4GoY7bVE/6IqiapBrM+ZEG0G0
A/Ha5M7b0iGDPUjoi9W9dI+/QCxu2Jzm/2Lv/GivvO91GfWy+GtP+BOuITXoh1RMI1r+C0BVFEmZ
cJTPz6NO//KkkLFG9/hmPYFN1LfA2Ba990gqjw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UtpgxYdpPKuSNM+KxM6Sv3Iy4ZOFYPNHS2XNuKmMlCw2QC5U4+i3rdVze9p+UBDrx6Er9G9pm8c7
cuUkBFDSwAo1nmCsTUQkSQOtPXr5uH5HznaUeoa9jW2AL4fdOIyDGx9ybjy86RZqbLwFXSFl5h+u
N7pnU5jSiJzRe2r8HEgZz2gz/hfTN/jzQXetqGKueHxsQ3aoufearKsdAddLj5L+S7JaV0vI1A+I
C0NrqJNr80rSabETlIhyDi8M+O31ACijPvd5lxs/aM4t0hkDuJEjD/4zSMAR4kX6rFuoAaGj+gkL
JNO4LonSwyx9V/aLCUGZvakCGOoTfa8HsXALSg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bYpkb72jOpiSeCQ5PRip31Y2zumke9hnzyF2MW+IVzPW0m3jVUMoEwgSxAqE+vlQuzZiaESSLPa4
hEofuBzsD/1HhUexhJNB4Y+/VPBvwWtiuiJJBrLU2aBqlxKZznTLdxMXRPgndyi9c3Bm+BaDdRxt
QobwAkJhk6Cy+jZEy/kc8piXqUSO6chEDW5OWt1z8Yp5BR7KL5Wbm2MilK8JLKlm/z19oTOcUu4h
Zc/O6xJcNdqjekuqJ6hg7HEz9U1UKFQudRtsv7J0+tBPchAGiv5TypyI+/t+vNPdEWYYqMpLIvZN
cCSJD0PTRiRj5gWzhCtfKhiGSqaSGSjo2ySroQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
sHfsIbA/GTiYiIhFVT+ta4MYPEvZVn5bzP0L9SmLFYXxtXCWmeDpCp9ZZwtGS9IH6xlOR9TtFG5W
pgKkFb5r5QCZfajiTmrZfPjhvh247eO53zGpnNOd0OD8ieVYpE+zrABiidJQZIJKyypvLU+yKMcK
ieY1rJH9psSNTXb3F5RJBwS7BAIUABNBZQnGq7oy4LEOxgBNofWAIW356JOU+bZ9yTI94wEStpim
5BFs8fstAwWnwM6ZBxHDgmukn8PzlJVxzDFileHS+GIb5lPZJAMfhj/nCnvFAKrsVpYMjDZiwUXS
inHd4rP1QfU6bBAS5qhsBh1LbedSjDIbguzLNaMGqf3V74evgzM0Ps8jg9qHcPLyqUD36zjCw262
gOC0ofer0rkLqaM6oyYN9vLgtccUgx1yvJlD41DPYJxSSgHkRG/5QSwS1sPS1s3Akwg0CFWU6kDJ
IgTusnQGjwO0kd7isRhV5vbprQccIjmYDSkUVuuQ1QKIJdSZNgqBKujv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ni0skYr41xEhGcERgtNsJJ63OdYzP9ki5X7c3IbnsFCvWxeRQKlubX6N8A/0jpNXOv7aZEKafLZ1
qwbSeUvbN5EGxOtmP500LKoc6ooFVOT30GABYPyplJZQKkOV1gCLsFgwAOvKXk0nzR3DidZfgNmV
WzVuzpauwrR4E5VbDQ5MRanHIv9fUJyWGO5b0vBraafqmyDaWmLnOjDZvy2FLKT8h/g+leYjmoOW
ZJ6PXCZ0Q4ga21Xt6erSGIYPOkEEG6WbpWPjflxT9mjFpLmFZ9GiIu/sAP35ujidUd4QOQ1OhsD2
xotuK4Bk3godsqXIIt4XQ32YzMS3QWkODMZ9tQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Vr9cGi332/lxwY+1s1c/q/QC1iXTtfGX0cX5Ee8iMu9RcXLuTLEJUJMfxD3nNqpTzZPP2uje9SLL
ag4NXGXSpax2KTl6n0ZR19GRYIQeoyuIEObQQuuUjIKIJWfhtOUJl3OTHWIfOKbakya+nCm5WfDr
xgAKiWZOPd4QTtzIfurdl1JtQQHX8Df2qJz7sQ85KbEnr9f0x0Z/P+vOiNCy0ZYtVnvaUhSssVFw
l2tWmTqvL+Cqw0ceq0VyZ+3vpLw66QGWxVHdhMsrsyfNGyr3ihgnG3a7Y1MCMfOZq/SVFUt69F0M
XHyhnqbPQtcHQDzO9skrKwKEzN4uFs0H5KYx8A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VzSc8XP1P8vnrcckgvVZGDZrGVT26w6xIjvo6a/h45CvlV+9LQYT27zdvXxkL5tmT5FePC9paUrR
foCdInU0kmlUZ759cK2VrUmeyxKT8HXWg6xlTw+mzpcVQ2L5RccoD+x7DUGD5oYrTIKMHhEjKj2t
V5hsm6x8SS58U2hgBj9Mrc9VsyQ5ckv5iHJPaptGNowNckVd/hBogWZomkIxlcUdE/M9DVvqxhVz
Tt6fy92B4AgzzJMfxezRMyx9/CEBICI15TibBxghqNpC23LHFun7+S3oDsoVwo9MdfJEo7qaiix2
uWtEvbP+An3VxhS+5G3uf+JyDLZlNZjjujiAuQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21248)
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
