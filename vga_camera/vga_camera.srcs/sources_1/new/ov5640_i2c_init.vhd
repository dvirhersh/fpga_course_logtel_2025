library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ov5640_i2c_init is
    Port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        sioc    : out std_logic;
        siod    : inout std_logic;
        done    : out std_logic
    );
end ov5640_i2c_init;

architecture Behavioral of ov5640_i2c_init is

    type reg_array is array (0 to 5) of std_logic_vector(31 downto 0);
    constant INIT_CMDS : reg_array := (
        x"78310311",
        x"78300882",
        x"78300842",
        x"78310303",
        x"78303511",
        x"78303646"
    );

    signal state       : integer := 0;
    signal bit_cnt     : integer range 0 to 7 := 0;
    signal byte_index  : integer range 0 to 2 := 0;
    signal cmd_index   : integer range 0 to INIT_CMDS'LENGTH := 0;

    signal shift_reg   : std_logic_vector(31 downto 0) := (others => '0');
    signal sioc_int    : std_logic := '1';
    signal siod_drive  : std_logic := 'Z';
    signal i2c_done    : std_logic := '0';

    function get_bit_index(byte_i : integer; bit_i : integer) return integer is
    begin
        return 31 - (byte_i * 8) - (7 - bit_i);
    end function;

begin

    siod <= siod_drive;
    sioc <= sioc_int;
    done <= i2c_done;

    process(clk)
        variable next_bit : integer;
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state       <= 0;
                bit_cnt     <= 0;
                byte_index  <= 0;
                cmd_index   <= 0;
                sioc_int    <= '1';
                siod_drive  <= 'Z';
                i2c_done    <= '0';

            else
                case state is

                    when 0 => -- Load command
                        if cmd_index < INIT_CMDS'LENGTH then
                            shift_reg  <= INIT_CMDS(cmd_index);
                            byte_index <= 0;
                            bit_cnt    <= 7;
                            state      <= 1;
                        else
                            i2c_done <= '1';
                        end if;

                    when 1 => -- START
                        siod_drive <= '0';
                        sioc_int   <= '1';
                        state <= 2;

                    when 2 => -- Clock low, prep MSB
                        sioc_int <= '0';
                        siod_drive <= shift_reg(get_bit_index(byte_index, bit_cnt));
                        state <= 3;

                    when 3 => -- Clock high (send bit)
                        sioc_int <= '1';
                        state <= 4;

                    when 4 => -- Clock low, next bit
                        sioc_int <= '0';
                        if bit_cnt > 0 then
                            bit_cnt <= bit_cnt - 1;
                            siod_drive <= shift_reg(get_bit_index(byte_index, bit_cnt - 1));
                            state <= 3;
                        else
                            state <= 5;
                        end if;

                    when 5 => -- ACK
                        siod_drive <= 'Z';
                        sioc_int <= '1';
                        state <= 6;

                    when 6 =>
                        sioc_int <= '0';
                        state <= 7;

                    when 7 => -- Next byte or STOP
                        if byte_index < 2 then
                            byte_index <= byte_index + 1;
                            bit_cnt <= 7;
                            siod_drive <= shift_reg(get_bit_index(byte_index + 1, 7));
                            state <= 3;
                        else
                            state <= 8;
                        end if;

                    when 8 => -- STOP
                        siod_drive <= '0';
                        sioc_int <= '1';
                        state <= 9;

                    when 9 =>
                        siod_drive <= '1';
                        cmd_index <= cmd_index + 1;
                        state <= 0;

                    when others =>
                        state <= 0;

                end case;
            end if;
        end if;
    end process;

end Behavioral;