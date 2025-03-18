--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Mar 18 14:28:16 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target lab20_axi_3_bd_wrapper.bd
--Design      : lab20_axi_3_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab20_axi_3_bd_wrapper is
  port (
    ddr2_sdram_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ddr2_sdram_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr2_sdram_cas_n : out STD_LOGIC;
    ddr2_sdram_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr2_sdram_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_ras_n : out STD_LOGIC;
    ddr2_sdram_we_n : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clk_i : in STD_LOGIC
  );
end lab20_axi_3_bd_wrapper;

architecture STRUCTURE of lab20_axi_3_bd_wrapper is
  component lab20_axi_3_bd is
  port (
    ddr2_sdram_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr2_sdram_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ddr2_sdram_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr2_sdram_ras_n : out STD_LOGIC;
    ddr2_sdram_cas_n : out STD_LOGIC;
    ddr2_sdram_we_n : out STD_LOGIC;
    ddr2_sdram_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk_i : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component lab20_axi_3_bd;
begin
lab20_axi_3_bd_i: component lab20_axi_3_bd
     port map (
      ddr2_sdram_addr(12 downto 0) => ddr2_sdram_addr(12 downto 0),
      ddr2_sdram_ba(2 downto 0) => ddr2_sdram_ba(2 downto 0),
      ddr2_sdram_cas_n => ddr2_sdram_cas_n,
      ddr2_sdram_ck_n(0) => ddr2_sdram_ck_n(0),
      ddr2_sdram_ck_p(0) => ddr2_sdram_ck_p(0),
      ddr2_sdram_cke(0) => ddr2_sdram_cke(0),
      ddr2_sdram_cs_n(0) => ddr2_sdram_cs_n(0),
      ddr2_sdram_dm(1 downto 0) => ddr2_sdram_dm(1 downto 0),
      ddr2_sdram_dq(15 downto 0) => ddr2_sdram_dq(15 downto 0),
      ddr2_sdram_dqs_n(1 downto 0) => ddr2_sdram_dqs_n(1 downto 0),
      ddr2_sdram_dqs_p(1 downto 0) => ddr2_sdram_dqs_p(1 downto 0),
      ddr2_sdram_odt(0) => ddr2_sdram_odt(0),
      ddr2_sdram_ras_n => ddr2_sdram_ras_n,
      ddr2_sdram_we_n => ddr2_sdram_we_n,
      reset => reset,
      sys_clk_i => sys_clk_i
    );
end STRUCTURE;
