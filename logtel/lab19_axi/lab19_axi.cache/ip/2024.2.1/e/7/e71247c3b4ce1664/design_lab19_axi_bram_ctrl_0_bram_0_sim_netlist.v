// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Sun Mar 16 11:38:57 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_lab19_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_lab19_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_lab19_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 49008)
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
