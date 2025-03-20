// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon May 30 13:22:42 2022
// Host        : xilinx running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/xilinx/training/Constr_Wizard/lab/KCU105/verilog/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module char_fifo
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
  char_fifo_fifo_generator_v13_2_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51312)
`pragma protect data_block
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
6FdwOwSUCUafxNdj
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
