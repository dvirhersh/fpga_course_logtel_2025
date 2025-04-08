library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_cam_system is
    Port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        CAM_PCLK   : in  std_logic;
        CAM_VSYNC  : in  std_logic;
        CAM_HREF   : in  std_logic;
        CAM_D      : in  std_logic_vector(7 downto 0)
        -- אפשר להוסיף יציאות דיבוג או תצוגה
    );
end top_cam_system;

architecture Behavioral of top_cam_system is

    signal pixel_out    : std_logic_vector(15 downto 0);
    signal pixel_valid  : std_logic;
    signal write_enable : std_logic;
    signal write_addr   : integer range 0 to 307199 := 0;

    -- מהקוד הקודם
    component cam_capture is
        Port (
            clk         : in  std_logic;
            reset       : in  std_logic;
            CAM_PCLK    : in  std_logic;
            CAM_VSYNC   : in  std_logic;
            CAM_HREF    : in  std_logic;
            CAM_D       : in  std_logic_vector(7 downto 0);
            pixel_out   : out std_logic_vector(15 downto 0);
            pixel_valid : out std_logic
        );
    end component;

    component framebuffer is
        Port (
            clk       : in  std_logic;
            we        : in  std_logic;
            addr      : in  integer range 0 to 307199;
            pixel_in  : in  std_logic_vector(15 downto 0);
            pixel_out : out std_logic_vector(15 downto 0)
        );
    end component;

    signal dummy_pixel_out : std_logic_vector(15 downto 0); -- לא משתמשים בו כרגע

begin

    -- מצלמה => קפצ'ר
    cam_inst : cam_capture
        port map (
            clk         => clk,
            reset       => reset,
            CAM_PCLK    => CAM_PCLK,
            CAM_VSYNC   => CAM_VSYNC,
            CAM_HREF    => CAM_HREF,
            CAM_D       => CAM_D,
            pixel_out   => pixel_out,
            pixel_valid => pixel_valid
        );

    -- פיקסלים => זיכרון
    frame_inst : framebuffer
        port map (
            clk        => clk,
            we         => write_enable,
            addr       => write_addr,
            pixel_in   => pixel_out,
            pixel_out  => dummy_pixel_out
        );

    -- כתיבת פיקסלים כשמגיע פיקסל תקף
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                write_addr <= 0;
            else
                if pixel_valid = '1' then
                    write_enable <= '1';
                    if write_addr < 307199 then
                        write_addr <= write_addr + 1;
                    else
                        write_addr <= 0;  -- התחלה חדשה כשמסך מתמלא
                    end if;
                else -- read pixel
                    write_enable <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
