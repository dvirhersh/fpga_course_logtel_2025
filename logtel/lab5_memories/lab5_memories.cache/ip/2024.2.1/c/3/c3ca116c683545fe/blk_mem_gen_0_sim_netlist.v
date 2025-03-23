// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Wed Mar 12 17:58:08 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.1" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18416)
`pragma protect data_block
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
WnRvUBY=
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
