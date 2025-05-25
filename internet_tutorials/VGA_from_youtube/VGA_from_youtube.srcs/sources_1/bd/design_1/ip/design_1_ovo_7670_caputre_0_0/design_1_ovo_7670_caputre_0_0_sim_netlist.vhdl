-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 25 12:50:12 2025
-- Host        : dvirhersh_comp running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/fpga_course_logtel_2025/internet_tutorials/VGA_from_youtube/VGA_from_youtube.srcs/sources_1/bd/design_1/ip/design_1_ovo_7670_caputre_0_0/design_1_ovo_7670_caputre_0_0_sim_netlist.vhdl
-- Design      : design_1_ovo_7670_caputre_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ovo_7670_caputre_0_0_ovo_7670_caputre is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    wr_en : out STD_LOGIC;
    camera_h_ref : in STD_LOGIC;
    pclk : in STD_LOGIC;
    camera_v_sync : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    zoom_x2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ovo_7670_caputre_0_0_ovo_7670_caputre : entity is "ovo_7670_caputre";
end design_1_ovo_7670_caputre_0_0_ovo_7670_caputre;

architecture STRUCTURE of design_1_ovo_7670_caputre_0_0_ovo_7670_caputre is
  signal \^addr\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal address : STD_LOGIC;
  signal \address0__2\ : STD_LOGIC;
  signal \address[18]_i_4_n_0\ : STD_LOGIC;
  signal \address[18]_i_5_n_0\ : STD_LOGIC;
  signal \address[18]_i_6_n_0\ : STD_LOGIC;
  signal \address[3]_i_2_n_0\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \address_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \address_reg[18]_i_2_n_5\ : STD_LOGIC;
  signal \address_reg[18]_i_2_n_6\ : STD_LOGIC;
  signal \address_reg[18]_i_2_n_7\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \counter_col[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter_col[10]_i_3_n_0\ : STD_LOGIC;
  signal counter_col_reg : STD_LOGIC_VECTOR ( 10 downto 5 );
  signal \counter_col_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_col_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_col_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_col_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_col_reg_n_0_[4]\ : STD_LOGIC;
  signal counter_row0 : STD_LOGIC;
  signal \counter_row[10]_i_3_n_0\ : STD_LOGIC;
  signal counter_row_reg : STD_LOGIC_VECTOR ( 10 downto 3 );
  signal \counter_row_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_row_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_row_reg_n_0_[2]\ : STD_LOGIC;
  signal \geqOp__8\ : STD_LOGIC;
  signal latch_href : STD_LOGIC;
  signal \latched_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^wr_en\ : STD_LOGIC;
  signal wr_en_i_1_n_0 : STD_LOGIC;
  signal \write_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \NLW_address_reg[18]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_address_reg[18]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_col[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_col[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_col[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_col[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_col[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_col[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_col[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter_col[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter_row[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_row[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_row[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_row[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_row[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_row[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_row[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_row[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_state[1]_i_1\ : label is "soft_lutpair8";
begin
  addr(18 downto 0) <= \^addr\(18 downto 0);
  wr_en <= \^wr_en\;
\address[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => p_0_in_0,
      I1 => zoom_x2,
      I2 => \address0__2\,
      O => address
    );
\address[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \address[18]_i_4_n_0\,
      I1 => \address[18]_i_5_n_0\,
      I2 => counter_row_reg(9),
      I3 => \address[18]_i_6_n_0\,
      I4 => counter_row_reg(10),
      I5 => \geqOp__8\,
      O => \address0__2\
    );
\address[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015555555"
    )
        port map (
      I0 => counter_col_reg(9),
      I1 => counter_col_reg(5),
      I2 => counter_col_reg(6),
      I3 => counter_col_reg(7),
      I4 => counter_col_reg(8),
      I5 => counter_col_reg(10),
      O => \address[18]_i_4_n_0\
    );
\address[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8000"
    )
        port map (
      I0 => counter_row_reg(5),
      I1 => counter_row_reg(3),
      I2 => counter_row_reg(4),
      I3 => counter_row_reg(6),
      I4 => counter_row_reg(7),
      I5 => counter_row_reg(8),
      O => \address[18]_i_5_n_0\
    );
\address[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000777FFFFFFFFF"
    )
        port map (
      I0 => counter_row_reg(6),
      I1 => counter_row_reg(5),
      I2 => counter_row_reg(4),
      I3 => counter_row_reg(3),
      I4 => counter_row_reg(7),
      I5 => counter_row_reg(8),
      O => \address[18]_i_6_n_0\
    );
\address[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => counter_col_reg(6),
      I1 => counter_col_reg(5),
      I2 => counter_col_reg(7),
      I3 => counter_col_reg(8),
      I4 => counter_col_reg(9),
      I5 => counter_col_reg(10),
      O => \geqOp__8\
    );
\address[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr\(0),
      O => \address[3]_i_2_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[3]_i_1_n_7\,
      Q => \^addr\(0),
      R => camera_v_sync
    );
\address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[11]_i_1_n_5\,
      Q => \^addr\(10),
      R => camera_v_sync
    );
\address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[11]_i_1_n_4\,
      Q => \^addr\(11),
      R => camera_v_sync
    );
\address_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[7]_i_1_n_0\,
      CO(3) => \address_reg[11]_i_1_n_0\,
      CO(2) => \address_reg[11]_i_1_n_1\,
      CO(1) => \address_reg[11]_i_1_n_2\,
      CO(0) => \address_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[11]_i_1_n_4\,
      O(2) => \address_reg[11]_i_1_n_5\,
      O(1) => \address_reg[11]_i_1_n_6\,
      O(0) => \address_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^addr\(11 downto 8)
    );
\address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[15]_i_1_n_7\,
      Q => \^addr\(12),
      R => camera_v_sync
    );
\address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[15]_i_1_n_6\,
      Q => \^addr\(13),
      R => camera_v_sync
    );
\address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[15]_i_1_n_5\,
      Q => \^addr\(14),
      R => camera_v_sync
    );
\address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[15]_i_1_n_4\,
      Q => \^addr\(15),
      R => camera_v_sync
    );
\address_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[11]_i_1_n_0\,
      CO(3) => \address_reg[15]_i_1_n_0\,
      CO(2) => \address_reg[15]_i_1_n_1\,
      CO(1) => \address_reg[15]_i_1_n_2\,
      CO(0) => \address_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[15]_i_1_n_4\,
      O(2) => \address_reg[15]_i_1_n_5\,
      O(1) => \address_reg[15]_i_1_n_6\,
      O(0) => \address_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^addr\(15 downto 12)
    );
\address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[18]_i_2_n_7\,
      Q => \^addr\(16),
      R => camera_v_sync
    );
\address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[18]_i_2_n_6\,
      Q => \^addr\(17),
      R => camera_v_sync
    );
\address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[18]_i_2_n_5\,
      Q => \^addr\(18),
      R => camera_v_sync
    );
\address_reg[18]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[15]_i_1_n_0\,
      CO(3 downto 2) => \NLW_address_reg[18]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \address_reg[18]_i_2_n_2\,
      CO(0) => \address_reg[18]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_address_reg[18]_i_2_O_UNCONNECTED\(3),
      O(2) => \address_reg[18]_i_2_n_5\,
      O(1) => \address_reg[18]_i_2_n_6\,
      O(0) => \address_reg[18]_i_2_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^addr\(18 downto 16)
    );
\address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[3]_i_1_n_6\,
      Q => \^addr\(1),
      R => camera_v_sync
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[3]_i_1_n_5\,
      Q => \^addr\(2),
      R => camera_v_sync
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[3]_i_1_n_4\,
      Q => \^addr\(3),
      R => camera_v_sync
    );
\address_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_reg[3]_i_1_n_0\,
      CO(2) => \address_reg[3]_i_1_n_1\,
      CO(1) => \address_reg[3]_i_1_n_2\,
      CO(0) => \address_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \address_reg[3]_i_1_n_4\,
      O(2) => \address_reg[3]_i_1_n_5\,
      O(1) => \address_reg[3]_i_1_n_6\,
      O(0) => \address_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^addr\(3 downto 1),
      S(0) => \address[3]_i_2_n_0\
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[7]_i_1_n_7\,
      Q => \^addr\(4),
      R => camera_v_sync
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[7]_i_1_n_6\,
      Q => \^addr\(5),
      R => camera_v_sync
    );
\address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[7]_i_1_n_5\,
      Q => \^addr\(6),
      R => camera_v_sync
    );
\address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[7]_i_1_n_4\,
      Q => \^addr\(7),
      R => camera_v_sync
    );
\address_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[3]_i_1_n_0\,
      CO(3) => \address_reg[7]_i_1_n_0\,
      CO(2) => \address_reg[7]_i_1_n_1\,
      CO(1) => \address_reg[7]_i_1_n_2\,
      CO(0) => \address_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[7]_i_1_n_4\,
      O(2) => \address_reg[7]_i_1_n_5\,
      O(1) => \address_reg[7]_i_1_n_6\,
      O(0) => \address_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^addr\(7 downto 4)
    );
\address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[11]_i_1_n_7\,
      Q => \^addr\(8),
      R => camera_v_sync
    );
\address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => address,
      D => \address_reg[11]_i_1_n_6\,
      Q => \^addr\(9),
      R => camera_v_sync
    );
\counter_col[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_col_reg_n_0_[0]\,
      O => \plusOp__0\(0)
    );
\counter_col[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => camera_v_sync,
      I1 => p_0_in_0,
      I2 => camera_h_ref,
      I3 => latch_href,
      O => \counter_col[10]_i_1_n_0\
    );
\counter_col[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => counter_col_reg(8),
      I1 => counter_col_reg(6),
      I2 => \counter_col[10]_i_3_n_0\,
      I3 => counter_col_reg(7),
      I4 => counter_col_reg(9),
      I5 => counter_col_reg(10),
      O => \plusOp__0\(10)
    );
\counter_col[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter_col_reg(5),
      I1 => \counter_col_reg_n_0_[3]\,
      I2 => \counter_col_reg_n_0_[1]\,
      I3 => \counter_col_reg_n_0_[0]\,
      I4 => \counter_col_reg_n_0_[2]\,
      I5 => \counter_col_reg_n_0_[4]\,
      O => \counter_col[10]_i_3_n_0\
    );
\counter_col[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_col_reg_n_0_[0]\,
      I1 => \counter_col_reg_n_0_[1]\,
      O => \plusOp__0\(1)
    );
\counter_col[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_col_reg_n_0_[0]\,
      I1 => \counter_col_reg_n_0_[1]\,
      I2 => \counter_col_reg_n_0_[2]\,
      O => \plusOp__0\(2)
    );
\counter_col[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_col_reg_n_0_[1]\,
      I1 => \counter_col_reg_n_0_[0]\,
      I2 => \counter_col_reg_n_0_[2]\,
      I3 => \counter_col_reg_n_0_[3]\,
      O => \plusOp__0\(3)
    );
\counter_col[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_col_reg_n_0_[2]\,
      I1 => \counter_col_reg_n_0_[0]\,
      I2 => \counter_col_reg_n_0_[1]\,
      I3 => \counter_col_reg_n_0_[3]\,
      I4 => \counter_col_reg_n_0_[4]\,
      O => \plusOp__0\(4)
    );
\counter_col[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_col_reg_n_0_[3]\,
      I1 => \counter_col_reg_n_0_[1]\,
      I2 => \counter_col_reg_n_0_[0]\,
      I3 => \counter_col_reg_n_0_[2]\,
      I4 => \counter_col_reg_n_0_[4]\,
      I5 => counter_col_reg(5),
      O => \plusOp__0\(5)
    );
\counter_col[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_col[10]_i_3_n_0\,
      I1 => counter_col_reg(6),
      O => \plusOp__0\(6)
    );
\counter_col[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_col[10]_i_3_n_0\,
      I1 => counter_col_reg(6),
      I2 => counter_col_reg(7),
      O => \plusOp__0\(7)
    );
\counter_col[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => counter_col_reg(6),
      I1 => \counter_col[10]_i_3_n_0\,
      I2 => counter_col_reg(7),
      I3 => counter_col_reg(8),
      O => \plusOp__0\(8)
    );
\counter_col[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => counter_col_reg(7),
      I1 => \counter_col[10]_i_3_n_0\,
      I2 => counter_col_reg(6),
      I3 => counter_col_reg(8),
      I4 => counter_col_reg(9),
      O => \plusOp__0\(9)
    );
\counter_col_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(0),
      Q => \counter_col_reg_n_0_[0]\,
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(10),
      Q => counter_col_reg(10),
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(1),
      Q => \counter_col_reg_n_0_[1]\,
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(2),
      Q => \counter_col_reg_n_0_[2]\,
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(3),
      Q => \counter_col_reg_n_0_[3]\,
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(4),
      Q => \counter_col_reg_n_0_[4]\,
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(5),
      Q => counter_col_reg(5),
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(6),
      Q => counter_col_reg(6),
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(7),
      Q => counter_col_reg(7),
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(8),
      Q => counter_col_reg(8),
      R => \counter_col[10]_i_1_n_0\
    );
\counter_col_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in_0,
      D => \plusOp__0\(9),
      Q => counter_col_reg(9),
      R => \counter_col[10]_i_1_n_0\
    );
\counter_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_row_reg_n_0_[0]\,
      O => plusOp(0)
    );
\counter_row[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => camera_h_ref,
      I1 => latch_href,
      O => counter_row0
    );
\counter_row[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => counter_row_reg(8),
      I1 => counter_row_reg(6),
      I2 => \counter_row[10]_i_3_n_0\,
      I3 => counter_row_reg(7),
      I4 => counter_row_reg(9),
      I5 => counter_row_reg(10),
      O => plusOp(10)
    );
\counter_row[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter_row_reg(5),
      I1 => counter_row_reg(3),
      I2 => \counter_row_reg_n_0_[1]\,
      I3 => \counter_row_reg_n_0_[0]\,
      I4 => \counter_row_reg_n_0_[2]\,
      I5 => counter_row_reg(4),
      O => \counter_row[10]_i_3_n_0\
    );
\counter_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_row_reg_n_0_[0]\,
      I1 => \counter_row_reg_n_0_[1]\,
      O => plusOp(1)
    );
\counter_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_row_reg_n_0_[0]\,
      I1 => \counter_row_reg_n_0_[1]\,
      I2 => \counter_row_reg_n_0_[2]\,
      O => plusOp(2)
    );
\counter_row[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_row_reg_n_0_[1]\,
      I1 => \counter_row_reg_n_0_[0]\,
      I2 => \counter_row_reg_n_0_[2]\,
      I3 => counter_row_reg(3),
      O => plusOp(3)
    );
\counter_row[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_row_reg_n_0_[2]\,
      I1 => \counter_row_reg_n_0_[0]\,
      I2 => \counter_row_reg_n_0_[1]\,
      I3 => counter_row_reg(3),
      I4 => counter_row_reg(4),
      O => plusOp(4)
    );
\counter_row[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => counter_row_reg(3),
      I1 => \counter_row_reg_n_0_[1]\,
      I2 => \counter_row_reg_n_0_[0]\,
      I3 => \counter_row_reg_n_0_[2]\,
      I4 => counter_row_reg(4),
      I5 => counter_row_reg(5),
      O => plusOp(5)
    );
\counter_row[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_row[10]_i_3_n_0\,
      I1 => counter_row_reg(6),
      O => plusOp(6)
    );
\counter_row[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_row[10]_i_3_n_0\,
      I1 => counter_row_reg(6),
      I2 => counter_row_reg(7),
      O => plusOp(7)
    );
\counter_row[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => counter_row_reg(6),
      I1 => \counter_row[10]_i_3_n_0\,
      I2 => counter_row_reg(7),
      I3 => counter_row_reg(8),
      O => plusOp(8)
    );
\counter_row[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => counter_row_reg(7),
      I1 => \counter_row[10]_i_3_n_0\,
      I2 => counter_row_reg(6),
      I3 => counter_row_reg(8),
      I4 => counter_row_reg(9),
      O => plusOp(9)
    );
\counter_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(0),
      Q => \counter_row_reg_n_0_[0]\,
      R => camera_v_sync
    );
\counter_row_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(10),
      Q => counter_row_reg(10),
      R => camera_v_sync
    );
\counter_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(1),
      Q => \counter_row_reg_n_0_[1]\,
      R => camera_v_sync
    );
\counter_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(2),
      Q => \counter_row_reg_n_0_[2]\,
      R => camera_v_sync
    );
\counter_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(3),
      Q => counter_row_reg(3),
      R => camera_v_sync
    );
\counter_row_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(4),
      Q => counter_row_reg(4),
      R => camera_v_sync
    );
\counter_row_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(5),
      Q => counter_row_reg(5),
      R => camera_v_sync
    );
\counter_row_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(6),
      Q => counter_row_reg(6),
      R => camera_v_sync
    );
\counter_row_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(7),
      Q => counter_row_reg(7),
      R => camera_v_sync
    );
\counter_row_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(8),
      Q => counter_row_reg(8),
      R => camera_v_sync
    );
\counter_row_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => counter_row0,
      D => plusOp(9),
      Q => counter_row_reg(9),
      R => camera_v_sync
    );
\dout[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => camera_v_sync,
      O => p_0_in1_in
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(9),
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => \latched_data_reg_n_0_[14]\,
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => \latched_data_reg_n_0_[15]\,
      Q => dout(11),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(10),
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(11),
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(12),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(15),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => \latched_data_reg_n_0_[8]\,
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => \latched_data_reg_n_0_[9]\,
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => \latched_data_reg_n_0_[10]\,
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => \latched_data_reg_n_0_[12]\,
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => \latched_data_reg_n_0_[13]\,
      Q => dout(9),
      R => '0'
    );
latch_href_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => p_0_in1_in,
      D => camera_h_ref,
      Q => latch_href,
      R => '0'
    );
\latched_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => din(0),
      Q => p_0_in(8),
      R => '0'
    );
\latched_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(10),
      Q => \latched_data_reg_n_0_[10]\,
      R => '0'
    );
\latched_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(12),
      Q => \latched_data_reg_n_0_[12]\,
      R => '0'
    );
\latched_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(13),
      Q => \latched_data_reg_n_0_[13]\,
      R => '0'
    );
\latched_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(14),
      Q => \latched_data_reg_n_0_[14]\,
      R => '0'
    );
\latched_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(15),
      Q => \latched_data_reg_n_0_[15]\,
      R => '0'
    );
\latched_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => din(1),
      Q => p_0_in(9),
      R => '0'
    );
\latched_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => din(2),
      Q => p_0_in(10),
      R => '0'
    );
\latched_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => din(3),
      Q => p_0_in(11),
      R => '0'
    );
\latched_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => din(4),
      Q => p_0_in(12),
      R => '0'
    );
\latched_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => din(5),
      Q => p_0_in(13),
      R => '0'
    );
\latched_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => din(6),
      Q => p_0_in(14),
      R => '0'
    );
\latched_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => din(7),
      Q => p_0_in(15),
      R => '0'
    );
\latched_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(8),
      Q => \latched_data_reg_n_0_[8]\,
      R => '0'
    );
\latched_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => p_0_in1_in,
      D => p_0_in(9),
      Q => \latched_data_reg_n_0_[9]\,
      R => '0'
    );
wr_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8A8B8"
    )
        port map (
      I0 => \^wr_en\,
      I1 => camera_v_sync,
      I2 => p_0_in_0,
      I3 => zoom_x2,
      I4 => \address0__2\,
      O => wr_en_i_1_n_0
    );
wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => wr_en_i_1_n_0,
      Q => \^wr_en\,
      R => '0'
    );
\write_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \write_state_reg_n_0_[0]\,
      I1 => camera_h_ref,
      I2 => camera_v_sync,
      O => \write_state[0]_i_1_n_0\
    );
\write_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \write_state_reg_n_0_[0]\,
      I1 => camera_v_sync,
      O => \write_state[1]_i_1_n_0\
    );
\write_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \write_state[0]_i_1_n_0\,
      Q => \write_state_reg_n_0_[0]\,
      R => '0'
    );
\write_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => \write_state[1]_i_1_n_0\,
      Q => p_0_in_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ovo_7670_caputre_0_0 is
  port (
    pclk : in STD_LOGIC;
    camera_v_sync : in STD_LOGIC;
    camera_h_ref : in STD_LOGIC;
    zoom_x2 : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ovo_7670_caputre_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ovo_7670_caputre_0_0 : entity is "design_1_ovo_7670_caputre_0_0,ovo_7670_caputre,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ovo_7670_caputre_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ovo_7670_caputre_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ovo_7670_caputre_0_0 : entity is "ovo_7670_caputre,Vivado 2019.2";
end design_1_ovo_7670_caputre_0_0;

architecture STRUCTURE of design_1_ovo_7670_caputre_0_0 is
begin
U0: entity work.design_1_ovo_7670_caputre_0_0_ovo_7670_caputre
     port map (
      addr(18 downto 0) => addr(18 downto 0),
      camera_h_ref => camera_h_ref,
      camera_v_sync => camera_v_sync,
      din(7 downto 0) => din(7 downto 0),
      dout(11 downto 0) => dout(11 downto 0),
      pclk => pclk,
      wr_en => wr_en,
      zoom_x2 => zoom_x2
    );
end STRUCTURE;
