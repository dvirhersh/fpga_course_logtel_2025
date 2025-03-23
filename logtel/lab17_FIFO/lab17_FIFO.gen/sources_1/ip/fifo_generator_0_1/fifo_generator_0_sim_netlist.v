// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 17 19:37:13 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/logtel/lab17_FIFO/lab17_FIFO.gen/sources_1/ip/fifo_generator_0_1/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
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
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
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
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
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
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
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
  (* C_FAMILY = "artix7" *) 
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
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
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
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_11 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
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
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 89488)
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
