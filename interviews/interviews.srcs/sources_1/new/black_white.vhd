library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity black_white is
    Port (
        clk     : in  STD_LOGIC;
        rst     : in  STD_LOGIC;
        input_a : in  STD_LOGIC_VECTOR (1 downto 0);
        y_out   : out STD_LOGIC_VECTOR(1 downto 0) -- Encoded output
    );
end black_white;

architecture Behavioral of black_white is

    -- Define direction type
    type direction_type is (idle, clockwise, counter_clockwise);
    signal y : direction_type;

    -- FSM state type
    type black_or_white is (WW, BW, WB, BB);
    signal state : black_or_white;

begin

    -- Convert enum output to std_logic_vector
    with y select
        y_out <= "00" when idle,
                 "10" when clockwise,
                 "01" when counter_clockwise,
                 "ZZ" when others;

    -- FSM Process
    process (clk, rst)
    begin
        if rst = '1' then
            state <= WW;
            y <= idle;
        elsif rising_edge(clk) then
            case state is
                when WW =>
                    if    input_a = "01" then
                        y     <= clockwise;
                        state <= WB;
                    elsif input_a = "10" then
                        y     <= counter_clockwise;
                        state <= BW;
                    elsif input_a = "00" then
                        y     <= idle;
                        state <= WW;
                    end if;
                when WB =>
                    if    input_a = "11" then
                        y     <= clockwise;
                        state <= BB;
                    elsif input_a = "00" then
                        y     <= counter_clockwise;
                        state <= WW;
                    elsif input_a = "01" then
                        y     <= idle;
                        state <= WB;
                    end if;
                when BB =>
                    if    input_a = "10" then
                        y     <= clockwise;
                        state <= BW;
                    elsif input_a = "01" then
                        y     <= counter_clockwise;
                        state <= WB;
                    elsif input_a = "11" then
                        y     <= idle;
                        state <= BB;
                    end if;
                when BW =>
                    if    input_a = "00" then
                        y     <= clockwise;
                        state <= WW;
                    elsif input_a = "11" then
                        y     <= counter_clockwise;
                        state <= BB;
                    elsif input_a = "10" then
                        y     <= idle;
                        state <= BW;
                    end if;
            end case;
        end if;
    end process;

end Behavioral;