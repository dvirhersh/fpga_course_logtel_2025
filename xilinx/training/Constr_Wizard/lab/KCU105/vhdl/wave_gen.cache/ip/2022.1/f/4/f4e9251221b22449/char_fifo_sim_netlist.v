// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon May 30 14:21:54 2022
// Host        : xilinx running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (srst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input srst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "2kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "6" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "7" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2047" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2046" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
h4/8v0FBgXUomE5kJVs58UlO/ao4SLHpniPXt+fomPPYB6tv3U0iBfOL5737ZNNEhgP1kkKeMvq+
VxOLW94g7JZT6mWc5ZuQ7jgK8Qpa6+1xpVVQBB6gVSEeHij7ZHqPdYaLC9rL/SR7notnBC1OujFi
++mTu5z/HJZtnN4VJQw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Su6POoQw092/hg4JN8GOCSrLUa435VAUaqUned4C4G61yBHlUmaG63UO+KxY5pgyMrDH6/XH2bPa
fona2wB0Y0sw6W61PXOfiew7cH42baMY0P9UBRjH25EZTf72W3O8r7DNj16ob9pPi7bkuCd3aab3
hdfeY613n+hUbAXTLQqbhjqGmO9kFeC/VmdSITa02RauMnpfVxz1wLu9iUQ0V+mPTp6hvfNXlD0F
7oONLZJg+c6/+uSw1WbEiltO2Lplqvbb0sYbZjtTSEQZSdF4DiUdA0SGK+L75aDYGx3Z/ajCRpBx
Mr39wb5wiDr6SJ/QQ/JmYc+HrTs/fbN9BJ/Grg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
JbOromwhdJgnOFMOfO8mpnyFC1anQPoDL/XeHYQuoY4+0yjNmPGasGLGjanpoUgfOYngBHPrFFFH
rapGBPsHEbT6JXWHeRJexf2moVhmq1sHJ7n+Jx1rVNuyclUCC08Fg3sy6FdUQmptKSpqOw1x0DV8
R9ZlmwLTkoN8IV6D7sg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XbCcyKbk3pmZ92QhZ1iCj+9jpzUJAn91N3YYwVHN3gwcgTU0NRr0oD7EmkLoZ8hVAhh/9YMUp7DE
059wcAzCBsD2W3CWY+GHUSJS57Xt2yi9tZH7binajEyHpCqaFKKO9WxDTO9XnYLVswRvAii0DOJL
mY+z3Z0uDx55BVWqbbvDkA5gABsZLueFt15rXRJPRnAjzWXhYzjiqC1WQDy5UHl/LBDlsOMuouyd
gM4k7zzEZUOy4o1sI2isD+6T/wd+iOsXvq39rguDUtkw3SR4GJmk+rBu3rBh+EvBHKxaWqQjGGNV
qWyrqd89LjZFGnXZ2jvsgxldJWCellgTK1ZEfA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dG5h8R2Fe36rfzcvmeDU4OapeKO/Lhe0DkL+4c9AG4It+1yVmtHeEWL8eVWMvHdPTwqJqgkMQbh4
OO9/9XZMyYCWFJTHu4ossKo7zKccfTeBbKfgP+rDEckDTGIWXihj2YJ2N0p6q9Ynpsz9qOLdoXTY
gZXwoOe4MrZBJWZrDOqkD1hQ+cRUV9c8S6FlH+AyBNj5dlaAM0Jyq6a8TvcRmLoZfdi1zFWXeTUW
/XfWQRP+vnqqV8VPdyfaJJzaKnG1u9PnvSFauc3SzydGZfICacU2pPxqAaJWzDYwSns+vd4vCu7u
e01UXo4XXeFCvO/9mye0QnyrDHhuE0b1Svw/jQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K8hvyEyHvgdg02DFF2GnEdLUq6j/uKT5fsI+Nkpbw14CRrq5p+STF83Or85VDleAax2TYln4LhGn
6G6INbZ4BdMuA4nVtyx5xaogScfMwbjrTAn0bqxT20M++g4cn4gW2g3oEFMnXaYCsLaJ58t4/T42
ocO8oqJeCowKICP/eM+B+/jSusNp4JILdp522MKky1zANadPwlv8a7QrMrJQrnb/lF8qC10yXqfM
LbKfbAEBaHlel46y7YBqdIimfeAVng194wkXobD6WuMhQOpFkigBOLQzoKQWN1TWeY5/rSQt9pcT
xLm+NEQmtlL61OudMCIqm++dCQSgE4NFJj1fCw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gSLVZdmdCqRy/3LoTp5M48T1hUUfGQp8cxVz4NQ+P65mrZ0oJJXHSaNbzdvtYH41+27aGh3RBbLb
pzz+TmeVuEVneG5nGe1VY2ogM1D7tBMRUvNgXK2PkSRLnk9tYgnxoYi0cYLBxa3piqBh44cdYXif
bT0Uh2vFogmdeH5hxVNFk8FEhULNtR/T9r9ilPNDQALb08fQM461sjlhS2jgRgH0X8LZqnBOii+F
7+GguDMENTlzU0XSYWEcGFH9V5PdYMehb0WgZeiqTchxRuQFmLjDhI4J5dkci8RmkLCwz4KyjfOi
S8Nkg20qh9otuAisfQTh4Qx2lC7x7BHgmuwy0w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
kXlkvzJI7Tq1glqNfjqmCb8YU69bhN9hH5OsWvFNj7VseyX6/5l9Mgif4B1r1LeKz06I27dmB9g7
AuHBFZ0bPN86mURBL/HK/dTOGyLYAveWeOIK1kqX56i4H9UNIUObEphcz9wdT0OgXHTPMxiIpJhT
1o5oYJW49mDsAv5yxe4FvPo6rFgZAiEo34vJGDxzz4//zJq0z+GxJNCibpLydZBWaJWRfsDUs9pm
1O6hS3KPIL5Evg1JOFt1uwKb1xEA08ETT+qYwg6zmFfwQbs6O7modRmBtEd1n9mrqsgCAviiLPtN
LUFiLdrywPt7LArLCRz4h5uHJxz/21Pj5m1VZtZq9nFmsbp6Lw/0RF1+nN8o+RIu+/tmu74xkL/8
nNEc9mEFy912OKP6WDP4Ajzg4gl9xhtaYA5eGkNB/43YjgGsmTe+L0dyxHIwa734JNMb5zC5dRtR
V4pCnWZKmnDJDXvMftedQzqQvdFwJg5hLxrHfkPD8LqiOwVck/Nt6QSF

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ADtaDIjUIR6zZBfz+lPRaDMdXcoufPACX4aSe06/DoTgIDvM+UOlm8rH20gKO3r8YdsuLtUh7rhz
ekJB22nBPUdbl3FvlGdQIgiCyJ8XgZYvvuOo9I765yKjFxQsFmQE0Ih86fqCqvYmRnsZkpk1uQ7v
JpqhWGBX6tLgYu/txP+ShnzFfkWGhj29JhYII0zqJMBCjGeM89F+mlH+X/YL5Q/fZYyh9Cr2CJx6
ofJpBZ1SPlXwgafXVi0QAUVuQEBmZYVn9Kze++tMEr6qv62ANq23LevYQfCsYKoY5iyf5U7jJ5Qx
eC9nG5Es4y6lz5giep7veaXdBFBHd7VuD56v4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zFwVPvNmX5sBruiGDSfENTp6EBfydwYKhxWi0YDKQ4j0gu6AMV8yJP6GXeJs/A9Zgb1UFE+sJifk
OngE9N2vVRp43pAVauHQf1hUkSWPDJuZ9yEQZbR7F3mmiBKu/Aehj7KcAjv07FWv46HzxRL9E2xx
gpDOzAyNSNubxORv7bVYUV0C4Fr+tZRA6douG4rxi56npPfzIAZjyU4wPvwabxrJ9L4ZRuZXciLk
lJGTIJZTH2uclPmuo57jlIXGo1ZtQZgRCDfn7W02AQ7MDKblx47m+E+sUKKYHZlvf30GkPcwlucZ
ZcUcGnYaRCZnrhwFl0qxxXn2pO15vG4MJXOHMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Lq86c/0SMuvdLuij6dbfI/ah4/50WGATVNRwXobLfbnZqWOhhEk3VDQATTxe7ZLrUauwrLuMoKhS
j4kqT2raqDijA51Tz7ee+F/MUKvyxGDJqfBi5JJX9y81LCXav7HpdRiPTy6w5O3tQoQbugh61D0B
oJBwNvL22Oi10e+Bu7H1yQvsbksxPAA8VE8HK+OJzZETk0PfHS2ySL5WXLQf7duD6CWmpWdLMrZQ
ojOqvNL31LsO1gZhssTk4RgyZUrZ3CboBbLWDxq2L/SsF5YiRIUPDTe17rRcrxa1y6LzMD/ve/nR
mptJOGxlUgLpJaPAA7jH3b+EQGlrHzHOsG8fFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51408)
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
