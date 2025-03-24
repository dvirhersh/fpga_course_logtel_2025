-- vhdl-linter-disable component
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/02/2025 01:04:27 PM
-- Design Name: 
-- Module Name: HIST_UNIT - Behavioral
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
use IEEE.std_logic_unsigned.ALL;  -- vhdl-linter-disable-line not-declared

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HIST_UNIT is
    Port ( CLK         : in  STD_LOGIC;
           RST         : in  STD_LOGIC;
           SW          : in  STD_LOGIC_VECTOR (7 downto 0);
           SPARE       : out STD_LOGIC;
           AN          : out STD_LOGIC_VECTOR (7 downto 0);
           SEG_DISPLAY : out STD_LOGIC_VECTOR (7 downto 0));
end HIST_UNIT;

architecture Behavioral of HIST_UNIT is

    type state_type is (COLLECT, PRESENT, ZERO);
    signal state : state_type := COLLECT;

    constant COLLECTION_TIME   : integer := 2046; -- 1023 * 2
    constant PRESENTATION_TIME : integer := 2302; -- +256

    COMPONENT blk_mem_gen_0 -- ROM
      PORT (clka  : IN  STD_LOGIC;
            addra : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
    END COMPONENT;
    
    COMPONENT blk_mem_gen_1 -- Singal Dual Port RAM
      PORT (clka  : IN STD_LOGIC;
            wea   : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            dina  : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            clkb  : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
    END COMPONENT;
    
    signal counter         : std_logic_vector (11 downto 0) := (others => '1');
    signal counter_delayed : std_logic_vector (11 downto 0) := (others => '1');
    
    -- For ROM
    signal douta : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');

    -- For Singal Dual Port RAM
    signal wea   : STD_LOGIC_VECTOR(0 DOWNTO 0) := (others => '0');
    signal addra : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
    signal dina  : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
    signal doutb : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');

    signal addrb         : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
    signal addrb_delayed : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');

    signal hist_ready_int : std_logic := '0';

    -- BCD to 7-segment decoder function
    function BCD_to_7SEG (digit : integer) return STD_LOGIC_VECTOR is
        variable segments : STD_LOGIC_VECTOR(7 downto 0);
    begin
        case digit is
            when 0 => segments := "11000000";
            when 1 => segments := "11111001";
            when 2 => segments := "10100100";
            when 3 => segments := "10110000";
            when 4 => segments := "10011001";
            when 5 => segments := "10010010";
            when 6 => segments := "10000010";
            when 7 => segments := "11111000";
            when 8 => segments := "10000000";
            when 9 => segments := "10010000";
            when others => segments := "11111111";
        end case; 
        return segments;       
    end function;

    signal bin_val : integer range 0 to 255;
    signal hundreds, tens, ones : integer range 0 to 9;
    signal HEX3 : STD_LOGIC_VECTOR(6 downto 0);
    signal HEX2 : STD_LOGIC_VECTOR(6 downto 0);
    signal HEX1 : STD_LOGIC_VECTOR(6 downto 0);
    signal HEX0 : STD_LOGIC_VECTOR(6 downto 0);

begin

    -- Convert SW binary to integer
    bin_val <= to_integer(unsigned(SW));

    -- Binary to BCD conversion (simple math approach)
    hundreds <= bin_val / 100;
    tens     <= (bin_val mod 100) / 10;
    ones     <= bin_val mod 10;

    -- Assign digits to 7-segment displays
    HEX3 <= BCD_to_7SEG(0);          -- Always "0" for values 0-255
    HEX2 <= BCD_to_7SEG(hundreds);   -- Hundreds digit
    HEX1 <= BCD_to_7SEG(tens);       -- Tens digit
    HEX0 <= BCD_to_7SEG(ones);       -- Ones digit

    -- Counter process
    process (CLK) begin
        if rising_edge (CLK) then
            if RST = '1' then
                counter <= (others => '1');
            elsif counter < PRESENTATION_TIME then
                counter <= counter + 1;
            else
                wait;
            end if;
        end if;
    end process;
    
    -- Delay process for HIST and counter
    process (CLK) begin
        if rising_edge (CLK) then
            counter_delayed <= counter;
            addrb_delayed   <= addrb;      
        end if;
    end process; 
    
    -- Main control process
    process (counter_delayed, douta, doutb) begin
        if counter_delayed < COLLECTION_TIME then
            state <= COLLECT;
            addra  <= douta;
            addrb  <= douta;
            wea(0) <= counter_delayed(0);
            dina   <= doutb + 1;
            hist_ready_int <= '0';
        elsif counter_delayed <= PRESENTATION_TIME then
            wea(0) <= '0';
            -- -- addrb  <= counter - COLLECTION_TIME; -- counter 0 - 255
            -- addrb  <= std_logic_vector(to_unsigned((to_integer(unsigned(counter_delayed)) - COLLECTION_TIME), 8));
            -- hist_ready_int <= '1';
            state <= PRESENT;
        else
            wait;
        end if;
    end process;

   -- Output assignments
    -- HIST_READY   <= hist_ready_int;     
    -- HIST_VALUE   <= addrb_delayed;
    -- VALUE_AMOUNT <= doutb;
    
    ROM : blk_mem_gen_0
      PORT MAP (clka  => CLK,
                addra => counter(10 downto 1),
                douta => douta);
    SDPR : blk_mem_gen_1
      PORT MAP (clka  => CLK,
                wea   => wea,
                addra => addra,
                dina  => dina,
                clkb  => CLK,
                addrb => addrb,
                doutb => doutb);

end Behavioral;
