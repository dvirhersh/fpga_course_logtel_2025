// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr  1 12:31:36 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA_2025/logtel/lab17_FIFO/lab17_FIFO.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
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
