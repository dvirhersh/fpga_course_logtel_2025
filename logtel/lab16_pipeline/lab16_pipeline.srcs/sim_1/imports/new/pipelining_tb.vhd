----------------------------------------------------------------------------------
 -- Company: 
 -- Engineer: 
 -- 
 -- Create Date: 03/04/2025 04:17:27 PM
 -- Design Name: 
 -- Module Name: pipelining_tb - Behavioral
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
 
 entity pipelining_tb is
 --  Port ( );
 end pipelining_tb;
 
 architecture Behavioral of pipelining_tb is
 
 component pipelining is
     Port ( CLOCK    : in STD_LOGIC;
            RESET    : in STD_LOGIC;
            A        : in STD_LOGIC_VECTOR (5 downto 0);
            B        : in STD_LOGIC_VECTOR (5 downto 0);
            COMP_OUT : out STD_LOGIC
            );
 end component pipelining;
 
     constant ClockFrequency : integer := 200e6; -- 200 MHz
     constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
 
     signal CLOCK    : STD_LOGIC := '0';
     signal RESET    : STD_LOGIC := '1';
     signal A        : STD_LOGIC_VECTOR (5 downto 0);
     signal B        : STD_LOGIC_VECTOR (5 downto 0);
     signal COMP_OUT : STD_LOGIC;
 
 begin
 
     CLOCK <= not CLOCK after ClockPeriod / 2;
     
     stimuli : process
     begin
         -- Initialize inputs
         A <= (others => '0');
         B <= (others => '0');
         
         -- Reset sequence
         RESET <= '1';
         wait for 10 * ClockPeriod;
         RESET <= '0';
         wait for 2 * ClockPeriod;
         
         -- Test case 1: A = B = "110101" (0x35)
         A <= std_logic_vector(to_unsigned(16#35#, 6));
         B <= std_logic_vector(to_unsigned(16#35#, 6));
         wait for 5 * ClockPeriod;
         
         -- Test case 2: A = "010110" (0x16), B = "011001" (0x19)
         A <= std_logic_vector(to_unsigned(16#16#, 6));
         B <= std_logic_vector(to_unsigned(16#19#, 6));
         wait for 5 * ClockPeriod;
         
         -- Test case 3: A = B = "100101" (0x25)
         A <= std_logic_vector(to_unsigned(16#25#, 6));
         B <= std_logic_vector(to_unsigned(16#25#, 6));
         wait for 5 * ClockPeriod;
         
         -- End simulation
         wait;
     end process;
 
     uut: pipelining
     port map (
         CLOCK => CLOCK,
         RESET => RESET,
         A => A,
         B => B,
         COMP_OUT => COMP_OUT
         );
 
 end Behavioral;