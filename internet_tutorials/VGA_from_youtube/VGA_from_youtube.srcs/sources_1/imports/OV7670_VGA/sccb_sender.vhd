----------------------------------------------------------------------------------
-- Engineer: <mfield@concepts.co.nz
-- 
-- Description: Send the commands to the OV7670 over an I2C-like interface (SCCB)
--
-- Edited by: Ido weinstock <ido.weinstock@gmail.com> (23/04/2025)
--             Dvir Hershkovitz <dvirhersh@gmail.com>
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SCCB_sender is
	Port (  clk   : in    STD_LOGIC;	 
			siod  : inout STD_LOGIC;
			sioc  : out   STD_LOGIC;
			taken : out   STD_LOGIC;
			send  : in 	  STD_LOGIC;
			id    : in 	  STD_LOGIC_VECTOR (7 downto 0);
			reg   : in 	  STD_LOGIC_VECTOR (7 downto 0);
			value : in 	  STD_LOGIC_VECTOR (7 downto 0));
end SCCB_sender;

architecture Behavioral of SCCB_sender is
	-- Divider to slow down the SIOC signal relative to the input clock (25 MHz)
	-- "00000001" gives a 254 cycle pause before the initial frame is sent
	signal   divider  : unsigned (7 downto 0) := "00000001"; 
	-- Shift register for control/state of the transmission
	signal   busy_sr  : std_logic_vector(31 downto 0) := (others => '0');
	-- Shift register containing the data to send: start bit, ID, register, value, stop bits
	signal   data_sr  : std_logic_vector(31 downto 0) := (others => '1');
begin

	-- This process controls the SIOD (data line) based on the transmission phase
	process (busy_sr, data_sr(31)) begin
		 -- During specific bit phases (acknowledge), SIOD is tri-stated (Z)
		if  busy_sr(11 downto 10) = "10" or 
			busy_sr(20 downto 19) = "10" or 
			busy_sr(29 downto 28) = "10"  then
			siod <= 'Z'; -- release line for ACK
		else
			siod <= data_sr(31); -- drive next data bit
		end if;
	end process;
	
	process (clk) begin
		if rising_edge(clk) then
			taken <= '0'; -- pulse when data is accepted for sending
			if busy_sr(31) = '0' then -- if not busy sending
				SIOC <= '1'; -- idle state for SIOC is high
				if send = '1' then -- request to send new data
					if divider = "00000000" then
						-- Prepare 32-bit data word: [start][ID][ACK][REG][ACK][VAL][ACK][stop]
						data_sr <= "100" &   id & '0'  &   reg & '0' & value & '0' & "01";
						-- Set busy flag (each 1 bit indicates an active clock cycle)
						busy_sr <= "111" & "111111111" & "111111111" & "111111111" & "11";
						taken   <= '1'; -- acknowledge new send command
					else
						divider <= divider + 1; -- wait for divider to finish one full cycle
					end if;
				end if;
			else -- busy sending data
                -- State machine: determine SIOC value depending on busy_sr and divider bits
				case busy_sr(32-1 downto 32-3) & busy_sr(2 downto 0) is
					-- Special SIOC sequences for start and stop conditions
					when "111"&"111" => -- start seq #1
						case divider(7 downto 6) is
							when "00"   => SIOC <= '1';
							when "01"   => SIOC <= '1';
							when "10"   => SIOC <= '1';
							when others => SIOC <= '1';
						end case;
					when "111"&"110" => -- start seq #2
						case divider(7 downto 6) is
							when "00"   => SIOC <= '1';
							when "01"   => SIOC <= '1';
							when "10"   => SIOC <= '1';
							when others => SIOC <= '1';
						end case;
					when "111"&"100" => -- start seq #3
						case divider(7 downto 6) is
							when "00"   => SIOC <= '0';
							when "01"   => SIOC <= '0';
							when "10"   => SIOC <= '0';
							when others => SIOC <= '0';
						end case;
					when "110"&"000" => -- end seq #1
						case divider(7 downto 6) is
							when "00"   => SIOC <= '0';
							when "01"   => SIOC <= '1';
							when "10"   => SIOC <= '1';
							when others => SIOC <= '1';
						end case;
					when "100"&"000" => -- end seq #2
						case divider(7 downto 6) is
							when "00"   => SIOC <= '1';
							when "01"   => SIOC <= '1';
							when "10"   => SIOC <= '1';
							when others => SIOC <= '1';
						end case;
					when "000"&"000" => -- Idle
						case divider(7 downto 6) is
							when "00"   => SIOC <= '1';
							when "01"   => SIOC <= '1';
							when "10"   => SIOC <= '1';
							when others => SIOC <= '1';
						end case;
					when others      => 
						case divider(7 downto 6) is
							when "00"   => SIOC <= '0';
							when "01"   => SIOC <= '1';
							when "10"   => SIOC <= '1';
							when others => SIOC <= '0';
						end case;
				end case;   

				if divider = "11111111" then
					busy_sr <= busy_sr(32-2 downto 0) & '0'; -- shift left
					data_sr <= data_sr(32-2 downto 0) & '1'; -- shift left, padding 1s (idle)
					divider <= (others => '0'); -- reset divider
				else
					divider <= divider + 1; -- increment to slow down to ~100kHz
				end if;
			end if;
		end if;
	end process;
end Behavioral;
