library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ov5640_i2c_init is
    Port (
        clk     : in  std_logic;           -- system clock (e.g. 100 MHz)
        reset   : in  std_logic;
        sioc    : out std_logic;          -- I2C clock
        siod    : inout std_logic;        -- I2C data
        done    : out std_logic           -- goes high when configuration is done
    );
end ov5640_i2c_init;

architecture Behavioral of ov5640_i2c_init is
    type reg_array is array (0 to 5) of std_logic_vector(23 downto 0);
    constant INIT_CMDS : reg_array := (
        -- Format: {Device address, Register address[15:0], Data[7:0]}
        x"78_3103_11", -- System clock from PLL
        x"78_3008_82", -- Reset
        x"78_3008_42", -- Wake up from reset
        x"78_3103_03", -- System clock enable
        x"78_3035_11", -- PLL
        x"78_3036_46"  -- PLL
    );

    signal state     : integer := 0;
    signal bit_cnt   : integer range 0 to 31 := 0;
    signal byte_cnt  : integer range 0 to INIT_CMDS'LENGTH := 0;
    signal shift_reg : std_logic_vector(31 downto 0);
    signal sclk_cnt  : integer := 0;

    signal s_siod    : std_logic := '1';
    signal s_sioc    : std_logic := '1';

    signal busy      : std_logic := '0';
    signal start     : std_logic := '0';
    signal stop      : std_logic := '0';
    signal sending   : std_logic := '0';
begin
    -- Outputs
    siod <= 'Z' when s_siod = '1' else '0';
    sioc <= s_sioc;
    done <= '1' when (byte_cnt = INIT_CMDS'LENGTH and state = 0) else '0';

    -- Main controller
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                byte_cnt  <= 0;
                bit_cnt   <= 0;
                s_sioc    <= '1';
                s_siod    <= '1';
                state     <= 0;
            else
                case state is
                    when 0 => -- IDLE
                        if byte_cnt < INIT_CMDS'LENGTH then
                            shift_reg <= INIT_CMDS(byte_cnt) & "00000000"; -- Extra byte for stop
                            bit_cnt   <= 31;
                            state     <= 1;
                        end if;

                    when 1 => -- START
                        s_siod <= '0';
                        state  <= 2;

                    when 2 => -- CLOCK LOW
                        s_sioc <= '0';
                        state  <= 3;

                    when 3 => -- SEND BIT
                        s_siod <= shift_reg(bit_cnt);
                        state  <= 4;

                    when 4 =>
                        s_sioc <= '1';
                        state  <= 5;

                    when 5 =>
                        s_sioc <= '0';
                        bit_cnt <= bit_cnt - 1;
                        if bit_cnt < 8 then  -- ACK bit
                            s_siod <= '1';  -- Release line
                        end if;

                        if bit_cnt = 0 then
                            state <= 6;
                        else
                            state <= 3;
                        end if;

                    when 6 => -- STOP
                        s_siod <= '0';
                        s_sioc <= '1';
                        state  <= 7;

                    when 7 =>
                        s_siod <= '1';
                        byte_cnt <= byte_cnt + 1;
                        state <= 0;

                    when others =>
                        state <= 0;
                end case;
            end if;
        end if;
    end process;

end Behavioral;
