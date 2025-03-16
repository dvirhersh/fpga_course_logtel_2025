// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Wed Mar 12 20:45:57 2025
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
gEih
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
