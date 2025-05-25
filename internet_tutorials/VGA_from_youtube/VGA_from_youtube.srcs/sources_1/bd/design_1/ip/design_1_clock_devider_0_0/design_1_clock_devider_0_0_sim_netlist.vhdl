-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun May 25 11:06:18 2025
-- Host        : dvirhersh_comp running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/fpga_course_logtel_2025/internet_tutorials/VGA_from_youtube/VGA_from_youtube.srcs/sources_1/bd/design_1/ip/design_1_clock_devider_0_0/design_1_clock_devider_0_0_sim_netlist.vhdl
-- Design      : design_1_clock_devider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clock_devider_0_0_clock_devider is
  port (
    divided_clk : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clock_devider_0_0_clock_devider : entity is "clock_devider";
end design_1_clock_devider_0_0_clock_devider;

architecture STRUCTURE of design_1_clock_devider_0_0_clock_devider is
  signal clk_out : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal clk_out_i_2_n_0 : STD_LOGIC;
  signal clk_out_i_3_n_0 : STD_LOGIC;
  signal clk_out_i_4_n_0 : STD_LOGIC;
  signal clk_out_i_5_n_0 : STD_LOGIC;
  signal clk_out_i_6_n_0 : STD_LOGIC;
  signal clk_out_i_7_n_0 : STD_LOGIC;
  signal clk_out_i_8_n_0 : STD_LOGIC;
  signal clk_out_i_9_n_0 : STD_LOGIC;
  signal counter_value : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal counter_value_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter_value_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_value_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_value_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_value_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_value_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_value_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_value_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_value_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_value_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_value_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_value_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_value_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_value_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_value_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_value_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_value_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \counter_value_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \counter_value_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_value_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_value_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_value_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_value_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_value_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_value_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^divided_clk\ : STD_LOGIC;
  signal \NLW_counter_value_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_value_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_out_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_value[0]_i_1\ : label is "soft_lutpair0";
begin
  divided_clk <= \^divided_clk\;
clk_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => clk_out_i_4_n_0,
      I3 => clk_out_i_5_n_0,
      I4 => \^divided_clk\,
      O => clk_out_i_1_n_0
    );
clk_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_value(18),
      I1 => counter_value(19),
      I2 => counter_value(16),
      I3 => counter_value(17),
      I4 => clk_out_i_6_n_0,
      O => clk_out_i_2_n_0
    );
clk_out_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_value(26),
      I1 => counter_value(27),
      I2 => counter_value(24),
      I3 => counter_value(25),
      I4 => clk_out_i_7_n_0,
      O => clk_out_i_3_n_0
    );
clk_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => counter_value(2),
      I1 => counter_value(3),
      I2 => counter_value(1),
      I3 => counter_value(0),
      I4 => clk_out_i_8_n_0,
      O => clk_out_i_4_n_0
    );
clk_out_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_value(10),
      I1 => counter_value(11),
      I2 => counter_value(8),
      I3 => counter_value(9),
      I4 => clk_out_i_9_n_0,
      O => clk_out_i_5_n_0
    );
clk_out_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_value(21),
      I1 => counter_value(20),
      I2 => counter_value(23),
      I3 => counter_value(22),
      O => clk_out_i_6_n_0
    );
clk_out_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_value(29),
      I1 => counter_value(28),
      I2 => counter_value(31),
      I3 => counter_value(30),
      O => clk_out_i_7_n_0
    );
clk_out_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_value(5),
      I1 => counter_value(4),
      I2 => counter_value(7),
      I3 => counter_value(6),
      O => clk_out_i_8_n_0
    );
clk_out_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_value(13),
      I1 => counter_value(12),
      I2 => counter_value(15),
      I3 => counter_value(14),
      O => clk_out_i_9_n_0
    );
clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_out_i_1_n_0,
      Q => \^divided_clk\,
      R => '0'
    );
\counter_value[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_value(0),
      O => counter_value_0(0)
    );
\counter_value[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => clk_out_i_2_n_0,
      I1 => clk_out_i_3_n_0,
      I2 => clk_out_i_4_n_0,
      I3 => clk_out_i_5_n_0,
      O => clk_out
    );
\counter_value_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => counter_value_0(0),
      Q => counter_value(0),
      R => '0'
    );
\counter_value_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => counter_value(10),
      R => clk_out
    );
\counter_value_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => counter_value(11),
      R => clk_out
    );
\counter_value_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => counter_value(12),
      R => clk_out
    );
\counter_value_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_value_reg[8]_i_1_n_0\,
      CO(3) => \counter_value_reg[12]_i_1_n_0\,
      CO(2) => \counter_value_reg[12]_i_1_n_1\,
      CO(1) => \counter_value_reg[12]_i_1_n_2\,
      CO(0) => \counter_value_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter_value(12 downto 9)
    );
\counter_value_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => counter_value(13),
      R => clk_out
    );
\counter_value_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => counter_value(14),
      R => clk_out
    );
\counter_value_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(15),
      Q => counter_value(15),
      R => clk_out
    );
\counter_value_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(16),
      Q => counter_value(16),
      R => clk_out
    );
\counter_value_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_value_reg[12]_i_1_n_0\,
      CO(3) => \counter_value_reg[16]_i_1_n_0\,
      CO(2) => \counter_value_reg[16]_i_1_n_1\,
      CO(1) => \counter_value_reg[16]_i_1_n_2\,
      CO(0) => \counter_value_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter_value(16 downto 13)
    );
\counter_value_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(17),
      Q => counter_value(17),
      R => clk_out
    );
\counter_value_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(18),
      Q => counter_value(18),
      R => clk_out
    );
\counter_value_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(19),
      Q => counter_value(19),
      R => clk_out
    );
\counter_value_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => counter_value(1),
      R => clk_out
    );
\counter_value_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(20),
      Q => counter_value(20),
      R => clk_out
    );
\counter_value_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_value_reg[16]_i_1_n_0\,
      CO(3) => \counter_value_reg[20]_i_1_n_0\,
      CO(2) => \counter_value_reg[20]_i_1_n_1\,
      CO(1) => \counter_value_reg[20]_i_1_n_2\,
      CO(0) => \counter_value_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => counter_value(20 downto 17)
    );
\counter_value_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(21),
      Q => counter_value(21),
      R => clk_out
    );
\counter_value_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(22),
      Q => counter_value(22),
      R => clk_out
    );
\counter_value_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(23),
      Q => counter_value(23),
      R => clk_out
    );
\counter_value_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(24),
      Q => counter_value(24),
      R => clk_out
    );
\counter_value_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_value_reg[20]_i_1_n_0\,
      CO(3) => \counter_value_reg[24]_i_1_n_0\,
      CO(2) => \counter_value_reg[24]_i_1_n_1\,
      CO(1) => \counter_value_reg[24]_i_1_n_2\,
      CO(0) => \counter_value_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => counter_value(24 downto 21)
    );
\counter_value_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(25),
      Q => counter_value(25),
      R => clk_out
    );
\counter_value_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(26),
      Q => counter_value(26),
      R => clk_out
    );
\counter_value_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(27),
      Q => counter_value(27),
      R => clk_out
    );
\counter_value_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(28),
      Q => counter_value(28),
      R => clk_out
    );
\counter_value_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_value_reg[24]_i_1_n_0\,
      CO(3) => \counter_value_reg[28]_i_1_n_0\,
      CO(2) => \counter_value_reg[28]_i_1_n_1\,
      CO(1) => \counter_value_reg[28]_i_1_n_2\,
      CO(0) => \counter_value_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => counter_value(28 downto 25)
    );
\counter_value_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(29),
      Q => counter_value(29),
      R => clk_out
    );
\counter_value_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => counter_value(2),
      R => clk_out
    );
\counter_value_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(30),
      Q => counter_value(30),
      R => clk_out
    );
\counter_value_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(31),
      Q => counter_value(31),
      R => clk_out
    );
\counter_value_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_value_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter_value_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_value_reg[31]_i_2_n_2\,
      CO(0) => \counter_value_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_value_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => counter_value(31 downto 29)
    );
\counter_value_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => counter_value(3),
      R => clk_out
    );
\counter_value_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => counter_value(4),
      R => clk_out
    );
\counter_value_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_value_reg[4]_i_1_n_0\,
      CO(2) => \counter_value_reg[4]_i_1_n_1\,
      CO(1) => \counter_value_reg[4]_i_1_n_2\,
      CO(0) => \counter_value_reg[4]_i_1_n_3\,
      CYINIT => counter_value(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter_value(4 downto 1)
    );
\counter_value_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => counter_value(5),
      R => clk_out
    );
\counter_value_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => counter_value(6),
      R => clk_out
    );
\counter_value_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => counter_value(7),
      R => clk_out
    );
\counter_value_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => counter_value(8),
      R => clk_out
    );
\counter_value_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_value_reg[4]_i_1_n_0\,
      CO(3) => \counter_value_reg[8]_i_1_n_0\,
      CO(2) => \counter_value_reg[8]_i_1_n_1\,
      CO(1) => \counter_value_reg[8]_i_1_n_2\,
      CO(0) => \counter_value_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter_value(8 downto 5)
    );
\counter_value_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => counter_value(9),
      R => clk_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clock_devider_0_0 is
  port (
    clk : in STD_LOGIC;
    divided_clk : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_clock_devider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_clock_devider_0_0 : entity is "design_1_clock_devider_0_0,clock_devider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_clock_devider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_clock_devider_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_clock_devider_0_0 : entity is "clock_devider,Vivado 2019.2";
end design_1_clock_devider_0_0;

architecture STRUCTURE of design_1_clock_devider_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute x_interface_info of divided_clk : signal is "xilinx.com:signal:clock:1.0 divided_clk CLK";
  attribute x_interface_parameter of divided_clk : signal is "XIL_INTERFACENAME divided_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clock_devider_0_0_divided_clk, INSERT_VIP 0";
begin
U0: entity work.design_1_clock_devider_0_0_clock_devider
     port map (
      clk => clk,
      divided_clk => divided_clk
    );
end STRUCTURE;
