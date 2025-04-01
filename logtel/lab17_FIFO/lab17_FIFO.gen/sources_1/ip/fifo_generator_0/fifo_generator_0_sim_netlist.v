// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr  1 13:33:43 2025
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 90480)
`pragma protect data_block
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
jyy2r59abkmp5GMU5FxE8RJ39ied
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
