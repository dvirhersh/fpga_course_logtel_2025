library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rotate_left is
    generic (
        N : integer := 4  -- default size (can be overridden)
    );
    port (
        in_vec  : in  STD_LOGIC_VECTOR(N-1 downto 0);
        out_vec : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end rotate_left;

architecture Behavioral of rotate_left is
begin
    process(in_vec)
    begin
        -- Circular left rotate: shift left and MSB to LSB
        out_vec <= in_vec(N-2 downto 0) & in_vec(N-1);
    end process;
end Behavioral;
