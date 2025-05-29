
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity LED_manager is
    Port ( Channel_1_data : in STD_LOGIC_VECTOR (7 downto 0);
           Channel_2_data : in STD_LOGIC_VECTOR (7 downto 0);
           Channel_1_enable : in STD_LOGIC;
           Channel_2_enable : in STD_LOGIC;
           selector : in STD_LOGIC;
           clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end LED_manager;

architecture Behavioral of LED_manager is
    component register8
        Port (
            clock    : in  STD_LOGIC;
            reset    : in  STD_LOGIC;
            enable   : in  STD_LOGIC;
            data_in  : in  STD_LOGIC_VECTOR (7 downto 0);
            data_out : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    signal Channel_1_register_data : STD_LOGIC_VECTOR (7 downto 0);
    signal Channel_2_register_data : STD_LOGIC_VECTOR (7 downto 0);
    signal mux_data_selected       : STD_LOGIC_VECTOR (7 downto 0);

begin

    regCh1: register8
        port map(
            clock    => clock,
            reset    => reset,
            enable   => Channel_1_enable,
            data_in  => Channel_1_data,
            data_out => Channel_1_register_data
        );

    regCh2: register8
        port map(
            clock    => clock,
            reset    => reset,
            enable   => Channel_2_enable,
            data_in  => Channel_2_data,
            data_out => Channel_2_register_data
        );

    with selector select 
        mux_data_selected <= Channel_1_register_data when '0',
                             Channel_2_register_data when '1',
                             (others => '0')  when others;

    data_out <= mux_data_selected when rising_edge(clock);

end Behavioral;
