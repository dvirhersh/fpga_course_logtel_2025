--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
--Date        : Mon Mar 17 15:27:38 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target lab20_block_design_wrapper.bd
--Design      : lab20_block_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab20_block_design_wrapper is
  port (
    aresetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    reset_1 : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
end lab20_block_design_wrapper;

architecture STRUCTURE of lab20_block_design_wrapper is
  component lab20_block_design is
  port (
    clk_in1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    reset_1 : in STD_LOGIC
  );
  end component lab20_block_design;
begin
lab20_block_design_i: component lab20_block_design
     port map (
      aresetn => aresetn,
      clk_in1 => clk_in1,
      interrupt => interrupt,
      reset_1 => reset_1,
      rx => rx,
      tx => tx
    );
end STRUCTURE;
