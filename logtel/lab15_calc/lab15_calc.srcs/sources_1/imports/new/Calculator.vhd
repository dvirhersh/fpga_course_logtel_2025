-- vhdl-linter-disable component type-resolved
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2025 05:41:27 PM
-- Design Name: 
-- Module Name: Calculator - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Binary Division via Multiplication using DSP
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
use IEEE.NUMERIC_STD.ALL;

entity Calculator is
    Port ( CLK        : in  STD_LOGIC;
           RESET      : in  STD_LOGIC;
           DATA_IN_A  : in  STD_LOGIC_VECTOR (15 downto 0);
           DATA_IN_B  : in  STD_LOGIC_VECTOR (15 downto 0);
           SEL        : in  STD_LOGIC_VECTOR (2 downto 0);
           DATA_OUT   : out STD_LOGIC_VECTOR (19 downto 0));
end Calculator;

architecture Behavioral of Calculator is

    -- DSP Component for multiplication operations
    COMPONENT dsp_macro_0
    PORT (
      CLK : IN  STD_LOGIC;
      SEL : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
      A   : IN  STD_LOGIC_VECTOR(24 DOWNTO 0);
      B   : IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
      C   : IN  STD_LOGIC_VECTOR(47 DOWNTO 0);
      P   : OUT STD_LOGIC_VECTOR(47 DOWNTO 0) 
    );
    END COMPONENT;

    -- Zero-Padding Function to extend vector size
    function Zero_Pad(data_in : STD_LOGIC_VECTOR; dsp_port_size : integer) return STD_LOGIC_VECTOR is
        variable result : STD_LOGIC_VECTOR(dsp_port_size - 1 downto 0);
    begin
        result := (others => '0');
        result(data_in'length - 1 downto 0) := data_in;
        return result;
    end function;

    -- Function to find the Most Significant Bit (MSB) set to '1'
    function find_msb_one(input : std_logic_vector) return integer is
    begin
        for i in input'high downto input'low loop
            if input(i) = '1' then
                return i;
            end if;
        end loop;
        return 0; -- Default to 0 to avoid invalid index
    end function;

    -- Define division state machine
    type t_div_state is (Idle, Start, Iterate);
    signal div_state : t_div_state := Idle;

    -- Signals for DSP and internal calculations
    signal DSP_SEL  : STD_LOGIC_VECTOR(2 DOWNTO 0) := (others => '0');
    signal A : STD_LOGIC_VECTOR(24 DOWNTO 0) := (others => '0');
    signal B : STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
    signal C : STD_LOGIC_VECTOR(47 DOWNTO 0) := (others => '0');
    signal P : STD_LOGIC_VECTOR(47 DOWNTO 0) := (others => '0');

    -- Control Signals
    signal cmd_num       : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    type   t_command is (Addition, Subtraction, Multiplication, Division, No_cmd);
    signal cmd_name      : t_command;
    signal one_hot_index : integer := 0;

begin

    -- Instantiate DSP component
    dsp_inst : dsp_macro_0
    PORT MAP (
        CLK => CLK,
        SEL => DSP_SEL,
        A   => A, 
        B   => B, 
        C   => C, 
        P   => P
    );

    -- Main process to handle calculations
    process(CLK) 
      variable prev_P : STD_LOGIC_VECTOR(47 DOWNTO 0);
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                -- Reset all states and signals
                cmd_name     <= No_cmd;
                cmd_num      <= SEL;
                A            <= (others => '0');
                B            <= (others => '0');
                C            <= (others => '0');
                div_state    <= Idle;
                one_hot_index <= find_msb_one(DATA_IN_A);
            else
                case cmd_num is
                    when "000" => -- ADDITION
                        cmd_name <= Addition;
                        DSP_SEL  <= "000"; -- A+C
                        A        <= Zero_Pad(DATA_IN_A, 25);
                        C        <= Zero_Pad(DATA_IN_B, 48);
                      
                    when "001" => -- SUBTRACTION
                        cmd_name <= Subtraction;
                        DSP_SEL  <= "001"; -- A-C
                        A        <= Zero_Pad(DATA_IN_A, 25);
                        C        <= Zero_Pad(DATA_IN_B, 48);
                      
                    when "010" => -- MULTIPLICATION
                        cmd_name <= Multiplication;
                        DSP_SEL  <= "010"; -- A*B
                        A        <= Zero_Pad(DATA_IN_A, 25);
                        B        <= Zero_Pad(DATA_IN_B, 18);

                    when "011" => -- DIVISION (Binary Division via Multiplication)
                        cmd_name <= Division;
                        DSP_SEL  <= "010"; -- A*B

                        case div_state is
                            when Idle =>
                                if DATA_IN_B /= X"0000" then
                                    div_state <= Start;
                                end if;

                            when Start => -- Initialization
                                if one_hot_index >= 0 then  
                                    A <= (one_hot_index => '1', others => '0');
                                end if;
                                B         <= Zero_Pad(DATA_IN_B, 18);
                                div_state <= Iterate;

                            when Iterate => -- Iterative Division Step
                                if P /= prev_P then -- When DSP output updates
                                    if one_hot_index >= 0 then
                                        one_hot_index <= one_hot_index - 1;
                                        if DATA_IN_A = P then
                                            div_state     <= Idle;
                                            one_hot_index <= -1; -- stop iterate
                                        elsif DATA_IN_A > P then
                                            A(one_hot_index)     <= '1';
                                        else -- DATA_IN_A < P
                                            A(one_hot_index)     <= '1';
                                            A(one_hot_index + 1) <= '0';
                                        end if;  
                                    else
                                        A(0)      <= '1'; -- Ensure LSB is set if needed
                                        div_state <= Idle; -- Done with division
                                    end if;                        
                                end if;
                                prev_P := P;
                        end case;

                    when others =>
                        cmd_name <= No_cmd;
                end case;
            end if;
        end if;
    end process;

    -- Assign output (quotient)
    DATA_OUT <= A(19 downto 0);

end Behavioral;
