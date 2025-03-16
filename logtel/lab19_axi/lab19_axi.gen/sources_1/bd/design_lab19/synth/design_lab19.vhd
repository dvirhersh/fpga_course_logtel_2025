--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
--Date        : Sun Mar 16 11:35:47 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target design_lab19.bd
--Design      : design_lab19
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_lab19 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_lab19 : entity is "design_lab19,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_lab19,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_bram_cntlr_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_lab19 : entity is "design_lab19.hwdef";
end design_lab19;

architecture STRUCTURE of design_lab19 is
  component design_lab19_jtag_axi_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_lab19_jtag_axi_0_0;
  component design_lab19_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_lab19_axi_bram_ctrl_0_0;
  component design_lab19_axi_bram_ctrl_0_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_lab19_axi_bram_ctrl_0_bram_0;
  component design_lab19_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component design_lab19_axi_smc_0;
  component design_lab19_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_lab19_clk_wiz_0;
  component design_lab19_rst_clk_wiz_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_lab19_rst_clk_wiz_100M_0;
  component design_lab19_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component design_lab19_system_ila_0_0;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARADDR : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR";
  attribute DEBUG : string;
  attribute DEBUG of axi_smc_M00_AXI_ARADDR : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARADDR : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARBURST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST";
  attribute DEBUG of axi_smc_M00_AXI_ARBURST : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARBURST : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARCACHE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE";
  attribute DEBUG of axi_smc_M00_AXI_ARCACHE : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARCACHE : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARLEN : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN";
  attribute DEBUG of axi_smc_M00_AXI_ARLEN : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARLEN : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARLOCK : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK";
  attribute DEBUG of axi_smc_M00_AXI_ARLOCK : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARLOCK : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARPROT : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT";
  attribute DEBUG of axi_smc_M00_AXI_ARPROT : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARPROT : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARQOS : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS";
  attribute DEBUG of axi_smc_M00_AXI_ARQOS : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARQOS : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY";
  attribute DEBUG of axi_smc_M00_AXI_ARREADY : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARSIZE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE";
  attribute DEBUG of axi_smc_M00_AXI_ARSIZE : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARSIZE : signal is std.standard.true;
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_ARVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID";
  attribute DEBUG of axi_smc_M00_AXI_ARVALID : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_ARVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWADDR : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR";
  attribute DEBUG of axi_smc_M00_AXI_AWADDR : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWADDR : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWBURST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST";
  attribute DEBUG of axi_smc_M00_AXI_AWBURST : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWBURST : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWCACHE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE";
  attribute DEBUG of axi_smc_M00_AXI_AWCACHE : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWCACHE : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWLEN : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN";
  attribute DEBUG of axi_smc_M00_AXI_AWLEN : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWLEN : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWLOCK : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK";
  attribute DEBUG of axi_smc_M00_AXI_AWLOCK : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWLOCK : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWPROT : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT";
  attribute DEBUG of axi_smc_M00_AXI_AWPROT : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWPROT : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWQOS : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS";
  attribute DEBUG of axi_smc_M00_AXI_AWQOS : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWQOS : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY";
  attribute DEBUG of axi_smc_M00_AXI_AWREADY : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWSIZE : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE";
  attribute DEBUG of axi_smc_M00_AXI_AWSIZE : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWSIZE : signal is std.standard.true;
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_AWVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID";
  attribute DEBUG of axi_smc_M00_AXI_AWVALID : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_AWVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_BREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY";
  attribute DEBUG of axi_smc_M00_AXI_BREADY : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_BREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_BRESP : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP";
  attribute DEBUG of axi_smc_M00_AXI_BRESP : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_BRESP : signal is std.standard.true;
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_BVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID";
  attribute DEBUG of axi_smc_M00_AXI_BVALID : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_BVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RDATA : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA";
  attribute DEBUG of axi_smc_M00_AXI_RDATA : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_RDATA : signal is std.standard.true;
  signal axi_smc_M00_AXI_RLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RLAST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST";
  attribute DEBUG of axi_smc_M00_AXI_RLAST : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_RLAST : signal is std.standard.true;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY";
  attribute DEBUG of axi_smc_M00_AXI_RREADY : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_RREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RRESP : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP";
  attribute DEBUG of axi_smc_M00_AXI_RRESP : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_RRESP : signal is std.standard.true;
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_RVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID";
  attribute DEBUG of axi_smc_M00_AXI_RVALID : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_RVALID : signal is std.standard.true;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WDATA : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA";
  attribute DEBUG of axi_smc_M00_AXI_WDATA : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_WDATA : signal is std.standard.true;
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WLAST : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST";
  attribute DEBUG of axi_smc_M00_AXI_WLAST : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_WLAST : signal is std.standard.true;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WREADY : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY";
  attribute DEBUG of axi_smc_M00_AXI_WREADY : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_WREADY : signal is std.standard.true;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WSTRB : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB";
  attribute DEBUG of axi_smc_M00_AXI_WSTRB : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_WSTRB : signal is std.standard.true;
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axi_smc_M00_AXI_WVALID : signal is "axi_smc_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID";
  attribute DEBUG of axi_smc_M00_AXI_WVALID : signal is "true";
  attribute MARK_DEBUG of axi_smc_M00_AXI_WVALID : signal is std.standard.true;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal clk_wiz_locked : STD_LOGIC;
  signal jtag_axi_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal jtag_axi_0_M_AXI_ARLOCK : STD_LOGIC;
  signal jtag_axi_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_ARREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_ARVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal jtag_axi_0_M_AXI_AWLOCK : STD_LOGIC;
  signal jtag_axi_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_AWREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_AWVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_BREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_BVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_RLAST : STD_LOGIC;
  signal jtag_axi_0_M_AXI_RREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_RVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_WLAST : STD_LOGIC;
  signal jtag_axi_0_M_AXI_WREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_WVALID : STD_LOGIC;
  signal rst_clk_wiz_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_lab19_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
axi_bram_ctrl_0: component design_lab19_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => clk_wiz_clk_out1,
      s_axi_araddr(12 downto 0) => axi_smc_M00_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_clk_wiz_100M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_smc_M00_AXI_ARLOCK(0),
      s_axi_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_smc_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_smc_M00_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => axi_smc_M00_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_smc_M00_AXI_AWLOCK(0),
      s_axi_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_smc_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_smc_M00_AXI_AWVALID,
      s_axi_bready => axi_smc_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      s_axi_rlast => axi_smc_M00_AXI_RLAST,
      s_axi_rready => axi_smc_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      s_axi_wlast => axi_smc_M00_AXI_WLAST,
      s_axi_wready => axi_smc_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M00_AXI_WVALID
    );
axi_bram_ctrl_0_bram: component design_lab19_axi_bram_ctrl_0_bram_0
     port map (
      addra(31 downto 13) => B"0000000000000000000",
      addra(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(12 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0)
    );
axi_smc: component design_lab19_axi_smc_0
     port map (
      M00_AXI_araddr(12 downto 0) => axi_smc_M00_AXI_ARADDR(12 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_smc_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(12 downto 0) => axi_smc_M00_AXI_AWADDR(12 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_smc_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => axi_smc_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => jtag_axi_0_M_AXI_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => jtag_axi_0_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => jtag_axi_0_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(0) => jtag_axi_0_M_AXI_ARID(0),
      S00_AXI_arlen(7 downto 0) => jtag_axi_0_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => jtag_axi_0_M_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => jtag_axi_0_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => jtag_axi_0_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => jtag_axi_0_M_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => jtag_axi_0_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => jtag_axi_0_M_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => jtag_axi_0_M_AXI_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => jtag_axi_0_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => jtag_axi_0_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => jtag_axi_0_M_AXI_AWID(0),
      S00_AXI_awlen(7 downto 0) => jtag_axi_0_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => jtag_axi_0_M_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => jtag_axi_0_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => jtag_axi_0_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => jtag_axi_0_M_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => jtag_axi_0_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => jtag_axi_0_M_AXI_AWVALID,
      S00_AXI_bid(0) => jtag_axi_0_M_AXI_BID(0),
      S00_AXI_bready => jtag_axi_0_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => jtag_axi_0_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => jtag_axi_0_M_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => jtag_axi_0_M_AXI_RDATA(31 downto 0),
      S00_AXI_rid(0) => jtag_axi_0_M_AXI_RID(0),
      S00_AXI_rlast => jtag_axi_0_M_AXI_RLAST,
      S00_AXI_rready => jtag_axi_0_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => jtag_axi_0_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => jtag_axi_0_M_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => jtag_axi_0_M_AXI_WDATA(31 downto 0),
      S00_AXI_wlast => jtag_axi_0_M_AXI_WLAST,
      S00_AXI_wready => jtag_axi_0_M_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => jtag_axi_0_M_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => jtag_axi_0_M_AXI_WVALID,
      aclk => clk_wiz_clk_out1,
      aresetn => rst_clk_wiz_100M_peripheral_aresetn(0)
    );
clk_wiz: component design_lab19_clk_wiz_0
     port map (
      clk_in1 => clk,
      clk_out1 => clk_wiz_clk_out1,
      locked => clk_wiz_locked,
      reset => reset
    );
jtag_axi_0: component design_lab19_jtag_axi_0_0
     port map (
      aclk => clk_wiz_clk_out1,
      aresetn => rst_clk_wiz_100M_peripheral_aresetn(0),
      m_axi_araddr(31 downto 0) => jtag_axi_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => jtag_axi_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => jtag_axi_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(0) => jtag_axi_0_M_AXI_ARID(0),
      m_axi_arlen(7 downto 0) => jtag_axi_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock => jtag_axi_0_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => jtag_axi_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => jtag_axi_0_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => jtag_axi_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => jtag_axi_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => jtag_axi_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => jtag_axi_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => jtag_axi_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => jtag_axi_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(0) => jtag_axi_0_M_AXI_AWID(0),
      m_axi_awlen(7 downto 0) => jtag_axi_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock => jtag_axi_0_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => jtag_axi_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => jtag_axi_0_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => jtag_axi_0_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => jtag_axi_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => jtag_axi_0_M_AXI_AWVALID,
      m_axi_bid(0) => jtag_axi_0_M_AXI_BID(0),
      m_axi_bready => jtag_axi_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => jtag_axi_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => jtag_axi_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => jtag_axi_0_M_AXI_RDATA(31 downto 0),
      m_axi_rid(0) => jtag_axi_0_M_AXI_RID(0),
      m_axi_rlast => jtag_axi_0_M_AXI_RLAST,
      m_axi_rready => jtag_axi_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => jtag_axi_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => jtag_axi_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => jtag_axi_0_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => jtag_axi_0_M_AXI_WLAST,
      m_axi_wready => jtag_axi_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => jtag_axi_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => jtag_axi_0_M_AXI_WVALID
    );
rst_clk_wiz_100M: component design_lab19_rst_clk_wiz_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_locked,
      ext_reset_in => reset_0,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_clk_wiz_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_clk_out1
    );
system_ila_0: component design_lab19_system_ila_0_0
     port map (
      SLOT_0_AXI_araddr(12 downto 0) => axi_smc_M00_AXI_ARADDR(12 downto 0),
      SLOT_0_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      SLOT_0_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      SLOT_0_AXI_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      SLOT_0_AXI_arlock(0) => axi_smc_M00_AXI_ARLOCK(0),
      SLOT_0_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      SLOT_0_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      SLOT_0_AXI_arready => axi_smc_M00_AXI_ARREADY,
      SLOT_0_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      SLOT_0_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      SLOT_0_AXI_awaddr(12 downto 0) => axi_smc_M00_AXI_AWADDR(12 downto 0),
      SLOT_0_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      SLOT_0_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      SLOT_0_AXI_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      SLOT_0_AXI_awlock(0) => axi_smc_M00_AXI_AWLOCK(0),
      SLOT_0_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      SLOT_0_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      SLOT_0_AXI_awready => axi_smc_M00_AXI_AWREADY,
      SLOT_0_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      SLOT_0_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      SLOT_0_AXI_bready => axi_smc_M00_AXI_BREADY,
      SLOT_0_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      SLOT_0_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      SLOT_0_AXI_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      SLOT_0_AXI_rlast => axi_smc_M00_AXI_RLAST,
      SLOT_0_AXI_rready => axi_smc_M00_AXI_RREADY,
      SLOT_0_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      SLOT_0_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      SLOT_0_AXI_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      SLOT_0_AXI_wlast => axi_smc_M00_AXI_WLAST,
      SLOT_0_AXI_wready => axi_smc_M00_AXI_WREADY,
      SLOT_0_AXI_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      SLOT_0_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      clk => clk_wiz_clk_out1,
      resetn => rst_clk_wiz_100M_peripheral_aresetn(0)
    );
end STRUCTURE;
