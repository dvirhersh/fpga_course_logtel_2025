--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
--Date        : Fri Mar 14 14:27:15 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target ip_integ.bd
--Design      : ip_integ
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ip_integ is
  port (
    BTN_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK_0 : in STD_LOGIC;
    LED_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RGB1_Blue_0 : out STD_LOGIC;
    RGB1_Green_0 : out STD_LOGIC;
    RGB1_Red_0 : out STD_LOGIC;
    RGB2_Blue_0 : out STD_LOGIC;
    RGB2_Green_0 : out STD_LOGIC;
    RGB2_Red_0 : out STD_LOGIC;
    SSEG_AN_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SSEG_CA_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SW_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    UART_TXD_0 : out STD_LOGIC;
    ampPWM_0 : out STD_LOGIC;
    ampSD_0 : out STD_LOGIC;
    micClk_0 : out STD_LOGIC;
    micData_0 : in STD_LOGIC;
    micLRSel_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ip_integ : entity is "ip_integ,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ip_integ,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ip_integ : entity is "ip_integ.hwdef";
end ip_integ;

architecture STRUCTURE of ip_integ is
  component ip_integ_GPIO_demo_0_0 is
  port (
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BTN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SSEG_CA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SSEG_AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    UART_TXD : out STD_LOGIC;
    RGB1_Red : out STD_LOGIC;
    RGB1_Green : out STD_LOGIC;
    RGB1_Blue : out STD_LOGIC;
    RGB2_Red : out STD_LOGIC;
    RGB2_Green : out STD_LOGIC;
    RGB2_Blue : out STD_LOGIC;
    micClk : out STD_LOGIC;
    micLRSel : out STD_LOGIC;
    micData : in STD_LOGIC;
    ampPWM : out STD_LOGIC;
    ampSD : out STD_LOGIC
  );
  end component ip_integ_GPIO_demo_0_0;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN ip_integ_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
GPIO_demo_0: component ip_integ_GPIO_demo_0_0
     port map (
      BTN(4 downto 0) => BTN_0(4 downto 0),
      CLK => CLK_0,
      LED(15 downto 0) => LED_0(15 downto 0),
      RGB1_Blue => RGB1_Blue_0,
      RGB1_Green => RGB1_Green_0,
      RGB1_Red => RGB1_Red_0,
      RGB2_Blue => RGB2_Blue_0,
      RGB2_Green => RGB2_Green_0,
      RGB2_Red => RGB2_Red_0,
      SSEG_AN(7 downto 0) => SSEG_AN_0(7 downto 0),
      SSEG_CA(7 downto 0) => SSEG_CA_0(7 downto 0),
      SW(15 downto 0) => SW_0(15 downto 0),
      UART_TXD => UART_TXD_0,
      ampPWM => ampPWM_0,
      ampSD => ampSD_0,
      micClk => micClk_0,
      micData => micData_0,
      micLRSel => micLRSel_0
    );
end STRUCTURE;
