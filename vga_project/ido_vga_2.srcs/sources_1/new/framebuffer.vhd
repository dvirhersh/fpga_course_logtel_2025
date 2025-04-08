library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity framebuffer is
    Port (
        clk         : in  std_logic;
        we          : in  std_logic; 
        addr        : in  integer range 0 to 307199; -- נניח רזולוציה של 640x480
        pixel_in    : in  std_logic_vector(15 downto 0);
        pixel_out   : out std_logic_vector(15 downto 0)
    );
end framebuffer;

architecture Behavioral of framebuffer is
    type ram_type is array (0 to 307199) of std_logic_vector(15 downto 0);
    signal ram : ram_type := (others => (others => '0'));
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if we = '1' then
                ram(addr) <= pixel_in;
            end if;
            pixel_out <= ram(addr);
        end if;
    end process;
end Behavioral;
