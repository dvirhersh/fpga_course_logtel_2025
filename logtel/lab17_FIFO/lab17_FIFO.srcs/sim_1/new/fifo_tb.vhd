-- vhdl-linter-disable component
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2025 07:38:13 PM
-- Design Name: 
-- Module Name: fifo_tb - Behavioral
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
use IEEE.std_logic_unsigned.all;  -- vhdl-linter-disable-line not-declared
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo_tb is
--  Port ( );
end fifo_tb;

architecture Behavioral of fifo_tb is

COMPONENT fifo_generator_0
  PORT (
    wr_clk : IN  STD_LOGIC;
    rd_clk : IN  STD_LOGIC;
    din    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
    wr_en  : IN  STD_LOGIC;
    rd_en  : IN  STD_LOGIC;
    dout   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    full   : OUT STD_LOGIC;
    empty  : OUT STD_LOGIC 
  );
END COMPONENT;

    signal wr_clk : STD_LOGIC := '0';
    signal rd_clk : STD_LOGIC := '0';
    signal din    : STD_LOGIC_VECTOR(15 DOWNTO 0)  := (others => '0');
    signal wr_en  : STD_LOGIC := '0';
    signal rd_en  : STD_LOGIC := '0';
    signal dout   : STD_LOGIC_VECTOR(15 DOWNTO 0);
    signal full   : STD_LOGIC;
    signal empty  : STD_LOGIC; 

    signal rst   : STD_LOGIC := '1';
    
    constant ClockFrequencyHzRd : integer := 100e6; -- 100 MHz
    constant ClockFrequencyHzWr : integer := 200e6; -- 200 MHz
    constant clock_period_rd    : time    := 1000 ms / ClockFrequencyHzRd;
    constant clock_period_wr    : time    := 1000 ms / ClockFrequencyHzWr;
    
begin

    wr_clk <= not wr_clk after clock_period_wr / 2;           
    rd_clk <= not rd_clk after clock_period_rd / 2;
    rst    <= '0' after 10 * clock_period_rd;
    
    write : process (wr_clk) begin
        if rising_edge (wr_clk) then
            if rst = '1' then
                din   <= (others => '0');
                wr_en <= '0';
            elsif rst = '0' then
                if full = '1' then
                    din   <= (others => '0');
                    wr_en <= '0';
                elsif full = '0' then
                    din   <= din + 1;
                    wr_en <= '1';
                end if;
            end if;
        end if;
    end process; 

    read : process (rd_clk) begin
        if rising_edge (rd_clk) then
            if rst = '1' then
                rd_en <= '0';
            elsif rst = '0' then
                if empty = '0' then
                    rd_en <= '1';
                elsif empty = '1' then
                    rd_en <= '0';
                end if;
            end if;
        end if;
    end process; 

fifo_dvir : fifo_generator_0
  PORT MAP (
    wr_clk => wr_clk,
    rd_clk => rd_clk,
    din    => din,
    wr_en  => wr_en,
    rd_en  => rd_en,
    dout   => dout,
    full   => full,
    empty  => empty
  );

end Behavioral;
