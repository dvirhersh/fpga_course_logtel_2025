// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr  1 12:31:34 2025
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
hnhzkCL61omLkFkTpvab4qw=
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
