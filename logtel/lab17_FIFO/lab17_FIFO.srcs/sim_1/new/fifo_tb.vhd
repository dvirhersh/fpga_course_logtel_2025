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
    din    : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en  : IN  STD_LOGIC;
    rd_en  : IN  STD_LOGIC;
    dout   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full   : OUT STD_LOGIC;
    empty  : OUT STD_LOGIC 
  );
END COMPONENT;

component clk_wiz_0
port
 (-- Clock in ports
  -- Clock out ports
  clk_out1 : out std_logic;
  clk_out2 : out std_logic;
  -- Status and control signals
  reset    : in  std_logic;
  locked   : out std_logic;
  clk_in1  : in  std_logic
 );
end component;

    signal din    : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
    signal wr_en  : STD_LOGIC := '0';
    signal rd_en  : STD_LOGIC := '0';
    signal dout   : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal full   : STD_LOGIC;
    signal empty  : STD_LOGIC; 

    signal clk_out1 : STD_LOGIC; 
    signal clk_out2 : STD_LOGIC; 
    signal locked   : STD_LOGIC; 
    signal clk_in1  : STD_LOGIC := '0'; 


    signal reset   : STD_LOGIC := '1';
    
    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant clock_period   : time    := 1000 ms / ClockFrequency;
    
begin

    clk_in1 <= not clk_in1 after clock_period / 2;
    reset   <= '0' after 5 * clock_period   ;
    
    write : process (clk_out2) begin
        if rising_edge (clk_out2) then
            if reset = '1' or locked = '0' then
                din   <= (others => '0');
                wr_en <= '0';
            elsif reset = '0' then
                if full = '1' then
                    wr_en <= '0';
                elsif full = '0' then
                    din   <= din + 1;
                    wr_en <= '1';
                end if;
            end if;
        end if;
    end process; 

    read : process (clk_in1) begin
        if rising_edge (clk_in1) then
            if reset = '1' or locked = '0' then
                rd_en <= '0';
            elsif reset = '0' then
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
    wr_clk => clk_out2,
    rd_clk => clk_in1,
    din    => din,
    wr_en  => wr_en,
    rd_en  => rd_en,
    dout   => dout,
    full   => full,
    empty  => empty
  );
  
  mmcm_dvir : clk_wiz_0
   port map ( 
  -- Clock out ports  
   clk_out1 => clk_out1,
   clk_out2 => clk_out2,
  -- Status and control signals                
   reset => reset,
   locked => locked,
   -- Clock in ports
   clk_in1 => clk_in1
 );

end Behavioral;
