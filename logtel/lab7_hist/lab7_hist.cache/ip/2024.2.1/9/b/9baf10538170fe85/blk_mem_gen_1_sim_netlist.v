// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Thu Mar 13 18:23:14 2025
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
