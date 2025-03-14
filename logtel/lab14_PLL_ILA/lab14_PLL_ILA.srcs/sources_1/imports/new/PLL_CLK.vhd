-- vhdl-linter-disable type-resolved
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2025 04:08:36 PM
-- Design Name: 
-- Module Name: PLL_CLK - Behavioral
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
use IEEE.std_logic_unsigned.all; -- vhdl-linter-disable-line not-declared
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PLL_CLK is
    Port ( CLK : in  STD_LOGIC;
           SW  : in  STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (3 downto 0));
end PLL_CLK;

architecture Behavioral of PLL_CLK is

    component clk_wiz_0
    port
     (-- Clock in ports
      -- Clock out ports
      clk_out1 : out std_logic;
      clk_out2 : out std_logic;
      clk_out3 : out std_logic;
      clk_out4 : out std_logic;
      -- Status and control signals
      reset    : in  std_logic;
      locked   : out std_logic;
      clk_in1  : in  std_logic
     );
    end component;

    signal clk_out1 : std_logic;
    signal clk_out2 : std_logic;
    signal clk_out3 : std_logic;
    signal clk_out4 : std_logic;
    signal locked   : std_logic;

    signal counter_1 : std_logic_vector(8 downto 0) := (others => '0');
    signal counter_2 : std_logic_vector(8 downto 0) := (others => '0');
    signal counter_3 : std_logic_vector(8 downto 0) := (others => '0');
    signal counter_4 : std_logic_vector(8 downto 0) := (others => '0');

begin

pll_exercise_14 : clk_wiz_0
   port map ( 
  -- Clock out ports  
   clk_out1 => clk_out1,
   clk_out2 => clk_out2,
   clk_out3 => clk_out3,
   clk_out4 => clk_out4,
  -- Status and control signals                
   reset    => SW,
   locked   => locked,
   -- Clock in ports
   clk_in1  => CLK
 );

    process(clk_out1) begin
        if rising_edge(clk_out1) then
            if SW = '1' or locked = '0' then
                counter_1 <= (others => '0');
            else
                counter_1 <= counter_1 + 1;
            end if;
        end if;
    end process;


    process(clk_out2) begin
        if rising_edge(clk_out2) then
            if SW = '1' or locked = '0' then
                counter_2 <= (others => '0');
            else
                counter_2 <= counter_2 + 1;
            end if;
        end if;
    end process;
    
    process(clk_out3) begin
        if rising_edge(clk_out3) then
            if SW = '1' or locked = '0' then
                counter_3 <= (others => '0');
            else
                counter_3 <= counter_3 + 1;
            end if;
        end if;
    end process;
    
    process(clk_out4)
    begin
        if rising_edge(clk_out4) then
            if SW = '1' or locked = '0' then
                counter_4 <= (others => '0');
            else
                counter_4 <= counter_4 + 1;
            end if;
        end if;
    end process;

    led_0_203 : process(clk_out1) begin
        if rising_edge(clk_out1) then
            if counter_1 = 203 then
                LED(0) <= '1';
            else
                LED(0) <= '0';
            end if;
        end if;
    end process led_0_203;

    led_1_203 : process(clk_out2) begin
        if rising_edge(clk_out2) then
            if counter_2 = 203 then
                LED(1) <= '1';
            else
                LED(1) <= '0';
            end if;
        end if;
    end process led_1_203;
    
    led_2_203 : process(clk_out3) begin
        if rising_edge(clk_out3) then
            if counter_3 = 203 then
                LED(2) <= '1';
            else
                LED(2) <= '0';
            end if;
        end if;
    end process led_2_203;
    
    led_3_203 : process(clk_out4) begin
        if rising_edge(clk_out4) then
            if counter_4 = 203 then
                LED(3) <= '1';
            else
                LED(3) <= '0';
            end if;
        end if;
    end process led_3_203;

end Behavioral;
