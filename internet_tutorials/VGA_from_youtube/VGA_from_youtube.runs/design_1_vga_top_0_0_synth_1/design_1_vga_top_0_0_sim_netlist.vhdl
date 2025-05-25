-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 25 12:20:34 2025
-- Host        : dvirhersh_comp running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vga_top_0_0_sim_netlist.vhdl
-- Design      : design_1_vga_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_horizontal_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \frame_pixel[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \frame_pixel[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ltOp17_in : out STD_LOGIC;
    \count_reg[8]_0\ : out STD_LOGIC;
    Hsynq : out STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Red120_out : in STD_LOGIC;
    cntl : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_horizontal_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_horizontal_counter is
  signal \Blue_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \Blue_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \Green_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \Green_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal Red113_out : STD_LOGIC;
  signal Red116_out : STD_LOGIC;
  signal \Red_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \Red_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \Red_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \Red_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \Red_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \Red_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \count[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[9]_i_4_n_0\ : STD_LOGIC;
  signal \count[9]_i_5_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ltOp : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Green_reg[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of Hsynq_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Red_reg[3]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Red_reg[3]_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[4]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[6]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[7]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[8]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[9]_i_3__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[9]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[9]_i_5\ : label is "soft_lutpair3";
begin
\Blue_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808000"
    )
        port map (
      I0 => frame_pixel(0),
      I1 => Red120_out,
      I2 => cntl,
      I3 => Red116_out,
      I4 => \Red_reg[3]_i_4_n_0\,
      I5 => \Blue_reg[3]_i_2_n_0\,
      O => \frame_pixel[3]\(0)
    );
\Blue_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808000"
    )
        port map (
      I0 => frame_pixel(1),
      I1 => Red120_out,
      I2 => cntl,
      I3 => Red116_out,
      I4 => \Red_reg[3]_i_4_n_0\,
      I5 => \Blue_reg[3]_i_2_n_0\,
      O => \frame_pixel[3]\(1)
    );
\Blue_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808000"
    )
        port map (
      I0 => frame_pixel(2),
      I1 => Red120_out,
      I2 => cntl,
      I3 => Red116_out,
      I4 => \Red_reg[3]_i_4_n_0\,
      I5 => \Blue_reg[3]_i_2_n_0\,
      O => \frame_pixel[3]\(2)
    );
\Blue_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808000"
    )
        port map (
      I0 => frame_pixel(3),
      I1 => Red120_out,
      I2 => cntl,
      I3 => Red116_out,
      I4 => \Red_reg[3]_i_4_n_0\,
      I5 => \Blue_reg[3]_i_2_n_0\,
      O => \frame_pixel[3]\(3)
    );
\Blue_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C000E"
    )
        port map (
      I0 => \Blue_reg[3]_i_3_n_0\,
      I1 => Red116_out,
      I2 => ltOp,
      I3 => cntl,
      I4 => Red113_out,
      O => \Blue_reg[3]_i_2_n_0\
    );
\Blue_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1426042444244024"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      I2 => count_reg(6),
      I3 => count_reg(7),
      I4 => count_reg(4),
      I5 => count_reg(5),
      O => \Blue_reg[3]_i_3_n_0\
    );
\Blue_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111110000000000"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      I2 => count_reg(4),
      I3 => count_reg(5),
      I4 => count_reg(6),
      I5 => count_reg(7),
      O => Red113_out
    );
\Green_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => frame_pixel(4),
      I1 => Red120_out,
      I2 => cntl,
      I3 => \Red_reg[3]_i_4_n_0\,
      I4 => \Green_reg[3]_i_2_n_0\,
      O => D(0)
    );
\Green_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => frame_pixel(5),
      I1 => Red120_out,
      I2 => cntl,
      I3 => \Red_reg[3]_i_4_n_0\,
      I4 => \Green_reg[3]_i_2_n_0\,
      O => D(1)
    );
\Green_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => frame_pixel(6),
      I1 => Red120_out,
      I2 => cntl,
      I3 => \Red_reg[3]_i_4_n_0\,
      I4 => \Green_reg[3]_i_2_n_0\,
      O => D(2)
    );
\Green_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => frame_pixel(7),
      I1 => Red120_out,
      I2 => cntl,
      I3 => \Red_reg[3]_i_4_n_0\,
      I4 => \Green_reg[3]_i_2_n_0\,
      O => D(3)
    );
\Green_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000032"
    )
        port map (
      I0 => \Red_reg[3]_i_8_n_0\,
      I1 => Red116_out,
      I2 => \Green_reg[3]_i_3_n_0\,
      I3 => cntl,
      I4 => ltOp,
      O => \Green_reg[3]_i_2_n_0\
    );
\Green_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20004444"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      I2 => count_reg(5),
      I3 => count_reg(6),
      I4 => count_reg(7),
      O => \Green_reg[3]_i_3_n_0\
    );
Hsynq_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => count_reg(9),
      I4 => count_reg(8),
      O => Hsynq
    );
\Red_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => frame_pixel(8),
      I1 => Red120_out,
      I2 => cntl,
      I3 => \Red_reg[3]_i_4_n_0\,
      I4 => \Red_reg[3]_i_5_n_0\,
      O => \frame_pixel[11]\(0)
    );
\Red_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => frame_pixel(9),
      I1 => Red120_out,
      I2 => cntl,
      I3 => \Red_reg[3]_i_4_n_0\,
      I4 => \Red_reg[3]_i_5_n_0\,
      O => \frame_pixel[11]\(1)
    );
\Red_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => frame_pixel(10),
      I1 => Red120_out,
      I2 => cntl,
      I3 => \Red_reg[3]_i_4_n_0\,
      I4 => \Red_reg[3]_i_5_n_0\,
      O => \frame_pixel[11]\(2)
    );
\Red_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => frame_pixel(11),
      I1 => Red120_out,
      I2 => cntl,
      I3 => \Red_reg[3]_i_4_n_0\,
      I4 => \Red_reg[3]_i_5_n_0\,
      O => \frame_pixel[11]\(3)
    );
\Red_reg[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000111100011111"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      I2 => count_reg(5),
      I3 => count_reg(6),
      I4 => count_reg(7),
      I5 => count_reg(4),
      O => \count_reg[8]_0\
    );
\Red_reg[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_reg(9),
      I1 => count_reg(8),
      O => \Red_reg[3]_i_13_n_0\
    );
\Red_reg[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000010000000F"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      I2 => count_reg(9),
      I3 => count_reg(8),
      I4 => count_reg(7),
      I5 => count_reg(6),
      O => ltOp
    );
\Red_reg[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303030C0302030C"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => count_reg(7),
      I4 => count_reg(6),
      I5 => count_reg(5),
      O => \Red_reg[3]_i_15_n_0\
    );
\Red_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Red_reg[3]_i_6_n_0\,
      I1 => Red116_out,
      I2 => \Red_reg[3]_i_4_n_0\,
      I3 => \Red_reg[3]_i_8_n_0\,
      O => \count_reg[7]_0\(0)
    );
\Red_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01010103"
    )
        port map (
      I0 => count_reg(6),
      I1 => count_reg(7),
      I2 => \Red_reg[3]_i_13_n_0\,
      I3 => count_reg(5),
      I4 => count_reg(4),
      I5 => cntl,
      O => \Red_reg[3]_i_4_n_0\
    );
\Red_reg[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => ltOp,
      I1 => cntl,
      I2 => \Red_reg[3]_i_15_n_0\,
      I3 => \Red_reg[3]_i_6_n_0\,
      O => \Red_reg[3]_i_5_n_0\
    );
\Red_reg[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3424"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(9),
      I2 => count_reg(8),
      I3 => count_reg(6),
      O => \Red_reg[3]_i_6_n_0\
    );
\Red_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001C00000018"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => count_reg(9),
      I4 => count_reg(8),
      I5 => count_reg(4),
      O => Red116_out
    );
\Red_reg[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000011A8"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      I2 => count_reg(5),
      I3 => count_reg(8),
      I4 => count_reg(9),
      O => \Red_reg[3]_i_8_n_0\
    );
\Red_reg[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFFFFFF"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      I2 => count_reg(6),
      I3 => count_reg(7),
      I4 => count_reg(8),
      I5 => count_reg(9),
      O => ltOp17_in
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
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      O => plusOp(2)
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => plusOp(3)
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(4),
      O => plusOp(4)
    );
\count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      I4 => count_reg(4),
      I5 => count_reg(5),
      O => plusOp(5)
    );
\count[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(5),
      I1 => \count[9]_i_5_n_0\,
      I2 => count_reg(6),
      O => plusOp(6)
    );
\count[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count[9]_i_5_n_0\,
      I1 => count_reg(6),
      I2 => count_reg(5),
      I3 => count_reg(7),
      O => plusOp(7)
    );
\count[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count[9]_i_5_n_0\,
      I1 => count_reg(5),
      I2 => count_reg(6),
      I3 => count_reg(7),
      I4 => count_reg(8),
      O => plusOp(8)
    );
\count[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0004000"
    )
        port map (
      I0 => \count[9]_i_3__0_n_0\,
      I1 => count_reg(4),
      I2 => count_reg(9),
      I3 => count_reg(8),
      I4 => \count[9]_i_4_n_0\,
      O => \count[9]_i_1__0_n_0\
    );
\count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      I2 => count_reg(7),
      I3 => count_reg(6),
      I4 => count_reg(5),
      I5 => \count[9]_i_5_n_0\,
      O => plusOp(9)
    );
\count[9]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      O => \count[9]_i_3__0_n_0\
    );
\count[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => count_reg(5),
      I1 => count_reg(6),
      I2 => count_reg(7),
      O => \count[9]_i_4_n_0\
    );
\count[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(3),
      I2 => count_reg(1),
      I3 => count_reg(0),
      I4 => count_reg(2),
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
      R => \count[9]_i_1__0_n_0\
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
      R => \count[9]_i_1__0_n_0\
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
      R => \count[9]_i_1__0_n_0\
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
      R => \count[9]_i_1__0_n_0\
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
      R => \count[9]_i_1__0_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => plusOp(5),
      Q => count_reg(5),
      R => \count[9]_i_1__0_n_0\
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
      R => \count[9]_i_1__0_n_0\
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
      R => \count[9]_i_1__0_n_0\
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
      R => \count[9]_i_1__0_n_0\
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
      R => \count[9]_i_1__0_n_0\
    );
v_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => \count[9]_i_1__0_n_0\,
      Q => E(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vertical_counter is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Red120_out : out STD_LOGIC;
    Vsynq : out STD_LOGIC;
    cntl : in STD_LOGIC;
    ltOp17_in : in STD_LOGIC;
    \Blue_reg[3]_i_1\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pixel_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vertical_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vertical_counter is
  signal \^red120_out\ : STD_LOGIC;
  signal \Red_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \Red_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal V_Count_Value : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal Vsynq_INST_0_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[6]_i_2_n_0\ : STD_LOGIC;
  signal \count[9]_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Red_reg[3]_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Red_reg[3]_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of Vsynq_INST_0_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[6]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[9]_i_2\ : label is "soft_lutpair8";
begin
  Red120_out <= \^red120_out\;
\Red_reg[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => V_Count_Value(4),
      I1 => V_Count_Value(3),
      I2 => V_Count_Value(2),
      I3 => V_Count_Value(0),
      I4 => V_Count_Value(1),
      O => \Red_reg[3]_i_10_n_0\
    );
\Red_reg[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => V_Count_Value(6),
      I1 => V_Count_Value(7),
      I2 => V_Count_Value(8),
      O => \Red_reg[3]_i_12_n_0\
    );
\Red_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0008000A0020"
    )
        port map (
      I0 => ltOp17_in,
      I1 => \Red_reg[3]_i_10_n_0\,
      I2 => V_Count_Value(9),
      I3 => \Blue_reg[3]_i_1\,
      I4 => \Red_reg[3]_i_12_n_0\,
      I5 => V_Count_Value(5),
      O => \^red120_out\
    );
Vsynq_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => V_Count_Value(2),
      I1 => V_Count_Value(3),
      I2 => V_Count_Value(4),
      I3 => V_Count_Value(1),
      I4 => V_Count_Value(9),
      I5 => Vsynq_INST_0_i_1_n_0,
      O => Vsynq
    );
Vsynq_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => V_Count_Value(8),
      I1 => V_Count_Value(7),
      I2 => V_Count_Value(6),
      I3 => V_Count_Value(5),
      O => Vsynq_INST_0_i_1_n_0
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555777"
    )
        port map (
      I0 => V_Count_Value(9),
      I1 => Vsynq_INST_0_i_1_n_0,
      I2 => V_Count_Value(2),
      I3 => V_Count_Value(3),
      I4 => V_Count_Value(4),
      I5 => V_Count_Value(0),
      O => \count[0]_i_1__0_n_0\
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => V_Count_Value(0),
      I1 => V_Count_Value(1),
      O => \plusOp__0\(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => V_Count_Value(0),
      I1 => V_Count_Value(1),
      I2 => V_Count_Value(2),
      O => \plusOp__0\(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => V_Count_Value(2),
      I1 => V_Count_Value(1),
      I2 => V_Count_Value(0),
      I3 => V_Count_Value(3),
      O => \plusOp__0\(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => V_Count_Value(3),
      I1 => V_Count_Value(0),
      I2 => V_Count_Value(1),
      I3 => V_Count_Value(2),
      I4 => V_Count_Value(4),
      O => \plusOp__0\(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => V_Count_Value(2),
      I1 => V_Count_Value(1),
      I2 => V_Count_Value(0),
      I3 => V_Count_Value(3),
      I4 => V_Count_Value(4),
      I5 => V_Count_Value(5),
      O => \plusOp__0\(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => V_Count_Value(5),
      I1 => V_Count_Value(4),
      I2 => V_Count_Value(3),
      I3 => \count[6]_i_2_n_0\,
      I4 => V_Count_Value(2),
      I5 => V_Count_Value(6),
      O => \plusOp__0\(6)
    );
\count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => V_Count_Value(1),
      I1 => V_Count_Value(0),
      O => \count[6]_i_2_n_0\
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => V_Count_Value(6),
      I1 => \count[9]_i_3_n_0\,
      I2 => V_Count_Value(7),
      O => \plusOp__0\(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => V_Count_Value(7),
      I1 => \count[9]_i_3_n_0\,
      I2 => V_Count_Value(6),
      I3 => V_Count_Value(8),
      O => \plusOp__0\(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888808080"
    )
        port map (
      I0 => V_Count_Value(9),
      I1 => \count_reg[0]_0\(0),
      I2 => Vsynq_INST_0_i_1_n_0,
      I3 => V_Count_Value(2),
      I4 => V_Count_Value(3),
      I5 => V_Count_Value(4),
      O => count
    );
\count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => V_Count_Value(8),
      I1 => V_Count_Value(6),
      I2 => \count[9]_i_3_n_0\,
      I3 => V_Count_Value(7),
      I4 => V_Count_Value(9),
      O => \plusOp__0\(9)
    );
\count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => V_Count_Value(2),
      I1 => V_Count_Value(1),
      I2 => V_Count_Value(0),
      I3 => V_Count_Value(3),
      I4 => V_Count_Value(4),
      I5 => V_Count_Value(5),
      O => \count[9]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \count_reg[0]_0\(0),
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
      CE => \count_reg[0]_0\(0),
      D => \plusOp__0\(1),
      Q => V_Count_Value(1),
      R => count
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \count_reg[0]_0\(0),
      D => \plusOp__0\(2),
      Q => V_Count_Value(2),
      R => count
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \count_reg[0]_0\(0),
      D => \plusOp__0\(3),
      Q => V_Count_Value(3),
      R => count
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \count_reg[0]_0\(0),
      D => \plusOp__0\(4),
      Q => V_Count_Value(4),
      R => count
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \count_reg[0]_0\(0),
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
      CE => \count_reg[0]_0\(0),
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
      CE => \count_reg[0]_0\(0),
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
      CE => \count_reg[0]_0\(0),
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
      CE => \count_reg[0]_0\(0),
      D => \plusOp__0\(9),
      Q => V_Count_Value(9),
      R => count
    );
\fr_address_reg[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cntl,
      I1 => \^red120_out\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top is
  port (
    Red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_address : out STD_LOGIC_VECTOR ( 18 downto 0 );
    Vsynq : out STD_LOGIC;
    Hsynq : out STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    cntl : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top is
  signal Red120_out : STD_LOGIC;
  signal VGA_Horiz_n_1 : STD_LOGIC;
  signal VGA_Horiz_n_10 : STD_LOGIC;
  signal VGA_Horiz_n_11 : STD_LOGIC;
  signal VGA_Horiz_n_12 : STD_LOGIC;
  signal VGA_Horiz_n_13 : STD_LOGIC;
  signal VGA_Horiz_n_15 : STD_LOGIC;
  signal VGA_Horiz_n_2 : STD_LOGIC;
  signal VGA_Horiz_n_3 : STD_LOGIC;
  signal VGA_Horiz_n_4 : STD_LOGIC;
  signal VGA_Horiz_n_5 : STD_LOGIC;
  signal VGA_Horiz_n_6 : STD_LOGIC;
  signal VGA_Horiz_n_7 : STD_LOGIC;
  signal VGA_Horiz_n_8 : STD_LOGIC;
  signal VGA_Horiz_n_9 : STD_LOGIC;
  signal enable_V_Counter : STD_LOGIC;
  signal fr_address : STD_LOGIC;
  signal \fr_address_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \fr_address_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \fr_address_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \fr_address_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \fr_address_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \fr_address_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \fr_address_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \fr_address_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \fr_address_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \fr_address_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \fr_address_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \fr_address_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \fr_address_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \fr_address_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \fr_address_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \fr_address_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \fr_address_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \^frame_address\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal ltOp17_in : STD_LOGIC;
  signal plusOp_0 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \NLW_fr_address_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_fr_address_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Blue_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Blue_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Blue_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Blue_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Green_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Green_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Green_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Green_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Red_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Red_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Red_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Red_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[16]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \fr_address_reg[9]\ : label is "LD";
begin
  frame_address(18 downto 0) <= \^frame_address\(18 downto 0);
\Blue_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_12,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Blue(0)
    );
\Blue_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_11,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Blue(1)
    );
\Blue_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_10,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Blue(2)
    );
\Blue_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_9,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Blue(3)
    );
\Green_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_4,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Green(0)
    );
\Green_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_3,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Green(1)
    );
\Green_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_2,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Green(2)
    );
\Green_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_1,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Green(3)
    );
\Red_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_8,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Red(0)
    );
\Red_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_7,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Red(1)
    );
\Red_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_6,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Red(2)
    );
\Red_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => VGA_Horiz_n_5,
      G => VGA_Horiz_n_13,
      GE => '1',
      Q => Red(3)
    );
VGA_Horiz: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_horizontal_counter
     port map (
      D(3) => VGA_Horiz_n_1,
      D(2) => VGA_Horiz_n_2,
      D(1) => VGA_Horiz_n_3,
      D(0) => VGA_Horiz_n_4,
      E(0) => enable_V_Counter,
      Hsynq => Hsynq,
      Red120_out => Red120_out,
      cntl => cntl,
      \count_reg[7]_0\(0) => VGA_Horiz_n_13,
      \count_reg[8]_0\ => VGA_Horiz_n_15,
      frame_pixel(11 downto 0) => frame_pixel(11 downto 0),
      \frame_pixel[11]\(3) => VGA_Horiz_n_5,
      \frame_pixel[11]\(2) => VGA_Horiz_n_6,
      \frame_pixel[11]\(1) => VGA_Horiz_n_7,
      \frame_pixel[11]\(0) => VGA_Horiz_n_8,
      \frame_pixel[3]\(3) => VGA_Horiz_n_9,
      \frame_pixel[3]\(2) => VGA_Horiz_n_10,
      \frame_pixel[3]\(1) => VGA_Horiz_n_11,
      \frame_pixel[3]\(0) => VGA_Horiz_n_12,
      ltOp17_in => ltOp17_in,
      pixel_clk => pixel_clk
    );
VGA_Verti: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vertical_counter
     port map (
      \Blue_reg[3]_i_1\ => VGA_Horiz_n_15,
      E(0) => fr_address,
      Red120_out => Red120_out,
      Vsynq => Vsynq,
      cntl => cntl,
      \count_reg[0]_0\(0) => enable_V_Counter,
      ltOp17_in => ltOp17_in,
      pixel_clk => pixel_clk
    );
\fr_address_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(0),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(0)
    );
\fr_address_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^frame_address\(0),
      O => plusOp_0(0)
    );
\fr_address_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(10),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(10)
    );
\fr_address_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(11),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(11)
    );
\fr_address_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(12),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(12)
    );
\fr_address_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fr_address_reg[8]_i_1_n_0\,
      CO(3) => \fr_address_reg[12]_i_1_n_0\,
      CO(2) => \fr_address_reg[12]_i_1_n_1\,
      CO(1) => \fr_address_reg[12]_i_1_n_2\,
      CO(0) => \fr_address_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(12 downto 9),
      S(3 downto 0) => \^frame_address\(12 downto 9)
    );
\fr_address_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(13),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(13)
    );
\fr_address_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(14),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(14)
    );
\fr_address_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(15),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(15)
    );
\fr_address_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(16),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(16)
    );
\fr_address_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fr_address_reg[12]_i_1_n_0\,
      CO(3) => \fr_address_reg[16]_i_1_n_0\,
      CO(2) => \fr_address_reg[16]_i_1_n_1\,
      CO(1) => \fr_address_reg[16]_i_1_n_2\,
      CO(0) => \fr_address_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(16 downto 13),
      S(3 downto 0) => \^frame_address\(16 downto 13)
    );
\fr_address_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(17),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(17)
    );
\fr_address_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(18),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(18)
    );
\fr_address_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fr_address_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_fr_address_reg[18]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \fr_address_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_fr_address_reg[18]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => plusOp_0(18 downto 17),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^frame_address\(18 downto 17)
    );
\fr_address_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(1),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(1)
    );
\fr_address_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(2),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(2)
    );
\fr_address_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(3),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(3)
    );
\fr_address_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(4),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(4)
    );
\fr_address_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \fr_address_reg[4]_i_1_n_0\,
      CO(2) => \fr_address_reg[4]_i_1_n_1\,
      CO(1) => \fr_address_reg[4]_i_1_n_2\,
      CO(0) => \fr_address_reg[4]_i_1_n_3\,
      CYINIT => \^frame_address\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(4 downto 1),
      S(3 downto 0) => \^frame_address\(4 downto 1)
    );
\fr_address_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(5),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(5)
    );
\fr_address_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(6),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(6)
    );
\fr_address_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(7),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(7)
    );
\fr_address_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(8),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(8)
    );
\fr_address_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fr_address_reg[4]_i_1_n_0\,
      CO(3) => \fr_address_reg[8]_i_1_n_0\,
      CO(2) => \fr_address_reg[8]_i_1_n_1\,
      CO(1) => \fr_address_reg[8]_i_1_n_2\,
      CO(0) => \fr_address_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp_0(8 downto 5),
      S(3 downto 0) => \^frame_address\(8 downto 5)
    );
\fr_address_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => plusOp_0(9),
      G => fr_address,
      GE => '1',
      Q => \^frame_address\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pixel_clk : in STD_LOGIC;
    cntl : in STD_LOGIC;
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Hsynq : out STD_LOGIC;
    Vsynq : out STD_LOGIC;
    Red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_address : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_vga_top_0_0,vga_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vga_top,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of pixel_clk : signal is "xilinx.com:signal:clock:1.0 pixel_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of pixel_clk : signal is "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clock_devider_0_0_divided_clk, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_top
     port map (
      Blue(3 downto 0) => Blue(3 downto 0),
      Green(3 downto 0) => Green(3 downto 0),
      Hsynq => Hsynq,
      Red(3 downto 0) => Red(3 downto 0),
      Vsynq => Vsynq,
      cntl => cntl,
      frame_address(18 downto 0) => frame_address(18 downto 0),
      frame_pixel(11 downto 0) => frame_pixel(11 downto 0),
      pixel_clk => pixel_clk
    );
end STRUCTURE;
