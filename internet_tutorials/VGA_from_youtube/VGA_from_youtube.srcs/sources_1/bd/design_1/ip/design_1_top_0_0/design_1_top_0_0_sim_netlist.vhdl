-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 25 11:43:21 2025
-- Host        : dvirhersh_comp running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/fpga_course_logtel_2025/internet_tutorials/VGA_from_youtube/VGA_from_youtube.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_horizontal_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[8]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    cntl_0 : out STD_LOGIC;
    \count_reg[6]_1\ : out STD_LOGIC;
    \count_reg[8]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Hsynq : out STD_LOGIC;
    \count_reg[9]_0\ : out STD_LOGIC;
    \count_reg[4]_0\ : out STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    cntl : in STD_LOGIC;
    \Red[1]\ : in STD_LOGIC;
    \Red[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_horizontal_counter : entity is "horizontal_counter";
end design_1_top_0_0_horizontal_counter;

architecture STRUCTURE of design_1_top_0_0_horizontal_counter is
  signal \Blue_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \Blue_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \Blue_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \Red_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \Red_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \Red_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[9]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_3_n_0\ : STD_LOGIC;
  signal \count[9]_i_4_n_0\ : STD_LOGIC;
  signal \count[9]_i_5_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^count_reg[6]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^count_reg[8]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Blue_reg[3]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of Hsynq_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Red_reg[2]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Red_reg[2]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[9]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[9]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[9]_i_5\ : label is "soft_lutpair3";
begin
  D(1 downto 0) <= \^d\(1 downto 0);
  \count_reg[6]_0\(0) <= \^count_reg[6]_0\(0);
  \count_reg[8]_0\(1 downto 0) <= \^count_reg[8]_0\(1 downto 0);
\Blue_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A2FFFF00A20000"
    )
        port map (
      I0 => \Red[1]\,
      I1 => \Red_reg[2]_i_3_n_0\,
      I2 => \Red_reg[2]_i_4_n_0\,
      I3 => \Red[1]_0\,
      I4 => cntl,
      I5 => \Blue_reg[3]_i_4_n_0\,
      O => cntl_0
    );
\Blue_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^count_reg[6]_0\(0),
      I1 => \Blue_reg[3]_i_5_n_0\,
      O => \count_reg[6]_1\
    );
\Blue_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001F00"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      I2 => count_reg(6),
      I3 => \Blue_reg[3]_i_6_n_0\,
      I4 => count_reg(9),
      I5 => cntl,
      O => \count_reg[4]_0\
    );
\Blue_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1044445133326444"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      I2 => count_reg(4),
      I3 => count_reg(5),
      I4 => count_reg(6),
      I5 => count_reg(7),
      O => \Blue_reg[3]_i_4_n_0\
    );
\Blue_reg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000500005400"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => count_reg(6),
      I4 => count_reg(8),
      I5 => count_reg(7),
      O => \Blue_reg[3]_i_5_n_0\
    );
\Blue_reg[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(8),
      O => \Blue_reg[3]_i_6_n_0\
    );
\Green_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008808"
    )
        port map (
      I0 => cntl,
      I1 => \Red[1]\,
      I2 => \Red_reg[2]_i_3_n_0\,
      I3 => \Red_reg[2]_i_4_n_0\,
      I4 => \Red[1]_0\,
      I5 => \^count_reg[8]_0\(1),
      O => \^count_reg[8]_0\(0)
    );
\Green_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000034141606"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      I2 => count_reg(7),
      I3 => count_reg(5),
      I4 => count_reg(6),
      I5 => cntl,
      O => \^count_reg[8]_0\(1)
    );
\Green_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FF0FE0"
    )
        port map (
      I0 => count_reg(6),
      I1 => count_reg(5),
      I2 => count_reg(7),
      I3 => count_reg(9),
      I4 => count_reg(8),
      I5 => cntl,
      O => \^count_reg[6]_0\(0)
    );
\Green_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000011111"
    )
        port map (
      I0 => cntl,
      I1 => count_reg(8),
      I2 => count_reg(5),
      I3 => count_reg(6),
      I4 => count_reg(7),
      I5 => count_reg(9),
      O => AR(0)
    );
Hsynq_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000111"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(7),
      I2 => count_reg(5),
      I3 => count_reg(6),
      I4 => count_reg(9),
      O => Hsynq
    );
\Red_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEAEAAAEA"
    )
        port map (
      I0 => \^d\(1),
      I1 => cntl,
      I2 => \Red[1]\,
      I3 => \Red_reg[2]_i_3_n_0\,
      I4 => \Red_reg[2]_i_4_n_0\,
      I5 => \Red[1]_0\,
      O => \^d\(0)
    );
\Red_reg[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(7),
      O => \Red_reg[2]_i_3_n_0\
    );
\Red_reg[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(7),
      I2 => count_reg(6),
      I3 => count_reg(5),
      I4 => count_reg(8),
      O => \Red_reg[2]_i_4_n_0\
    );
\Red_reg[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      I2 => count_reg(4),
      I3 => count_reg(5),
      I4 => count_reg(6),
      I5 => count_reg(7),
      O => \count_reg[9]_0\
    );
\Red_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000011A8"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(7),
      I2 => count_reg(6),
      I3 => count_reg(9),
      I4 => \Red_reg[3]_i_3_n_0\,
      I5 => cntl,
      O => \^d\(1)
    );
\Red_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABBBBB"
    )
        port map (
      I0 => \^count_reg[6]_0\(0),
      I1 => count_reg(8),
      I2 => count_reg(5),
      I3 => count_reg(6),
      I4 => count_reg(7),
      I5 => count_reg(9),
      O => \count_reg[8]_1\(0)
    );
\Red_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100010101"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(7),
      I2 => count_reg(8),
      I3 => count_reg(6),
      I4 => count_reg(5),
      I5 => count_reg(4),
      O => \Red_reg[3]_i_3_n_0\
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => plusOp(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      O => plusOp(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => plusOp(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      O => plusOp(4)
    );
\count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(4),
      I2 => count_reg(2),
      I3 => count_reg(0),
      I4 => count_reg(1),
      I5 => count_reg(3),
      O => \count[5]_i_1__0_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => count_reg(6),
      I1 => \count[9]_i_5_n_0\,
      I2 => count_reg(4),
      I3 => count_reg(5),
      O => plusOp(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(5),
      I2 => count_reg(4),
      I3 => \count[9]_i_5_n_0\,
      I4 => count_reg(6),
      O => plusOp(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_reg(8),
      I1 => \count[9]_i_5_n_0\,
      I2 => count_reg(6),
      I3 => count_reg(5),
      I4 => count_reg(7),
      I5 => count_reg(4),
      O => plusOp(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888088888888"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      I2 => count_reg(5),
      I3 => count_reg(7),
      I4 => count_reg(6),
      I5 => \count[9]_i_3_n_0\,
      O => \count[9]_i_1_n_0\
    );
\count[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      I2 => \count[9]_i_4_n_0\,
      I3 => \count[9]_i_5_n_0\,
      O => plusOp(9)
    );
\count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(4),
      O => \count[9]_i_3_n_0\
    );
\count[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => count_reg(6),
      I1 => count_reg(5),
      I2 => count_reg(7),
      I3 => count_reg(4),
      O => \count[9]_i_4_n_0\
    );
\count[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => \count[9]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(0),
      Q => count_reg(0),
      R => \count[9]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(1),
      Q => count_reg(1),
      R => \count[9]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(2),
      Q => count_reg(2),
      R => \count[9]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(3),
      Q => count_reg(3),
      R => \count[9]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(4),
      Q => count_reg(4),
      R => \count[9]_i_1_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => \count[5]_i_1__0_n_0\,
      Q => count_reg(5),
      R => \count[9]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(6),
      Q => count_reg(6),
      R => \count[9]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(7),
      Q => count_reg(7),
      R => \count[9]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(8),
      Q => count_reg(8),
      R => \count[9]_i_1_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(9),
      Q => count_reg(9),
      R => \count[9]_i_1_n_0\
    );
v_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => \count[9]_i_1_n_0\,
      Q => E(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_vertical_counter is
  port (
    \count_reg[6]_0\ : out STD_LOGIC;
    \count_reg[9]_0\ : out STD_LOGIC;
    Vsynq : out STD_LOGIC;
    \Blue_reg[3]_i_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    pixel_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_vertical_counter : entity is "vertical_counter";
end design_1_top_0_0_vertical_counter;

architecture STRUCTURE of design_1_top_0_0_vertical_counter is
  signal \Red_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \Red_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal V_Count_Value : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Vsynq_INST_0_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[6]_i_2_n_0\ : STD_LOGIC;
  signal \count[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[9]_i_4__0_n_0\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 5 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Red_reg[2]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Red_reg[2]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[4]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[7]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[8]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[9]_i_2__0\ : label is "soft_lutpair7";
begin
\Red_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFEEE"
    )
        port map (
      I0 => V_Count_Value(6),
      I1 => \Red_reg[2]_i_6_n_0\,
      I2 => V_Count_Value(5),
      I3 => \Red_reg[2]_i_7_n_0\,
      I4 => V_Count_Value(4),
      I5 => \Blue_reg[3]_i_1\,
      O => \count_reg[6]_0\
    );
\Red_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA80AAAAAAAA"
    )
        port map (
      I0 => V_Count_Value(9),
      I1 => V_Count_Value(0),
      I2 => V_Count_Value(1),
      I3 => V_Count_Value(3),
      I4 => V_Count_Value(2),
      I5 => \count[9]_i_3__0_n_0\,
      O => \count_reg[9]_0\
    );
\Red_reg[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => V_Count_Value(9),
      I1 => V_Count_Value(8),
      I2 => V_Count_Value(7),
      O => \Red_reg[2]_i_6_n_0\
    );
\Red_reg[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => V_Count_Value(0),
      I1 => V_Count_Value(1),
      I2 => V_Count_Value(3),
      I3 => V_Count_Value(2),
      O => \Red_reg[2]_i_7_n_0\
    );
Vsynq_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => V_Count_Value(4),
      I1 => V_Count_Value(5),
      I2 => V_Count_Value(6),
      I3 => Vsynq_INST_0_i_1_n_0,
      O => Vsynq
    );
Vsynq_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => V_Count_Value(7),
      I1 => V_Count_Value(8),
      I2 => V_Count_Value(9),
      I3 => V_Count_Value(2),
      I4 => V_Count_Value(3),
      I5 => V_Count_Value(1),
      O => Vsynq_INST_0_i_1_n_0
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002AFF"
    )
        port map (
      I0 => \count[9]_i_3__0_n_0\,
      I1 => V_Count_Value(2),
      I2 => V_Count_Value(3),
      I3 => V_Count_Value(9),
      I4 => V_Count_Value(0),
      O => \count[0]_i_1__0_n_0\
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002AFF2AFF0000"
    )
        port map (
      I0 => \count[9]_i_3__0_n_0\,
      I1 => V_Count_Value(2),
      I2 => V_Count_Value(3),
      I3 => V_Count_Value(9),
      I4 => V_Count_Value(1),
      I5 => V_Count_Value(0),
      O => \count[1]_i_1__0_n_0\
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"223308CC08CC08CC"
    )
        port map (
      I0 => \count[9]_i_3__0_n_0\,
      I1 => V_Count_Value(2),
      I2 => V_Count_Value(3),
      I3 => V_Count_Value(9),
      I4 => V_Count_Value(0),
      I5 => V_Count_Value(1),
      O => \count[2]_i_1__0_n_0\
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"283C20F020F020F0"
    )
        port map (
      I0 => \count[9]_i_3__0_n_0\,
      I1 => V_Count_Value(2),
      I2 => V_Count_Value(3),
      I3 => V_Count_Value(9),
      I4 => V_Count_Value(1),
      I5 => V_Count_Value(0),
      O => \count[3]_i_1__0_n_0\
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => V_Count_Value(4),
      I1 => V_Count_Value(2),
      I2 => V_Count_Value(3),
      I3 => V_Count_Value(1),
      I4 => V_Count_Value(0),
      O => \count[4]_i_1__0_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => V_Count_Value(2),
      I1 => V_Count_Value(3),
      I2 => V_Count_Value(1),
      I3 => V_Count_Value(0),
      I4 => V_Count_Value(4),
      I5 => V_Count_Value(5),
      O => \plusOp__0\(5)
    );
\count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => V_Count_Value(6),
      I1 => V_Count_Value(2),
      I2 => V_Count_Value(3),
      I3 => \count[6]_i_2_n_0\,
      I4 => V_Count_Value(4),
      I5 => V_Count_Value(5),
      O => \plusOp__0\(6)
    );
\count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => V_Count_Value(1),
      I1 => V_Count_Value(0),
      O => \count[6]_i_2_n_0\
    );
\count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => V_Count_Value(7),
      I1 => \count[9]_i_4__0_n_0\,
      I2 => V_Count_Value(6),
      O => \plusOp__0\(7)
    );
\count[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => V_Count_Value(8),
      I1 => V_Count_Value(6),
      I2 => \count[9]_i_4__0_n_0\,
      I3 => V_Count_Value(7),
      O => \plusOp__0\(8)
    );
\count[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5000000"
    )
        port map (
      I0 => \count[9]_i_3__0_n_0\,
      I1 => V_Count_Value(2),
      I2 => V_Count_Value(3),
      I3 => E(0),
      I4 => V_Count_Value(9),
      O => count
    );
\count[9]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => V_Count_Value(9),
      I1 => V_Count_Value(7),
      I2 => \count[9]_i_4__0_n_0\,
      I3 => V_Count_Value(6),
      I4 => V_Count_Value(8),
      O => \plusOp__0\(9)
    );
\count[9]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => V_Count_Value(8),
      I1 => V_Count_Value(7),
      I2 => V_Count_Value(4),
      I3 => V_Count_Value(5),
      I4 => V_Count_Value(6),
      O => \count[9]_i_3__0_n_0\
    );
\count[9]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => V_Count_Value(5),
      I1 => V_Count_Value(4),
      I2 => V_Count_Value(0),
      I3 => V_Count_Value(1),
      I4 => V_Count_Value(3),
      I5 => V_Count_Value(2),
      O => \count[9]_i_4__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \count[0]_i_1__0_n_0\,
      Q => V_Count_Value(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \count[1]_i_1__0_n_0\,
      Q => V_Count_Value(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \count[2]_i_1__0_n_0\,
      Q => V_Count_Value(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \count[3]_i_1__0_n_0\,
      Q => V_Count_Value(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \count[4]_i_1__0_n_0\,
      Q => V_Count_Value(4),
      R => count
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \plusOp__0\(5),
      Q => V_Count_Value(5),
      R => count
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \plusOp__0\(6),
      Q => V_Count_Value(6),
      R => count
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \plusOp__0\(7),
      Q => V_Count_Value(7),
      R => count
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \plusOp__0\(8),
      Q => V_Count_Value(8),
      R => count
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \plusOp__0\(9),
      Q => V_Count_Value(9),
      R => count
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    Red : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Green : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 0 to 0 );
    Hsynq : out STD_LOGIC;
    Vsynq : out STD_LOGIC;
    cntl : in STD_LOGIC;
    pixel_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal VGA_Horiz_n_1 : STD_LOGIC;
  signal VGA_Horiz_n_11 : STD_LOGIC;
  signal VGA_Horiz_n_12 : STD_LOGIC;
  signal VGA_Horiz_n_2 : STD_LOGIC;
  signal VGA_Horiz_n_3 : STD_LOGIC;
  signal VGA_Horiz_n_4 : STD_LOGIC;
  signal VGA_Horiz_n_5 : STD_LOGIC;
  signal VGA_Horiz_n_6 : STD_LOGIC;
  signal VGA_Horiz_n_7 : STD_LOGIC;
  signal VGA_Horiz_n_8 : STD_LOGIC;
  signal VGA_Horiz_n_9 : STD_LOGIC;
  signal VGA_Verti_n_0 : STD_LOGIC;
  signal VGA_Verti_n_1 : STD_LOGIC;
  signal enable_V_Counter : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Blue_reg[3]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Green_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Green_reg[3]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \Red_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Red_reg[3]\ : label is "LD";
begin
\Blue_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => VGA_Horiz_n_12,
      D => VGA_Horiz_n_7,
      G => VGA_Horiz_n_8,
      GE => '1',
      Q => Blue(0)
    );
\Green_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => VGA_Horiz_n_1,
      D => VGA_Horiz_n_5,
      G => VGA_Horiz_n_6,
      GE => '1',
      Q => Green(0)
    );
\Green_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => VGA_Horiz_n_1,
      D => VGA_Horiz_n_4,
      G => VGA_Horiz_n_6,
      GE => '1',
      Q => Green(1)
    );
\Red_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_3,
      G => VGA_Horiz_n_9,
      GE => '1',
      Q => Red(0)
    );
\Red_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_2,
      G => VGA_Horiz_n_9,
      GE => '1',
      Q => Red(1)
    );
VGA_Horiz: entity work.design_1_top_0_0_horizontal_counter
     port map (
      AR(0) => VGA_Horiz_n_1,
      D(1) => VGA_Horiz_n_2,
      D(0) => VGA_Horiz_n_3,
      E(0) => enable_V_Counter,
      Hsynq => Hsynq,
      \Red[1]\ => VGA_Verti_n_0,
      \Red[1]_0\ => VGA_Verti_n_1,
      cntl => cntl,
      cntl_0 => VGA_Horiz_n_7,
      \count_reg[4]_0\ => VGA_Horiz_n_12,
      \count_reg[6]_0\(0) => VGA_Horiz_n_6,
      \count_reg[6]_1\ => VGA_Horiz_n_8,
      \count_reg[8]_0\(1) => VGA_Horiz_n_4,
      \count_reg[8]_0\(0) => VGA_Horiz_n_5,
      \count_reg[8]_1\(0) => VGA_Horiz_n_9,
      \count_reg[9]_0\ => VGA_Horiz_n_11,
      pixel_clk => pixel_clk
    );
VGA_Verti: entity work.design_1_top_0_0_vertical_counter
     port map (
      \Blue_reg[3]_i_1\ => VGA_Horiz_n_11,
      E(0) => enable_V_Counter,
      Vsynq => Vsynq,
      \count_reg[6]_0\ => VGA_Verti_n_0,
      \count_reg[9]_0\ => VGA_Verti_n_1,
      pixel_clk => pixel_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    pixel_clk : in STD_LOGIC;
    cntl : in STD_LOGIC;
    Hsynq : out STD_LOGIC;
    Vsynq : out STD_LOGIC;
    Red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_top_0_0 : entity is "top,Vivado 2019.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  signal \^blue\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^green\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^red\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of pixel_clk : signal is "xilinx.com:signal:clock:1.0 pixel_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of pixel_clk : signal is "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clock_devider_0_0_divided_clk, INSERT_VIP 0";
begin
  Blue(3) <= \^blue\(2);
  Blue(2) <= \^blue\(2);
  Blue(1) <= \^blue\(2);
  Blue(0) <= \^blue\(2);
  Green(3) <= \^green\(2);
  Green(2) <= \^green\(2);
  Green(1) <= \^green\(2);
  Green(0) <= \^green\(0);
  Red(3) <= \^red\(0);
  Red(2) <= \^red\(1);
  Red(1 downto 0) <= \^red\(1 downto 0);
U0: entity work.design_1_top_0_0_top
     port map (
      Blue(0) => \^blue\(2),
      Green(1) => \^green\(2),
      Green(0) => \^green\(0),
      Hsynq => Hsynq,
      Red(1) => \^red\(0),
      Red(0) => \^red\(1),
      Vsynq => Vsynq,
      cntl => cntl,
      pixel_clk => pixel_clk
    );
end STRUCTURE;
