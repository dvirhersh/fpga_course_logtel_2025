--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun May 25 12:19:53 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    Blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Hsynq_0 : out STD_LOGIC;
    Red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Vsynq_0 : out STD_LOGIC;
    clk_0 : in STD_LOGIC;
    cntl_0 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk_0 : in STD_LOGIC;
    cntl_0 : in STD_LOGIC;
    Blue_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Green_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Hsynq_0 : out STD_LOGIC;
    Red_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Vsynq_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Blue_0(3 downto 0) => Blue_0(3 downto 0),
      Green_0(3 downto 0) => Green_0(3 downto 0),
      Hsynq_0 => Hsynq_0,
      Red_0(3 downto 0) => Red_0(3 downto 0),
      Vsynq_0 => Vsynq_0,
      clk_0 => clk_0,
      cntl_0 => cntl_0
    );
end STRUCTURE;
