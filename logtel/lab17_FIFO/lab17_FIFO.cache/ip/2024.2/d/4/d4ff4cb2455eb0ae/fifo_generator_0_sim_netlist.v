// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Mar 17 19:37:07 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_11 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 89792)
`pragma protect data_block
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
TO5unPJqvoEsOnH7Q0a3O9g=
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
