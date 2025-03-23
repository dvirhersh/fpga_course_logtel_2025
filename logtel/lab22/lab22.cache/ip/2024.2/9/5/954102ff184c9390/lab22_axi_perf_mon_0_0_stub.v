// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Mar 23 17:55:47 2025
// Host        : dvirhersh_comp running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ lab22_axi_perf_mon_0_0_stub.v
// Design      : lab22_axi_perf_mon_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "lab22_axi_perf_mon_0_0,axi_perf_mon_v5_0_35_top,{}" *) (* CORE_GENERATION_INFO = "lab22_axi_perf_mon_0_0,axi_perf_mon_v5_0_35_top,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_perf_mon,x_ipVersion=5.0,x_ipCoreRevision=35,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_INSTANCE=lab22_axi_perf_mon_0_0,C_LITE_ADDRESS_WIDTH=16,C_S_AXI_ADDR_WIDTH=16,C_S_AXI_DATA_WIDTH=32,C_S_AXI_PROTOCOL=AXI4LITE,C_S_AXI_ID_WIDTH=1,C_SUPPORT_ID_REFLECTION=0,C_ENABLE_ADVANCED=1,C_ENABLE_PROFILE=0,C_ENABLE_TRACE=0,C_EN_AXI_DEBUG=0,C_EN_TRIGGER=0,C_EN_WR_ADD_FLAG=1,C_EN_FIRST_WRITE_FLAG=1,C_EN_LAST_WRITE_FLAG=1,C_EN_RESPONSE_FLAG=1,C_EN_RD_ADD_FLAG=1,C_EN_FIRST_READ_FLAG=1,C_EN_LAST_READ_FLAG=1,C_EN_SW_REG_WR_FLAG=0,C_EN_EXT_EVENTS_FLAG=0,C_NUM_MONITOR_SLOTS=1,C_ENABLE_EVENT_COUNT=1,C_NUM_OF_COUNTERS=1,C_METRIC_COUNT_WIDTH=32,C_METRIC_COUNT_SCALE=1,C_GLOBAL_COUNT_WIDTH=32,C_HAVE_SAMPLED_METRIC_CNT=1,C_METRICS_SAMPLE_COUNT_WIDTH=32,C_AXI4LITE_CORE_CLK_ASYNC=0,C_SLOT_0_AXI_ADDR_WIDTH=32,C_SLOT_0_AXI_DATA_WIDTH=32,C_SLOT_0_AXI_ID_WIDTH=1,C_SLOT_0_AXI_PROTOCOL=AXI4,C_SLOT_0_AXIS_TDATA_WIDTH=32,C_SLOT_0_AXIS_TID_WIDTH=1,C_SLOT_0_AXIS_TDEST_WIDTH=1,C_SLOT_0_AXIS_TUSER_WIDTH=1,C_SLOT_0_FIFO_ENABLE=0,C_SLOT_1_AXI_ADDR_WIDTH=32,C_SLOT_1_AXI_DATA_WIDTH=32,C_SLOT_1_AXI_ID_WIDTH=1,C_SLOT_1_AXI_PROTOCOL=AXI4,C_SLOT_1_AXIS_TDATA_WIDTH=32,C_SLOT_1_AXIS_TID_WIDTH=1,C_SLOT_1_AXIS_TDEST_WIDTH=1,C_SLOT_1_AXIS_TUSER_WIDTH=1,C_SLOT_1_FIFO_ENABLE=1,C_SLOT_2_AXI_ADDR_WIDTH=32,C_SLOT_2_AXI_DATA_WIDTH=32,C_SLOT_2_AXI_ID_WIDTH=1,C_SLOT_2_AXI_PROTOCOL=AXI4,C_SLOT_2_AXIS_TDATA_WIDTH=32,C_SLOT_2_AXIS_TID_WIDTH=1,C_SLOT_2_AXIS_TDEST_WIDTH=1,C_SLOT_2_AXIS_TUSER_WIDTH=1,C_SLOT_2_FIFO_ENABLE=1,C_SLOT_3_AXI_ADDR_WIDTH=32,C_SLOT_3_AXI_DATA_WIDTH=32,C_SLOT_3_AXI_ID_WIDTH=1,C_SLOT_3_AXI_PROTOCOL=AXI4,C_SLOT_3_AXIS_TDATA_WIDTH=32,C_SLOT_3_AXIS_TID_WIDTH=1,C_SLOT_3_AXIS_TDEST_WIDTH=1,C_SLOT_3_AXIS_TUSER_WIDTH=1,C_SLOT_3_FIFO_ENABLE=1,C_SLOT_4_AXI_ADDR_WIDTH=32,C_SLOT_4_AXI_DATA_WIDTH=32,C_SLOT_4_AXI_ID_WIDTH=1,C_SLOT_4_AXI_PROTOCOL=AXI4,C_SLOT_4_AXIS_TDATA_WIDTH=32,C_SLOT_4_AXIS_TID_WIDTH=1,C_SLOT_4_AXIS_TDEST_WIDTH=1,C_SLOT_4_AXIS_TUSER_WIDTH=1,C_SLOT_4_FIFO_ENABLE=1,C_SLOT_5_AXI_ADDR_WIDTH=32,C_SLOT_5_AXI_DATA_WIDTH=32,C_SLOT_5_AXI_ID_WIDTH=1,C_SLOT_5_AXI_PROTOCOL=AXI4,C_SLOT_5_AXIS_TDATA_WIDTH=32,C_SLOT_5_AXIS_TID_WIDTH=1,C_SLOT_5_AXIS_TDEST_WIDTH=1,C_SLOT_5_AXIS_TUSER_WIDTH=1,C_SLOT_5_FIFO_ENABLE=1,C_SLOT_6_AXI_ADDR_WIDTH=32,C_SLOT_6_AXI_DATA_WIDTH=32,C_SLOT_6_AXI_ID_WIDTH=1,C_SLOT_6_AXI_PROTOCOL=AXI4,C_SLOT_6_AXIS_TDATA_WIDTH=32,C_SLOT_6_AXIS_TID_WIDTH=1,C_SLOT_6_AXIS_TDEST_WIDTH=1,C_SLOT_6_AXIS_TUSER_WIDTH=1,C_SLOT_6_FIFO_ENABLE=1,C_SLOT_7_AXI_ADDR_WIDTH=32,C_SLOT_7_AXI_DATA_WIDTH=32,C_SLOT_7_AXI_ID_WIDTH=1,C_SLOT_7_AXI_PROTOCOL=AXI4,C_SLOT_7_AXIS_TDATA_WIDTH=32,C_SLOT_7_AXIS_TID_WIDTH=1,C_SLOT_7_AXIS_TDEST_WIDTH=1,C_SLOT_7_AXIS_TUSER_WIDTH=1,C_SLOT_7_FIFO_ENABLE=1,C_SLOT_0_AXI_AWLEN=7,C_SLOT_1_AXI_AWLEN=7,C_SLOT_2_AXI_AWLEN=7,C_SLOT_3_AXI_AWLEN=7,C_SLOT_4_AXI_AWLEN=7,C_SLOT_5_AXI_AWLEN=7,C_SLOT_6_AXI_AWLEN=7,C_SLOT_7_AXI_AWLEN=7,C_SLOT_0_AXI_LOCK=0,C_SLOT_1_AXI_LOCK=0,C_SLOT_2_AXI_LOCK=0,C_SLOT_3_AXI_LOCK=0,C_SLOT_4_AXI_LOCK=0,C_SLOT_5_AXI_LOCK=0,C_SLOT_6_AXI_LOCK=0,C_SLOT_7_AXI_LOCK=0,C_REG_ALL_MONITOR_SIGNALS=0,C_EXT_EVENT0_FIFO_ENABLE=1,C_EXT_EVENT1_FIFO_ENABLE=1,C_EXT_EVENT2_FIFO_ENABLE=1,C_EXT_EVENT3_FIFO_ENABLE=1,C_EXT_EVENT4_FIFO_ENABLE=1,C_EXT_EVENT5_FIFO_ENABLE=1,C_EXT_EVENT6_FIFO_ENABLE=1,C_EXT_EVENT7_FIFO_ENABLE=1,C_ENABLE_EVENT_LOG=0,C_FIFO_AXIS_DEPTH=32,C_FIFO_AXIS_TDATA_WIDTH=56,C_AXIS_DWIDTH_ROUND_TO_32=64,C_FIFO_AXIS_TID_WIDTH=1,C_FIFO_AXIS_SYNC=0,C_SHOW_AXI_IDS=0,C_SHOW_AXI_LEN=0,C_SHOW_AXIS_TID=0,C_SHOW_AXIS_TDEST=0,C_SHOW_AXIS_TUSER=0,ENABLE_EXT_EVENTS=0,COUNTER_LOAD_VALUE=0x00000000,C_LOG_DATA_OFFLD=0,S_AXI_OFFLD_ID_WIDTH=1,C_S_AXI4_BASEADDR=0xFFFFFFFF,C_S_AXI4_HIGHADDR=0x00000000,C_EN_ALL_TRACE=1}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "axi_perf_mon_v5_0_35_top,Vivado 2024.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, slot_0_axi_aclk, slot_0_axi_aresetn, 
  slot_0_axi_awid, slot_0_axi_awaddr, slot_0_axi_awprot, slot_0_axi_awlen, 
  slot_0_axi_awsize, slot_0_axi_awburst, slot_0_axi_awcache, slot_0_axi_awlock, 
  slot_0_axi_awvalid, slot_0_axi_awready, slot_0_axi_wdata, slot_0_axi_wstrb, 
  slot_0_axi_wlast, slot_0_axi_wvalid, slot_0_axi_wready, slot_0_axi_bid, slot_0_axi_bresp, 
  slot_0_axi_bvalid, slot_0_axi_bready, slot_0_axi_arid, slot_0_axi_araddr, 
  slot_0_axi_arlen, slot_0_axi_arsize, slot_0_axi_arburst, slot_0_axi_arcache, 
  slot_0_axi_arprot, slot_0_axi_arlock, slot_0_axi_arvalid, slot_0_axi_arready, 
  slot_0_axi_rid, slot_0_axi_rdata, slot_0_axi_rresp, slot_0_axi_rlast, slot_0_axi_rvalid, 
  slot_0_axi_rready, capture_event, reset_event, core_aclk, core_aresetn, interrupt)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aresetn,s_axi_awaddr[15:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[15:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,slot_0_axi_aresetn,slot_0_axi_awid[0:0],slot_0_axi_awaddr[31:0],slot_0_axi_awprot[2:0],slot_0_axi_awlen[7:0],slot_0_axi_awsize[2:0],slot_0_axi_awburst[1:0],slot_0_axi_awcache[3:0],slot_0_axi_awlock[0:0],slot_0_axi_awvalid,slot_0_axi_awready,slot_0_axi_wdata[31:0],slot_0_axi_wstrb[3:0],slot_0_axi_wlast,slot_0_axi_wvalid,slot_0_axi_wready,slot_0_axi_bid[0:0],slot_0_axi_bresp[1:0],slot_0_axi_bvalid,slot_0_axi_bready,slot_0_axi_arid[0:0],slot_0_axi_araddr[31:0],slot_0_axi_arlen[7:0],slot_0_axi_arsize[2:0],slot_0_axi_arburst[1:0],slot_0_axi_arcache[3:0],slot_0_axi_arprot[2:0],slot_0_axi_arlock[0:0],slot_0_axi_arvalid,slot_0_axi_arready,slot_0_axi_rid[0:0],slot_0_axi_rdata[31:0],slot_0_axi_rresp[1:0],slot_0_axi_rlast,slot_0_axi_rvalid,slot_0_axi_rready,capture_event,reset_event,core_aresetn,interrupt" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */
/* synthesis syn_force_seq_prim="slot_0_axi_aclk" */
/* synthesis syn_force_seq_prim="core_aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN lab22_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN lab22_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [15:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [15:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 slot0_axi_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME slot0_axi_clk, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_0_AXI4LITE, ASSOCIATED_RESET slot_0_axi_aresetn, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN lab22_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input slot_0_axi_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SLOT0_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT0_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input slot_0_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 81247969, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN lab22_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]slot_0_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *) input [31:0]slot_0_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *) input [2:0]slot_0_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *) input [7:0]slot_0_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *) input [2:0]slot_0_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST" *) input [1:0]slot_0_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *) input [3:0]slot_0_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK" *) input [0:0]slot_0_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *) input slot_0_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *) input slot_0_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *) input [31:0]slot_0_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *) input [3:0]slot_0_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *) input slot_0_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *) input slot_0_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *) input slot_0_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID" *) input [0:0]slot_0_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *) input [1:0]slot_0_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *) input slot_0_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *) input slot_0_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID" *) input [0:0]slot_0_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *) input [31:0]slot_0_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *) input [7:0]slot_0_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *) input [2:0]slot_0_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST" *) input [1:0]slot_0_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *) input [3:0]slot_0_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *) input [2:0]slot_0_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK" *) input [0:0]slot_0_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *) input slot_0_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *) input slot_0_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID" *) input [0:0]slot_0_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *) input [31:0]slot_0_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *) input [1:0]slot_0_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *) input slot_0_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *) input slot_0_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *) input slot_0_axi_rready;
  input capture_event;
  input reset_event;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CORE_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CORE_ACLK, ASSOCIATED_RESET core_aresetn, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN lab22_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input core_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 CORE_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CORE_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input core_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
endmodule
