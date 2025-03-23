// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Wed Mar 12 17:58:09 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/logtel/lab5_memories/lab5_memories.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.1" *) 
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
  blk_mem_gen_0_blk_mem_gen_v8_4_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18400)
`pragma protect data_block
AG/eIM9q6M+7CcBjxMI3lFUk7l/PyDYoEOc7NE8VYh1A/RW7uHe7ueNL4Wt0mxhhzWEG7wRCm+q+
AAcH0P3O/wQeM77a3/ISubzl+blwFklnIUslEmMuU74NWSi0AP2hYly/JqpXoFhAXVOwB/S2XWS+
i+H2SGoOG46FRWWKqNwPYJbcGpIYU/WPn0iCIT2o3PzM66w8xzRqRdF0maTrl7zjDDRRGKJiuRQU
XeWN8oqJejE7cbVqZQKEgZ9LDVYISeIKZ7GAc3UyYU/cl6qxEbJHt2mQy6Gskq+CJubZLbOzq3jI
36S1ygbuqgI5FD4mOXxAWVwNurwNuDTmdQsUFloNO8B2+GRISz3MeewNTR4PtVi1so6GS3RUtIsf
hTLdg4ypnxoESWc5cj1x0So5ZmY+HoygINZllrDCMzYM/Ia7dWvCpeCwbnl6g1Dq2CBuynUERgrr
tFSMoLSsE8rCjKRbRLDZb/eLfv83YDHKAxw0sx+ZrMHmYpB+/QNtBm6tRBe1QbAlFiyC2auouWM+
scflVWXMFnG86RgomnpA/5KvAm76vcDpvvcRitjfzcKzlQvWyAPSio03bZbU8XaBydmzOCZzNOHm
5JU4XpXqGCcHn9oeC+/plvy7RK52bxbEe3qzk/IWA1UCX8JRRUeHyuMbOOjkXL/g/xS9OaqcySu3
17nn9aD6+S/WrpYOZ1NY/5Eh+b9hmTBKQJtM41vLFtpQYCjABWQ9wSXBYBwx/88Zry/w6pn1r+3M
zUuP8j6l3rjOxu9mNMAKWRZNY/ZLfcshpAtNZz1cB8WyzOjo1wsNwhTz1kM8zz8EYQoHik9OXflT
4zZdZCDW7z7Icd/N6AwC32zIbr+GdWFr+Y3x6S6ELJJ4yhyA2Q4QMtIA1LAQFPkaMMPy8viArZoE
Ec2IAZNIzlVMCG4WtJ2/EYSorzvLWXJgwQKMTsUeSh4wsZphERPupq9wyMAqkLVOT0298HrqTVLn
RYD0onvMhbQx+twmQ2+g3Xep65bz7sFwhYsLglWkD46Jc9eNdK6N6yzeTGO/SGyqW8sDPqyFiX9R
VDMfRykmoVfGXEgWNOiIaMOwNdohHP7+CgpKyMxqVfTdRlw8Xj9obE2WDwv9q3jjbmkJFPJ4GCOF
sT28uY8eOHv2oJRcplB9LiVJnGvzUMWct8cTSWI5936xIF0n9Mn+V7VCRhIR7VslX1W7EDcZDkGT
7tQraA0pGOTBfkGMI4QVB12d0RSAYIa7EXFfeVUb4Q7xwaDWdCx3qxVv4AF7Aj9AKVbsGMRWRcv1
rQX0GlHl2AdYDaI7LitX1jUHlmR6o7Rb9iHtvP1P45uG7CRu0V4Z/nrKTjyNnTJLDWgKnKTCdcKk
UpTz3llf4RXaX0PM2oC8Vio+5pqqlaqCC9t//I/yRIAixcI2dsegjE0a48g672yWneorpt1pq45I
S/sBob7SaUMFymkk+zEK7PTCgwkI0bZ3eLpeTQ0Il1HrPiUEToh++328RTJhE6fKswRvvA6mX9Bk
vQu2fAOoRY8/JIBHzjvuUCA+SPLDeRLRt34OX7dtEG0oO3B8PXf8Bwxqr/xNtAnE1AsXpHUr/GYZ
AyaSx1SgQWi+XXxPNp+1oRjhAc/H3A+c94LImRkAE6V9xjqMBQKbhcbgWBuwLFXsBLgk+Tx/SAZa
hBcjxWy/f4Q3dmZUzMSj442gNgHNtH7aThCRv/YivVhd8TYzIcalw6MAxv68j5lN4vAKx+U5/bwc
kKLTb9606p2VyngEMgvGKWE/npKL0tT3+abECje9Kujr8rE218dTovifKkgrmIMJOinl8V5qOrqh
4uNeJEiED7/ivt2w91p++K17PTNIWCcXrilnlUPu/uDY40L/kxgpi4hAu59xkuFtlwFh6gdvstc7
9ACjsK4KUoEqBIrxj8vmH7OfJUfx9jKk/AlCFAQNe5zVrmvey7DDo58Twt1VGymi10zDqG4z36AK
HdmCW2B5xe1efN0OlLxAR6dGsveK5D8KwEA9IKzYRPkBGUNwk2T/57hU/uY1aS9tWzjNqZzJ2p99
FelZ4yijTgk8enlsrEB9X1+Y+0VKg7JudLu5xL2xtUIlzeP2kuXAvloT9vIRp7NetYzvSLpwzw3M
HuIOwYtWeT5egbPNSBDx5kMiZsDTA8HlsADn35DtSDr+ExbN3ECRDMmy+ofN4sDpTETnlyq5/N5D
G4dhORVliKX9pfakxWGNrc2RaEMwGctQX7q7+u8NYnVc24OukejReDOiCXWTPVaX1JnwvUC88pBI
NeDoMbQUOh+5s9MQop2xCK23INIm+H77P3IPmO+aG+jonG4p4pgiikxyUcF/Mve0Xdj847toS4H4
dYgo+ksq2I2+xzvp7yTEcBUwTPhs0jA27T66Xfbxwnsmvxs807nPAorTf6kNvgQTgNAfWSekw+D2
ZQIDjPvyqrVMU/LBqNwxRMOb71tsH3ETLSOttUhsFohz0SYriLsGTXYTPkkXkBJXzGugjuMgz9Lt
A9DZOmfTPsRfo/x/Njjg0Ew/QN8sYNwJkz/RBImcV09+Ck24VuEEPm5iZuBmJz+bzu3FWFc75BZQ
z+XToHCtvcEzsFu69Rx3TQ+gCLdEyr6wKOH1NJJm3d3UWGEF6dwpHXwNi9NDw+Jq3AFZWWYRyLDh
ziVI9TIwMFtNWTnzdbv3grzprnbL6Rk20dg0HmxjPMhbMn0fkmVJo7JhShdj/F0IuUaClqEZ+HEC
QdY2eUGf7VUPx/CiMFyt5TKEBmFIAQA640KIuRHIXlZAHJWq/0hrFxjMigbd8AyTanEdp+0sU8Q/
EIm4nPnYvjndmXkL88koqICWN9/rD5BpP5+Zqs29XjOi4Jh4kfQ8OVMgR5GckBZxiz9oHBkLgzpd
o9g4Fzn8FzZfkkkT8IQVTmLpwPpW0oIJTlI8uiApLNkoZ7HXAuzRmzjudn0ZtO0Bd3wQeKeVWf7C
brd6qUF4ML4AYy880aomShymy9ZntNb1ExkRgGVJIspwBz7mJu8EGs6xdrPFwpxjm/iDyTi5FJRg
44xzYE7VcW1xC+IjUNvaKfZv93aCrIv7GwndAQX/8m7vvvaLlx9EyimS3wLtyFkZpmTfFx4W4nVe
9Hwl8A2FIGCJgM/uudpMRbk+yD/vkUXNQBlgGVWVd/klf9osKcvewCgJKVHc9ouUhR9Bw2PPidcY
s+cS2eY8xAW8XYURsD5iZ5UxYeUkPrsd/QM1rKA9DykiSsrj0t15gjNveV8v0Pi8St/U/L+b2Si6
53PJgFyJTt87Ulun5X6c/a85u8prbkK/y4oJYRv//cFJmvUKn7Pmg0s5yMy1NnAlB6EOSM2eprRk
2HkOzXcoXms58AasYkIG8mP5kh5Vf0CYHr8Z8ASBnRNvZGk1Mgdnc0v/Sr2qgUoVvUn6WixfZZ5a
3xL3Cyb6TWywhlI7eAGsBNkLIfyr9fl9i+polqk3QCAfPtjRvcYGS/0nAASO0yvbHu6Vv+1x5HXq
EFVeKoda/JLuNMX3hxvtHc3FB72gpl0SIgCc4lEEVA9xW5Ergk4bXRfD6JD18I93xVclv9ShBxap
S66xQgky44oSvLVnr/y+nGiSIFr1JJW3jfsWIOQqRe92/GjEb4pBXeMaM6DIIxdXihUEyGZ7igkc
wl7+nC5IkUyqkKedw9+iF3inmewmgGnICAJAHPd45GPu8Vx3M1EzPFHaRsQrSVDNqwX/mIhjuKwn
47dKJ9ZrNqdPoP31/2AexBgdAeY3vBnsxNDqmzZYV96eBCrptvI+HP3xz84mPWbqFvsWV3WkNRbH
1hpcLfoNHpqHoWFzkpreYlSmCg/bD2XzfJfM93n7hZyuF71NulPMDOWbf9tlI8N4ckgV+M12JUjM
6inWcCWDKve8oarB4uy8/lK3iIfLNsra51R0D30zHvNm8DGa7Glloq3Qk866Vq0HFe6Rxy4oNvdo
cPM8Aoxw4CKr0TOthP8+xcLtQBjCC5oHNPch8yqh2UBbLRJdo80QL1KjREEL6QjLaoG2TP5Np7Wt
AAdMtKK2r3ckgjesMcuF/Wi0RoEsEihO7rOWQTbtXXa6jJY45YzvPYDMG6MrzY8NhQvemk+BQ9z9
PwdOyqrZ0wKYybWGh4BFI99a1/7k/TGZeE2Ixs4gio20SYSmp3xBxfk5xxvyx0NGL21AC1ukgUHg
z78GicUJEmc7UgNPxDgDzP5klcfgK//gqijYblxi5Qja3lsQunQiAgegSQxk82G3FAJE58G8aYdY
Kqxg5pN7GluttBpavhcJN+DniuK1GZ/iF923N7AH3wj+OccXtn+kPcL7cTNvMCLEUu746vca39ic
/Cywk8mUmUw8SDFBfPYcJ6tcMQa8VSV1dII+9Uhr6nOHNZa0SbKmy4/ZHpyFMOZp09SU4uDlJBPx
mI2rokWCxiqNGyvYHapbmAOnmARYQLpM2oq9tyaDumRFr0zZZrqipOacvpG7p9jIMeC6aMPItdjd
J0/cqlueGBvDAwf14gFK0URvGr9ftNA0VVBynmbKvGV2sEx0TsnV+3Saa5lRNPrGWlUMFl9oscEr
985Sdil2/WWcCxhIyJ+0OJWWRoMv0Zs6b7fRjKsa7bjBV+nDIHiVhLOdzPoqToH31uyowAfn6ScR
xfIMQZVIIKsVblietkOzoVhpIGjLm9n6W05ZySEZW/Y49sNpgsvHmj83fMGq0GIBVvIwmll+OVJy
PILZEXGqEKAsb8bD+0C8lVrxAEYAoaRYmlebPOXZC5kR8mGCfr1ETrcpDGsmNWwoQ8TSHoTAl+wG
xn9swHTaTk7v73znKJCoTvXwtvvtyfNr3Mhc+JaKLcNh0JQ5m5/3xbJjPyoWx7J7Vr8tbFUF0EZS
nMJRX4TGoxlPf1ujmGCMgwXvZ3YSCOOBgRoH4/sN8D0Lx+zyZAQOgP0zMZzqXhNf7GTcJa5cgpHu
ie9j+Geo7sksI/zmjXqtRZ7bdfLgGrHcQQJqZ++4NuueSR9twP/wCs2W+ZiPrcMFK03H/Fv7XWDK
A77VV5Or9sCt/B8VU9vyiaoO9ZSfX21vVM7RWJptGpUwaWIgMZk/dVwELPYYjFTU8AsBNwFM7mdI
SGJjIvZ+p9z4ExRHsoXl78+tsYdifjgDMSaUeaKI3Brq/Hn8AF4CSTIBoE0+X8qHk2iuKF3Pt3KO
Z3Lyuxhaz0vGcW8LJpJeRuMcauAJw8CRR8QAoZRRNIAi68sjJy2sDz5AxS8ntPEeT4kbdI+r0iCM
+W0G9T1ebVo/RvT9ZaPMLdoUEbZ9l5aQnWCX1d/82NwWqaVLGUeLNhnNm2ZTJ3OXdLY3eo9+Xyva
QMLWHYnykoeBze/i57ZRkomffpuKgEnKHnUwQWKA9q8U9In+wDpD48LUE3LRZ5zkIZFSCr2uO/VA
mU1hIAt08OmVP9bwT+BiEj91y4y8VwhM3aXOem5/Zlb00oHAOuPIHsrxSsg5WboY/1dNtMnyUorZ
Ab60ZqWCl9oOta8qwEG7iDWKB2rTzA1602PMZ5eQyohRuHULs5Trwq5tRgkKkDnBV4HC6JRAeS0y
Tac2k8qtlAeJkVqESgXFLzVwsRB7bbM6Gr41L1rDguoYMJKi2LYyMuBwyKU68xJFr1Ti95a/XMTp
2uVTsONcxGPviTu2OlmdZFmHJm6+oUQW9GHFta1kNy/Oukf6U5GoKVP3Mwa8OG3uHK2ci7GpxrnQ
ixCnt9Lc0KDra+uCwuuJ0zQWJM69G4LimtYrQOGL8qXa4Uizm+sOe16Eu0nceT1DPvPv+g+c4QC8
mafzL+EexF3Gg28PdeAZC6BU4LF/JTiRCKVsO0KKqmcuFEGJgkpK8nHt7/Bsd7DBBEnkD/lyue5P
VYWVca1PiQceKNTbt5p+yc0JKPr0/krgxSnDJggthDmn1a1v/W1kZQBfUcumSqBP+pZq+YCkZHZr
82Vz3YK2mXXpCXXKC0CukT2E8U476UVUtrxANlZ6700EkyxfLpu17o6cfxR8i+bF4ahKOan0m4Kj
CLwgpbP2e9F4B2GdOlkhwLAAgCG8IANxD6Q95ZBixIIbMfocW05Zlxy9Q7fd092nr1igUh46nX8s
wX/Kjgewu7kyIeM1nsX9ph/9lKNtRuJe3JKm8rIw8f3lkpNBDjZ0qKljjNPanIhjU4g8dhETQmYV
28qfLpowykvNJZ5FdNRFX0bFmoCu89sayXPQSlGup/1dav3qDUO9BMps2FIOd5sQGM6yVaN1MDXK
IS4QopFoRVponNB88ML5chyhMXwu75636wqbfyL0sBPfIGGCtc01lbkSXDxJiJPpCy071ZKrzJD0
tzupjVGHslQYw0LX9SmWMvhlHla7fKQPbLSEma63IK0MryQzMIV1wh2lDTYWTD0XFNirwJHZncL4
Pqrway67LJORniWeYtzD0e2NXjwgGGvmxvZp6+c46LkTtUsExoFicDNUQQPIOWF9KO22IRhHp0d5
s7WOJWG9MfCrkUFV9qNaKm5ddcyfuPsdnddPAipgmkGpRuDKplDJSvuG10rQQWzSLBlHDNYTEqs/
VQthfHy/l8fUJRdlQBY4fdCtgtu692fnry6i+uOwv1DSZEo2GNharKQIU2bxSv1ncBfnGMI8L/1D
VS4725NfxURNJUh2yo+OU7RNw66AJJU5p5hSiAK3/gJV6ipje7TYZ0SJ4chTWYu/CnVGCqj95Kbp
mcek6kvbsvVPGcASswLQxQejETeDWGQH+2qOvovXXwzx6HIYI6ryeKN9nQdfOfKgjYOLxaimkzcX
ecSk0KAENO8fzxrbnGhOXQW5vklrbaH863bzL9zVoZ6N7PB9q3kXZp7Zkpo/+qV541vMd2uOqRZc
DQAVMyxsXc543f0csYmp2c4Ug1kuGiq9AzulQ4rt8cLFr0YdnK86//7znttdqUaC/NulhPSwxvvO
uxuIcQkVieWGHyWa9EmeJ5s64DwUvsETOVOP2tzS6F9AMBxOncXP3jnOid16fvS4kEHcMoFDnpx0
DqPb7oVSRSbfE0JqWraySJPqwvUrL1QAlzTeiOCyd4HujO0UGbRDuGzfdtru9KlpwPC75nVVtYMR
scn/zyGA5p76X90l8lL3xHrSkvxrnPoGWK2S5zuUEwKqHkaa7C6lsC+fiWgeGtCr2BqyAB/pP9Hb
9WbmuoKd/iJSAeKZp7CC6cCJZs83O55rH/TZrzdpne5Sv5m9S1q+RwIy1Xnb7Qjh6ktv393k9LLL
PKchiADENdm0Icsw+uaeUckvRcJ6hupBX8iBFtTMLtEZRIlcKMP+XO/MrvnWH30O/YvDtojUHvxr
hb6sSMKoFZuZ9jvbblL7l87UadD3O2mmMmzYV4AhR6IC19vKlCnAgRCImAejJ2wLKpdazpEadGba
T95oy/iDqzkJ9ZyH3kh9u7mcdnit3tVIC9Xx6UbKapYj6n1jIONMIABZrRt6x/UezdaxmBc9AjRO
3Cz6gNE9pzO6ayvMEiNQ58IqKQzYn6THfRjqr6dd0gJGHSxWQB55l2FQgxegI+AvNSxfoqgMV4ft
OsaxnagOzSJdcZ+B2bFhVDEwpTKLaRWdwk15abOD9w4/lnACO9XVyNeoyABcH6OE6MBMZwy6AHOn
lTRMK5bwGyeZiMPvzWi3PqleWXpmOmvK7RVHkfbMpqExRvfTYCpYUti+YHQWn2A2duBOITrhNPQV
0KEg7VQDMpuy9f4rI0xgRfdaIH9o3GZKes9NQZCUn9xJN9+nkA0ggJ9qE5Bf8ptWo6qITAlyoAEc
iu5eddlkeLrIa0zBv/awq27v843mGr6Zshto5Ho5xJa+vJCBPbpbI4hP3thGfK37VvHCGj+E6mEs
wclUB5mKqroPb5PnSVDhJ1wyyzs2yPUu3MKc5RI2sJf28ms0rHsOdcItsKSBqxsrlSCkU1L8Y0GU
80k+uaOGnfJSH5l2wARihUi+niuZj/E9dSUJOLE8yXISEva2dy/Jy5Vfj/YY8UsVOjEKi5lFtqSp
5ZXZZv7PGLFMRYlS+CRDWOPffrzAGQrx3dqwjOouMLQibtETe3lQZAMB3xgFjHOCodrfnvPpORvo
RTgO/BDL8J0gCZTKxTLdEvD4UqnnjpxAPP5eO5Sb1o5zQUCYYz27cxwbjWTzpUGGtbHudJNHhYtT
pRzFtN0h6LJr3ti60YZUH/E41vJeDZHvWbBIrWL2Y0ARRgjlC4WRx+PMB8mAxRP9io87ibLfldLR
QFdocG1f5wWUTKsUoJNMli+6ZRPJiDEYvLpy+fJ8kVG3YA17vhZfrnC7cPJOhWeNn19YMDlkI2TA
dQaQ+zXAnoWy+WSgfqdqfwGhOHpODRsBVsi68YZSPuNFdfiD/+OxblLWh4d1jvn8qyxVGo6zPcXV
SXMbXiWbDp8OgPXIEsRRq+76MfAlJU25vAjLidBpp2guS6IbT9OIQwRbeWYfMHZXHF1f2I/BK4zN
UM1yVWv3sz5fziEsHV/hZmEzyZIBMiM3dUS/Mw4oI08qWmmrdVP7ng5U8nd6eRIM+FTQItRyMn76
u65lMj6uZ4WJ6lAAkNjWR+QlIn8fGafv6yYgyBPgx51gLsOrwBtnDQw0A3tu3s/4ZAhiR6bP5fm4
eLUKAatvBbfxLklR2jVHL3ZIg9AR86euijD7G6pkotspYRX/p/It1mJtpflguvQH9wJFrbBI6kSK
sdzyjZOt4YX/EglWy5xKAPc24fNAlBUh6HbqavNpdR1RBBbGuAoEBRbwl5nyxGiJPqG0PmuofLlg
1buQzLgd1zhsrXk392Be31fGSsODaTaxaHQKrMPnFh2Qk0DI/9a+cLkvuUXkskZV21kUY6jndjND
Vwu6HmrL/BGZ2xiuV+T6jmURMxq403cc8dyD1sDTYxKGgiGD6zxM/OdlmieL2d4bkcBhBktsDsNp
p6Z1kgb7RQJQro57PzBB3AT3660BALcLj2kZrXTj/KZD8s+dk3NTBdSexYRs4rZ6m4G10xrra7v2
aTE8EEgkNzebkKnnYpyaKY6YfKvTtgv4pmcHTyxxXwQeGZG/MHyCA0yFY7SeXHocZUsNOJ5/6nza
hWMA5Ipx1k8GpLXmi9QagJLZUoEA41s/PMCdSFqpDHtIiYCO80mVpT/cL3hhXxE6rHmyhVWTdq4E
pj3CqRQ6uWmPFBUYNsWsYGTq5E82atxJPv9IVj7tK279NiimGIsDWU952Tv8uwOHZKF7KAyZ2mEy
Q8TdrTYAcoqQVnEuvlILMKRqw+NIMm/6lX8NPKkzk4f4ZlnnxhRp1LiNurxI0NxA/APqi4v7ybsU
MhDVj7WrsvuyNIl/4/2hQqpiUbkIDS2teww/jnt+XplzyGh5lbDq34szsf5cF8ooXluAzMnjnOwO
TMF/Uw518U1kSSQAnwk3U2NIcytX7+708ffTJ1yv9AnAzfUOUVTXflxbO92teUa21kokwvQa0gz7
/6+NFHSSpGjCROxuEs+L6qBm/hdrT/Deb6bDzj445DfeYQIZHIjWZRmQK+WG1dloMGxdAzQevjNe
7bHki7dQB45ljXk10asRj0iv8gkeG54mIdqEk3/+llXshFP8VL9wt9LYUykJj+S1/dRJm+CSXdmt
CsIjtpCwBdn26qgAbSfIFmwXA5TSNCqKuONg0amByT5SuGLSS6hNyOv7GLu6HvxjqC0QJJWgsU/m
D56oE6wTeF/3IrXSFWhI6e4U1T5ov8Duk4TfpddX2BY7dJjnPJzRh0JzbU4hVSZRZn9+v4rtkNl7
GiKRbCUryZJF310+aCq5xfd9vx+qpifet2mJAu4dFVVr3jV5MUNTgF6mw5AanYP7xvlAja34pnrd
5r/R9pF+ZUnAnkciMCO4AZDh5mpW/t2CdK1k3KBjzAHDF8Mr+PT24e1eGfrC33h/wsglnS7OmWx3
59c1NmXTZm6E4LPpY+9q+np8h+kLJwp3DVH08ni5yMXlPQt9cceX574RIP8DC+pBIxaAqlXANC1H
WkgcSkvNQuk3MsObJTm6vAInagZUDkPRGkUxpHHDJwauR959W9cxVoMGjn9IBvOedafBBy3cNjaJ
LBr+mbf5IiX4YQrMcMFJzUTAdureW7t6ewu2SWhn+Hkl+eGWAG0JurvUUTkkgzw1NZf8Are36DSW
Vl4R56PIl9zp1DcSWRAtVCd2V7ahRJXctm/HhltR1wYgNseUFhDjAnyNsdN4i74ao8oKiYaswWmu
FpftssSE5hSwDCbo/jqHQUETOm7qQFQkkkNRLSu6ZFcaH90JyCIh0ZMANjPYcmFIJoowdjNhSVpe
osmniwuFTvlyiIuU6OV6DrcOp5/IByidCiuyH/JqeYye4IV4VjSvX+JvkC7u5YPbOInLgAz4b5hb
1GcXuDXO0dShGQzHiD4rGahzTho9thIkI5u1ErhgEFPZyRBXGK1U1HMA4lWte4+Zz2X20ZjPVExZ
UJnXoaWKIB7X0sxOTJPKtctyCpX7tA9OFz8ATXK4yuzZ/wb3Wgl4DhMG6Mp/Ph+AhcEXE7aE0fn9
j1fR+6YYEu8SjiSvz18W/nJ366BUn+1UpcRUbZYERJrnI5nbW+Qk85Rl0Hqd/k4G74oD82mz4aTx
0oz6q+t9iXNE0VoBniqxnrIPPDLg1qLf3o2g/gAp6b0YBNgS5WkTXzwbPnX0jhN3L5T1s4jfy7ee
xbVNqm0PAROd7GvYoCJYS0wT6QR38/8RE4u8t5XWrVBnNn1w7OR/mdFmvNzKQdM+vGSN3GQkF71u
D8V1D0aJIXENbGGiMTXOmV7nupkNX2LiekedejYKFJ8L7lGUJazwJCrSLUeeCmh7kXenRDTKNfhM
zWVPiniNFVbM2MvSxpm+U1Emn9I2c4LC1nxf5xaXnAl4EQrdtdf45x5tj8Gd8tx4Bf4Aw/pKmcw/
k0dSiNVX9egbgxgdmGQRBtrlbXq4yZlmXlg80k9CjAgOk9EfB6/0eUxgSR5Cbj4ihV8n5q2jLO8S
QnJNpnpWk43sXNZ8SycNylOqYnQz+L4oE12SMqK/ROHsD1ylXWC2c4vkmiZN4LUMZVOdND0GGVxY
jIWf9btSpiB+C71lllo4aL+hbvN92P03eU6bIrAX7DOyDeIFcdQEb3yHd7d50Fd8x/xGKGQmVNJB
o/xSoMgZz+V9rp4tvRqaOeNXTKtyu/UtLIldjBCdFz9Oxc6a9gZVfJvJA8E9+waf6tTLOoIV7MsY
CMP6Q0Va+wFRWQADqMqUQv0zYMiqcF9LWFTjTKgKgVvLTjH1J2YfJR/icywsSNDjyuVV7WfMyP3W
Fi/BNUSNVo5kdXRio98Wzw8Lq559q0y+WoaT8RjPts22OdZA0LlSr5N8XUEWV0xf52FaDgI44FNM
YaOh/Nv5GOwQZ8sGaPOKFuxCKCxMbzt7ZJwutHlt4/wjIX8EMwx7q3Rv6d06tiw/yKZmGX6lD+02
OiVgBAt74uaZXeyTF0oq+JN14mZc2escN4yr4A7oXDwZDaYNnRyw22C1DQ/rXnkg0sN8IQuKJHpR
SugjpbAIClsHiAG5fhIh92gOKdQS/e0BGGpvVvw+0wWUAIMuE6TUb7W2m/9jyiIDLSjRnuGTnClO
F/+fDIUfJDf4rOOSio7zXOzvex/ykxC5QZtTm1+mwcNsgdSrB/20ZY01RpaS0RNPNhrJM/hJUWej
HyPW52kFlmV6vTMUeEaJNpIvXK9mqw+c1rxXGa5sLzHzZEiaT5f5VwDDh3TRq/njKCgtJBD63EMP
1Jk+O0tJS065q2L/xw8dqGIStUyco4agOKILNBQ/tSlo9A91uhCRF75ZJt6wsQxnFBt9C6RXkmIA
KUuz9XF38F1taMpaJWhMVndsP+vVObpe+JwrSqgDHcDvMCovoSUeaQvbQfte1G1CJ3rywtDWhadT
ksSrWy7n3xgdiQuO/pDlAgWnNQXaPRbbwzvdUXtWeL0zL8hen5oq1SqYYCAdwdHRmDh+FUOvS836
ktflyKoIXWNuqHripS9Vuu9L0F/uhtKl6HuzkpdxqrCuDtM1dD26Iazxx0eEIp1FYnu70B0x4McT
AwnXPANSUxxjWOTYJ91j4m7w/rwhm8GgnbId3C7bibKS8JfjiftRODRq7EdUkLi7JIl9raTH7JGL
DUEeJMaqzVfVbqRS5igrwC5M7pWQuBo3zEdOzairEgbsS+brBkhbe5XV3kYn+TSpucdROH9zV6jR
ECrnwGc/D3SSetdTArMpVCqMfXhCw/EtFadRB1FpSXDeZ7+KaLDsz6KJCidqe2FMilcjVnXpBaen
Oj4L5KKSfSYbdzgveNfseSDB0jjitaWEQaIiGuEtGbLrGaN83H/QduPHSadM25tJaSOPgYxIh1nl
6KH3X+606C77pP48GWN2xMnMaBZ6r2sm+0qAJDYTkbhRlsm+wsjm0fNXBMGngu7Pj2N9SLULiaGF
s4ymBdaiDqyPCBfsr00BZMMHblQWGgOay9Xwpr/EA2fb+AzCjp7mIBlWRhzJpNG00Wd/yC9oFotF
OTvr/dTGN8IbqeqXeKIUqICdC5aYpd4WP8SRRWzw277HBhOLAr+DgQqmTYEamLkdFA/fl053G8Dp
e8TlCL5sbStUGg7EtKEFcoutWDEb4c8iZoyzNj716qUA2hc9fkkMQ3b1A7MZwbmg9+0242rItM9/
n+1wdvb3y7db1tAOFw7D6CjWsEX94C1By4uxrpicwBgThRLpszStoEponf9xyRkfPLYLXneiepZB
X4hG9SrI/BdoumnDKtsyei1fLpg6BVQjL73gtYrXjeAook7zE7XvSO5WlLUlWyBm6sLvVj/KsQZZ
n9T/fXUq2yeQmCgp6j3ORwnzq32JeTWBv91ugYTyJPQJ98ce8U3vW9+cxLqGFZlJDbs62Kwiee1l
NmI76UFXa/eLVaAN41arKRtvd0lp6Pa2vUSco9ctKgMbE/+MwAFI8vXlauuuVg4uH//g1aqjfqP9
Jmg+ASgx4kBtRqW12H4Kc0X07XdT6iskuTFQbUIVf/0HFUdTG3TmMLMKKupas6t8QYYKJ1iOuwnw
3QmNNTi3uHfQXZTH8DabzuJGIBjuNc9TubEuvx4udFtIcyaf7h5pVbPepbL65DjtXxw02gjXDZ6m
vyOqFP6cpwJVOlb8axnmhp0lnSrt13sySdmAEp+SJrD30uWfDLSLQS4HnAXz3HFTY+/Zeqc4YkID
kUm/A+xf4cdch2mfIFG1rh4qvN3i/IjvkmM2K4vbzkNm9+GLTlVY+ESbQnL/1p7yhtQ3m6ydUfnD
4283HsZTPNy9yM7qj/atsL8ZiJp4FyNVIc03fEvAjq7jA7tjt7IpW4qN3frX5/PQRwyZocGzN+f5
u77hZQUzyaOOsJRWfuBXFBbQ2SAt5SYdrtrm11awSzre8PZ2gA8t37jXn6g6Fntt8/1uWqL9qqeW
vYZvlSvQC6CsZuO5t3/jVcKzRpKCRO6QxAUc/6UGgJcfy0PJ7PJ+SI/upWY8yFK8nFMPw55ZVatw
9Y+dr2UkVmhdOYQofREr5cpXvXyzJfPdMi3E/9qwX52O6ibeeFmXKQXMDS22lETntXJSND/NSz3R
gnRFQRfEASG1J+7ceMrBNsHl3JAb9dZ4A4CscPj5KRrG67e2+atVb/Xtdf2s9CRZgp7+81ep04Ya
+o2QcBrK7y08hBRqq0m4CQT3v/ulTFAXd8fz1LPwmpU/KtQbHZ5U2UqDbqkr+c7C4Y/KlelHLBzr
Wwb/XG8cDHH6RQ8fIxWxBarD/ZyZsqh71IT0dnQr8nDNOFHqNLTs2NmYT7RdWUriG2Ahtd//u9F/
QSb5bIHyJ2jmVmR5tlR3co0erNe3hMzjfw/GPsR/3wz+Utlt9+9UbGRFmVq+qv99SS2udnyaBNAe
l98XRj4R+w6rBDrXZhUG1ZVNy21ftU38ks32AG7dW7S+oZkpHNOnV/8Pa63iWWy2gu23B4i/VrjM
4lzo/P5gOLLX7Z8QnbTqMBc2NxrlhKNCbogc12vdP7H1vjQjTilsxSlHVkuG5N//+MS3f2W8B5ow
Bmq3dgqTUhww2umvImczNDcB37TGp6MGsmst7V+qG6v5qCbUnssfctFvjNOItJo2tG6yZN5mTPDJ
havJv6FArRS2Mg4vuD3Mrdgc6kN1GWucPWJFgd9yUEVX6CIDFpxWQjRSBUSsWbkTnlkbk5FwQ6kd
FxlxnMN/gADMm0sAfxScaJhBPV1Oh+byPrP/UwZg7WZgAfxRy07E60h/nZtNrXwOcGZYg+4iRZLm
CkfORCjp7SqXw9nuSbn8UIVKAt1gMWfpmB2bFIV2CQAoQpP1WyjF9Zgw46WyN9P7taEVUK40/+Dk
eO7bWiVXC+kIOy2w74hcts4+PWJmtHlK+xY9YnjQpTMxiLjO9UUdLDxzy3pGgC/33t2iPw0R6xkS
vXUMJuH5RHr2p/Oi7xDz/JFGtJw+5SaOZyMNIg+ztPaiKRCKyyA0Vf2VZDTZLAV7I3wTOWRrFxUI
VfiEttP7O+KwmwzP+fkw6UOYluuB0qawomhy+jFjLgygeNCoFmKaKtFje3QSnt4QZ8Ct5/Kc0J6/
FUVo7fA7At63cdoe6EjTdG1rINef3LHRIYb3JZdoBCAbR3JAYsxAPy9gF6HnvZjHVTXAeiOaGr5m
ApFuOhsjUMOu1/4bVxGbAyApIL4tShg9YJWSH6LJcpp4ARR1GiZqEMa5hWAeMHdUBlpx7+jlsNLQ
4enl7Ef2vv7b8VAK3ByWg8AWjypd5IHp6s5rI/29mwymi23BwR6bjwwYGGgOnDnZgnyoNgZoNVrk
8d99sNxR33Tn8eINDGsTRveLI/oZ/+ecj+2lxM/XvvxVRWU7lNlGTlvn1SWBsuhrUe5kVerwTMX8
YqDztTJ41x97k0l6E147vWvMb8HLGYqp9vqCP7s+OunaPCGEkqBth3DrpyCWwU+vvGWzrR7gfwSG
Iz27Uyc6UyOba/PrWurdaUxSK5xjLYGXG2VJiMO7GKKdBJMMUoBxO5Uxh7wQKJ8+bS/FQHRo8mjz
AMeL3Ru/UQmXj+SUWzbHPZ909k/Lr70bou4rS4D8VWgEgWBSsg1i3Vd0gPtbIZxAne4JB+Cb5XeE
HKGsQQdxY+5a/D+Nv7nCQTdnKwmYq9zYJzHtTtttf3nUUhUuSCOz1NhYVaCvNijEzNRH6YbrUypi
B8MuFWF0M42RZh3oDeQqQ3krmCCFfVw11GL0vrg+zfx9BzGeTjRR3cxw8VHiiPYV0JjfQkfUX1uO
LvSXYLNPcb1yQhHkV/0anH28jSve74neruweQR/xMHcAbYjl3bGU96Yzmrfe/xz9Im78KVQg86Gt
YqsS2Oyk3FaznvwsVeOfqBF5boqzzUYd1DkOv9c1tIUdmX0ooeH8fWfO+3SzWQeUVA/UJJ+mYZQc
QEWK3rMK+iy+JFxPpH2kenuTNVV7R+k257YUzJW0la8X1SUerUYan3+IfNtdf3bgifKCs0PLQF6b
j73hnMysrdjv2tyxVz5DY9bpkwWNNrw7Keafp8sJxEZRi8jxsF5ffiAHTMQT3ad5hizLa66ZaJzu
YlJRvETmviB/6ZtzwBXu0yl3uccShelwD4ew9pjP79whOp1tYg2rsxBydyF7r5GOAM39Eol/msEm
hy1IsoW8pYkAYITf2ktWXVtShz/M9jMMpz2Mogb4t2zTM9g8tRr0qk2qdNyrNlgUcK2jQzNBZnbq
gD0XDLp0sdXpCzzriYcXbIZkjx3wwuGg+8k0fEZMCIQshKUvbmilRzHH2z2PE/talmWySNiDjZ4C
xsT0Ng4+reMLIoyU7IvkhcD3ujn67Tz9mchKhbgV8VHgJ07Qa08VnK8WCYFQyn+07NWzS/rIK7pS
4POUWVtNsXE0jmC9sPlwgqa/4hxu3KY/aT2i5jtEuD2CktQ/eqL5rpTFoLnIjODxa57hENJ9HjUO
yOhi4qL63AdvM/6lwc7lOvqhLM0nknuw3+SfnYCBvDw0JOqdrIdsQLITqpxD+tsNfNq1EdM2+qrX
pXR5KCphNcqPrvJN1WxzJSWqsEzYwpnn5vqv37MSbtiCFI4j20OfC3AU46Dqt6jKbIcaNVWmJoaT
R68DgIKMDCI3grMhrQRrL+Dgybfu9QQNgZQEJz7oFdyOkZAXESdgnsY7qQc5PaYfja+0VJihA83B
+mocnwTFZ9cbZBqXBBfADQAtUoRvTd/pq9dmNzTDRJCtuOK1VDhS7P6d0vBcF7iA/EIJSUAnmqIQ
loGFB90XxDgndnnTPmkE8/mUANhwdI6lnmVzCo1soked7Wj5g6qq0VsUDEI9ENu6zyfKkG1flva6
gV/KaWYQJSKs24ZR15TTNI00H8K4xmlaLhTobmCOzUrTxaxvsOyLJDR7qzAVdP1ZaNtUBUP0a9uN
wt2Uh297DjYnNk7/yz7g1j6CuOFkqvFcigBhXE+5NGqV/HT0ZykzehtnUzw1G85G0h6Zpmi9oC7k
oTZ5TIRmSevQZa/B8zJSg5JfXyhZ5i1LblUg84jubIPtqmepJ4ZQe9IwV3vZNBTQhhf605paqQJi
v4JtbvnFWY85qhBankGhiXkWr2m20ViXH3lf/H/7l7bLEqRVxjNW4z8UyKjyy9+PX5LtAGgSSwqN
QTAMsIFI4oW/wvVcuvlofK7pKon0Rr2vq+2nM9eL85RqZMq42BVJDb+//Fz+1WdPtOb1i9rUJzHD
SVt77kIGc6tyv8Fw8qEb4GKo3q3rpFfM1oSJc9g4BMWQ2Dd3OhQUqmF+Wku08+quVgD/i9KOLp1M
S3fuT4vXlLRUTd3JgDl7qrdJLMBxaMntotZOgz++6Zr8UlSl3gg/5GYb2+dRO0iZa/ELtMRTy5gp
CFXk2kwOC56c0ewMUvlBTY77DuTyOkky0s4JVakWUV3XTn/cwfWlwJx0/ieqddC8fCPXLfiVzhm1
46CvMVic+USkYxtm44fUdXLwSlO7EWLhJuieSuagwTakfJvLXbRfXUVFNjQOe9HW9/SjcvUIJBHK
x1OaTL3qXDk/6iAHwOs//gW0i2CNKaKu+2snCVBeQHVbL/ncec/zxPe9oRIOxyhSNcP1c7f3rxce
X28V+0dlkP/dde4QwQzd5wopwzdjegZkOtUz3lTZI2Id2eggqMqDdnuCBNpUui0qkL02SUn1Kqhh
yl4QG2l//M8yryKsUndb5Yly2ZaMmNW7bRLOcDqBQpOpl5jjWggriSG4Y3sQD8PC4SNm7J1h58zg
QeCHoTXtvNgg0Ol1+cFrQ+yPGUplWpB+3GiCUC7NdeWsMUVXy/LLt3prJNfjUAPCa98L+N46sPqB
C+56r8A3ZagdlBC/1chJwzAxrDpH5nBKwPRjfApkv7dHlkmp8ZVbKmCH+M4B/b/7XWbSCMPXHb5r
8erChnvpMCDYn6htw89oJQ4kBE71fOlP1JEIJGjZmBhcue48InWMOLvVNchdrsYxWWFW5LTH9UZT
qhhfYxnSN4eCNz2YhPnkJyW4h9vVNeV3A1jKLR5Faf2cYHS2wQ2x5n42ULVUDfPJh9dqIxvy8HPL
VP8RAJUgESs7uYqHuCOvNKDnhEbysME1FV5UDpYmzcU9/caIKxrVK1k+b2xXUQzZfVafY+QX1xiw
Sgonhau2XfTWH/tzWa9TH/uC740dOq++b7pP8vC7nHliuL82Jm3juDYXriR8Y9jqt689ycVtVq4o
C19kkxlyspgZTpIucIYFvhDiOFxcCh+bbey+1OTYRI7Ki/RnUzZNhrjdZpyuFVPLuAHDWMg/JoW0
OMCSXjzmxMOHPBdBjx+MhtbNTdfjEjDqhX44q+Gu8PSlsmxAgUl0tABnhFkmOv/6CFj41vIvNbto
rrX59Ohb4uPIwu5PX5KtPQqvN+fNbLu3va/QhIF4xNoB5us96SWHXjscm2Sw8UpvNwsZuQMngsPG
MORAypom7lIX/ZkvOtMHlwDXWbpSeztEXYM5qCEHR75xxnaCtaU0QrGzySCeJVHerRHFkcuwVGnW
tFvahxJWgyZTGve12Zbo5PYx5Y0KQcjvUVOhz7ryNBQpxhNlHjNa92Z6vtSVTuLiTu6hj9IUPZDM
OOe6mTb0KeRIZ6JgSm4p6+KIg8BLe8vnLBZ7lL1ScZ5bvuyPoiAZtwHGtGt27W+3mqsVJPT/Xq15
GC32WOhpDK2v6PYEMO+Vwzw6lASmU/9mmfX3VFVz/eLF2J5nauv81Orgtcq01DLo6/Do055QIgZn
0IzbDiyyTpZSdb6FtOD7e5mlle4PcJ5qPspxOA1UUugR5RmIomNyvD5O1pPUDPCsuA4Ub82TR4UZ
x8kEWZ60ofwpDwpPMfzTBJmAStEH/3QgGH5rA2rN4DV4iy65vIMMXsRcqF+GkpQBZs2l9yFR+vGE
oo0rRcsxYnNLbFKcKXu1spZDVgktAIWG6ciBd6P0oyC5/SDVwkImPMCFu/lqKqFcE9bbRUV1gc4S
FrWIK0khNFIoVdgd1a8R2Uo7uIm/suqD0P0N5Dx9EL9Zes8Jk83qnBNtsvZYQI8tHzYT1hB6xSun
251tCNEbZo97QKUU4pfImTi3OjRJtXt+Psh1+nUX0xRDsa+kDviZUzKaHJcNt4Ez5B1yVjZ4o4ku
GSGZpJmL4dv6wMMy4SmzZi76TqcYbtNeSK4wfTWQa7JcrCbpxpC66KS2o80Muo50gDT+vpVk6s21
rBI8YywufSgRJsVrZt1eYu8Rt8jG9vlPgELKHk5IosXEp4affD6qpjm4omh73/9YqqZEiGckTVpa
cHWHc3ep8r8IwaOPmabnkg8S9SPIO0HMbPqrs1xWM8OGFbNoj7LVoQol5uVPHztQnryjMFhStodi
+s0mkSHwCEOgoDaC3PxW4JHSR7ZQh5W3c7s+0n++VxZEMLkDRibYtG4aJ7E2xwKtI/SDmGCaohHG
NCx0j0qk/HIdWvGPAhorxLg6AsW6+MoRwWBC7kIXeuyXks9psuWMDaRsvkCo3YraAjKOGtM9Dr5+
M16t0aDakIXdw+b2O/bkSBWlm0qKPM3RoDTcrb76NWr5r4p6HtsnKDKH9RIm3/4IL8/SNApvaMBW
2E8qeUM5SG2CCTzvxSMcd3RWN0D2EQOePvOgrQsBDMoBjbofPgvoR1q3rxy0dB0cogKKlzWDqp+G
+ybHqy3qnsRlfTJk+KZS+2dPt9E2jiDVv/9p0cctYf2qwmzTPIRj4tRK94MvH3UZuIqDtivQxHWk
YXi+0kq2f8XDQLu6Qks/HPPQWoswU9o6htEEddokHl3sauMagbmK3EP3mCkf9T7TiOGuCmBq5jfO
18AZ7sqfrTCT+N7G67u7xTGvyec8klNZdxPHvdtRm/RRuqlT73mhEVwztJuP1TCVnq+9nquIYq1Q
eyN4VSVtI4b6Dv6Q3ysYPk20tp73+g/SickRqGt6hyO0xiqFMCHsbAt9fN60q5cCbDnpKFd10JNO
tQY12N28XWDve4iTW7bmFE8mmOl9NG68g7oEj80uAtnVrBsucS4yZCNxvY4EyHe3O1MptENq1i5h
z9iYPZr/0bAD4u6ulbG2CtXlgKCShxSOMm5M8bJTsg6SGboUVxGV6ONjWZUFhrx8zWt9p+UgBu6D
KvPIOC2fUCF2VKdwTSmo+udWHmx810YU+TgvA6Ajq2esFcPEwCXbU8cjJxiGZjI47zj6Em7fTvy/
ikR9jDtGHPUKyZCx+SGTfwWNI/Jr584FMBTVxXzbgWtDjUlOVEjLqjfqMrD7aYX3MMNNQ3ADCRTD
hl8Gf7zoTKdDK1G0/SOqF4KsZbehP6EqS2ZI9jKbatmTIFYce7HgpQ5n0s7TdXhyBltZOeGux9uB
AwJpmNR1RAp8hV6Uixjzn574WeBmZU0feqdYgMgbXuABwpgaQ7Ft4TitbiaUPA/1oa9+5jyQiwdR
/A4u3FzBJXdL0ia9lNkxiwKdd2euK3rc+tkvH6gLmWAYFd6vEyyTyBrsLxkLEM13Sy8zA9UF6/fb
6blBIXqsuHGhgyVS/q+v/CiciPkyTPlCyzn5JEmW69PE7KnP8Z9YdG7agoZdvCtKmqmT6mg/yKRM
BNM85Vjmxy8+AbzxK0dZERicEuLgOirN+0AzwjWDiioJs+Jin5MXjV9g7JPHO8Cm6Llfy0hQcpPw
WJ94X4wP9peJdWGXXnoTSR+2EwlJbjMSPAeV4V9gGGEGhV+Rg5LGtxQcrMdqwgQaMZhF74x1x+6y
YjAsxu1a1orT56twXJnZFHuR9VYWVnHlVxYy8gAmHB1Y9FbXvbgpvDVE2jDV3Rv72r64y+F3N1mM
mbuVAUYqG2t0JSp5W3vCSC5wetbLARGstf0d0x1hjGVhRNukcf6r76x2R02w9fcsAJmP+aOASgI9
4Yoojf8U2+mPochUz2wjpwlQX2kngS7A4z6OujvYTn6KCY8CLvsFYkHaJu49yv+1NE0uXV+gkli7
q9voJWo1z5fEUABz4LJkHgDk5MKKSb/cflDdmZmxHjMmwi5URIfyElEW4gjsR5916OzfjN5YImlA
lwtlA2YGztMCHaTno3BwFCks7RK5rafFTy9dcOc9ixkNH4n+qcoB3k7RQfJCjXdhgrZbpUDn6B0k
AenbVZHcUwU5G4ML8NsnafPK1ro3bzLuUX5uAW1+rYx77/wwCKZ5Qk02ldXlmYx8OcCYzV7QR8v3
5SJj7slcl9QS7zAsPoxAf5wfPXYCqoL2pwCFy+fIoJ+ExfcOvATkYlbYyBY6JwrZAmxaOMZV8A4n
J5ZxS+HJpnB+y+/pfH/m32t5VUjg8gLKCASe4gLQ0QFcX9yQt0IQ2s3h+ZFMcEpeCuQtKq+O75TB
Aw71nRvQE4KQrfWJHMYHmAV8SOwEZQcFl5Uu665Ps7+4FRidx0K3EWYorYJEFOOO/9PCq24vA0M+
hx+aQFhZKlMaTjThurWFVaRxnaa6Lw9k2uqpiSFW27iGmIu8O0FU9pUDZwhrs9gzeal9F3JV7/ly
gFiqw9nreEupB6EFNJC6wijG3IM7BI+oxugjSdmAPC8hBpCkw0p4Ihn2Myqtf4pA1xOfkTBJ8UBp
VklUxAnGX5XLpWEpGnO+f+pe/4JClbi80QbCidXSBsx/14AfJ+Drq/URM1rDQI74+0dMWbBq4I7r
tauQkpbRUey05QFt4ioMtU0du9ybsm0hUMdSc4bUfoMTrD7slrRBFasoQ0UEsLobNFBe6F7noPBV
DkDhgU2SNeCnX6tmrsaQdKGz4rcg0WjXXZnt0BIhLIiuW32drcc32hzjG4HuMPOCdBEPIFWxYawd
cXNeXPItxpDjy9crzjFvksOdXwT0mLaGd6fvgm41r9g0xxPKCKdbJJ6JM3MdSc/+9kekCaWtk45t
SKr8OnbnMCEFO/kfUiUFdUO2Stl/ZoRskETCV6lOTeCk6qXI/PgyBQhoMUigYKM+ySjVyx+qBIuj
TtDpNoEgcJ3sLHLdt2uh91NYHDq2Nid4/SCLFkKmrmETFd1lpnvz3L0xsSkwpgcrO86cKSGQT/C6
vrOrVLmjGFU1x33MsHnpN/5oDP+5Vz/MSzI+o0fddsWM5HpH1oWO/2RAwJvHR6WSQDrmw+LX2x8K
isap4fkkE5Sni14lDKnICwSCtToZ36PLo14A9PYK5v9gOEqO1nO1diavstPwV59uAG60BBiZzrex
/yImMlHqSDvx58LEghbIVamZklh9ceDmv3BPboFHvvxVeMrGJ2Nih2SI4iOuYjmIWNXgTaJmLJT0
Qz2h+BP2VjwzES/rREO0Iy8tVakZkr00S6/OgYGw6UIfVIWJdlMTAB0iqa3t2AMB6z2lJSJjoWWh
On2dYQj4op2CPfU29lENOGMmLqanDcJDGV0GKm1ahYYrr9Bge6eEkfUnbOOoglscTIEFGeuT9qTz
RoOFZ/r/eX3bAh6fZQMu73rdpcOUVX2jveCP5MdL3FhU2mSByl7LPvH44dBuuCHE9wmxISP5Eagd
M2A5PCuoT93VXMm9DVwtDEWessef7raWO2p3tLrmbBL8xT64EIwF23xP99rjRpliJ4LSEiCuTHgq
LI580guv4nTwevFTOkCrA4LdD+ZFD5jQH55B/7FY/OnJvuCVLX5774MSOvxqkgaGNMCaf01zQq0p
DGShVqNeWSsxh2j9a+9MZc4Kq78ywctVp0DB5LMkYPRW+2Ri+CU2jE4GO2FytyiSyZe655CAXEG1
+EjE/+DOl5W5+6ujwkf+FDy0OeeV4I3vclv4ihlQ/L29Tmd1Do0114nrWl4KSsp9UOnIKcgyQ/tR
yGAZIvR/upjFa7RGYj5c6zoStLJx0O1UEAhmu5Z/CNz+zidCA8lyNm/jhpmJUAqIIZc3TwmCp9zU
+pmn//G6xcmIMyUc+8Xu5J+nea4vPEG/P+mCATiQXQ95EC2DKicCKxldGj6yyb6iAvkeq/tmk0Hu
7e64eI9uF2LEUrCUYqgneoaBF/giHq3fNkHVyTNUXm/eAL5GSF7xuEHTeS9fWkgFX8IcU3DQOOk7
HUGgLfEX0MHzMrf5eFBXAq/kLzw5WsZINUQD+uwiSzn5WbFlm7oAHJU4UsOrC79cFCtDzj5D0iUM
9TR2byIu6G7MY9wh6rvych29Ux8y7auVoSp5esDU0Rpkwkg64HVTlXHIq+50q4xu7W6g7rmEZypd
0m5tgPkiF04F6YvEngeCq2gNN78JSM0X1umC9ox3JD2dKlP2JG2fkD2yP31TrHLt1MGmGbTlNKw5
w7jNetko6IDMgESt52o7ce2/MNReDFKFLgBLRMdCUkIjrSDH0YNSBgOtEn3mabfjAxBY+JF3n06B
7zc7H3pwW1pJzJQBXTMc7CzP6aJ1Qg9MGkqyp6k4QYXV53XLXootVOSvlcyCwKah6Xs0AtmwhtxS
EiXNg8f6nt0K0WigB/kDf8bxkV9imr2hvRWOQRE3OLywe7OxqZGDxTg990SWDlkuwusiNtPSXC4a
uRriC5pkyGuWUpOcNVohQ14JhpX5vGqUySbfbXYuLKI2kpqVQieke9U3+wAuh8JMf/RwlL8jVjgY
j/rL9yZyn5ovW8YR1+kmRBs1PCyjJm70pRxVOjSEVq47TsZadltOzYMWEiYZ2OEQ+mNYegclc3c3
mblB3WEY04vZol0X6zAWCAxMTFcrLvwv/kOJxorLFoaxXX4YaR5zGyx2BtUt54BBTg0x4059n0bH
qQBOHDuJARM7JeLbXvlMyg+UYgBbaFjzdKpC0Joc4NNZ+SBaaBXWu4n2WKOvhS/4o7JbrCSv/Z3/
TqDdkwVr49Z2qek03lC3SaccxPKfVbjkOgs8bofti5qhs6XTyuTXsOVdhfCg34N7AHxZFjWsF7bG
ynEdtnXJvhKls+mnepzPLKU+pYr9GFgo3uQ4YqBiFhPFWLBmeApPvPE1vMNjLpu5P3AjiaV8QAwa
mbBZKiBltBWBrYI7SmGI/L+3F92dmDdceGmpnmxLi89I/bppDHYra76CfPkHtjOGKffK7bMg/AMN
TPR9ZZeZ387hsekwiUZX7/iwjqzSAHVtI2fyf1KDv+0DTDW68Jjbpnhbq1bHvYWNIyGp4mBwWnAd
XeT4LIQ8dDrxojj+9NgpMFW0KcVdh/X3lTrdBGB0RnyqmIHSMof/Y/Wk6qRwhzibUN9BUfM8gKti
0TB5KhbFO7J/L92MxEk0q/81YSX7GSrnOx9YF1nvJ3IBb5uuFcF1m5LemW2sBh0O4Cdu6CWyRyJk
RUFb8CbT75Nrsqo9+GOhfELesRoue3pmOuasENgfmnflP6PK0ueUdJfp23L8OzXfsLnQzefCjvdU
fxUAxZrFsdNv43UXiXTqNm/ruGIqArXd4uiWBscaoCXZ4zfzYi1gSbROBYp8oGb7keDMw5bYE7qG
RM9DR6MOKJhmEyJenPNFaSb6TKA9wvPLi1O2QfhqhDMQrTtBIFJZPy43aj82bPsKvp/EgrqTgc+P
JD5z01ngVqIlEPLtdnWApTKfdOo4y29XhQvRbv5zr7Ua93/OR8neyfuEqsBbN7GCHcoMaI0AGV9J
KnaaSeabSJbaP52m/ZUWcyKoIS0mYY1sZ5YvJRD2IO92WzVoNCyFM9USj7tqdYpa10vLvzMSjEZH
khT/iYt3jBM8iJ/KTTwXZo+ITJiKkxQjgM/gOBkqvqbQWbokMWoOzylPILOpSm0g6ctZQxE1+PkS
KMblHgssQrKuY5tDSR8ikTHtCY5r3TrltHfYd50xTz/2d4F3J6FtwwOM2RQeR/C/Mevm6+RBfiSe
G3nPIQZpUUNGsFwN28wDMOVL159ZHmnw9nFSxrkuwxSNI9VkIUf+LnQQCX2k7qVKkpbS71FPGOa4
AuwZ2qEtJ0CBnKfMius4cpC3aLRapu8mhFbHcUJVbZbpaGAywYDbQPryTQtDwk3bDPQO1rL5KHKM
1LrYcsb+n/1Mi9TYzm+cjeeXNqPp3vpzFDnb/tGQymPOT41vDGA/vtbH49EQif4qx8clCA2cXC1l
4I5VCJxgA14rrX3Pus+hKdCtt8eUNTTj1aiAEtZ18779Yvm/jbCiVXpDxpZnNZTto3GL2tRcfVjU
Qky8QtrWkczn9t0oHiWzHGAXiW7uuDz3c67+SpfGGg56MsYKDulxtwt80x7SSQ==
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
