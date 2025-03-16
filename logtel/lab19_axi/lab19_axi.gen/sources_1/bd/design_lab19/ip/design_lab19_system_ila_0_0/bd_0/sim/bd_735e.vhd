--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_735e.bd
--Design : bd_735e
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_735e is
  port (
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_735e : entity is "bd_735e,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_735e,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_735e : entity is "design_lab19_system_ila_0_0.hwdef";
end bd_735e;

architecture STRUCTURE of bd_735e is
  component bd_735e_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe21 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe24 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe27 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_735e_ila_lib_0;
  component bd_735e_g_inst_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_slot_0_axi_b_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_r_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_aw_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_ar_cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
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
    slot_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_bvalid : in STD_LOGIC;
    slot_0_axi_bready : in STD_LOGIC;
    slot_0_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    slot_0_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    slot_0_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    slot_0_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    slot_0_axi_arvalid : in STD_LOGIC;
    slot_0_axi_arready : in STD_LOGIC;
    slot_0_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slot_0_axi_rlast : in STD_LOGIC;
    slot_0_axi_rvalid : in STD_LOGIC;
    slot_0_axi_rready : in STD_LOGIC;
    m_slot_0_axi_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_slot_0_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_0_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_0_axi_awvalid : out STD_LOGIC;
    m_slot_0_axi_awready : out STD_LOGIC;
    m_slot_0_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axi_wlast : out STD_LOGIC;
    m_slot_0_axi_wvalid : out STD_LOGIC;
    m_slot_0_axi_wready : out STD_LOGIC;
    m_slot_0_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_bvalid : out STD_LOGIC;
    m_slot_0_axi_bready : out STD_LOGIC;
    m_slot_0_axi_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_slot_0_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_slot_0_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_slot_0_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_0_axi_arvalid : out STD_LOGIC;
    m_slot_0_axi_arready : out STD_LOGIC;
    m_slot_0_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_slot_0_axi_rlast : out STD_LOGIC;
    m_slot_0_axi_rvalid : out STD_LOGIC;
    m_slot_0_axi_rready : out STD_LOGIC;
    slot_0_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component bd_735e_g_inst_0;
  component bd_735e_slot_0_aw_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_735e_slot_0_aw_0;
  component bd_735e_slot_0_w_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_735e_slot_0_w_0;
  component bd_735e_slot_0_b_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_735e_slot_0_b_0;
  component bd_735e_slot_0_ar_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component bd_735e_slot_0_ar_0;
  component bd_735e_slot_0_r_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_735e_slot_0_r_0;
  signal net_slot_0_axi_ar_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_ar_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_araddr : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal net_slot_0_axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_arcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axi_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_0_axi_arlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_0_axi_arprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_arqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axi_arready : STD_LOGIC;
  signal net_slot_0_axi_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_arvalid : STD_LOGIC;
  signal net_slot_0_axi_aw_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_aw_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_awaddr : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal net_slot_0_axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_awcache : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axi_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal net_slot_0_axi_awlock : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_0_axi_awprot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_awqos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axi_awready : STD_LOGIC;
  signal net_slot_0_axi_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_awvalid : STD_LOGIC;
  signal net_slot_0_axi_b_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_b_ctrl : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_bready : STD_LOGIC;
  signal net_slot_0_axi_bresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_bvalid : STD_LOGIC;
  signal net_slot_0_axi_r_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_r_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axi_rlast : STD_LOGIC;
  signal net_slot_0_axi_rready : STD_LOGIC;
  signal net_slot_0_axi_rresp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal net_slot_0_axi_rvalid : STD_LOGIC;
  signal net_slot_0_axi_w_ctrl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal net_slot_0_axi_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axi_wlast : STD_LOGIC;
  signal net_slot_0_axi_wready : STD_LOGIC;
  signal net_slot_0_axi_wstrb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_0_axi_wvalid : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN /clk_wiz_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of SLOT_0_AXI_araddr : signal is "Monitor SlaveType";
  attribute X_INTERFACE_PARAMETER of SLOT_0_AXI_araddr : signal is "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 13, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN /clk_wiz_clk_out1, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARQOS";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWQOS";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA";
  attribute X_INTERFACE_INFO of SLOT_0_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB";
begin
g_inst: component bd_735e_g_inst_0
     port map (
      aclk => clk,
      aresetn => resetn,
      m_slot_0_axi_ar_cnt(1 downto 0) => net_slot_0_axi_ar_cnt(1 downto 0),
      m_slot_0_axi_araddr(12 downto 0) => net_slot_0_axi_araddr(12 downto 0),
      m_slot_0_axi_arburst(1 downto 0) => net_slot_0_axi_arburst(1 downto 0),
      m_slot_0_axi_arcache(3 downto 0) => net_slot_0_axi_arcache(3 downto 0),
      m_slot_0_axi_arlen(7 downto 0) => net_slot_0_axi_arlen(7 downto 0),
      m_slot_0_axi_arlock(0) => net_slot_0_axi_arlock(0),
      m_slot_0_axi_arprot(2 downto 0) => net_slot_0_axi_arprot(2 downto 0),
      m_slot_0_axi_arqos(3 downto 0) => net_slot_0_axi_arqos(3 downto 0),
      m_slot_0_axi_arready => net_slot_0_axi_arready,
      m_slot_0_axi_arsize(2 downto 0) => net_slot_0_axi_arsize(2 downto 0),
      m_slot_0_axi_arvalid => net_slot_0_axi_arvalid,
      m_slot_0_axi_aw_cnt(1 downto 0) => net_slot_0_axi_aw_cnt(1 downto 0),
      m_slot_0_axi_awaddr(12 downto 0) => net_slot_0_axi_awaddr(12 downto 0),
      m_slot_0_axi_awburst(1 downto 0) => net_slot_0_axi_awburst(1 downto 0),
      m_slot_0_axi_awcache(3 downto 0) => net_slot_0_axi_awcache(3 downto 0),
      m_slot_0_axi_awlen(7 downto 0) => net_slot_0_axi_awlen(7 downto 0),
      m_slot_0_axi_awlock(0) => net_slot_0_axi_awlock(0),
      m_slot_0_axi_awprot(2 downto 0) => net_slot_0_axi_awprot(2 downto 0),
      m_slot_0_axi_awqos(3 downto 0) => net_slot_0_axi_awqos(3 downto 0),
      m_slot_0_axi_awready => net_slot_0_axi_awready,
      m_slot_0_axi_awsize(2 downto 0) => net_slot_0_axi_awsize(2 downto 0),
      m_slot_0_axi_awvalid => net_slot_0_axi_awvalid,
      m_slot_0_axi_b_cnt(1 downto 0) => net_slot_0_axi_b_cnt(1 downto 0),
      m_slot_0_axi_bready => net_slot_0_axi_bready,
      m_slot_0_axi_bresp(1 downto 0) => net_slot_0_axi_bresp(1 downto 0),
      m_slot_0_axi_bvalid => net_slot_0_axi_bvalid,
      m_slot_0_axi_r_cnt(1 downto 0) => net_slot_0_axi_r_cnt(1 downto 0),
      m_slot_0_axi_rdata(31 downto 0) => net_slot_0_axi_rdata(31 downto 0),
      m_slot_0_axi_rlast => net_slot_0_axi_rlast,
      m_slot_0_axi_rready => net_slot_0_axi_rready,
      m_slot_0_axi_rresp(1 downto 0) => net_slot_0_axi_rresp(1 downto 0),
      m_slot_0_axi_rvalid => net_slot_0_axi_rvalid,
      m_slot_0_axi_wdata(31 downto 0) => net_slot_0_axi_wdata(31 downto 0),
      m_slot_0_axi_wlast => net_slot_0_axi_wlast,
      m_slot_0_axi_wready => net_slot_0_axi_wready,
      m_slot_0_axi_wstrb(3 downto 0) => net_slot_0_axi_wstrb(3 downto 0),
      m_slot_0_axi_wvalid => net_slot_0_axi_wvalid,
      slot_0_axi_araddr(12 downto 0) => SLOT_0_AXI_araddr(12 downto 0),
      slot_0_axi_arburst(1 downto 0) => SLOT_0_AXI_arburst(1 downto 0),
      slot_0_axi_arcache(3 downto 0) => SLOT_0_AXI_arcache(3 downto 0),
      slot_0_axi_arlen(7 downto 0) => SLOT_0_AXI_arlen(7 downto 0),
      slot_0_axi_arlock(0) => SLOT_0_AXI_arlock(0),
      slot_0_axi_arprot(2 downto 0) => SLOT_0_AXI_arprot(2 downto 0),
      slot_0_axi_arqos(3 downto 0) => SLOT_0_AXI_arqos(3 downto 0),
      slot_0_axi_arready => SLOT_0_AXI_arready,
      slot_0_axi_arsize(2 downto 0) => SLOT_0_AXI_arsize(2 downto 0),
      slot_0_axi_arvalid => SLOT_0_AXI_arvalid,
      slot_0_axi_awaddr(12 downto 0) => SLOT_0_AXI_awaddr(12 downto 0),
      slot_0_axi_awburst(1 downto 0) => SLOT_0_AXI_awburst(1 downto 0),
      slot_0_axi_awcache(3 downto 0) => SLOT_0_AXI_awcache(3 downto 0),
      slot_0_axi_awlen(7 downto 0) => SLOT_0_AXI_awlen(7 downto 0),
      slot_0_axi_awlock(0) => SLOT_0_AXI_awlock(0),
      slot_0_axi_awprot(2 downto 0) => SLOT_0_AXI_awprot(2 downto 0),
      slot_0_axi_awqos(3 downto 0) => SLOT_0_AXI_awqos(3 downto 0),
      slot_0_axi_awready => SLOT_0_AXI_awready,
      slot_0_axi_awsize(2 downto 0) => SLOT_0_AXI_awsize(2 downto 0),
      slot_0_axi_awvalid => SLOT_0_AXI_awvalid,
      slot_0_axi_bready => SLOT_0_AXI_bready,
      slot_0_axi_bresp(1 downto 0) => SLOT_0_AXI_bresp(1 downto 0),
      slot_0_axi_bvalid => SLOT_0_AXI_bvalid,
      slot_0_axi_rdata(31 downto 0) => SLOT_0_AXI_rdata(31 downto 0),
      slot_0_axi_rlast => SLOT_0_AXI_rlast,
      slot_0_axi_rready => SLOT_0_AXI_rready,
      slot_0_axi_rresp(1 downto 0) => SLOT_0_AXI_rresp(1 downto 0),
      slot_0_axi_rvalid => SLOT_0_AXI_rvalid,
      slot_0_axi_wdata(31 downto 0) => SLOT_0_AXI_wdata(31 downto 0),
      slot_0_axi_wlast => SLOT_0_AXI_wlast,
      slot_0_axi_wready => SLOT_0_AXI_wready,
      slot_0_axi_wstrb(3 downto 0) => SLOT_0_AXI_wstrb(3 downto 0),
      slot_0_axi_wvalid => SLOT_0_AXI_wvalid
    );
ila_lib: component bd_735e_ila_lib_0
     port map (
      clk => clk,
      probe0(1 downto 0) => net_slot_0_axi_ar_cnt(1 downto 0),
      probe1(12 downto 0) => net_slot_0_axi_araddr(12 downto 0),
      probe10(12 downto 0) => net_slot_0_axi_awaddr(12 downto 0),
      probe11(1 downto 0) => net_slot_0_axi_awburst(1 downto 0),
      probe12(3 downto 0) => net_slot_0_axi_awcache(3 downto 0),
      probe13(7 downto 0) => net_slot_0_axi_awlen(7 downto 0),
      probe14(0) => net_slot_0_axi_awlock(0),
      probe15(2 downto 0) => net_slot_0_axi_awprot(2 downto 0),
      probe16(3 downto 0) => net_slot_0_axi_awqos(3 downto 0),
      probe17(2 downto 0) => net_slot_0_axi_awsize(2 downto 0),
      probe18(1 downto 0) => net_slot_0_axi_b_cnt(1 downto 0),
      probe19(1 downto 0) => net_slot_0_axi_bresp(1 downto 0),
      probe2(1 downto 0) => net_slot_0_axi_arburst(1 downto 0),
      probe20(1 downto 0) => net_slot_0_axi_r_cnt(1 downto 0),
      probe21(31 downto 0) => net_slot_0_axi_rdata(31 downto 0),
      probe22(1 downto 0) => net_slot_0_axi_rresp(1 downto 0),
      probe23(31 downto 0) => net_slot_0_axi_wdata(31 downto 0),
      probe24(3 downto 0) => net_slot_0_axi_wstrb(3 downto 0),
      probe25(1 downto 0) => net_slot_0_axi_aw_ctrl(1 downto 0),
      probe26(2 downto 0) => net_slot_0_axi_w_ctrl(2 downto 0),
      probe27(1 downto 0) => net_slot_0_axi_b_ctrl(1 downto 0),
      probe28(1 downto 0) => net_slot_0_axi_ar_ctrl(1 downto 0),
      probe29(2 downto 0) => net_slot_0_axi_r_ctrl(2 downto 0),
      probe3(3 downto 0) => net_slot_0_axi_arcache(3 downto 0),
      probe4(7 downto 0) => net_slot_0_axi_arlen(7 downto 0),
      probe5(0) => net_slot_0_axi_arlock(0),
      probe6(2 downto 0) => net_slot_0_axi_arprot(2 downto 0),
      probe7(3 downto 0) => net_slot_0_axi_arqos(3 downto 0),
      probe8(2 downto 0) => net_slot_0_axi_arsize(2 downto 0),
      probe9(1 downto 0) => net_slot_0_axi_aw_cnt(1 downto 0)
    );
slot_0_ar: component bd_735e_slot_0_ar_0
     port map (
      In0(0) => net_slot_0_axi_arvalid,
      In1(0) => net_slot_0_axi_arready,
      dout(1 downto 0) => net_slot_0_axi_ar_ctrl(1 downto 0)
    );
slot_0_aw: component bd_735e_slot_0_aw_0
     port map (
      In0(0) => net_slot_0_axi_awvalid,
      In1(0) => net_slot_0_axi_awready,
      dout(1 downto 0) => net_slot_0_axi_aw_ctrl(1 downto 0)
    );
slot_0_b: component bd_735e_slot_0_b_0
     port map (
      In0(0) => net_slot_0_axi_bvalid,
      In1(0) => net_slot_0_axi_bready,
      dout(1 downto 0) => net_slot_0_axi_b_ctrl(1 downto 0)
    );
slot_0_r: component bd_735e_slot_0_r_0
     port map (
      In0(0) => net_slot_0_axi_rvalid,
      In1(0) => net_slot_0_axi_rready,
      In2(0) => net_slot_0_axi_rlast,
      dout(2 downto 0) => net_slot_0_axi_r_ctrl(2 downto 0)
    );
slot_0_w: component bd_735e_slot_0_w_0
     port map (
      In0(0) => net_slot_0_axi_wvalid,
      In1(0) => net_slot_0_axi_wready,
      In2(0) => net_slot_0_axi_wlast,
      dout(2 downto 0) => net_slot_0_axi_w_ctrl(2 downto 0)
    );
end STRUCTURE;
