----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2025 12:20:54 PM
-- Design Name: 
-- Module Name: design_for_ram_w_r_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity design_for_ram_w_r_tb is
--  Port ( );
end design_for_ram_w_r_tb;

architecture Behavioral of design_for_ram_w_r_tb is

    component design_for_ram_w_r is
        Port ( CLK  : in  STD_LOGIC;
            RST  : in  STD_LOGIC;
            DATA : out STD_LOGIC_VECTOR(9 downto 0));
    end component;

    signal CLK  : STD_LOGIC := '0';
    signal RST  : STD_LOGIC := '1';
    signal DATA : STD_LOGIC_VECTOR (9 downto 0) ;

    constant ClockFrequencyHz : integer := 100e6; -- 100 MHz
    constant ClockPeriod      : time    := 1000 ms / ClockFrequencyHz;

begin

    -- Clock generation
    CLK <= not CLK after ClockPeriod / 2;
    -- Reset generation
    RST <= '0' after 10*ClockPeriod;

    uut_design_for_ram : design_for_ram_w_r
        port map (
            CLK  => CLK,
            RST  => RST,
            DATA => DATA
        );

end Behavioral;
