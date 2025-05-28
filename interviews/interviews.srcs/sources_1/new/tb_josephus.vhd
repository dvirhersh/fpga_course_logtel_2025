library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_rotate_left is
end tb_rotate_left;

architecture Behavioral of tb_rotate_left is

    -- Component Declaration
    component rotate_left
        generic (
            N : integer := 4
        );
        port (
            in_vec  : in  STD_LOGIC_VECTOR(N-1 downto 0);
            out_vec : out STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;

    -- Signals for different widths
    signal in_vec_3  : STD_LOGIC_VECTOR(2 downto 0);
    signal out_vec_3 : STD_LOGIC_VECTOR(2 downto 0);

    signal in_vec_4  : STD_LOGIC_VECTOR(3 downto 0);
    signal out_vec_4 : STD_LOGIC_VECTOR(3 downto 0);

    signal in_vec_5  : STD_LOGIC_VECTOR(4 downto 0);
    signal out_vec_5 : STD_LOGIC_VECTOR(4 downto 0);

    signal in_vec_6  : STD_LOGIC_VECTOR(5 downto 0);
    signal out_vec_6 : STD_LOGIC_VECTOR(5 downto 0);

begin

    -- Instantiate for 3-bit rotate
    rot3: rotate_left generic map (N => 3)
        port map (in_vec => in_vec_3, out_vec => out_vec_3);

    -- Instantiate for 4-bit rotate
    rot4: rotate_left generic map (N => 4)
        port map (in_vec => in_vec_4, out_vec => out_vec_4);

    -- Instantiate for 5-bit rotate
    rot5: rotate_left generic map (N => 5)
        port map (in_vec => in_vec_5, out_vec => out_vec_5);

    -- Instantiate for 6-bit rotate
    rot6: rotate_left generic map (N => 6)
        port map (in_vec => in_vec_6, out_vec => out_vec_6);

    -- Stimulus process
    stim_proc: process
    begin
        -- 3-bit tests
        in_vec_3 <= "110"; wait for 10 ns;
        in_vec_3 <= "101"; wait for 10 ns;

        -- 4-bit tests
        in_vec_4 <= "1000"; wait for 10 ns;
        in_vec_4 <= "1110"; wait for 10 ns;

        -- 5-bit tests
        in_vec_5 <= "10101"; wait for 10 ns;
        in_vec_5 <= "11000"; wait for 10 ns;

        -- 6-bit tests
        in_vec_6 <= "101011"; wait for 10 ns;
        in_vec_6 <= "111111"; wait for 10 ns;

        wait;
    end process;

end Behavioral;
