-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Mar 23 17:23:10 2025
-- Host        : dvirhersh_comp running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/FPGA/logtel/lab22_axi_monitor/lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_perf_mon_0_0/lab22_axi_monitor_axi_perf_mon_0_0_stub.vhdl
-- Design      : lab22_axi_monitor_axi_perf_mon_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab22_axi_monitor_axi_perf_mon_0_0 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    slot_0_axi_aclk : in STD_LOGIC;
    slot_0_axi_aresetn : in STD_LOGIC;
    slot_0_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_awvalid : in STD_LOGIC;
    slot_0_axi_awready : in STD_LOGIC;
    slot_0_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_wlast : in STD_LOGIC;
    slot_0_axi_wvalid : in STD_LOGIC;
    slot_0_axi_wready : in STD_LOGIC;
    slot_0_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_bvalid : in STD_LOGIC;
    slot_0_axi_bready : in STD_LOGIC;
    slot_0_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_arvalid : in STD_LOGIC;
    slot_0_axi_arready : in STD_LOGIC;
    slot_0_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_rlast : in STD_LOGIC;
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    capture_event : in STD_LOGIC;
    reset_event : in STD_LOGIC;
    core_aclk : in STD_LOGIC;
    core_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of lab22_axi_monitor_axi_perf_mon_0_0 : entity is "lab22_axi_monitor_axi_perf_mon_0_0,axi_perf_mon_v5_0_35_top,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of lab22_axi_monitor_axi_perf_mon_0_0 : entity is "lab22_axi_monitor_axi_perf_mon_0_0,axi_perf_mon_v5_0_35_top,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_perf_mon,x_ipVersion=5.0,x_ipCoreRevision=35,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_INSTANCE=lab22_axi_monitor_axi_perf_mon_0_0,C_LITE_ADDRESS_WIDTH=16,C_S_AXI_ADDR_WIDTH=16,C_S_AXI_DATA_WIDTH=32,C_S_AXI_PROTOCOL=AXI4LITE,C_S_AXI_ID_WIDTH=1,C_SUPPORT_ID_REFLECTION=0,C_ENABLE_ADVANCED=1,C_ENABLE_PROFILE=0,C_ENABLE_TRACE=0,C_EN_AXI_DEBUG=0,C_EN_TRIGGER=0,C_EN_WR_ADD_FLAG=1,C_EN_FIRST_WRITE_FLAG=1,C_EN_LAST_WRITE_FLAG=1,C_EN_RESPONSE_FLAG=1,C_EN_RD_ADD_FLAG=1,C_EN_FIRST_READ_FLAG=1,C_EN_LAST_READ_FLAG=1,C_EN_SW_REG_WR_FLAG=0,C_EN_EXT_EVENTS_FLAG=0,C_NUM_MONITOR_SLOTS=1,C_ENABLE_EVENT_COUNT=1,C_NUM_OF_COUNTERS=1,C_METRIC_COUNT_WIDTH=32,C_METRIC_COUNT_SCALE=1,C_GLOBAL_COUNT_WIDTH=32,C_HAVE_SAMPLED_METRIC_CNT=1,C_METRICS_SAMPLE_COUNT_WIDTH=32,C_AXI4LITE_CORE_CLK_ASYNC=0,C_SLOT_0_AXI_ADDR_WIDTH=32,C_SLOT_0_AXI_DATA_WIDTH=32,C_SLOT_0_AXI_ID_WIDTH=1,C_SLOT_0_AXI_PROTOCOL=AXI4,C_SLOT_0_AXIS_TDATA_WIDTH=32,C_SLOT_0_AXIS_TID_WIDTH=1,C_SLOT_0_AXIS_TDEST_WIDTH=1,C_SLOT_0_AXIS_TUSER_WIDTH=1,C_SLOT_0_FIFO_ENABLE=0,C_SLOT_1_AXI_ADDR_WIDTH=32,C_SLOT_1_AXI_DATA_WIDTH=32,C_SLOT_1_AXI_ID_WIDTH=1,C_SLOT_1_AXI_PROTOCOL=AXI4,C_SLOT_1_AXIS_TDATA_WIDTH=32,C_SLOT_1_AXIS_TID_WIDTH=1,C_SLOT_1_AXIS_TDEST_WIDTH=1,C_SLOT_1_AXIS_TUSER_WIDTH=1,C_SLOT_1_FIFO_ENABLE=1,C_SLOT_2_AXI_ADDR_WIDTH=32,C_SLOT_2_AXI_DATA_WIDTH=32,C_SLOT_2_AXI_ID_WIDTH=1,C_SLOT_2_AXI_PROTOCOL=AXI4,C_SLOT_2_AXIS_TDATA_WIDTH=32,C_SLOT_2_AXIS_TID_WIDTH=1,C_SLOT_2_AXIS_TDEST_WIDTH=1,C_SLOT_2_AXIS_TUSER_WIDTH=1,C_SLOT_2_FIFO_ENABLE=1,C_SLOT_3_AXI_ADDR_WIDTH=32,C_SLOT_3_AXI_DATA_WIDTH=32,C_SLOT_3_AXI_ID_WIDTH=1,C_SLOT_3_AXI_PROTOCOL=AXI4,C_SLOT_3_AXIS_TDATA_WIDTH=32,C_SLOT_3_AXIS_TID_WIDTH=1,C_SLOT_3_AXIS_TDEST_WIDTH=1,C_SLOT_3_AXIS_TUSER_WIDTH=1,C_SLOT_3_FIFO_ENABLE=1,C_SLOT_4_AXI_ADDR_WIDTH=32,C_SLOT_4_AXI_DATA_WIDTH=32,C_SLOT_4_AXI_ID_WIDTH=1,C_SLOT_4_AXI_PROTOCOL=AXI4,C_SLOT_4_AXIS_TDATA_WIDTH=32,C_SLOT_4_AXIS_TID_WIDTH=1,C_SLOT_4_AXIS_TDEST_WIDTH=1,C_SLOT_4_AXIS_TUSER_WIDTH=1,C_SLOT_4_FIFO_ENABLE=1,C_SLOT_5_AXI_ADDR_WIDTH=32,C_SLOT_5_AXI_DATA_WIDTH=32,C_SLOT_5_AXI_ID_WIDTH=1,C_SLOT_5_AXI_PROTOCOL=AXI4,C_SLOT_5_AXIS_TDATA_WIDTH=32,C_SLOT_5_AXIS_TID_WIDTH=1,C_SLOT_5_AXIS_TDEST_WIDTH=1,C_SLOT_5_AXIS_TUSER_WIDTH=1,C_SLOT_5_FIFO_ENABLE=1,C_SLOT_6_AXI_ADDR_WIDTH=32,C_SLOT_6_AXI_DATA_WIDTH=32,C_SLOT_6_AXI_ID_WIDTH=1,C_SLOT_6_AXI_PROTOCOL=AXI4,C_SLOT_6_AXIS_TDATA_WIDTH=32,C_SLOT_6_AXIS_TID_WIDTH=1,C_SLOT_6_AXIS_TDEST_WIDTH=1,C_SLOT_6_AXIS_TUSER_WIDTH=1,C_SLOT_6_FIFO_ENABLE=1,C_SLOT_7_AXI_ADDR_WIDTH=32,C_SLOT_7_AXI_DATA_WIDTH=32,C_SLOT_7_AXI_ID_WIDTH=1,C_SLOT_7_AXI_PROTOCOL=AXI4,C_SLOT_7_AXIS_TDATA_WIDTH=32,C_SLOT_7_AXIS_TID_WIDTH=1,C_SLOT_7_AXIS_TDEST_WIDTH=1,C_SLOT_7_AXIS_TUSER_WIDTH=1,C_SLOT_7_FIFO_ENABLE=1,C_SLOT_0_AXI_AWLEN=7,C_SLOT_1_AXI_AWLEN=7,C_SLOT_2_AXI_AWLEN=7,C_SLOT_3_AXI_AWLEN=7,C_SLOT_4_AXI_AWLEN=7,C_SLOT_5_AXI_AWLEN=7,C_SLOT_6_AXI_AWLEN=7,C_SLOT_7_AXI_AWLEN=7,C_SLOT_0_AXI_LOCK=0,C_SLOT_1_AXI_LOCK=0,C_SLOT_2_AXI_LOCK=0,C_SLOT_3_AXI_LOCK=0,C_SLOT_4_AXI_LOCK=0,C_SLOT_5_AXI_LOCK=0,C_SLOT_6_AXI_LOCK=0,C_SLOT_7_AXI_LOCK=0,C_REG_ALL_MONITOR_SIGNALS=0,C_EXT_EVENT0_FIFO_ENABLE=1,C_EXT_EVENT1_FIFO_ENABLE=1,C_EXT_EVENT2_FIFO_ENABLE=1,C_EXT_EVENT3_FIFO_ENABLE=1,C_EXT_EVENT4_FIFO_ENABLE=1,C_EXT_EVENT5_FIFO_ENABLE=1,C_EXT_EVENT6_FIFO_ENABLE=1,C_EXT_EVENT7_FIFO_ENABLE=1,C_ENABLE_EVENT_LOG=0,C_FIFO_AXIS_DEPTH=32,C_FIFO_AXIS_TDATA_WIDTH=56,C_AXIS_DWIDTH_ROUND_TO_32=64,C_FIFO_AXIS_TID_WIDTH=1,C_FIFO_AXIS_SYNC=0,C_SHOW_AXI_IDS=0,C_SHOW_AXI_LEN=0,C_SHOW_AXIS_TID=0,C_SHOW_AXIS_TDEST=0,C_SHOW_AXIS_TUSER=0,ENABLE_EXT_EVENTS=0,COUNTER_LOAD_VALUE=0x00000000,C_LOG_DATA_OFFLD=0,S_AXI_OFFLD_ID_WIDTH=1,C_S_AXI4_BASEADDR=0xFFFFFFFF,C_S_AXI4_HIGHADDR=0x00000000,C_EN_ALL_TRACE=1}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of lab22_axi_monitor_axi_perf_mon_0_0 : entity is "yes";
end lab22_axi_monitor_axi_perf_mon_0_0;

architecture stub of lab22_axi_monitor_axi_perf_mon_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[15:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[15:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,slot_0_axi_aclk,slot_0_axi_aresetn,slot_0_axi_awid[0:0],slot_0_axi_awaddr[31:0],slot_0_axi_awprot[2:0],slot_0_axi_awlen[7:0],slot_0_axi_awsize[2:0],slot_0_axi_awburst[1:0],slot_0_axi_awcache[3:0],slot_0_axi_awlock[0:0],slot_0_axi_awvalid,slot_0_axi_awready,slot_0_axi_wdata[31:0],slot_0_axi_wstrb[3:0],slot_0_axi_wlast,slot_0_axi_wvalid,slot_0_axi_wready,slot_0_axi_bid[0:0],slot_0_axi_bresp[1:0],slot_0_axi_bvalid,slot_0_axi_bready,slot_0_axi_arid[0:0],slot_0_axi_araddr[31:0],slot_0_axi_arlen[7:0],slot_0_axi_arsize[2:0],slot_0_axi_arburst[1:0],slot_0_axi_arcache[3:0],slot_0_axi_arprot[2:0],slot_0_axi_arlock[0:0],slot_0_axi_arvalid,slot_0_axi_arready,slot_0_axi_rid[0:0],slot_0_axi_rdata[31:0],slot_0_axi_rresp[1:0],slot_0_axi_rlast,slot_0_axi_rvalid,slot_0_axi_rready,capture_event,reset_event,core_aclk,core_aresetn,interrupt";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN lab22_axi_monitor_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 81247969, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN lab22_axi_monitor_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of slot_0_axi_aclk : signal is "xilinx.com:signal:clock:1.0 slot0_axi_clk CLK";
  attribute X_INTERFACE_MODE of slot_0_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of slot_0_axi_aclk : signal is "XIL_INTERFACENAME slot0_axi_clk, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_0_AXI4LITE, ASSOCIATED_RESET slot_0_axi_aresetn, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN lab22_axi_monitor_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of slot_0_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 SLOT0_AXI_RST RST";
  attribute X_INTERFACE_MODE of slot_0_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of slot_0_axi_aresetn : signal is "XIL_INTERFACENAME SLOT0_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of slot_0_axi_awid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID";
  attribute X_INTERFACE_MODE of slot_0_axi_awid : signal is "monitor slave";
  attribute X_INTERFACE_PARAMETER of slot_0_axi_awid : signal is "XIL_INTERFACENAME SLOT_0_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 81247969, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN lab22_axi_monitor_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of slot_0_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR";
  attribute X_INTERFACE_INFO of slot_0_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT";
  attribute X_INTERFACE_INFO of slot_0_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN";
  attribute X_INTERFACE_INFO of slot_0_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE";
  attribute X_INTERFACE_INFO of slot_0_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST";
  attribute X_INTERFACE_INFO of slot_0_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE";
  attribute X_INTERFACE_INFO of slot_0_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK";
  attribute X_INTERFACE_INFO of slot_0_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY";
  attribute X_INTERFACE_INFO of slot_0_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA";
  attribute X_INTERFACE_INFO of slot_0_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB";
  attribute X_INTERFACE_INFO of slot_0_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST";
  attribute X_INTERFACE_INFO of slot_0_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY";
  attribute X_INTERFACE_INFO of slot_0_axi_bid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID";
  attribute X_INTERFACE_INFO of slot_0_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP";
  attribute X_INTERFACE_INFO of slot_0_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY";
  attribute X_INTERFACE_INFO of slot_0_axi_arid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID";
  attribute X_INTERFACE_INFO of slot_0_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR";
  attribute X_INTERFACE_INFO of slot_0_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN";
  attribute X_INTERFACE_INFO of slot_0_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE";
  attribute X_INTERFACE_INFO of slot_0_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST";
  attribute X_INTERFACE_INFO of slot_0_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE";
  attribute X_INTERFACE_INFO of slot_0_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT";
  attribute X_INTERFACE_INFO of slot_0_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK";
  attribute X_INTERFACE_INFO of slot_0_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY";
  attribute X_INTERFACE_INFO of slot_0_axi_rid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID";
  attribute X_INTERFACE_INFO of slot_0_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA";
  attribute X_INTERFACE_INFO of slot_0_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP";
  attribute X_INTERFACE_INFO of slot_0_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST";
  attribute X_INTERFACE_INFO of slot_0_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID";
  attribute X_INTERFACE_INFO of slot_0_axi_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY";
  attribute X_INTERFACE_INFO of core_aclk : signal is "xilinx.com:signal:clock:1.0 CORE_ACLK CLK";
  attribute X_INTERFACE_MODE of core_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of core_aclk : signal is "XIL_INTERFACENAME CORE_ACLK, ASSOCIATED_RESET core_aresetn, FREQ_HZ 81247969, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN lab22_axi_monitor_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of core_aresetn : signal is "xilinx.com:signal:reset:1.0 CORE_ARESETN RST";
  attribute X_INTERFACE_MODE of core_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of core_aresetn : signal is "XIL_INTERFACENAME CORE_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME INTR, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "axi_perf_mon_v5_0_35_top,Vivado 2024.2";
begin
end;
