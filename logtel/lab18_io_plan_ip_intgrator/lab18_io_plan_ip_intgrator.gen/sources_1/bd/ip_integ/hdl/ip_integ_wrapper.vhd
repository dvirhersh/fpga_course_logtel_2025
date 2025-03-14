--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
--Date        : Fri Mar 14 14:27:15 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target ip_integ_wrapper.bd
--Design      : ip_integ_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ip_integ_wrapper is
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
end ip_integ_wrapper;

architecture STRUCTURE of ip_integ_wrapper is
  component ip_integ is
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
  end component ip_integ;
begin
ip_integ_i: component ip_integ
     port map (
      BTN_0(4 downto 0) => BTN_0(4 downto 0),
      CLK_0 => CLK_0,
      LED_0(15 downto 0) => LED_0(15 downto 0),
      RGB1_Blue_0 => RGB1_Blue_0,
      RGB1_Green_0 => RGB1_Green_0,
      RGB1_Red_0 => RGB1_Red_0,
      RGB2_Blue_0 => RGB2_Blue_0,
      RGB2_Green_0 => RGB2_Green_0,
      RGB2_Red_0 => RGB2_Red_0,
      SSEG_AN_0(7 downto 0) => SSEG_AN_0(7 downto 0),
      SSEG_CA_0(7 downto 0) => SSEG_CA_0(7 downto 0),
      SW_0(15 downto 0) => SW_0(15 downto 0),
      UART_TXD_0 => UART_TXD_0,
      ampPWM_0 => ampPWM_0,
      ampSD_0 => ampSD_0,
      micClk_0 => micClk_0,
      micData_0 => micData_0,
      micLRSel_0 => micLRSel_0
    );
end STRUCTURE;
