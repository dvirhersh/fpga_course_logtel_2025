// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Sun Mar 16 11:39:01 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/logtel/lab19_axi/lab19_axi.gen/sources_1/bd/design_lab19/ip/design_lab19_axi_bram_ctrl_0_bram_0/design_lab19_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_lab19_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_lab19_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module design_lab19_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire [3:0]wea;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_lab19_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_10 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 49200)
`pragma protect data_block
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
WMGISNTixKAN
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
