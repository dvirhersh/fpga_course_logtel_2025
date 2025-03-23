// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 09:54:05 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
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
  wire rst;
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
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
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
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2041" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2040" *) 
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
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
md0AksSCeI3fOZtF7nrw91OgSzGoACBon4GH9ENTzaI4jlg22H1uTtXayX2Kz+g4ZH2j52rtMH8H
Xc49HVcThMzO1cRXu+SkL59MRQ87klGca4XtjrTtunJoQ+jyOKRwRBeIMHUdntbk2T1kbXHf9KkB
bNYGEMqSrbiDt7IJUx8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r6CzxR0T3O2wvZRQe25aX3/CWOx/3d/3vJvvS/XsrKr7v852GNQNqCBn+PKsunj0Ncep8DqHtVie
BE6tKIqZW+3txAUjrhSri5liuFWSnzAk+Drsb4RnvIy7BeOdAK6NhVhn8ZyplkJSHVwaGjN8gtPE
LeWEHPHf5qLnzqGKV7B6oIC7POGV6Vamos1p2z1xv2cEw4udvmtZ5EjzeyCMf+omtxEPxhPi6Z2h
ENlGOmuPMkWGMjP6HQCZ1Mi0uiST/zDo29UDIMmOGcsDMe97imU/z2ekKTPXXwjcV+9q+4zHRgJV
6JWWgjU9cztV5OMaEfpBgRBWae/ijWpPZaGuFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
glFrHilvyO7nq7/OYhnyb9uU9d8UNGJruNnkmJWuTpgvyCDmtx7iVKPBPe1Bj9jUDT/HM9AGxvu0
g7b4TuMdVkegkVPeHhw31IW0HoTL8wPnrLEpzDVK+B7xl953hPKPe0vn+0EQh2UKeL5K8VLxmsSv
gbpEeToeR90yzlSUzDE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D4uBhES8Mkd0GCwY2aQOmEzTqz6hO5B9Wa2oyfVBEODkWyt+AHkIXn4tuBN05FcP2FVmgtVbvZX5
K6iog51IoPw5tv+pM5x8+bQBX/aZpf0c4to3qiX6RZuITpuSUWq/7sqQDqtMqDWOFMMnUBpTX+qI
t61NvyIZcfqRWo4yvIUV2Zh1etqYKDlhqRnMoBZKMeHFpVsp19nU4sf5Km7sSlPQ08vYD8qtJqgJ
ZDYC2KWFTHsnT+5anHvc80FgHt4zBHpPrGprgpltQmVmMZxUD6NRC9EvvXf+pBhgfwPHHePWIKUn
elLld/HEVeFw76SlVV8i4LsS4KWWOM+KmMprEg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EW9gHDqS12MVhy+y/xQVscLd4qOim+cNTepYzlas7WzqDJogZthddOuGjpm3a3fS/cMbF/h0O1Hb
Wjow664GIga0y96lkbkcJ3W8x/IGAsvgyrYT6ScsFhyq7tSd1HjvRG81BhhGM1mmpxfzh0Uqbfso
q+uVKPUmPnbQ/Gdu9YRoxmYVJdmUTpXJ5waYOdib8WNMPLdDfIo/FGrYrx2zYQBtpU5DwwVUTMrB
ZasEyxOj++icI5k5lR3Tx+3gdCFTy4XYQfcj2COm4gnVZ8FN/X1/+0ywsVGAc/OKL+mjMYH3NNH3
zfDO/TpYft+HaVl+CfF/U6IgJJeJs4qI4gB4FA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Myfv5Skg7QCxlNBoFiSTLAeIRYS0J0ArRihYk7dGAHZWAFlxJLgqo51W9P9zTVBurMJjZLtonoDJ
19RfxQj5GqhqN1A20s8xOFfLq6+uDG/V39xQFY32O626Kh4MMlH07hNJL5u1NjJWg1yze0XdFEe9
oLwKQz5lSKGMIh+VPXDuCGhShS+KhHwGEdS0lmA/IHPFNlRG1LsK0zQmUiNkG4kQ5OEVkQgvknNC
B6++ZDIYlT9WbZPs5giRY0zAhUepLPaO+N9F3fIBKVGw4ejbZOt0kXKixF86DDfLmF2+dov+PrTX
1MXJaea3YoQdR2c2MSHAk/TTkzg9ayjvxKaXpg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ks9l+EPHXfDNnWd0exs1j0Q9iSNYaIExwQnpsi8TFJimjPtOkX050wFklsLBM83WyfuD+F2KLNnZ
Jg/aiIiGe9o424jOiEFdnAJuzrD0QL9WmhQ3W9iRJ7uPhha6NfR2WGTCCM4TpN8rTKLQDKxenVfv
6x83rnL5NQxvpp9cQh3zMma73qoEJjhTR9MD9cwA4VeKq2u/R0iTWBplX81vYFd9TW2qW5/Qyzzj
A0+pXzczcJKdggV8h8bYcO+PRC3t2XrufhnjvhjMLG2tPHSMW/soDH/v8KorXyWe5N/q12fo5auN
SXr3olNuB5kpiVS3mJAPV0z4UsFfu2A4hLH7MQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e3AJKDEM9byJqwpkFZqMIMKMQPOR1VrLFkshor7HR0C+ol7Uv3XTGyvQrINdBEArX0eazF0cHWjC
9B4BhDnysAhT6SENcNHIYHUGQE7uiF7zgL7WhCxClwEnIAVj+PU9FmqlvbreEikHQfbeIDPyCLii
NAS97RDxWki/MfR33zvZX4eEolA/oTyRzr1MagBs7LN1UXyGPvnze8JzHxA3zHVedIIrBrZxkfoj
Loqe6tLYRlC45h1Yr3Wa2gh3LJGtOSji+m7E9Xua/pPh8A/CAD+TNBa5d/X7C3a4AWl2bYTi7HBY
Y8vaIjHiSosru5F2UOEQG9xekCbNRK1Apew1UIvntzCmDMMhlAgB78AUOE2YEWKd9GOl+aTZjMS3
GxAYzrtv/bDRkPOYbcG0SNT9xf+izRM3lX1E2vN3i3uU2Qrh73fjU1lk3PIe/A/H56UrNPDnGT9W
TvlJR47bLDtGyX2+dLvfTaZGRP8aepePOXXLIlvqwCJSMVhCB/hIbz7E

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TfuXOFQtE7YhtTL4354NvKETmBCLSVnb+pbrT8gtzjU7pERE1Hu2ZVzHgVQXwt5RvwG1R/z2je+U
PzszCBhPNqUaXEhuJ0A/q0S/vvOOa6h6tW9MhiB3gnuqEFVWz5pbHZNfgrwh2gT8XyqLI8f1CoJM
xpcB2TbREV/kAAFMxIfH1Dg0KSO2dCeVV1na6N0AiMOQPvXZOB7QpXwNDbYfarWLtF0/l0hi4Fxu
Kgho2ggrUhajP0aKlrCQ9mLsqOyqJELeJldeD+vuUUqhYq4K4RrwtQF+B67lYc4AjznwQ92tUvYJ
ZspFoHJEScNvdFoHFTA2TQ2KToepsqXRiOCL1A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tmfbBpNtCYJ7zsgNxUzw7Dvn+hNn2PPUBeRfXSci/q2/OcQeF/eAAML8YIN1V+AEoAqZTE2/xRQz
+6zwVOLyAOLynMIBQ7EG7xReDJ9kEEiBjnMGO6NWdAsa/VcreVHrLD1PFtA1+WoVe6yOvNGK+Nbh
HjPkXyycyP6RQ4Rx/PtTxw31LOFVezddSgRlaKHTprKTP4LbjPG//onRBg3fAl8zwU1wYYNLzYCX
jwY7xfMkQyhUSpV2Tx3seqy2IYVl8jjxynFxfyxulvrJiqmc6aaKKBdkoOVbJ5eO2sCXFJB1mKEU
WR2Ee2ozisABzk9IcGILewCW7ghdLP82CRZv4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GfDCxx9db4ripD5mvQy16BVlwPYfeC7ZobZXaX1my6WUDiKwd69J5SreUXKYD9lvZfI7djLgHkYm
5G247T4NX7zoBwc88bUD+tNvGNmzWFfSVVZqu8hjgd31lZXjy9uYdXA/gsE+T+JqEfRYdV8YoGgm
sREyiJjWRPDbx6kc8um8vlAK/Rjwz0EGVkGUoi/+UvxcnjG1PqCl7GSMOQ3gFMEOaxIflShnF2/c
//ioADxl3WjUGyTstMK54XlP8G1Hk95sSe/7Y+SbaIyoG8t6gGDimDJNuGs4JjDUi1V7Gxfzxk9+
O2J++9clyLkMZ3rRyxSvR+Xyrmn3YxjVC68GXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53152)
`pragma protect data_block
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
gA9XDQHOiTJjGsDdvdplSrL0dpulN2ki+2qyiQ==
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
