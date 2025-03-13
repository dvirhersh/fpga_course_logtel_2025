// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Thu Mar 13 18:23:16 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/logtel/lab7_hist/lab7_hist.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
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
  blk_mem_gen_1_blk_mem_gen_v8_4_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20928)
`pragma protect data_block
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
7LZf8IEJROxY
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
