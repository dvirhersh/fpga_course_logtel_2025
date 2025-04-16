----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Dvir Hershkovits
-- 
-- Create Date: 04/06/2025 10:08:24 PM
-- Design Name: 
-- Module Name: VGA_CONTROLLER - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity VGA_CONTROLLER is
  Port ( 
       CLK    : in  STD_LOGIC;
--       RESET  : in  STD_LOGIC;
       SW     : in  STD_LOGIC_VECTOR (15 downto 0);
       BTN    : in  STD_LOGIC_VECTOR (4 downto 0);
       LED    : out STD_LOGIC_VECTOR (15 downto 0);
       VGA_HS : out STD_LOGIC;
       VGA_VS : out STD_LOGIC;
       VGA_R  : out STD_LOGIC_VECTOR (3 downto 0);
       VGA_G  : out STD_LOGIC_VECTOR (3 downto 0);
       VGA_B  : out STD_LOGIC_VECTOR (3 downto 0)
  );
end VGA_CONTROLLER;

architecture Behavioral of VGA_CONTROLLER is

    component clk_wiz_0
        port (
            -- Clock in ports
            clk_in1   : in  std_logic;
            -- Clock out ports
            clk_out1  : out std_logic;
            -- Status and control signals
            reset     : in  std_logic;
            locked    : out std_logic
        );
    end component;

    SIGNAL CLK25_175   : STD_LOGIC;
    SIGNAL locked     : STD_LOGIC;

    CONSTANT H_VISIBLE : INTEGER := 640;
    CONSTANT H_FRONT   : INTEGER := 16;
    CONSTANT H_SYNC    : INTEGER := 96;
    CONSTANT H_BACK    : INTEGER := 48;
    CONSTANT H_TOTAL   : INTEGER := H_VISIBLE + H_FRONT + H_SYNC + H_BACK;

    CONSTANT V_VISIBLE : INTEGER := 480;
    CONSTANT V_FRONT   : INTEGER := 10;
    CONSTANT V_SYNC    : INTEGER := 2;
    CONSTANT V_BACK    : INTEGER := 33;
    CONSTANT V_TOTAL   : INTEGER := V_VISIBLE + V_FRONT + V_SYNC + V_BACK;

    SIGNAL H_CNT : INTEGER RANGE 0 TO H_TOTAL - 1 := 0;
    SIGNAL V_CNT : INTEGER RANGE 0 TO V_TOTAL - 1 := 0;

    SIGNAL D_H   : STD_LOGIC := '0';
    SIGNAL D_V   : STD_LOGIC := '0';

begin

    LED <= SW;

    -------------------------------------------------------------------
    -- MMCM CONFIGURATION TO GENERATE 25.175 MHZ CLOCK
    -------------------------------------------------------------------
    MMCM_inst : clk_wiz_0
        port map (
            clk_in1  => CLK,       -- Input clock
            clk_out1 => CLK25_175, -- Output clock
            reset    => '0', -- Reset signal
            locked   => locked     -- Locked signal
        );

    -------------------------------------------------------------------
    -- HORIZONTAL AND VERTICAL COUNTERS
    -------------------------------------------------------------------
    PROCESS(CLK25_175)
    BEGIN
        IF RISING_EDGE(CLK25_175) THEN
            IF H_CNT = H_TOTAL - 1 THEN
                H_CNT <= 0;
                IF V_CNT = V_TOTAL - 1 THEN
                    V_CNT <= 0;
                ELSE
                    V_CNT <= V_CNT + 1;
                END IF;
            ELSE
                H_CNT <= H_CNT + 1;
            END IF;
        END IF;
    END PROCESS;

    -------------------------------------------------------------------
    -- HSYNC AND VSYNC OUTPUTS
    -------------------------------------------------------------------
    VGA_HS <= '0' WHEN (H_CNT >= H_VISIBLE + H_FRONT AND H_CNT < H_VISIBLE + H_FRONT + H_SYNC) ELSE '1';
    VGA_VS <= '0' WHEN (V_CNT >= V_VISIBLE + V_FRONT AND V_CNT < V_VISIBLE + V_FRONT + V_SYNC) ELSE '1';

    -------------------------------------------------------------------
    -- VISIBLE AREA DETECTION
    -------------------------------------------------------------------
    D_H <= '1' WHEN H_CNT < H_VISIBLE ELSE '0';
    D_V <= '1' WHEN V_CNT < V_VISIBLE ELSE '0';

    -------------------------------------------------------------------
    -- COLOR OUTPUT LOGIC (BASED ON SWITCHES)
    -------------------------------------------------------------------
    PROCESS(D_H, D_V, SW)
    BEGIN
        IF D_H = '1' AND D_V = '1' THEN
            VGA_R <= SW(15 DOWNTO 12);  -- RED
            VGA_G <= SW(11 DOWNTO 8);   -- GREEN
            VGA_B <= SW(7 DOWNTO 4);    -- BLUE
        ELSE
            VGA_R <= (OTHERS => '0');
            VGA_G <= (OTHERS => '0');
            VGA_B <= (OTHERS => '0');
        END IF;
    END PROCESS;

end Behavioral;
