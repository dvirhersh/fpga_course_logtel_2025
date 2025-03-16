--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
--Date        : Sun Mar 16 11:35:47 2025
--Host        : dvirhersh_comp running 64-bit major release  (build 9200)
--Command     : generate_target design_lab19_wrapper.bd
--Design      : design_lab19_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_lab19_wrapper is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
end design_lab19_wrapper;

architecture STRUCTURE of design_lab19_wrapper is
  component design_lab19 is
  port (
    reset_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  end component design_lab19;
begin
design_lab19_i: component design_lab19
     port map (
      clk => clk,
      reset => reset,
      reset_0 => reset_0
    );
end STRUCTURE;
