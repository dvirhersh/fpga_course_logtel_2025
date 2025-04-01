// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr  1 13:33:41 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 90768)
`pragma protect data_block
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
Opyh4+ra2OUID+TYcfn6mugyRu+sP3+W
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
