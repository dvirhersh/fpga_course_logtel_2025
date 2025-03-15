--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
--Date        : Sat Mar 15 21:34:23 2025
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
    aresetn_0 : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    reset_1 : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    reset_1 : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    aresetn_0 : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      aresetn_0 => aresetn_0,
      clk_in1 => clk_in1,
      interrupt => interrupt,
      reset_1 => reset_1,
      rx => rx,
      tx => tx
    );
end STRUCTURE;
