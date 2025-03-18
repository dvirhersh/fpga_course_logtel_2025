--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Mar 18 13:25:29 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target lab20_2_bd_wrapper.bd
--Design      : lab20_2_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab20_2_bd_wrapper is
  port (
    aresetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    reset_1 : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
end lab20_2_bd_wrapper;

architecture STRUCTURE of lab20_2_bd_wrapper is
  component lab20_2_bd is
  port (
    clk_in1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    reset_1 : in STD_LOGIC;
    tx : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    rx : in STD_LOGIC
  );
  end component lab20_2_bd;
begin
lab20_2_bd_i: component lab20_2_bd
     port map (
      aresetn => aresetn,
      clk_in1 => clk_in1,
      interrupt => interrupt,
      reset_1 => reset_1,
      rx => rx,
      tx => tx
    );
end STRUCTURE;
