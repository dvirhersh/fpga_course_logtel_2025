----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2025 04:39:45 PM
-- Design Name: 
-- Module Name: ram_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Testbench for Block RAM
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram_tb is
    -- Port ( );
end ram_tb;

architecture Behavioral of ram_tb is

    -- Component Declaration
    component blk_mem_gen_1
        port (
            clka  : in  std_logic;
            wea   : in  std_logic_vector(0 downto 0);
            addra : in  std_logic_vector(7 downto 0);
            dina  : in  std_logic_vector(9 downto 0);
            clkb  : in  std_logic;
            addrb : in  std_logic_vector(7 downto 0);
            doutb : out std_logic_vector(9 downto 0)
        );
    end component;

    -- Constants
    constant ClockFrequencyHz : integer := 100e6; -- 100 MHz
    constant ClockPeriod      : time    := 1000 ms / ClockFrequencyHz;

    -- Signals
    signal clka      : std_logic := '1';
    signal wea       : std_logic_vector(0 downto 0) := (others => '1');
    signal addra     : std_logic_vector(8 downto 0) := (others => '0');
    signal addra_reg : std_logic_vector(8 downto 0) := (others => '0');
    signal dina      : std_logic_vector(9 downto 0) := (others => '0');
    signal clkb      : std_logic := '1';
    signal addrb     : std_logic_vector(7 downto 0) := (others => '0');
    signal doutb     : std_logic_vector(9 downto 0) := (others => '0');

begin

    -- Clock generation
    clka <= not clka after ClockPeriod / 2;
    clkb <= not clkb after ClockPeriod / 2;

    write_and_read_process : process(clka)
    begin
        if rising_edge(clka) then
            wea(0) <= not addra(8);
            addra  <= addra + 1;
            dina   <= '0' & addra(7 downto 0) & '0'; -- multiply by 2
        end if;
    end process write_and_read_process;

    -- Address postpone process
    addr_postpone_process : process(clka)
    begin
        if rising_edge(clka) then
            addra_reg <= addra;
        end if;
    end process addr_postpone_process;

    -- RAM instantiation
    uut_ram_3 : blk_mem_gen_1
    port map (
        clka  => clka,
        wea   => wea,
        addra => addra_reg(7 downto 0),
        dina  => dina,
        clkb  => clkb,
        addrb => addra_reg(7 downto 0),
        doutb => doutb
    );

end Behavioral;
