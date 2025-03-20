// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 09:54:06 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/FPGA/xilinx/training/Constr_Wizard/lab/KCU105/vhdl/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module char_fifo
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
  char_fifo_fifo_generator_v13_2_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53040)
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
