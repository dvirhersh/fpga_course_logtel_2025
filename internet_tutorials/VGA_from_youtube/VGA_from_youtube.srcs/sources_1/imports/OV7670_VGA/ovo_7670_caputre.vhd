----------------------------------------------------------------------------------
-- Company: 
-- Engineers : Ido weinstock <ido.weinstock@gmail.com> (23/04/2025)
--             Dvir Hershkovitz <dvirhersh@gmail.com>
-- 
-- Create Date: 23.04.2025 
-- Design Name: 
-- Module Name: ovo_7670_caputre - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ovo_7670_caputre is
    Port ( pclk  : in   STD_LOGIC;
           camera_v_sync : in  STD_LOGIC;
           camera_h_ref  : in  STD_LOGIC;
           zoom_x2       : in  STD_LOGIC ;
           din           : in  STD_LOGIC_VECTOR (7 downto  0);
           addr          : out STD_LOGIC_VECTOR (18 downto 0);
           dout          : out STD_LOGIC_VECTOR (11 downto 0);
           wr_en         : out STD_LOGIC);
end ovo_7670_caputre;

architecture Behavioral of ovo_7670_caputre is

	signal  address                  : STD_LOGIC_VECTOR (18 downto 0) := (others =>'0');
	signal 	write_state              : STD_LOGIC_VECTOR (1  downto 0);
	signal  latch_href               : STD_LOGIC;
	signal 	latched_data             : STD_LOGIC_VECTOR (15 downto 0 ) := (others =>'0');
	signal  counter_col, counter_row : STD_LOGIC_VECTOR (10 downto 0 ) := (others=> '0');

begin
    addr <= address;
    process(pclk) begin
        if rising_edge(pclk) then
            if camera_v_sync = '1' then
                address     <= (others =>'0');
                counter_row <= (others =>'0');
                counter_col <= (others =>'0');
                write_state <= (others =>'0');
            else 
                -- RGB 565 (camera data) => RGB 444 (aligned to Board's VGA)
                dout <= latched_data(15 downto 12) & latched_data(10 downto 7)  & latched_data(4 downto 1);
                if (camera_h_ref = '1' and latch_href = '0') then 
                    counter_row <= counter_row + 1;
                    counter_col <= (others => '0');
                end if;
                write_state <= write_state(0) & (camera_h_ref and not (write_state(0)));
                -- pixel contains 2 samples of din (8 bit x 2 = 16 bits - RGB 565)
                latched_data <= latched_data(7 downto 0) & din;
                if write_state(1) = '1' then
                    counter_col <= counter_col + 1;
                    if (zoom_x2 = '1') then
                        if(counter_row >= 120) and (counter_row < 360)  and (counter_col >= 160) and (counter_col < 480) then
                            wr_en <= '1';
                            address <= address + 1;
                        end if;    
                    else
                        wr_en <= '1';
                        address <= address + 1;
                    end if;	              
                else -- write_state(1) = '0'
                    wr_en <= '0';
                end if;
                latch_href <= camera_h_ref;
            end if;
        end if;
    end process;
end Behavioral;
