// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Wed Mar 12 18:21:01 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.1" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "255" *) 
  (* C_WRITE_DEPTH_B = "255" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "10" *) 
  (* C_WRITE_WIDTH_B = "10" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20960)
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
