// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon May 30 13:22:41 2022
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
