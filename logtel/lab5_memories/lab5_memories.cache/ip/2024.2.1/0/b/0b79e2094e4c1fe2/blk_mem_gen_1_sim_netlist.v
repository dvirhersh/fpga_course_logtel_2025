// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Wed Mar 12 19:41:35 2025
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
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "10" *) 
  (* C_WRITE_WIDTH_B = "10" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21264)
`pragma protect data_block
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
rimH
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
