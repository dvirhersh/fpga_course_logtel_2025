----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.07.2019 23:09:13
-- Design Name: 
-- Module Name: DIGITAL_CLOCK_NEW2 - Behavioral
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DIGITAL_CLOCK_NEW2 is
Port ( CLK : in STD_LOGIC;
       SW : in  STD_LOGIC_VECTOR (15 downto 0);
       BTN : in  STD_LOGIC_VECTOR (4 downto 0);
       LED : out  STD_LOGIC_VECTOR (15 downto 0);
       VGA_HS : out STD_LOGIC;
       VGA_VS : out STD_LOGIC;
       VGA_R : out STD_LOGIC_VECTOR (3 downto 0);
       VGA_G : out STD_LOGIC_VECTOR (3 downto 0);
       VGA_B : out STD_LOGIC_VECTOR (3 downto 0));
end DIGITAL_CLOCK_NEW2;

architecture Behavioral of DIGITAL_CLOCK_NEW2 is

SIGNAL RST : STD_LOGIC :='0';
SIGNAL CLK25 : STD_LOGIC :='0';--//PIXEL CLOCK FREQUENCY
SIGNAL MIN_MENUAL_UPDATE:STD_LOGIC :='0';
SIGNAL HOUR_MENUAL_UPDATE:STD_LOGIC :='0';
SIGNAL START_TIMER:STD_LOGIC :='0';
SIGNAL START_TIMER_EN:STD_LOGIC :='0';
SIGNAL START_TIMER_TMP:STD_LOGIC :='0';
SIGNAL TIMER_FLAG:STD_LOGIC :='0';
SIGNAL COUNTER_CLK : STD_LOGIC_VECTOR (3 DOWNTO 0):=(OTHERS=>'0');
SIGNAL VGA_R_IN : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_G_IN : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_B_IN : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_R_IN_BUFFER : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_G_IN_BUFFER : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_B_IN_BUFFER : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_R_IN_SECOND_BAR : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_G_IN_SECOND_BAR : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_B_IN_SECOND_BAR : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_R_IN_MINUTES_BAR : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_G_IN_MINUTES_BAR : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_B_IN_MINUTES_BAR : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_R_IN_HOUR_BAR : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_G_IN_HOUR_BAR : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL VGA_B_IN_HOUR_BAR : STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'1');
SIGNAL  NUMERIC_DIGIT_S1 :  STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'0');
SIGNAL  NUMERIC_DIGIT_S10 :  STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'0');
SIGNAL  NUMERIC_DIGIT_M1 :  STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'0');
SIGNAL  NUMERIC_DIGIT_M10 :  STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'0');
SIGNAL  NUMERIC_DIGIT_H1 :  STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'0');
SIGNAL  NUMERIC_DIGIT_H10 :  STD_LOGIC_VECTOR (3 downto 0):=(OTHERS=>'0');

SIGNAL DIGIT_S1:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_S10:INTEGER RANGE 0 TO 10:=0;
SIGNAL DIGIT_M1:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_M10:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_H1:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT1_H1:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_H1_TO_CONV:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_H10:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_S1_LATCH:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_S10_LATCH:INTEGER RANGE 0 TO 6:=0;
SIGNAL DIGIT_M1_LATCH:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_M10_LATCH:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_H1_LATCH:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT1_H1_LATCH:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_H10_LATCH:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_S1_DIV:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_S10_DIV:INTEGER RANGE 0 TO 6:=0;
SIGNAL DIGIT_M1_DIV:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_M10_DIV:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_H1_DIV:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT1_H1_DIV:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_H10_DIV:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_S1_DIV_LATCH:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_S10_DIV_LATCH:INTEGER RANGE 0 TO 10:=0;
SIGNAL DIGIT_M1_DIV_LATCH:INTEGER RANGE 0 TO 12:=0;
SIGNAL DIGIT_M10_DIV_LATCH:INTEGER RANGE 0 TO 12:=0;
SIGNAL TIMER_DIGIT_S1:INTEGER RANGE 0 TO 12:=0;
SIGNAL TIMER_DIGIT_S10:INTEGER RANGE 0 TO 10:=0;
SIGNAL TIMER_DIGIT_S10_LATCH:INTEGER RANGE 0 TO 10:=0;
SIGNAL TIMER_DIGIT_M1:INTEGER RANGE 0 TO 12:=0;
SIGNAL TIMER_DIGIT_M10:INTEGER RANGE 0 TO 12:=0;
SIGNAL COUNTER_FLIKER:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER1:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER1_LATCH:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER2:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER2_LATCH:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER3:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER3_LATCH:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER_1S:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER_S10:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER_M1:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER_M10:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER_H1:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL COUNTER_H10:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL TIMER_1S:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL TIMER_S10:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL TIMER_M1:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL TIMER_M10:INTEGER RANGE 0 TO 200000000:=0;
SIGNAL d_V:INTEGER RANGE 0 TO 479:=0;
SIGNAL d_H:INTEGER RANGE 0 TO 639:=0;

CONSTANT HD : INTEGER := 639 ;  --639 HORIZENTAL DISPLAY(640)
CONSTANT HFP: INTEGER := 16 ;  --16 RIGHT BORDER(FRONT PORCH)
CONSTANT HSP : INTEGER := 96 ;  --96 HORIZONTAL SYNC PULSE(RETRACE)
CONSTANT HBP: INTEGER := 48 ;  --48 LEFT BORDER(BACK PORCH)

CONSTANT VD : INTEGER := 479 ;  --479 VERTICAL DISPLAY(480)
CONSTANT VFP: INTEGER := 10 ;  --10 RIGHT BORDER(FRONT PORCH)
CONSTANT VSP : INTEGER := 2 ;  --2 VERTICAL SYNC PULSE(RETRACE)
CONSTANT VBP: INTEGER := 33 ;  --33 LEFT BORDER(BACK PORCH)

SIGNAL HPOS: INTEGER:=0;  --HORIZONTAL PIXEL POSITION
SIGNAL VPOS: INTEGER:=0;  --VERTICAL PIXEL POSITION

SIGNAL DIGITAL_CLOCK_EN: STD_LOGIC :='0';

SIGNAL A_S1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_S1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_S10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_S10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_M1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_M1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_M10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_M10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_H1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_H1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_H10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL A_H10_MAX :INTEGER RANGE 0 TO 640:=0;

SIGNAL B_S1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_S1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_S10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_S10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_M1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_M1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_M10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_M10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_H1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_H1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_H10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL B_H10_MAX :INTEGER RANGE 0 TO 640:=0;

SIGNAL C_S1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_S1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_S10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_S10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_M1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_M1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_M10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_M10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_H1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_H1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_H10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL C_H10_MAX :INTEGER RANGE 0 TO 640:=0;

SIGNAL D_S1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_S1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_S10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_S10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_M1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_M1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_M10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_M10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_H1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_H1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_H10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL D_H10_MAX :INTEGER RANGE 0 TO 640:=0;

SIGNAL E_S1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_S1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_S10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_S10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_M1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_M1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_M10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_M10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_H1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_H1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_H10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL E_H10_MAX :INTEGER RANGE 0 TO 640:=0;

SIGNAL F_S1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_S1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_S10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_S10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_M1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_M1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_M10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_M10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_H1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_H1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_H10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL F_H10_MAX :INTEGER RANGE 0 TO 640:=0;

SIGNAL G_S1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_S1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_S10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_S10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_M1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_M1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_M10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_M10_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_H1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_H1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_H10_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL G_H10_MAX :INTEGER RANGE 0 TO 640:=0;

SIGNAL L1V_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL L1V_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL L2V_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL L2V_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL L1H_MIN :INTEGER RANGE 0 TO 480:=0;
SIGNAL L1H_MAX :INTEGER RANGE 0 TO 480:=0;
SIGNAL L2H_MIN :INTEGER RANGE 0 TO 480:=0;
SIGNAL L2H_MAX :INTEGER RANGE 0 TO 480:=0;

SIGNAL SQ1_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ1_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ2_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ2_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ3_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ3_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ4_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ4_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ5_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ5_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ6_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ6_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ7_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ7_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ8_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ8_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ9_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL SQ9_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL TFV_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL TFV_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL BFV_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL BFV_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL V_MINUTES_BAR:INTEGER RANGE 0 TO 640:=0;
SIGNAL V_HOUR_BAR:INTEGER RANGE 0 TO 640:=0;
SIGNAL LFH_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL LFH_MAX :INTEGER RANGE 0 TO 640:=0;
SIGNAL RFH_MIN :INTEGER RANGE 0 TO 640:=0;
SIGNAL RFH_MAX :INTEGER RANGE 0 TO 640:=0;

SIGNAL PLAYER_SELECTOR :STD_LOGIC :='0';
SIGNAL A :STD_LOGIC_VECTOR (8 DOWNTO 0):=(OTHERS=>'0');
SIGNAL B :STD_LOGIC_VECTOR (8 DOWNTO 0):=(OTHERS=>'0');
SIGNAL C :STD_LOGIC_VECTOR (8 DOWNTO 0):=(OTHERS=>'0');
SIGNAL D :STD_LOGIC_VECTOR (8 DOWNTO 0):=(OTHERS=>'0');
SIGNAL E :STD_LOGIC_VECTOR (8 DOWNTO 0):=(OTHERS=>'0');
SIGNAL P1_SQ:STD_LOGIC_VECTOR (8 DOWNTO 0):=(OTHERS=>'0');
SIGNAL P2_SQ:STD_LOGIC_VECTOR (8 DOWNTO 0):=(OTHERS=>'0');
SIGNAL WIN_MARKER:STD_LOGIC_VECTOR (7 DOWNTO 0):=(OTHERS=>'0');

begin

VGA_R_IN_BUFFER(0)<=SW(15);VGA_R_IN_BUFFER(1)<=SW(14);VGA_R_IN_BUFFER(2)<=SW(13);VGA_R_IN_BUFFER(3)<=SW(12);
VGA_G_IN_BUFFER(0)<=SW(11);VGA_G_IN_BUFFER(1)<=SW(10);VGA_G_IN_BUFFER(2)<=SW(9);VGA_G_IN_BUFFER(3)<=SW(8);
VGA_B_IN_BUFFER(0)<=SW(7);VGA_B_IN_BUFFER(1)<=SW(6);VGA_B_IN_BUFFER(2)<=SW(5);VGA_B_IN_BUFFER(3)<=SW(4);

 VGA_R_IN_SECOND_BAR<="1111"; 
 VGA_G_IN_SECOND_BAR<="1111"; 
 VGA_B_IN_SECOND_BAR<="0100";
  
 VGA_R_IN_MINUTES_BAR<="1111"; 
 VGA_G_IN_MINUTES_BAR<="0110"; 
 VGA_B_IN_MINUTES_BAR<="1100"; 

 VGA_R_IN_HOUR_BAR<="0000"; 
 VGA_G_IN_HOUR_BAR<="1111"; 
 VGA_B_IN_HOUR_BAR<="1111"; 


with BTN(4) select --BTNC(N17)
	RST <= '0' 	 when '0',
		   '1' when others;
		   
with BTN(2) select --BTNR(M17)
 MIN_MENUAL_UPDATE <= '0' when '0',
                      '1' when others;	
                      
with BTN(1) select --BTNL(P17)
 HOUR_MENUAL_UPDATE <= '0' when '0',
                       '1' when others; 
                      
with BTN(3) select --BTND(P18)
 START_TIMER_EN <= '0' when '0',
                '1' when others; 



------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------- VGA DRIVER --------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------                
CLK_DIV: process(CLK)--// CLK = 100MHZ 
begin
   if  RST='1'  then
       COUNTER_CLK <= (others => '0');
   elsif CLK='1' and CLK'event then
       COUNTER_CLK <= COUNTER_CLK + 1;  
   end if; 
 end process CLK_DIV;
 -- CLK25 = PIXEL CLOCK FREQUENCY = COUNTER_CLK(1)===> 100MHZ/4=25MHZ 
 CLK25<=COUNTER_CLK(1);
                        
HORIZENTAL_POSITION_COUNTER: process(CLK25,RST)
begin
   if  RST='1'  then
       HPOS<= 0;
   elsif CLK25='1' and CLK25'event then
         if (HPOS= (HD+HFP+HSP+HBP))then
             HPOS<= 0;
         else      
             HPOS<= HPOS+1;
         end if;
   end if;
end process HORIZENTAL_POSITION_COUNTER;
                       
VERTICAL_POSITION_COUNTER: process(CLK25,RST,HPOS)
begin
   if  RST='1'  then
       VPOS<= 0;
   elsif CLK25='1' and CLK25'event then
         if (HPOS= (HD+HFP+HSP+HBP))then
             if (VPOS= (VD+VFP+VSP+VBP))then
                 VPOS<= 0;
             else      
                 VPOS<= VPOS+1;
             end if;
         end if;
   end if;
end process VERTICAL_POSITION_COUNTER;
                       
HORIZENTAL_SYNC: process(CLK25,RST,HPOS)
begin
   if  RST='1'  then
       VGA_HS<= '0';
   elsif CLK25='1' and CLK25'event then
         if ((HPOS <= (HD+HFP))OR (HPOS > (HD+HFP+HSP)))then
             VGA_HS<= '1';
         else      
             VGA_HS<= '0';
         end if;
   end if;
end process HORIZENTAL_SYNC;
                       
VERTICAL_SYNC: process(CLK25,RST,VPOS)
begin
   if  RST='1'  then
       VGA_VS<= '0';
   elsif CLK25='1' and CLK25'event then
         if ((VPOS <= (VD+VFP))OR (VPOS > (VD+VFP+VSP)))then
             VGA_VS<= '1';
         else      
             VGA_VS<= '0';
         end if;
   end if;
end process VERTICAL_SYNC;
                       
VIDEO_ON_PROC: process(CLK25,RST,HPOS,VPOS)
begin
   if  RST='1'  then
       DIGITAL_CLOCK_EN<= '0';
   elsif CLK25='1' and CLK25'event then
         if ((HPOS <= HD)AND (VPOS < VD))then
             DIGITAL_CLOCK_EN<= '1';
         else      
             DIGITAL_CLOCK_EN<= '0';
         end if;
   end if;
end process VIDEO_ON_PROC;
------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------- END OF VGA DRIVER -------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
 process(CLK,RST)
begin
   if  RST='1'  then
       COUNTER_FLIKER <= 0;
   elsif CLK='1' and CLK'event then
     if COUNTER_FLIKER<100000000 then
       COUNTER_FLIKER <= COUNTER_FLIKER + 1; 
     else 
       COUNTER_FLIKER <= 0;  
     end if; 
    end if;
 end process;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------- DIGITAL CLOCK DESIGNING -------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------


--------------------SECOND ONE COUNTER-----------------------------------------------------

LED(0)<=NUMERIC_DIGIT_S1(0);
LED(1)<=NUMERIC_DIGIT_S1(1);
LED(2)<=NUMERIC_DIGIT_S1(2);
LED(3)<=NUMERIC_DIGIT_S1(3);

process(RST,CLK)   
begin
if RST='1' then 
  COUNTER_1S<=0;
elsif CLK='1' and CLK'event then
    if (MIN_MENUAL_UPDATE='0') and (HOUR_MENUAL_UPDATE='0') and (SW(0)='0')and (COUNTER_1S<100000000)then
      COUNTER_1S<=COUNTER_1S+1;
   else
      COUNTER_1S<=0;
   end if;
end if;
end process;

process(RST,CLK,COUNTER_1S)
begin
if RST='1' then
   DIGIT_S1<= 0;
   DIGIT_S1_LATCH<=0;  
elsif CLK='1' and CLK'event then
   if ( DIGIT_S1 <=9) then
        if (COUNTER_1S=100000000) then
           DIGIT_S1<=DIGIT_S1+1;
           DIGIT_S1_LATCH<=DIGIT_S1+1;
        else
           DIGIT_S1<=DIGIT_S1_LATCH; 
        end if;
   else
       DIGIT_S1<= 0;
       DIGIT_S1_LATCH<=0;      
   end if  ;
end if;
end process;
------------------------------------------------------------------------------------------
--------------------SECOND TEN COUNTER-----------------------------------------------------

process(RST,CLK,NUMERIC_DIGIT_S1)
begin
if RST='1' then
   COUNTER_S10<= 0;
elsif CLK='1' and CLK'event then
    if ((MIN_MENUAL_UPDATE='0') and (HOUR_MENUAL_UPDATE='0')and (SW(0)='0') and (COUNTER_S10<100000000) and ( NUMERIC_DIGIT_S1="1001"))then    
       COUNTER_S10<=COUNTER_S10+1;
    else
       COUNTER_S10<= 0; 
    end if  ;
end if;
end process;

process(RST,CLK,COUNTER_S10)
begin
if RST='1' then
   DIGIT_S10<= 0;
   DIGIT_S10_LATCH<=0;  
elsif CLK='1' and CLK'event then
   if ( DIGIT_S10 <6) then
        if (COUNTER_S10=100000000) then
           DIGIT_S10<=DIGIT_S10+1;
           DIGIT_S10_LATCH<=DIGIT_S10+1;
        else
           DIGIT_S10<=DIGIT_S10_LATCH; 
        end if;
   else
       DIGIT_S10<= 0;
       DIGIT_S10_LATCH<=0;      
   end if  ;
end if;
end process;
------------------------------------------------------------------------------------------
--------------------MIN ONE COUNTER-----------------------------------------------------

process(RST,CLK,NUMERIC_DIGIT_S1,NUMERIC_DIGIT_S10)
begin
if RST='1' then
   COUNTER_M1<= 0;
elsif CLK='1' and CLK'event then
    if ((MIN_MENUAL_UPDATE='0')and (SW(0)='0')and(COUNTER_M1<100000000) and ( NUMERIC_DIGIT_S10="0101")and ( NUMERIC_DIGIT_S1="1001"))
     or ((SW(0)='0')and(MIN_MENUAL_UPDATE='1')and(COUNTER_M1<100000000)) then 
        
       COUNTER_M1<=COUNTER_M1+1;
    else
       COUNTER_M1<= 0; 
    end if  ;
end if;
end process;

process(RST,CLK,COUNTER_M1)
begin
if RST='1' then
   DIGIT_M1<= 0;
   DIGIT_M1_LATCH<=0;  
elsif CLK='1' and CLK'event then
   if ( DIGIT_M1 <10)  then
        if (COUNTER_M1=100000000) then
           DIGIT_M1<=DIGIT_M1+1;
           DIGIT_M1_LATCH<=DIGIT_M1+1;
        else
           DIGIT_M1<=DIGIT_M1_LATCH; 
        end if;
   else
       DIGIT_M1<= 0;
       DIGIT_M1_LATCH<=0;      
   end if  ;
end if;
end process;
------------------------------------------------------------------------------------------
--------------------MIN TEN COUNTER-----------------------------------------------------

process(RST,CLK,NUMERIC_DIGIT_S1,NUMERIC_DIGIT_S10,NUMERIC_DIGIT_M1)
begin
if RST='1' then
   COUNTER_M10<= 0;
elsif CLK='1' and CLK'event then
    if ((MIN_MENUAL_UPDATE='0') and (SW(0)='0')and (COUNTER_M10<100000000) and ( NUMERIC_DIGIT_S10="0101")and ( NUMERIC_DIGIT_S1="1001") and ( NUMERIC_DIGIT_M1="1001"))
    or ((SW(0)='0')and(MIN_MENUAL_UPDATE='1')and ( NUMERIC_DIGIT_M1="1001")and (COUNTER_M10<100000000)) then 
       
       COUNTER_M10<=COUNTER_M10+1;
    else
       COUNTER_M10<= 0; 
    end if  ;
end if;
end process;

process(RST,CLK,COUNTER_M10)
begin
if RST='1' then
   DIGIT_M10<= 0;
   DIGIT_M10_LATCH<=0;  
elsif CLK='1' and CLK'event then
   if ( DIGIT_M10 <6) then
        if (COUNTER_M10=100000000) then
           DIGIT_M10<=DIGIT_M10+1;
           DIGIT_M10_LATCH<=DIGIT_M10+1;
        else
           DIGIT_M10<=DIGIT_M10_LATCH; 
        end if;
   else
       DIGIT_M10<= 0;
       DIGIT_M10_LATCH<=0;      
   end if  ;
end if;
end process;

------------------------------------------------------------------------------------------
--------------------HOUR ONE COUNTER-----------------------------------------------------

process(RST,CLK,DIGIT_H10)
begin
if RST='1' then
   DIGIT_H1_TO_CONV<= 0;  
elsif CLK='1' and CLK'event then
   if ( DIGIT_H10 <2) then
        DIGIT_H1_TO_CONV<=DIGIT_H1;          
   else
        DIGIT_H1_TO_CONV<=DIGIT1_H1;
   end if  ;
end if;
end process;
process(RST,CLK,NUMERIC_DIGIT_S1,NUMERIC_DIGIT_S10,NUMERIC_DIGIT_M1,NUMERIC_DIGIT_H1,NUMERIC_DIGIT_H10)
begin
if RST='1' then
   COUNTER_H1<= 0;
elsif CLK='1' and CLK'event then
    if ((HOUR_MENUAL_UPDATE='0') and (SW(0)='0')and (COUNTER_H1<100000000) and ( NUMERIC_DIGIT_S10="0101")and ( NUMERIC_DIGIT_S1="1001") and ( NUMERIC_DIGIT_M1="1001")and ( NUMERIC_DIGIT_M10="0101"))
    or ((SW(0)='0')and(HOUR_MENUAL_UPDATE='1') and (COUNTER_H1<100000000)) then    
       COUNTER_H1<=COUNTER_H1+1;
    else
       COUNTER_H1<= 0; 
    end if  ;
end if;
end process;

process(RST,CLK,COUNTER_H1)
begin
if RST='1' then
   DIGIT_H1<= 0;
   DIGIT_H1_LATCH<=0;  
elsif CLK='1' and CLK'event then
   if ( DIGIT_H10 <2)and ( DIGIT_H1 <10) then
        if (COUNTER_H1=100000000) then
           DIGIT_H1<=DIGIT_H1+1;
           DIGIT_H1_LATCH<=DIGIT_H1+1;
        else
           DIGIT_H1<=DIGIT_H1_LATCH; 
        end if;
   elsif( DIGIT_H10 =2)and ( DIGIT_H1 <4) then
        if (COUNTER_H1=100000000) then
            DIGIT1_H1<=DIGIT1_H1+1;
            DIGIT1_H1_LATCH<=DIGIT1_H1+1;
        else
            DIGIT1_H1<=DIGIT1_H1_LATCH; 
        end if;
   else        
       DIGIT1_H1<= 0;
       DIGIT1_H1_LATCH<=0;
       DIGIT_H1<= 0;
       DIGIT_H1_LATCH<=0;       
   end if  ;
end if;
end process;
------------------------------------------------------------------------------------------
--------------------HOUR TEN COUNTER-----------------------------------------------------
process(RST,CLK,NUMERIC_DIGIT_S1,NUMERIC_DIGIT_S10,NUMERIC_DIGIT_M1,NUMERIC_DIGIT_H1,NUMERIC_DIGIT_H10)
begin
if RST='1' then
   COUNTER_H10<= 0;
elsif CLK='1' and CLK'event then
    if ((HOUR_MENUAL_UPDATE='0') and (SW(0)='0')and (COUNTER_H10<100000000) and ( NUMERIC_DIGIT_S10="0101")and ( NUMERIC_DIGIT_S1="1001")
      and ( NUMERIC_DIGIT_M1="1001")and ( NUMERIC_DIGIT_M10="0101")and ( NUMERIC_DIGIT_H1="1001")and ( NUMERIC_DIGIT_H10<"0010"))
     OR  ((SW(0)='0')and(HOUR_MENUAL_UPDATE='0') and (COUNTER_H10<100000000) and ( NUMERIC_DIGIT_S10="0101")and ( NUMERIC_DIGIT_S1="1001") 
      and ( NUMERIC_DIGIT_M1="1001")and ( NUMERIC_DIGIT_M10="0101")and ( NUMERIC_DIGIT_H1="0011")and ( NUMERIC_DIGIT_H10="0010"))
     OR ((SW(0)='0')and(HOUR_MENUAL_UPDATE='1')and ( NUMERIC_DIGIT_H1="1001")and ( NUMERIC_DIGIT_H10<"0010")and (COUNTER_H10<100000000))
      OR ((HOUR_MENUAL_UPDATE='1')and ( NUMERIC_DIGIT_H1="0011")and ( NUMERIC_DIGIT_H10="0010")and (COUNTER_H10<100000000))then  
       
       COUNTER_H10<=COUNTER_H10+1;
    else
       COUNTER_H10<= 0; 
    end if  ;
end if;
end process;

process(RST,CLK,COUNTER_H10)
begin
if RST='1' then
   DIGIT_H10<= 0;
   DIGIT_H10_LATCH<=0;  
elsif CLK='1' and CLK'event then
   if ( DIGIT_H10 <3) then
        if (COUNTER_H10=100000000) then
           DIGIT_H10<=DIGIT_H10+1;
           DIGIT_H10_LATCH<=DIGIT_H10+1;
        else
           DIGIT_H10<=DIGIT_H10_LATCH; 
        end if;  
   else        
       DIGIT_H10<= 0;
       DIGIT_H10_LATCH<=0;       
   end if  ;
end if;
end process;

---------------------------------------------------------------------------------------------------------------
-----------------------------------COUNTER FOR SECOND BAR------------------------------------------------------
process(CLK,RST,COUNTER_1S)
begin
if RST='1' then
    COUNTER1<=0;
    COUNTER1_LATCH<=0;
elsif CLK='1' and CLK'event then
    if COUNTER1<=59 then
        if (COUNTER_1S=100000000-1) then
             COUNTER1<=COUNTER1+1;    
             COUNTER1_LATCH<=COUNTER1+1;
        else
            COUNTER1<=COUNTER1_LATCH;
        end if;
    else
        COUNTER1<=0;
        COUNTER1_LATCH<=0;
    end if;
 end if;
 end process;
 
 ---------------------------------------------------------------------------------------------------------------
 -----------------------------------COUNTER FOR MINUTES BAR-----------------------------------------------------
 
 process(CLK,RST,COUNTER1,COUNTER_1S,MIN_MENUAL_UPDATE)
 begin
 if RST='1' then
     COUNTER2<=0;
     COUNTER2_LATCH<=0;
 elsif CLK='1' and CLK'event then
    if COUNTER2<=59 then
        if (COUNTER1=59 and (COUNTER_1S=100000000-1))or ((MIN_MENUAL_UPDATE='1')and (COUNTER_M1=100000000)) then
            COUNTER2<=COUNTER2+1;    
            COUNTER2_LATCH<=COUNTER2+1;
        else
            COUNTER2<=COUNTER2_LATCH;
        end if;
    else
        COUNTER2<=0;
        COUNTER2_LATCH<=0;
    end if;
 end if;
 end process;

---------------------------------------------------------------------------------------------------------------
-----------------------------------COUNTER FOR HOUR BAR--------------------------------------------------------
 
 process(CLK,RST,COUNTER1,COUNTER_1S,MIN_MENUAL_UPDATE)
 begin
 if RST='1' then
     COUNTER3<=0;
     COUNTER3_LATCH<=0;
 elsif CLK='1' and CLK'event then
    if COUNTER3<=23 then
        if (COUNTER2=59 and (COUNTER_M1=100000000-1))or ((HOUR_MENUAL_UPDATE='1')and (COUNTER_H1=100000000)) then
            COUNTER3<=COUNTER3+1;    
            COUNTER3_LATCH<=COUNTER3+1;
        else
            COUNTER3<=COUNTER3_LATCH;
        end if;
    else
        COUNTER3<=0;
        COUNTER3_LATCH<=0;
    end if;
 end if;
 end process;
 
------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------- END OF DIGITAL CLOCK DESIGNING ------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------



--****************************************************************************************************************************************************************--
--********************************* DIGITAL TIMER  DESIGNING *******************************************************************************************************--
--****************************************************************************************************************************************************************--

process(RST,CLK)   
begin
if RST='1' then 
  START_TIMER<='0';
  
elsif CLK='1' and CLK'event then
    if (START_TIMER_EN='1')then
      START_TIMER<='1';
      
   else
      START_TIMER<=START_TIMER_TMP;
   end if;
end if;
end process;

--*****************************************************************************************************--
--*******************************TIMER-ONE-SEC*********************************************************--
process(RST,CLK)   
begin
if RST='1' then 
  TIMER_1S<=0;
elsif CLK='1' and CLK'event then
    if (MIN_MENUAL_UPDATE='0') and (SW(0)='1')and (TIMER_1S<100000000) then
      TIMER_1S<=TIMER_1S+1;
   else
      TIMER_1S<=0;
   end if;
end if;
end process;

process(RST,CLK,TIMER_1S,START_TIMER)
begin
if RST='1' then
   TIMER_DIGIT_S1<= 0;
   DIGIT_S1_DIV<= 0;
   DIGIT_S1_DIV_LATCH<=0;
   START_TIMER_TMP<='0';  
elsif CLK='1' and CLK'event then
 if (START_TIMER='1')then
   START_TIMER_TMP<='1';
   if ( DIGIT_S1_DIV <=9) then
     if ((TIMER_DIGIT_M1=0 and TIMER_DIGIT_M10=0 and TIMER_DIGIT_S1=0 and TIMER_DIGIT_S10=0))then
            DIGIT_S1_DIV<= 0;
            DIGIT_S1_DIV_LATCH<=0;
            TIMER_DIGIT_S1<= 0;
            START_TIMER_TMP<='0';           
     else
        if (TIMER_1S=100000000) then
           TIMER_DIGIT_S1<=9-DIGIT_S1_DIV;
           DIGIT_S1_DIV<=DIGIT_S1_DIV+1;
           DIGIT_S1_DIV_LATCH<=DIGIT_S1_DIV+1;
           TIMER_FLAG<='1';
        else
           DIGIT_S1_DIV<=DIGIT_S1_DIV_LATCH;
           TIMER_DIGIT_S1<=9-DIGIT_S1_DIV; 
        end if;
     end if;
   else
       DIGIT_S1_DIV<= 0;
       DIGIT_S1_DIV_LATCH<=0;
       TIMER_DIGIT_S1<= 0;      
   end if  ;
 else
    TIMER_DIGIT_S1<= 0;
 end if;   
end if;
end process;

--*****************************************************************************************************--
--******************************TIMER-TEN-SEC**********************************************************--

process(RST,CLK)
begin
if RST='1' then
   TIMER_S10<= 0;
elsif CLK='1' and CLK'event then
    if ((MIN_MENUAL_UPDATE='0') and (SW(0)='1') and (TIMER_S10<100000000) and ( NUMERIC_DIGIT_S1="0000"))then    
       TIMER_S10<=TIMER_S10+1;
    else
       TIMER_S10<= 0; 
    end if  ;
end if;
end process;

process(RST,CLK,TIMER_S10,START_TIMER)
begin
if RST='1' then
   DIGIT_S10_DIV<= 0;
   DIGIT_S10_DIV_LATCH<=0;  
elsif CLK='1' and CLK'event then
 if  (START_TIMER='1')then
   if (DIGIT_S10_DIV>=0 and DIGIT_S10_DIV <6)then
      if ( TIMER_DIGIT_S1=0)then
        if (TIMER_S10=100000000) then
           DIGIT_S10_DIV<=DIGIT_S10_DIV+1; 
           DIGIT_S10_DIV_LATCH<=DIGIT_S10_DIV_LATCH+1; 
        else
           DIGIT_S10_DIV<=DIGIT_S10_DIV_LATCH;
        end if;     
      else
        DIGIT_S10_DIV<=DIGIT_S10_DIV_LATCH;
      end if; 
   else
     DIGIT_S10_DIV<= 0;
     DIGIT_S10_DIV_LATCH<=0; 
   end if;      
 else
   DIGIT_S10_DIV<= 0;
   DIGIT_S10_DIV_LATCH<=0;
 end if;
end if;
end process;
  
process(RST,CLK,TIMER_S10,START_TIMER)
begin
if RST='1' then
   TIMER_DIGIT_S10<= 0;    
elsif CLK='1' and CLK'event then
 if  (START_TIMER='1')then
    if (DIGIT_S10_DIV>=0 and DIGIT_S10_DIV <=5) then 
        TIMER_DIGIT_S10<=5-DIGIT_S10_DIV;
    else
        TIMER_DIGIT_S10<=5 ;
   end if;     
 else
   TIMER_DIGIT_S10<= 0; 
  end if;
end if;
end process;

--*****************************************************************************************************--
--*******************************TIMER-ONE-MIN*********************************************************--
process(RST,CLK,NUMERIC_DIGIT_S1,NUMERIC_DIGIT_S10)
begin
if RST='1' then
   TIMER_M1<= 0;
elsif CLK='1' and CLK'event then
    if ((MIN_MENUAL_UPDATE='0')and (SW(0)='1')and(TIMER_M1<100000000) and ( NUMERIC_DIGIT_S10="0000")and ( NUMERIC_DIGIT_S1="0000"))
     or ((SW(0)='1')and (MIN_MENUAL_UPDATE='1')and(TIMER_M1<100000000)) then  
       TIMER_M1<=TIMER_M1+1;
    else
       TIMER_M1<= 0; 
    end if  ;
end if;
end process;

process(RST,CLK,TIMER_M1)
begin
if RST='1' then
   TIMER_DIGIT_M1<= 0;
   DIGIT_M1_DIV<= 0;
   DIGIT_M1_DIV_LATCH<=0;  
elsif CLK='1' and CLK'event then 
   if ( TIMER_DIGIT_M1 >=0 and TIMER_DIGIT_M1 <=9)  then
     if ((START_TIMER='1')and (MIN_MENUAL_UPDATE='0')) then
       if ((TIMER_DIGIT_M10 >=0)and (TIMER_DIGIT_M1 >0)) then
          if (TIMER_M1=100000000) then
              TIMER_DIGIT_M1<=DIGIT_M1_DIV-1;
              DIGIT_M1_DIV_LATCH<=DIGIT_M1_DIV_LATCH-1;
          else
              DIGIT_M1_DIV<=DIGIT_M1_DIV_LATCH;
              TIMER_DIGIT_M1<=DIGIT_M1_DIV-1;  
          end if;
       else
          if (TIMER_M1=100000000) then
            TIMER_DIGIT_M1<= 9;
            DIGIT_M1_DIV<= 10;
            DIGIT_M1_DIV_LATCH<=10;
          end if; 
       end if;
      
     elsif ((START_TIMER='0')and (MIN_MENUAL_UPDATE='1')) then
        if (TIMER_M1=100000000) then
           DIGIT_M1_DIV<=DIGIT_M1_DIV+1;
           DIGIT_M1_DIV_LATCH<=DIGIT_M1_DIV_LATCH+1;
           TIMER_DIGIT_M1<=DIGIT_M1_DIV;
        else
           DIGIT_M1_DIV<=DIGIT_M1_DIV_LATCH;
           TIMER_DIGIT_M1<=DIGIT_M1_DIV; 
        end if;
     end if;      
   else
       TIMER_DIGIT_M1<= 0;
       DIGIT_M1_DIV<= 0;
       DIGIT_M1_DIV_LATCH<=0;      
   end if  ;
end if;
end process;

--*****************************************************************************************************--
--*******************************TIMER-TEN-MIN*********************************************************--

process(RST,CLK,NUMERIC_DIGIT_S1,NUMERIC_DIGIT_S10,NUMERIC_DIGIT_M1)
begin
if RST='1' then
  TIMER_M10<= 0;
elsif CLK='1' and CLK'event then
    if ((MIN_MENUAL_UPDATE='0') and (SW(0)='1')and (TIMER_M10<100000000) and ( NUMERIC_DIGIT_S10="0000")and ( NUMERIC_DIGIT_S1="0000") and ( NUMERIC_DIGIT_M1="0000"))
    or ((SW(0)='1')and (MIN_MENUAL_UPDATE='1')and ( NUMERIC_DIGIT_M1="1001")and (TIMER_M10<100000000)) then    
       TIMER_M10<=TIMER_M10+1;
    else
       TIMER_M10<= 0; 
    end if  ;
end if;
end process;

process(RST,CLK,TIMER_M10)
begin
if RST='1' then
   TIMER_DIGIT_M10<= 0;
   DIGIT_M10_DIV<= 0;
   DIGIT_M10_DIV_LATCH<=0;  
elsif CLK='1' and CLK'event then
  if ( TIMER_DIGIT_M10 >=0 and TIMER_DIGIT_M10 <6) then
    if (START_TIMER='1')and (MIN_MENUAL_UPDATE='0') then
      if ( TIMER_DIGIT_M10 >0)then
        if (TIMER_M10=100000000) then
           TIMER_DIGIT_M10<=DIGIT_M10_DIV-1;
           DIGIT_M10_DIV_LATCH<=DIGIT_M10_DIV-1;
        else
           DIGIT_M10_DIV<=DIGIT_M10_DIV_LATCH;
           TIMER_DIGIT_M10<=DIGIT_M10_DIV;   
        end if;
      end if;
    elsif (START_TIMER='0')and (MIN_MENUAL_UPDATE='1')  then
        if (TIMER_M10=100000000) then
           TIMER_DIGIT_M10<=DIGIT_M10_DIV;
           DIGIT_M10_DIV<=DIGIT_M10_DIV+1;
           DIGIT_M10_DIV_LATCH<=DIGIT_M10_DIV+1;
        else
           TIMER_DIGIT_M10<=DIGIT_M10_DIV;
           DIGIT_M10_DIV<=DIGIT_M10_DIV_LATCH; 
        end if; 
    end if;  
  else
       TIMER_DIGIT_M10<= 0;
       DIGIT_M10_DIV<= 0;
       DIGIT_M10_DIV_LATCH<=0;      
  end if  ;
end if;
end process;

--*****************************************************************************************************************************************************************--
--********************************* END OF DIGITAL TIMER DESIGNING*************************************************************************************************--
--*****************************************************************************************************************************************************************--


--################################################################################################################################################################--
--################################# TIC TAC TOE GAME DESIGNING ###################################################################################################--
--################################################################################################################################################################--
process (SW(0))
begin
  case SW(0) is ---L1V,L2V,L1H,L2H-borders line tic tac toe game
                ---TFV,BFV,V_MINUTES_BAR,V_HOUR_BAR-for digital clock seconds,minutes,hoursc bar display
   when '1' =>   L1V_MIN<=150;
                 L1V_MAX<=160;
                 L2V_MIN<=318;
                 L2V_MAX<=328;
                 L1H_MIN<=260;
                 L1H_MAX<=270;
                 L2H_MIN<=360;
                 L2H_MAX<=370;
                 
                 TFV_MIN<=0;
                 TFV_MAX<=0;
                 BFV_MIN<=0;
                 BFV_MAX<=0;
                 V_MINUTES_BAR<=0;
                 V_HOUR_BAR<=0;
                 
   when others => L1V_MIN<=0;
                  L1V_MAX<=0;
                  L2V_MIN<=0;
                  L2V_MAX<=0;
                  L1H_MIN<=0;
                  L1H_MAX<=0;
                  L2H_MIN<=0;
                  L2H_MAX<=0;
                  
                  TFV_MIN<=2;
                  TFV_MAX<=32;
                  BFV_MIN<=448;
                  BFV_MAX<=478;
                  V_MINUTES_BAR<=50;
                  V_HOUR_BAR<=100;
   end case;
end process;

A(0)<= SW(15);A(1)<= SW(14);A(2)<= SW(13);A(3)<= SW(12);
A(4)<= SW(11);A(5)<= SW(10);A(6)<= SW(9);A(7)<= SW(8);A(8)<= SW(7);

--##################################################################################################################################--
--################################# RECOGNITION SWITCH CHANGE-BTWEEN ZERO TO ONE ###################################################-- 
process (CLK,RST)
begin
if  RST='1'  then
 B <=(OTHERS=>'0');
 C <=(OTHERS=>'0');
elsif CLK='1' and CLK'event then
  if SW(0) ='1' and (START_TIMER='1')  then
    B<=A;
    C(0)<=A(0) AND NOT(B(0));
    C(1)<=A(1) AND NOT(B(1));
    C(2)<=A(2) AND NOT(B(2));
    C(3)<=A(3) AND NOT(B(3));
    C(4)<=A(4) AND NOT(B(4));
    C(5)<=A(5) AND NOT(B(5));
    C(6)<=A(6) AND NOT(B(6));
    C(7)<=A(7) AND NOT(B(7));
    C(8)<=A(8) AND NOT(B(8));

  end if;
end if;
end process; 
                                  
--##################################################################################################################################--
--################################ PLAYER SELECTOR BTWEEN P1 TO P2 #################################################################--


process (SW(0),C,START_TIMER,CLK,RST)
begin
if  RST='1' or ( A = "000000000") then
     PLAYER_SELECTOR<='0';
elsif CLK='1' and CLK'event then
    if SW(0) ='1' and (START_TIMER='1')  then
        if C(0)='1' OR C(1)='1' OR C(2)='1' OR C(3)='1' OR C(4)='1' OR C(5)='1' OR C(6)='1' OR C(7)='1' OR C(8)='1' then 
            PLAYER_SELECTOR<= NOT PLAYER_SELECTOR ; 
        end if;
    else
        PLAYER_SELECTOR<='0';
    end if;
end if;
end process;
 
--##################################################################################################################################--                 
--################################# TIC TAC TEO GAME-SWITCH STROBE IDENTIFICATION ##################################################--

process (CLK,RST,SW(0),START_TIMER,C,A)
begin
if  RST='1' or ( A = "000000000")  then
  D <=(OTHERS=>'0');
  E <=(OTHERS=>'0');
  P1_SQ<=(OTHERS=>'0');
  P2_SQ<=(OTHERS=>'0');
elsif CLK='1' and CLK'event then
 if SW(0) ='1' and (START_TIMER='1')  then
 
  if C(0)='1' then
   E(0)<='1';
   if PLAYER_SELECTOR='0' then
    D(0)<='1';
     P1_SQ(0)<='1';
   else
    D(0)<='0';
    P2_SQ(0)<='1';
   end if;
  end if;
 
  if C(1)='1' then
   E(1)<='1';
   if PLAYER_SELECTOR='0' then
    D(1)<='1';
     P1_SQ(1)<='1';
   else
    D(1)<='0';
    P2_SQ(1)<='1';
   end if;
  end if;
  
  if C(2)='1' then
   E(2)<='1';
   if PLAYER_SELECTOR='0' then
    D(2)<='1';
     P1_SQ(2)<='1';
   else
    D(2)<='0';
    P2_SQ(2)<='1';
   end if;
  end if;
  
  if C(3)='1' then
   E(3)<='1';
   if PLAYER_SELECTOR='0' then
    D(3)<='1';
    P1_SQ(3)<='1';
   else
    D(3)<='0';
    P2_SQ(3)<='1';
   end if;
  end if;
  
  if C(4)='1' then
   E(4)<='1';
   if PLAYER_SELECTOR='0' then
    D(4)<='1';
     P1_SQ(4)<='1';
   else
    D(4)<='0';
    P2_SQ(4)<='1';
   end if;
  end if;
 
  if C(5)='1' then
   E(5)<='1';
   if PLAYER_SELECTOR='0' then
    D(5)<='1';
     P1_SQ(5)<='1';
   else
    D(5)<='0';
   P2_SQ(5)<='1';
   end if;
  end if;

  if C(6)='1' then
   E(6)<='1';
   if PLAYER_SELECTOR='0' then
    D(6)<='1';
     P1_SQ(6)<='1';
   else
    D(6)<='0';
    P2_SQ(6)<='1';
   end if;
  end if;

  if C(7)='1' then
   E(7)<='1';
   if PLAYER_SELECTOR='0' then
    D(7)<='1';
     P1_SQ(7)<='1';
   else
    D(7)<='0';
    P2_SQ(7)<='1';
   end if;
  end if;
  
  if C(8)='1' then
   E(8)<='1';
   if PLAYER_SELECTOR='0' then
    D(8)<='1';
     P1_SQ(8)<='1';
   else
    D(8)<='0';
    P2_SQ(8)<='1';
   end if;
  end if;
 else
  D <=(OTHERS=>'0');
  E <=(OTHERS=>'0');
  P1_SQ<=(OTHERS=>'0');
  P2_SQ<=(OTHERS=>'0');
 end if;
end if;
end process;

--##################################################################################################################################--                 
--################################# TIC TAC TEO GAME-SWITCH TO SQUARE ##############################################################--
 
process(CLK,RST,SW(0),START_TIMER,E)
begin
if  RST='1'  then
  SQ1_MIN<=0;SQ2_MIN<=0;SQ3_MIN<=0;SQ4_MIN<=0;SQ5_MIN<=0;
  SQ1_MAX<=0;SQ2_MAX<=0;SQ3_MAX<=0;SQ4_MAX<=0;SQ5_MAX<=0;
  SQ6_MIN<=0;SQ7_MIN<=0;SQ8_MIN<=0;SQ9_MIN<=0;                        
  SQ6_MAX<=0;SQ7_MAX<=0;SQ8_MAX<=0;SQ9_MAX<=0;
   
elsif CLK='1' and CLK'event then
 if (SW(0) ='1' and (START_TIMER='1'))  then
    if E(0)='1'   then 
        SQ1_MIN<=46;
        SQ1_MAX<=98;  
    else
        SQ1_MIN<=0;
        SQ1_MAX<=0; 
    end if;
  
    if E(1)='1'  then  
        SQ2_MIN<=212;
        SQ2_MAX<=264;
    else
        SQ2_MIN<=0;
        SQ2_MAX<=0;
    end if;
      
    if E(2)='1'  then
        SQ3_MIN<=380;
        SQ3_MAX<=432;
    else  
        SQ3_MIN<=0;
        SQ3_MAX<=0;
    end if;
    
    if E(3)='1'  then
        SQ4_MIN<=46;
        SQ4_MAX<=98;
    else
        SQ4_MIN<=0;
        SQ4_MAX<=0;
    end if;
  
    if E(4)='1'  then
        SQ5_MIN<=212;
        SQ5_MAX<=264;
    else
        SQ5_MIN<=0;
        SQ5_MAX<=0;
    end if;
  
    if E(5)='1'  then 
        SQ6_MIN<=380;
        SQ6_MAX<=432;
    else
        SQ6_MIN<=0;
        SQ6_MAX<=0;
    end if;
  
    if E(6)='1'  then  
        SQ7_MIN<=46;
        SQ7_MAX<=98;
    else
        SQ7_MIN<=0;
        SQ7_MAX<=0;
    end if;
    
    if E(7)='1'  then
        SQ8_MIN<=212;
        SQ8_MAX<=264;
    else
        SQ8_MIN<=0;
        SQ8_MAX<=0;
    end if;
  
    if E(8)='1'  then
        SQ9_MIN<=380;
        SQ9_MAX<=432;
    else
        SQ9_MIN<=0;
        SQ9_MAX<=0;
    end if;
        
 else
 
  SQ1_MIN<=0;SQ2_MIN<=0;SQ3_MIN<=0;SQ4_MIN<=0;SQ5_MIN<=0;
  SQ1_MAX<=0;SQ2_MAX<=0;SQ3_MAX<=0;SQ4_MAX<=0;SQ5_MAX<=0; 
  SQ6_MIN<=0;SQ7_MIN<=0;SQ8_MIN<=0;SQ9_MIN<=0;                        
  SQ6_MAX<=0;SQ7_MAX<=0;SQ8_MAX<=0;SQ9_MAX<=0; 
                         
 end if;
end if;                                                                   
end process;

--######################################################################################################################################--
--################################# WIN OPTION #########################################################################################-- 

process(CLK,RST,P1_SQ,P2_SQ,A)
begin
if  RST='1' or ( A = "000000000")  then
  WIN_MARKER<= (OTHERS=>'0');  
elsif CLK='1' and CLK'event then
 if (P1_SQ(0)='1' and P1_SQ(1)='1' and P1_SQ(2)='1') or (P2_SQ(0)='1' and P2_SQ(1)='1' and P2_SQ(2)='1')  then
    WIN_MARKER(0)<='1'; 
 elsif (P1_SQ(3)='1' and P1_SQ(4)='1' and P1_SQ(5)='1') or (P2_SQ(3)='1' and P2_SQ(4)='1' and P2_SQ(5)='1')  then
    WIN_MARKER(1)<='1'; 
 elsif (P1_SQ(6)='1' and P1_SQ(7)='1' and P1_SQ(8)='1') or (P2_SQ(6)='1' and P2_SQ(7)='1' and P2_SQ(8)='1')  then
    WIN_MARKER(2)<='1';         
 elsif (P1_SQ(0)='1' and P1_SQ(3)='1' and P1_SQ(6)='1') or (P2_SQ(0)='1' and P2_SQ(3)='1' and P2_SQ(6)='1')  then
    WIN_MARKER(3)<='1'; 
 elsif (P1_SQ(1)='1' and P1_SQ(4)='1' and P1_SQ(7)='1') or (P2_SQ(1)='1' and P2_SQ(4)='1' and P2_SQ(7)='1')  then
    WIN_MARKER(4)<='1';         
 elsif (P1_SQ(2)='1' and P1_SQ(5)='1' and P1_SQ(8)='1') or (P2_SQ(2)='1' and P2_SQ(5)='1' and P2_SQ(8)='1')  then
    WIN_MARKER(5)<='1';         
 elsif (P1_SQ(0)='1' and P1_SQ(4)='1' and P1_SQ(8)='1') or (P2_SQ(0)='1' and P2_SQ(4)='1' and P2_SQ(8)='1')  then
    WIN_MARKER(6)<='1'; 
 elsif (P1_SQ(2)='1' and P1_SQ(4)='1' and P1_SQ(6)='1') or (P2_SQ(2)='1' and P2_SQ(4)='1' and P2_SQ(6)='1')  then
    WIN_MARKER(7)<='1';
 else 
    WIN_MARKER<= (OTHERS=>'0');
 end if;
end if;
end process;

--################################################################################################################################################################--
--################################# END OF TIC TAC TEO GAME DESIGNING ############################################################################################--
--################################################################################################################################################################--

with SW(0) select 
 d_V <= 26 when '0',
      175 when others; 
       
with SW(0) select 
 d_H <= 0 when '0',
        0 when others;
        
--with SW(0) select 
-- d_H <= 70 when '0',
--        0 when others;

-------------------------------------------------------------------------------------------------------------------------------------------               
----------------------------------- CONVERTION SELECTOR- BETWEEN DIGITAL CLOCK DIGIT TO DIGITAL TIMER DIGIT -------------------------------
with SW(0) select 
 NUMERIC_DIGIT_S1 <= std_logic_vector(to_unsigned(DIGIT_S1,4)) when '0',
                     std_logic_vector(to_unsigned(TIMER_DIGIT_S1,4)) when others; 
with SW(0) select 
 NUMERIC_DIGIT_S10 <= std_logic_vector(to_unsigned(DIGIT_S10,4)) when '0',
                      std_logic_vector(to_unsigned(TIMER_DIGIT_S10,4)) when others; 
with SW(0) select 
 NUMERIC_DIGIT_M1 <= std_logic_vector(to_unsigned(DIGIT_M1,4)) when '0',
                     std_logic_vector(to_unsigned(TIMER_DIGIT_M1,4)) when others;  
with SW(0) select 
 NUMERIC_DIGIT_M10 <= std_logic_vector(to_unsigned(DIGIT_M10,4)) when '0',
                      std_logic_vector(to_unsigned(TIMER_DIGIT_M10,4)) when others;
with SW(0) select 
 NUMERIC_DIGIT_H1 <= std_logic_vector(to_unsigned(DIGIT_H1_TO_CONV,4)) when '0',
                     "0000" when others;

with SW(0) select 
 NUMERIC_DIGIT_H10 <= std_logic_vector(to_unsigned(DIGIT_H10,4)) when '0',
                      "0000" when others;

-------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------- CONVERT NUMERIC DIGIT TO PIXELS PRESENT ---------------------------------------------------------------
process (NUMERIC_DIGIT_S1)
begin
  case NUMERIC_DIGIT_S1 is 
  
   when "0000"  =>  A_S1_MIN<=423;
               A_S1_MAX<=465;
               G_S1_MIN<=0;
               G_S1_MAX<=0;
               D_S1_MIN<=423;
               D_S1_MAX<=465;
               F_S1_MIN<=412;
               F_S1_MAX<=422;
               E_S1_MIN<=412;
               E_S1_MAX<=422;
               B_S1_MIN<=466;
               B_S1_MAX<=476;
               C_S1_MIN<=466;
               C_S1_MAX<=476;

   when "0001"  =>  A_S1_MIN<=0;
               A_S1_MAX<=0;
               G_S1_MIN<=0;
               G_S1_MAX<=0;
               D_S1_MIN<=0;
               D_S1_MAX<=0;
               F_S1_MIN<=0;
               F_S1_MAX<=0;
               E_S1_MIN<=0;
               E_S1_MAX<=0;
               B_S1_MIN<=466;
               B_S1_MAX<=476;
               C_S1_MIN<=466;
               C_S1_MAX<=476;
               
   when "0010"  =>  A_S1_MIN<=423;
               A_S1_MAX<=465;
               G_S1_MIN<=423;
               G_S1_MAX<=465;
               D_S1_MIN<=423;
               D_S1_MAX<=465;
               F_S1_MIN<=0;
               F_S1_MAX<=0;
               E_S1_MIN<=412;
               E_S1_MAX<=422;
               B_S1_MIN<=466;
               B_S1_MAX<=476;
               C_S1_MIN<=0;
               C_S1_MAX<=0;
               
   when "0011"  =>  A_S1_MIN<=423;
               A_S1_MAX<=465;
               G_S1_MIN<=423;
               G_S1_MAX<=465;
               D_S1_MIN<=423;
               D_S1_MAX<=465;
               F_S1_MIN<=0;
               F_S1_MAX<=0;
               E_S1_MIN<=0;
               E_S1_MAX<=0;
               B_S1_MIN<=466;
               B_S1_MAX<=476;
               C_S1_MIN<=466;
               C_S1_MAX<=476;
               
   when "0100"  =>  A_S1_MIN<=0;
               A_S1_MAX<=0;
               G_S1_MIN<=423;
               G_S1_MAX<=465;
               D_S1_MIN<=0;
               D_S1_MAX<=0;
               F_S1_MIN<=412;
               F_S1_MAX<=422;
               E_S1_MIN<=0;
               E_S1_MAX<=0;
               B_S1_MIN<=466;
               B_S1_MAX<=476;
               C_S1_MIN<=466;
               C_S1_MAX<=476;
               
   when "0101"  =>  A_S1_MIN<=423;
               A_S1_MAX<=465;
               G_S1_MIN<=423;
               G_S1_MAX<=465;
               D_S1_MIN<=423;
               D_S1_MAX<=465;
               F_S1_MIN<=412;
               F_S1_MAX<=422;
               E_S1_MIN<=0;
               E_S1_MAX<=0;
               B_S1_MIN<=0;
               B_S1_MAX<=0;
               C_S1_MIN<=466;
               C_S1_MAX<=476;
               
   when "0110"  =>  A_S1_MIN<=423;
               A_S1_MAX<=465;
               G_S1_MIN<=423;
               G_S1_MAX<=465;
               D_S1_MIN<=423;
               D_S1_MAX<=465;
               F_S1_MIN<=412;
               F_S1_MAX<=422;
               E_S1_MIN<=412;
               E_S1_MAX<=422;
               B_S1_MIN<=0;
               B_S1_MAX<=0;
               C_S1_MIN<=466;
               C_S1_MAX<=476;
               
   when "0111"  =>  A_S1_MIN<=423;
               A_S1_MAX<=465;
               G_S1_MIN<=0;
               G_S1_MAX<=0;
               D_S1_MIN<=0;
               D_S1_MAX<=0;
               F_S1_MIN<=0;
               F_S1_MAX<=0;
               E_S1_MIN<=0;
               E_S1_MAX<=0;
               B_S1_MIN<=466;
               B_S1_MAX<=476;
               C_S1_MIN<=466;
               C_S1_MAX<=476;
               
   when "1000"  =>  A_S1_MIN<=423;
               A_S1_MAX<=465;
               G_S1_MIN<=423;
               G_S1_MAX<=465;
               D_S1_MIN<=423;
               D_S1_MAX<=465;
               F_S1_MIN<=412;
               F_S1_MAX<=422;
               E_S1_MIN<=412;
               E_S1_MAX<=422;
               B_S1_MIN<=466;
               B_S1_MAX<=476;
               C_S1_MIN<=466;
               C_S1_MAX<=476;
               
   when "1001"  =>  A_S1_MIN<=423;
               A_S1_MAX<=465;
               G_S1_MIN<=423;
               G_S1_MAX<=465;
               D_S1_MIN<=423;
               D_S1_MAX<=465;
               F_S1_MIN<=412;
               F_S1_MAX<=422;
               E_S1_MIN<=0;
               E_S1_MAX<=0;
               B_S1_MIN<=466;
               B_S1_MAX<=476;
               C_S1_MIN<=466;
               C_S1_MAX<=476;

   when others =>  A_S1_MIN<=423;
                   A_S1_MAX<=465;
                   G_S1_MIN<=423;
                   G_S1_MAX<=465;
                   D_S1_MIN<=423;
                   D_S1_MAX<=465;
                   F_S1_MIN<=412;
                   F_S1_MAX<=422;
                   E_S1_MIN<=412;
                   E_S1_MAX<=422;
                   B_S1_MIN<=0;
                   B_S1_MAX<=0;
                   C_S1_MIN<=0;
                   C_S1_MAX<=0;
   end case;
end process;

process (NUMERIC_DIGIT_S10)
begin
  case NUMERIC_DIGIT_S10 is 
    
   when "0000"  =>  A_S10_MIN<=349;
               A_S10_MAX<=391;
               G_S10_MIN<=0;
               G_S10_MAX<=0;
               D_S10_MIN<=349;
               D_S10_MAX<=391;
               F_S10_MIN<=338;
               F_S10_MAX<=348;
               E_S10_MIN<=338;
               E_S10_MAX<=348;
               B_S10_MIN<=392;
               B_S10_MAX<=402;
               C_S10_MIN<=392;
               C_S10_MAX<=402;

   when "0001"  =>  A_S10_MIN<=0;
               A_S10_MAX<=0;
               G_S10_MIN<=0;
               G_S10_MAX<=0;
               D_S10_MIN<=0;
               D_S10_MAX<=0;
               F_S10_MIN<=0;
               F_S10_MAX<=0;
               E_S10_MIN<=0;
               E_S10_MAX<=0;
               B_S10_MIN<=392;
               B_S10_MAX<=402;
               C_S10_MIN<=392;
               C_S10_MAX<=402;
               
   when "0010"  =>  A_S10_MIN<=349;
               A_S10_MAX<=391;
               G_S10_MIN<=349;
               G_S10_MAX<=391;
               D_S10_MIN<=349;
               D_S10_MAX<=391;
               F_S10_MIN<=0;
               F_S10_MAX<=0;
               E_S10_MIN<=338;
               E_S10_MAX<=348;
               B_S10_MIN<=392;
               B_S10_MAX<=402;
               C_S10_MIN<=0;
               C_S10_MAX<=0; 
                             
   when "0011"  => A_S10_MIN<=349;
              A_S10_MAX<=391;
              G_S10_MIN<=349;
              G_S10_MAX<=391;
              D_S10_MIN<=349;
              D_S10_MAX<=391;
              F_S10_MIN<=0;
              F_S10_MAX<=0;
              E_S10_MIN<=0;
              E_S10_MAX<=0;
              B_S10_MIN<=392;
              B_S10_MAX<=402;
              C_S10_MIN<=392;
              C_S10_MAX<=402;
                             
   when "0100"  =>  A_S10_MIN<=0;
               A_S10_MAX<=0;
               G_S10_MIN<=349;
               G_S10_MAX<=391;
               D_S10_MIN<=0;
               D_S10_MAX<=0;
               F_S10_MIN<=338;
               F_S10_MAX<=348;
               E_S10_MIN<=0;
               E_S10_MAX<=0;
               B_S10_MIN<=392;
               B_S10_MAX<=402;
               C_S10_MIN<=392;
               C_S10_MAX<=402;
               
   when "0101"  =>  A_S10_MIN<=349;
               A_S10_MAX<=391;
               G_S10_MIN<=349;
               G_S10_MAX<=391;
               D_S10_MIN<=349;
               D_S10_MAX<=391;
               F_S10_MIN<=338;
               F_S10_MAX<=348;
               E_S10_MIN<=0;
               E_S10_MAX<=0;
               B_S10_MIN<=0;
               B_S10_MAX<=0;
               C_S10_MIN<=392;
               C_S10_MAX<=402;
                 
   when others =>  A_S10_MIN<=349;
                   A_S10_MAX<=391;
                   G_S10_MIN<=349;
                   G_S10_MAX<=391;
                   D_S10_MIN<=349;
                   D_S10_MAX<=391;
                   F_S10_MIN<=338;
                   F_S10_MAX<=348;
                   E_S10_MIN<=338;
                   E_S10_MAX<=348;
                   B_S10_MIN<=0;
                   B_S10_MAX<=0;
                   C_S10_MIN<=0;
                   C_S10_MAX<=0;
   end case;
end process;

process (NUMERIC_DIGIT_M1)
begin
  case NUMERIC_DIGIT_M1 is 
    
   when "0000"  =>  A_M1_MIN<=255;
               A_M1_MAX<=297;
               G_M1_MIN<=0;
               G_M1_MAX<=0;
               D_M1_MIN<=255;
               D_M1_MAX<=297;
               F_M1_MIN<=244;
               F_M1_MAX<=254;
               E_M1_MIN<=244;
               E_M1_MAX<=254;
               B_M1_MIN<=298;
               B_M1_MAX<=308;
               C_M1_MIN<=298;
               C_M1_MAX<=308;

   when "0001"  =>  A_M1_MIN<=0;
               A_M1_MAX<=0;
               G_M1_MIN<=0;
               G_M1_MAX<=0;
               D_M1_MIN<=0;
               D_M1_MAX<=0;
               F_M1_MIN<=0;
               F_M1_MAX<=0;
               E_M1_MIN<=0;
               E_M1_MAX<=0;
               B_M1_MIN<=298;
               B_M1_MAX<=308;
               C_M1_MIN<=298;
               C_M1_MAX<=308;
               
   when "0010"  =>  A_M1_MIN<=255;
               A_M1_MAX<=297;
               G_M1_MIN<=255;
               G_M1_MAX<=297;
               D_M1_MIN<=255;
               D_M1_MAX<=297;
               F_M1_MIN<=0;
               F_M1_MAX<=0;
               E_M1_MIN<=244;
               E_M1_MAX<=254;
               B_M1_MIN<=298;
               B_M1_MAX<=308;
               C_M1_MIN<=0;
               C_M1_MAX<=0;
               
   when "0011"  =>  A_M1_MIN<=255;
               A_M1_MAX<=297;
               G_M1_MIN<=255;
               G_M1_MAX<=297;
               D_M1_MIN<=255;
               D_M1_MAX<=297;
               F_M1_MIN<=0;
               F_M1_MAX<=0;
               E_M1_MIN<=0;
               E_M1_MAX<=0;
               B_M1_MIN<=298;
               B_M1_MAX<=308;
               C_M1_MIN<=298;
               C_M1_MAX<=308;
               
   when "0100"  =>  A_M1_MIN<=0;
               A_M1_MAX<=0;
               G_M1_MIN<=255;
               G_M1_MAX<=297;
               D_M1_MIN<=0;
               D_M1_MAX<=0;
               F_M1_MIN<=244;
               F_M1_MAX<=254;
               E_M1_MIN<=0;
               E_M1_MAX<=0;
               B_M1_MIN<=298;
               B_M1_MAX<=308;
               C_M1_MIN<=298;
               C_M1_MAX<=308;
               
   when "0101"  =>  A_M1_MIN<=255;
               A_M1_MAX<=297;
               G_M1_MIN<=255;
               G_M1_MAX<=297;
               D_M1_MIN<=255;
               D_M1_MAX<=297;
               F_M1_MIN<=244;
               F_M1_MAX<=254;
               E_M1_MIN<=0;
               E_M1_MAX<=0;
               B_M1_MIN<=0;
               B_M1_MAX<=0;
               C_M1_MIN<=298;
               C_M1_MAX<=308;
               
   when "0110"  =>  A_M1_MIN<=255;
               A_M1_MAX<=297;
               G_M1_MIN<=255;
               G_M1_MAX<=297;
               D_M1_MIN<=255;
               D_M1_MAX<=297;
               F_M1_MIN<=244;
               F_M1_MAX<=254;
               E_M1_MIN<=244;
               E_M1_MAX<=254;
               B_M1_MIN<=0;
               B_M1_MAX<=0;
               C_M1_MIN<=298;
               C_M1_MAX<=308;
               
   when "0111"  =>  A_M1_MIN<=255;
               A_M1_MAX<=297;
               G_M1_MIN<=0;
               G_M1_MAX<=0;
               D_M1_MIN<=0;
               D_M1_MAX<=0;
               F_M1_MIN<=0;
               F_M1_MAX<=0;
               E_M1_MIN<=0;
               E_M1_MAX<=0;
               B_M1_MIN<=298;
               B_M1_MAX<=308;
               C_M1_MIN<=298;
               C_M1_MAX<=308;
               
   when "1000"  =>  A_M1_MIN<=255;
               A_M1_MAX<=297;
               G_M1_MIN<=255;
               G_M1_MAX<=297;
               D_M1_MIN<=255;
               D_M1_MAX<=297;
               F_M1_MIN<=244;
               F_M1_MAX<=254;
               E_M1_MIN<=244;
               E_M1_MAX<=254;
               B_M1_MIN<=298;
               B_M1_MAX<=308;
               C_M1_MIN<=298;
               C_M1_MAX<=308;
               
   when "1001"  =>  A_M1_MIN<=255;
               A_M1_MAX<=297;
               G_M1_MIN<=255;
               G_M1_MAX<=297;
               D_M1_MIN<=255;
               D_M1_MAX<=297;
               F_M1_MIN<=244;
               F_M1_MAX<=254;
               E_M1_MIN<=0;
               E_M1_MAX<=0;
               B_M1_MIN<=298;
               B_M1_MAX<=308;
               C_M1_MIN<=298;
               C_M1_MAX<=308;

   when others =>  A_M1_MIN<=255;
                   A_M1_MAX<=297;
                   G_M1_MIN<=255;
                   G_M1_MAX<=297;
                   D_M1_MIN<=255;
                   D_M1_MAX<=297;
                   F_M1_MIN<=244;
                   F_M1_MAX<=254;
                   E_M1_MIN<=244;
                   E_M1_MAX<=254;
                   B_M1_MIN<=0;
                   B_M1_MAX<=0;
                   C_M1_MIN<=0;
                   C_M1_MAX<=0;
   end case;
end process;

process (NUMERIC_DIGIT_M10)
begin
  case NUMERIC_DIGIT_M10 is 
    
   when "0000"  =>  A_M10_MIN<=181;
               A_M10_MAX<=223;
               G_M10_MIN<=0;
               G_M10_MAX<=0;
               D_M10_MIN<=181;
               D_M10_MAX<=223;
               F_M10_MIN<=170;
               F_M10_MAX<=180;
               E_M10_MIN<=170;
               E_M10_MAX<=180;
               B_M10_MIN<=224;
               B_M10_MAX<=234;
               C_M10_MIN<=224;
               C_M10_MAX<=234;

   when "0001"  =>  A_M10_MIN<=0;
               A_M10_MAX<=0;
               G_M10_MIN<=0;
               G_M10_MAX<=0;
               D_M10_MIN<=0;
               D_M10_MAX<=0;
               F_M10_MIN<=0;
               F_M10_MAX<=0;
               E_M10_MIN<=0;
               E_M10_MAX<=0;
               B_M10_MIN<=224;
               B_M10_MAX<=234;
               C_M10_MIN<=224;
               C_M10_MAX<=234;
               
   when "0010"  =>  A_M10_MIN<=181;
               A_M10_MAX<=223;
               G_M10_MIN<=181;
               G_M10_MAX<=223;
               D_M10_MIN<=181;
               D_M10_MAX<=223;
               F_M10_MIN<=0;
               F_M10_MAX<=0;
               E_M10_MIN<=170;
               E_M10_MAX<=180;
               B_M10_MIN<=224;
               B_M10_MAX<=234;
               C_M10_MIN<=0;
               C_M10_MAX<=0; 
                             
   when "0011"  => A_M10_MIN<=181;
              A_M10_MAX<=223;
              G_M10_MIN<=181;
              G_M10_MAX<=223;
              D_M10_MIN<=181;
              D_M10_MAX<=223;
              F_M10_MIN<=0;
              F_M10_MAX<=0;
              E_M10_MIN<=0;
              E_M10_MAX<=0;
              B_M10_MIN<=224;
              B_M10_MAX<=234;
              C_M10_MIN<=224;
              C_M10_MAX<=234;
                             
   when "0100"  =>  A_M10_MIN<=0;
               A_M10_MAX<=0;
               G_M10_MIN<=181;
               G_M10_MAX<=223;
               D_M10_MIN<=0;
               D_M10_MAX<=0;
               F_M10_MIN<=170;
               F_M10_MAX<=180;
               E_M10_MIN<=0;
               E_M10_MAX<=0;
               B_M10_MIN<=224;
               B_M10_MAX<=234;
               C_M10_MIN<=224;
               C_M10_MAX<=234;
               
   when "0101"  =>  A_M10_MIN<=181;
               A_M10_MAX<=223;
               G_M10_MIN<=181;
               G_M10_MAX<=223;
               D_M10_MIN<=181;
               D_M10_MAX<=223;
               F_M10_MIN<=170;
               F_M10_MAX<=180;
               E_M10_MIN<=0;
               E_M10_MAX<=0;
               B_M10_MIN<=0;
               B_M10_MAX<=0;
               C_M10_MIN<=224;
               C_M10_MAX<=234;
                 
   when others =>  A_M10_MIN<=181;
                   A_M10_MAX<=223;
                   G_M10_MIN<=181;
                   G_M10_MAX<=223;
                   D_M10_MIN<=181;
                   D_M10_MAX<=223;
                   F_M10_MIN<=170;
                   F_M10_MAX<=180;
                   E_M10_MIN<=170;
                   E_M10_MAX<=180;
                   B_M10_MIN<=0;
                   B_M10_MAX<=0;
                   C_M10_MIN<=0;
                   C_M10_MAX<=0;
   end case;
end process;

process (NUMERIC_DIGIT_H1)
begin
  case NUMERIC_DIGIT_H1 is 
    
   when "0000"  =>  A_H1_MIN<=87;
               A_H1_MAX<=129;
               G_H1_MIN<=0;
               G_H1_MAX<=0;
               D_H1_MIN<=87;
               D_H1_MAX<=129;
               F_H1_MIN<=76;
               F_H1_MAX<=86;
               E_H1_MIN<=76;
               E_H1_MAX<=86;
               B_H1_MIN<=130;
               B_H1_MAX<=140;
               C_H1_MIN<=130;
               C_H1_MAX<=140;

   when "0001"  =>  A_H1_MIN<=0;
               A_H1_MAX<=0;
               G_H1_MIN<=0;
               G_H1_MAX<=0;
               D_H1_MIN<=0;
               D_H1_MAX<=0;
               F_H1_MIN<=0;
               F_H1_MAX<=0;
               E_H1_MIN<=0;
               E_H1_MAX<=0;
               B_H1_MIN<=130;
               B_H1_MAX<=140;
               C_H1_MIN<=130;
               C_H1_MAX<=140;
               
   when "0010"  =>  A_H1_MIN<=87;
               A_H1_MAX<=129;
               G_H1_MIN<=87;
               G_H1_MAX<=129;
               D_H1_MIN<=87;
               D_H1_MAX<=129;
               F_H1_MIN<=0;
               F_H1_MAX<=0;
               E_H1_MIN<=76;
               E_H1_MAX<=86;
               B_H1_MIN<=130;
               B_H1_MAX<=140;
               C_H1_MIN<=0;
               C_H1_MAX<=0;
               
   when "0011"  =>  A_H1_MIN<=87;
               A_H1_MAX<=129;
               G_H1_MIN<=87;
               G_H1_MAX<=129;
               D_H1_MIN<=87;
               D_H1_MAX<=129;
               F_H1_MIN<=0;
               F_H1_MAX<=0;
               E_H1_MIN<=0;
               E_H1_MAX<=0;
               B_H1_MIN<=130;
               B_H1_MAX<=140;
               C_H1_MIN<=130;
               C_H1_MAX<=140;
               
   when "0100"  =>  A_H1_MIN<=0;
               A_H1_MAX<=0;
               G_H1_MIN<=87;
               G_H1_MAX<=129;
               D_H1_MIN<=0;
               D_H1_MAX<=0;
               F_H1_MIN<=76;
               F_H1_MAX<=86;
               E_H1_MIN<=0;
               E_H1_MAX<=0;
               B_H1_MIN<=130;
               B_H1_MAX<=140;
               C_H1_MIN<=130;
               C_H1_MAX<=140;
               
   when "0101"  =>  A_H1_MIN<=87;
               A_H1_MAX<=129;
               G_H1_MIN<=87;
               G_H1_MAX<=129;
               D_H1_MIN<=87;
               D_H1_MAX<=129;
               F_H1_MIN<=76;
               F_H1_MAX<=86;
               E_H1_MIN<=0;
               E_H1_MAX<=0;
               B_H1_MIN<=0;
               B_H1_MAX<=0;
               C_H1_MIN<=130;
               C_H1_MAX<=140;
               
   when "0110"  =>  A_H1_MIN<=87;
               A_H1_MAX<=129;
               G_H1_MIN<=87;
               G_H1_MAX<=129;
               D_H1_MIN<=87;
               D_H1_MAX<=129;
               F_H1_MIN<=76;
               F_H1_MAX<=86;
               E_H1_MIN<=76;
               E_H1_MAX<=86;
               B_H1_MIN<=0;
               B_H1_MAX<=0;
               C_H1_MIN<=130;
               C_H1_MAX<=140;
               
   when "0111"  =>  A_H1_MIN<=87;
               A_H1_MAX<=129;
               G_H1_MIN<=0;
               G_H1_MAX<=0;
               D_H1_MIN<=0;
               D_H1_MAX<=0;
               F_H1_MIN<=0;
               F_H1_MAX<=0;
               E_H1_MIN<=0;
               E_H1_MAX<=0;
               B_H1_MIN<=130;
               B_H1_MAX<=140;
               C_H1_MIN<=130;
               C_H1_MAX<=140;
               
   when "1000"  =>  A_H1_MIN<=87;
               A_H1_MAX<=129;
               G_H1_MIN<=87;
               G_H1_MAX<=129;
               D_H1_MIN<=87;
               D_H1_MAX<=129;
               F_H1_MIN<=76;
               F_H1_MAX<=86;
               E_H1_MIN<=76;
               E_H1_MAX<=86;
               B_H1_MIN<=130;
               B_H1_MAX<=140;
               C_H1_MIN<=130;
               C_H1_MAX<=140;
               
   when "1001"  =>  A_H1_MIN<=87;
               A_H1_MAX<=129;
               G_H1_MIN<=87;
               G_H1_MAX<=129;
               D_H1_MIN<=87;
               D_H1_MAX<=129;
               F_H1_MIN<=76;
               F_H1_MAX<=86;
               E_H1_MIN<=0;
               E_H1_MAX<=0;
               B_H1_MIN<=130;
               B_H1_MAX<=140;
               C_H1_MIN<=130;
               C_H1_MAX<=140;

   when others => A_H1_MIN<=87;
                  A_H1_MAX<=129;
                  G_H1_MIN<=87;
                  G_H1_MAX<=129;
                  D_H1_MIN<=87;
                  D_H1_MAX<=129;
                  F_H1_MIN<=76;
                  F_H1_MAX<=86;
                  E_H1_MIN<=76;
                  E_H1_MAX<=86;
                  B_H1_MIN<=0;
                  B_H1_MAX<=0;
                  C_H1_MIN<=0;
                  C_H1_MAX<=0;
   end case;
end process;

process (NUMERIC_DIGIT_H10)
begin
  case NUMERIC_DIGIT_H10 is 
    
   when "0000"  =>  A_H10_MIN<=13;
               A_H10_MAX<=55;
               G_H10_MIN<=0;
               G_H10_MAX<=0;
               D_H10_MIN<=13;
               D_H10_MAX<=55;
               F_H10_MIN<=2;
               F_H10_MAX<=12;
               E_H10_MIN<=2;
               E_H10_MAX<=12;
               B_H10_MIN<=56;
               B_H10_MAX<=66;
               C_H10_MIN<=56;
               C_H10_MAX<=66;

   when "0001"  =>  A_H10_MIN<=0;
               A_H10_MAX<=0;
               G_H10_MIN<=0;
               G_H10_MAX<=0;
               D_H10_MIN<=0;
               D_H10_MAX<=0;
               F_H10_MIN<=0;
               F_H10_MAX<=0;
               E_H10_MIN<=0;
               E_H10_MAX<=0;
               B_H10_MIN<=56;
               B_H10_MAX<=66;
               C_H10_MIN<=56;
               C_H10_MAX<=66;
               
   when "0010"  =>  A_H10_MIN<=13;
               A_H10_MAX<=55;
               G_H10_MIN<=13;
               G_H10_MAX<=55;
               D_H10_MIN<=13;
               D_H10_MAX<=55;
               F_H10_MIN<=0;
               F_H10_MAX<=0;
               E_H10_MIN<=2;
               E_H10_MAX<=12;
               B_H10_MIN<=56;
               B_H10_MAX<=66;
               C_H10_MIN<=0;
               C_H10_MAX<=0;
                                          
   when others =>  A_H10_MIN<=13;
                   A_H10_MAX<=55;
                   G_H10_MIN<=13;
                   G_H10_MAX<=55;
                   D_H10_MIN<=13;
                   D_H10_MAX<=55;
                   F_H10_MIN<=2;
                   F_H10_MAX<=12;
                   E_H10_MIN<=2;
                   E_H10_MAX<=12;
                   B_H10_MIN<=0;
                   B_H10_MAX<=0;
                   C_H10_MIN<=0;
                   C_H10_MAX<=0;
   end case;
end process;
-------------------------------------------------------------------------------------------------------------------------------------------
 
 process(CLK) 
 begin
 if SW(0)='1' then
 --------------TIC TAC TEO GAME BORDERLINE PRESENT------------------------------------------------------------------------------------------
    if ( (HPOS>=(L1V_MIN+d_H) AND HPOS<=(L1V_MAX+d_H) AND VPOS>=(170) AND VPOS<=(470)) OR (HPOS>=(L2V_MIN+d_H) AND HPOS<=(L2V_MAX+d_H) AND VPOS>=(170) AND VPOS<=(470))
           OR (HPOS>=(2+d_H) AND HPOS<=(476+d_H) AND VPOS>=(L1H_MIN) AND VPOS<=(L1H_MAX)) OR (HPOS>=(2+d_H) AND HPOS<=(476+d_H) AND VPOS>=(L2H_MIN) AND VPOS<=(L2H_MAX))) then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '1');
        
 -------------TIC TAC TEO WIN OPTIONE AND SQ PRESENT----------------------------------------------------------------------------       
    elsif ((HPOS>=(SQ1_MIN+d_H) AND HPOS<=(SQ1_MAX+d_H)) AND (VPOS>=(189) AND VPOS<=(241)))then 
      if (WIN_MARKER(0)='0' and WIN_MARKER(3)='0' and WIN_MARKER(6)='0') then
        if D(0)='1' then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        else
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '0');
        end if;
      else
        if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then
            if D(0)='1' then
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else 
                VGA_R_IN <= (others => '0');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '0');
            end if;
        else  
          VGA_R_IN <= (others => '0');
          VGA_G_IN <= (others => '0');
          VGA_B_IN <= (others => '0');
        end if;    
      end if;
      
        
    elsif ((HPOS>=SQ2_MIN+d_H AND HPOS<=SQ2_MAX+d_H ) AND (VPOS>=(189) AND VPOS<=(241)))then
       if (WIN_MARKER(0)='0' and WIN_MARKER(4)='0') then
        if D(1)='1' then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        else
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '0');
        end if;
      else
        if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then
            if D(1)='1' then
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else 
                VGA_R_IN <= (others => '0');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '0');
            end if;
        else  
          VGA_R_IN <= (others => '0');
          VGA_G_IN <= (others => '0');
          VGA_B_IN <= (others => '0');
        end if;    
      end if;      
    
    elsif ((HPOS>=SQ3_MIN+d_H AND HPOS<=SQ3_MAX+d_H ) AND (VPOS>=(189) AND VPOS<=(241)))then
       if (WIN_MARKER(0)='0' and WIN_MARKER(5)='0' and WIN_MARKER(7)='0') then
        if D(2)='1' then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        else
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '0');
        end if;
      else
        if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then
            if D(2)='1' then
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else 
                VGA_R_IN <= (others => '0');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '0');
            end if;
        else  
          VGA_R_IN <= (others => '0');
          VGA_G_IN <= (others => '0');
          VGA_B_IN <= (others => '0');
        end if;    
      end if;      
   
    elsif ((HPOS>=(SQ4_MIN+d_H) AND HPOS<=(SQ4_MAX+d_H)) AND (VPOS>=(289) AND VPOS<=(341)))then
      if (WIN_MARKER(1)='0' and WIN_MARKER(3)='0') then
        if D(3)='1' then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        else
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '0');
        end if;
      else
        if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then
            if D(3)='1' then
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else 
                VGA_R_IN <= (others => '0');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '0');
            end if;
        else  
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        end if;    
      end if;      
   
    elsif ((HPOS>=SQ5_MIN+d_H AND HPOS<=SQ5_MAX+d_H ) AND (VPOS>=(289) AND VPOS<=(341)))then
      if (WIN_MARKER(1)='0' and WIN_MARKER(4)='0' and WIN_MARKER(6)='0'and WIN_MARKER(7)='0') then
        if D(4)='1' then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        else
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '0');
        end if; 
       else
        if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then
            if D(4)='1' then
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else 
                VGA_R_IN <= (others => '0');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '0');
            end if;
        else  
          VGA_R_IN <= (others => '0');
          VGA_G_IN <= (others => '0');
          VGA_B_IN <= (others => '0');
        end if;    
      end if;        
    
    elsif ((HPOS>=SQ6_MIN+d_H AND HPOS<=SQ6_MAX+d_H ) AND (VPOS>=(289) AND VPOS<=(341)))then
      if (WIN_MARKER(1)='0' and WIN_MARKER(5)='0') then
        if D(5)='1' then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        else
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '0');
        end if;
      else
        if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then
            if D(5)='1' then
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else 
                VGA_R_IN <= (others => '0');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '0');
            end if;
        else  
          VGA_R_IN <= (others => '0');
          VGA_G_IN <= (others => '0');
          VGA_B_IN <= (others => '0');
        end if;    
      end if;        
    
    elsif((HPOS>=(SQ7_MIN+d_H) AND HPOS<=(SQ7_MAX+d_H)) AND (VPOS>=(389) AND VPOS<=(441)))then
      if (WIN_MARKER(2)='0' and WIN_MARKER(3)='0' and WIN_MARKER(7)='0') then
        if D(6)='1' then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        else
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '0');
        end if;
      else
        if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then
            if D(6)='1' then
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else 
                VGA_R_IN <= (others => '0');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '0');
            end if;
        else  
          VGA_R_IN <= (others => '0');
          VGA_G_IN <= (others => '0');
          VGA_B_IN <= (others => '0');
        end if;    
      end if;        
    
    elsif ((HPOS>=SQ8_MIN+d_H AND HPOS<=SQ8_MAX+d_H ) AND (VPOS>=(389) AND VPOS<=(441)))then
      if (WIN_MARKER(2)='0' and WIN_MARKER(4)='0') then 
        if D(7)='1' then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        else
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '0');
        end if;
      else
        if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then
            if D(7)='1' then
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else 
                VGA_R_IN <= (others => '0');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '0');
            end if;  
          
        else  
          VGA_R_IN <= (others => '0');
          VGA_G_IN <= (others => '0');
          VGA_B_IN <= (others => '0');
        end if;    
      end if;         
    
    elsif ((HPOS>=SQ9_MIN+d_H AND HPOS<=SQ9_MAX+d_H ) AND (VPOS>=(389) AND VPOS<=(441)))then
      if (WIN_MARKER(2)='0' and WIN_MARKER(5)='0' and WIN_MARKER(6)='0')then
        if D(8)='1' then
            VGA_R_IN <= (others => '1');
            VGA_G_IN <= (others => '0');
            VGA_B_IN <= (others => '0');
        else
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= (others => '1');
            VGA_B_IN <= (others => '0');
        end if;
      else
        if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then
            if D(8)='1' then
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else 
                VGA_R_IN <= (others => '0');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '0');
            end if;
        else  
          VGA_R_IN <= (others => '0');
          VGA_G_IN <= (others => '0');
          VGA_B_IN <= (others => '0');
        end if;    
      end if;     
        
    else
    ---------------------------------------------------------------------------------------------------------------------------------------
    -------------------------------DIGITAL TIMER PRESENT-----------------------------------------------------------------------------------
        if   START_TIMER='0' then
            if (COUNTER_FLIKER>=0 and COUNTER_FLIKER< 50000000) then      --//STAND BY- BEFOR STARTING THE TIMER OR AFTER THE TIMER END
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '0');
                VGA_B_IN <= (others => '0');
            else  
                VGA_R_IN <= (others => '1');
                VGA_G_IN <= (others => '1');
                VGA_B_IN <= (others => '1');
            end if;
        else          --// TIMER RUNNING                          
            VGA_R_IN <= (others => '0');
            VGA_G_IN <= "0011";
            VGA_B_IN <= (others => '1');
        end if;
    end if;
 ------------------------------------------------------------------------------------------------------------------------------------------
 ------------------------------------SECOND-BAR--------------------------------------------------------------------------------------------
 else
    if ((HPOS>=(0+d_H) AND HPOS<=(15+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 0 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(20+d_H) AND HPOS<=(35+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 1 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=40+d_H AND HPOS<=55+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))then
     if COUNTER1> 2 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(60+d_H) AND HPOS<=(75+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 3 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(80+d_H) AND HPOS<=(95+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then 
     if COUNTER1> 4 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(100+d_H) AND HPOS<=(115+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 5 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=120+d_H AND HPOS<=135+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))then 
     if COUNTER1> 6 then  
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(140+d_H) AND HPOS<=(155+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 7 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=160+d_H AND HPOS<=175+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))then 
     if COUNTER1> 8 then  
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(180+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 9 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
----------------------------------------------------------------------------------------      
    elsif ((HPOS>=(200+d_H) AND HPOS<=(215+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 10 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(220+d_H) AND HPOS<=(235+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 11 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=240+d_H AND HPOS<=255+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))then
     if COUNTER1> 12 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(260+d_H) AND HPOS<=(275+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 13 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(280+d_H) AND HPOS<=(295+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then 
     if COUNTER1> 14 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(300+d_H) AND HPOS<=(315+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 15 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=320+d_H AND HPOS<=335+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))then 
     if COUNTER1> 16 then  
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(340+d_H) AND HPOS<=(355+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 17 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
     elsif (HPOS>=360+d_H AND HPOS<=375+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))then 
      if COUNTER1> 18 then  
         VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
         VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
         VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
     elsif ((HPOS>=(380+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
      if COUNTER1> 19 then 
         VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
         VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
         VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
-----------------------------------------------------------------------------------------------------------------------------
    elsif ((HPOS>=(400+d_H) AND HPOS<=(415+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 20 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(420+d_H) AND HPOS<=(435+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 21 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=440+d_H AND HPOS<=455+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))then
     if COUNTER1> 22 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(460+d_H) AND HPOS<=(475+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 23 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(480+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then 
     if COUNTER1> 24 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(500+d_H) AND HPOS<=(515+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 25 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=520+d_H AND HPOS<=535+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))then 
     if COUNTER1> 26 then  
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(540+d_H) AND HPOS<=(555+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
     if COUNTER1> 27 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
     elsif (HPOS>=560+d_H AND HPOS<=575+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))then 
      if COUNTER1> 28 then  
         VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
         VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
         VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
     elsif ((HPOS>=(580+d_H) AND HPOS<=(595+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))then
      if COUNTER1> 29 then 
         VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
         VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
         VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
    elsif ((HPOS>=(0+d_H) AND HPOS<=(15+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 30 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(20+d_H) AND HPOS<=(35+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 31 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=40+d_H AND HPOS<=55+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))then
     if COUNTER1> 32 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(60+d_H) AND HPOS<=(75+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 33 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(80+d_H) AND HPOS<=(95+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then 
     if COUNTER1> 34 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(100+d_H) AND HPOS<=(115+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 35 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=120+d_H AND HPOS<=135+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))then 
     if COUNTER1> 36 then  
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(140+d_H) AND HPOS<=(155+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 37 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=160+d_H AND HPOS<=175+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))then 
     if COUNTER1> 38 then  
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(180+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 39 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
----------------------------------------------------------------------------------------      
    elsif ((HPOS>=(200+d_H) AND HPOS<=(215+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 40 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(220+d_H) AND HPOS<=(235+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 41 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=240+d_H AND HPOS<=255+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))then
     if COUNTER1> 42 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(260+d_H) AND HPOS<=(275+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 43 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(280+d_H) AND HPOS<=(295+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then 
     if COUNTER1> 44 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(300+d_H) AND HPOS<=(315+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 45 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=320+d_H AND HPOS<=335+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))then 
     if COUNTER1> 46 then  
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(340+d_H) AND HPOS<=(355+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 47 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
     elsif (HPOS>=360+d_H AND HPOS<=375+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))then 
      if COUNTER1> 48 then  
         VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
         VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
         VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
     elsif ((HPOS>=(380+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
      if COUNTER1> 49 then 
         VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
         VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
         VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
-----------------------------------------------------------------------------------------------------------------------------
    elsif ((HPOS>=(400+d_H) AND HPOS<=(415+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 50 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(420+d_H) AND HPOS<=(435+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 51 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=440+d_H AND HPOS<=455+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))then
     if COUNTER1> 52 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(460+d_H) AND HPOS<=(475+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 53 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(480+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then 
     if COUNTER1> 54 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(500+d_H) AND HPOS<=(515+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 55 then
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=520+d_H AND HPOS<=535+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))then 
     if COUNTER1> 56 then  
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(540+d_H) AND HPOS<=(555+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 57 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=560+d_H AND HPOS<=575+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))then 
     if COUNTER1> 58 then  
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(580+d_H) AND HPOS<=(595+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))then
     if COUNTER1> 59 then 
        VGA_R_IN<=VGA_R_IN_SECOND_BAR ;
        VGA_G_IN<=VGA_G_IN_SECOND_BAR ;
        VGA_B_IN<=VGA_B_IN_SECOND_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
---------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------MINUTES-BAR---------------------------------------------------------------------------------------------------      
    elsif ((HPOS>=(0+d_H) AND HPOS<=(15+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR) AND VPOS<=(TFV_MAX+V_MINUTES_BAR)))then
     if COUNTER2> 0 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(20+d_H) AND HPOS<=(35+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 1 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=40+d_H AND HPOS<=55+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))then
     if COUNTER2> 2 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(60+d_H) AND HPOS<=(75+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 3 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(80+d_H) AND HPOS<=(95+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then 
     if COUNTER2> 4 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(100+d_H) AND HPOS<=(115+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 5 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=120+d_H AND HPOS<=135+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))then 
     if COUNTER2> 6 then  
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(140+d_H) AND HPOS<=(155+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 7 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=160+d_H AND HPOS<=175+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))then 
     if COUNTER2> 8 then  
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(180+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 9 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
----------------------------------------------------------------------------------------      
    elsif ((HPOS>=(200+d_H) AND HPOS<=(215+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 10 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(220+d_H) AND HPOS<=(235+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 11 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=240+d_H AND HPOS<=255+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))then
     if COUNTER2> 12 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(260+d_H) AND HPOS<=(275+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 13 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(280+d_H) AND HPOS<=(295+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then 
     if COUNTER2> 14 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(300+d_H) AND HPOS<=(315+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 15 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=320+d_H AND HPOS<=335+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))then 
     if COUNTER2> 16 then  
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(340+d_H) AND HPOS<=(355+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 17 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
     elsif (HPOS>=360+d_H AND HPOS<=375+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))then 
      if COUNTER2> 18 then  
         VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
         VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
         VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
     elsif ((HPOS>=(380+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
      if COUNTER2> 19 then 
         VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
         VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
         VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
-----------------------------------------------------------------------------------------------------------------------------
    elsif ((HPOS>=(400+d_H) AND HPOS<=(415+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 20 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(420+d_H) AND HPOS<=(435+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 21 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=440+d_H AND HPOS<=455+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))then
     if COUNTER2> 22 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(460+d_H) AND HPOS<=(475+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 23 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(480+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then 
     if COUNTER2> 24 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(500+d_H) AND HPOS<=(515+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 25 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=520+d_H AND HPOS<=535+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))then 
     if COUNTER2> 26 then  
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(540+d_H) AND HPOS<=(555+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
     if COUNTER2> 27 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
     elsif (HPOS>=560+d_H AND HPOS<=575+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))then 
      if COUNTER2> 28 then  
         VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
         VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
         VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
     elsif ((HPOS>=(580+d_H) AND HPOS<=(595+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))then
      if COUNTER2> 29 then 
         VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
         VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
         VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
    elsif ((HPOS>=(0+d_H) AND HPOS<=(15+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 30 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(20+d_H) AND HPOS<=(35+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 31 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=40+d_H AND HPOS<=55+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))then
     if COUNTER2> 32 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(60+d_H) AND HPOS<=(75+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 33 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(80+d_H) AND HPOS<=(95+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then 
     if COUNTER2> 34 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(100+d_H) AND HPOS<=(115+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 35 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=120+d_H AND HPOS<=135+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))then 
     if COUNTER2> 36 then  
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(140+d_H) AND HPOS<=(155+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 37 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=160+d_H AND HPOS<=175+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))then 
     if COUNTER2> 38 then  
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(180+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 39 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
----------------------------------------------------------------------------------------      
    elsif ((HPOS>=(200+d_H) AND HPOS<=(215+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 40 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(220+d_H) AND HPOS<=(235+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 41 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=240+d_H AND HPOS<=255+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))then
     if COUNTER2> 42 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(260+d_H) AND HPOS<=(275+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 43 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(280+d_H) AND HPOS<=(295+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then 
     if COUNTER2> 44 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(300+d_H) AND HPOS<=(315+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 45 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=320+d_H AND HPOS<=335+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))then 
     if COUNTER2> 46 then  
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(340+d_H) AND HPOS<=(355+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 47 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
     elsif (HPOS>=360+d_H AND HPOS<=375+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))then 
      if COUNTER2> 48 then  
         VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
         VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
         VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
     elsif ((HPOS>=(380+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
      if COUNTER2> 49 then 
         VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
         VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
         VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
      else
         VGA_R_IN<=(others => '0');
         VGA_G_IN<=(others => '0');
         VGA_B_IN<=(others => '0');
      end if;
-----------------------------------------------------------------------------------------------------------------------------
    elsif ((HPOS>=(400+d_H) AND HPOS<=(415+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 50 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(420+d_H) AND HPOS<=(435+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 51 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=440+d_H AND HPOS<=455+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))then
     if COUNTER2> 52 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(460+d_H) AND HPOS<=(475+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 53 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(480+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then 
     if COUNTER2> 54 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(500+d_H) AND HPOS<=(515+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 55 then
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=520+d_H AND HPOS<=535+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))then 
     if COUNTER2> 56 then  
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(540+d_H) AND HPOS<=(555+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 57 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=560+d_H AND HPOS<=575+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))then 
     if COUNTER2> 58 then  
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(580+d_H) AND HPOS<=(595+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))then
     if COUNTER2> 59 then 
        VGA_R_IN<=VGA_R_IN_MINUTES_BAR ;
        VGA_G_IN<=VGA_G_IN_MINUTES_BAR ;
        VGA_B_IN<=VGA_B_IN_MINUTES_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
---------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------HOUR-BAR---------------------------------------------------------------------------------------------------          
    elsif ((HPOS>=(0+d_H) AND HPOS<=(45+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR) AND VPOS<=(TFV_MAX+V_HOUR_BAR)))then
     if COUNTER3> 0 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(50+d_H) AND HPOS<=(95+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))then
     if COUNTER3> 1 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=100+d_H AND HPOS<=145+d_H AND VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR ))then
     if COUNTER3> 2 then 
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(150+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))then
     if COUNTER3> 3 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(200+d_H) AND HPOS<=(245+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))then 
     if COUNTER3> 4 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(250+d_H) AND HPOS<=(295+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))then
     if COUNTER3> 5 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=300+d_H AND HPOS<=345+d_H AND VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR ))then 
     if COUNTER3> 6 then  
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(350+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))then
     if COUNTER3> 7 then 
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=400+d_H AND HPOS<=445+d_H AND VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR ))then 
     if COUNTER3> 8 then  
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(450+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))then
     if COUNTER3> 9 then 
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
----------------------------------------------------------------------------------------      
    elsif ((HPOS>=(500+d_H) AND HPOS<=545+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR ))then
     if COUNTER3> 10 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(550+d_H) AND HPOS<=(595+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))then
     if COUNTER3> 11 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
---------------------------------------------------------------------------------------------------------    
---------------------------------------------------------------------------------------------------------   
    elsif ((HPOS>=(0+d_H) AND HPOS<=(45+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR) AND VPOS<=(BFV_MAX-V_HOUR_BAR)))then
     if COUNTER3> 12 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(50+d_H) AND HPOS<=(95+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))then
     if COUNTER3> 13 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif (HPOS>=100+d_H AND HPOS<=145+d_H AND VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR ))then
     if COUNTER3> 14 then 
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(150+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))then
     if COUNTER3> 15 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(200+d_H) AND HPOS<=(245+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))then 
     if COUNTER3> 16 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(250+d_H) AND HPOS<=(295+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))then
     if COUNTER3> 17 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=300+d_H AND HPOS<=345+d_H AND VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR ))then 
     if COUNTER3> 18 then  
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(350+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))then
     if COUNTER3> 19 then 
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif (HPOS>=400+d_H AND HPOS<=445+d_H AND VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR ))then 
     if COUNTER3> 20 then  
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    elsif ((HPOS>=(450+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))then
     if COUNTER3> 21 then 
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
----------------------------------------------------------------------------------------      
    elsif ((HPOS>=(500+d_H) AND HPOS<=545+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR ))then
     if COUNTER3> 22 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;  
    
    elsif ((HPOS>=(550+d_H) AND HPOS<=(595+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))then
     if COUNTER3> 24 then
        VGA_R_IN<=VGA_R_IN_HOUR_BAR ;
        VGA_G_IN<=VGA_G_IN_HOUR_BAR ;
        VGA_B_IN<=VGA_B_IN_HOUR_BAR ;
     else 
        VGA_R_IN<=(others => '0');
        VGA_G_IN<=(others => '0');
        VGA_B_IN<=(others => '0');
     end if;
    
    elsif SW(15 DOWNTO 4)="000000000000" then
            
            VGA_R_IN<= (others=>'1');
            VGA_G_IN<= (others=>'1');    
            VGA_B_IN<= (others=>'1'); 
    else 
        
        VGA_R_IN<=VGA_R_IN_BUFFER;
        VGA_G_IN<=VGA_G_IN_BUFFER;
        VGA_B_IN<=VGA_B_IN_BUFFER;           
    end if;
 end if;
 end process;
 --------------------------------------------------------------------------------------------------------------------------------------------------------------------
 ---------------------------------- CLOCK AND TIMER DIGITS PRESENT --------------------------------------------------------------------------------------------------
process (RST,CLK25,DIGITAL_CLOCK_EN,HPOS,VPOS)

begin
if RST='1' then
    VGA_R <= "0000";
    VGA_G <= "0000";
    VGA_B <= "0000";
    
elsif CLK25='1' and CLK25'event then

  if ( DIGITAL_CLOCK_EN = '1')then
-----------------------------------SEC_ONE_DIGIT_PRESENT------------------------------------------------------------------------------------------------------
        IF ((HPOS>=(A_S1_MIN+d_H) AND HPOS<=(A_S1_MAX+d_H)) AND (VPOS>=(189-d_V) AND VPOS<=(199-d_V)))OR ((HPOS>=(G_S1_MIN+d_H) AND HPOS<=(G_S1_MAX+d_H)) AND (VPOS>=(261-d_V) AND VPOS<=(271-d_V)))OR ((HPOS>=(D_S1_MIN+d_H) AND HPOS<=(D_S1_MAX+d_H)) AND (VPOS>=(333-d_V) AND VPOS<=(343-d_V))) 
           OR((HPOS>=(F_S1_MIN+d_H) AND HPOS<=(F_S1_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(E_S1_MIN+d_H) AND HPOS<=(E_S1_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V))) 
           OR((HPOS>=(B_S1_MIN+d_H) AND HPOS<=(B_S1_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(C_S1_MIN+d_H) AND HPOS<=(C_S1_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V)))
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------SEC_TEN_DIGIT_PRESENT------------------------------------------------------------------------------------------------------
           OR ((HPOS>=(A_S10_MIN+d_H) AND HPOS<=(A_S10_MAX+d_H)) AND (VPOS>=(189-d_V) AND VPOS<=(199-d_V)))OR ((HPOS>=(G_S10_MIN+d_H) AND HPOS<=(G_S10_MAX+d_H)) AND (VPOS>=(261-d_V) AND VPOS<=(271-d_V)))OR (HPOS>=D_S10_MIN+d_H AND HPOS<=D_S10_MAX+d_H AND VPOS>=(333-d_V) AND VPOS<=(343-d_V)) 
           OR(HPOS>=F_S10_MIN+d_H AND HPOS<=F_S10_MAX+d_H AND VPOS>=(200-d_V) AND VPOS<=(260-d_V)) OR (HPOS>=E_S10_MIN+d_H AND HPOS<=E_S10_MAX+d_H AND VPOS>=(272-d_V) AND VPOS<=(332-d_V)) 
           OR((HPOS>=(B_S10_MIN+d_H) AND HPOS<=(B_S10_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(C_S10_MIN+d_H) AND HPOS<=(C_S10_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V)))
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------MIN_ONE_DIGIT_PRESENT------------------------------------------------------------------------------------------------------
           OR ((HPOS>=(A_M1_MIN+d_H) AND HPOS<=(A_M1_MAX+d_H)) AND (VPOS>=(189-d_V) AND VPOS<=(199-d_V)))OR ((HPOS>=(G_M1_MIN+d_H) AND HPOS<=(G_M1_MAX+d_H)) AND (VPOS>=(261-d_V) AND VPOS<=(271-d_V)))OR ((HPOS>=(D_M1_MIN+d_H) AND HPOS<=(D_M1_MAX+d_H)) AND (VPOS>=(333-d_V) AND VPOS<=(343-d_V))) 
           OR((HPOS>=(F_M1_MIN+d_H) AND HPOS<=(F_M1_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(E_M1_MIN+d_H) AND HPOS<=(E_M1_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V))) 
           OR((HPOS>=(B_M1_MIN+d_H) AND HPOS<=(B_M1_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(C_M1_MIN+d_H) AND HPOS<=(C_M1_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V)))
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------MIN_TEN_DIGIT_PRESENT------------------------------------------------------------------------------------------------------
           OR ((HPOS>=(A_M10_MIN+d_H) AND HPOS<=(A_M10_MAX+d_H)) AND (VPOS>=(189-d_V) AND VPOS<=(199-d_V)))OR ((HPOS>=(G_M10_MIN+d_H) AND HPOS<=(G_M10_MAX+d_H)) AND (VPOS>=(261-d_V) AND VPOS<=(271-d_V)))OR ((HPOS>=(D_M10_MIN+d_H) AND HPOS<=(D_M10_MAX+d_H)) AND (VPOS>=(333-d_V) AND VPOS<=(343-d_V))) 
           OR((HPOS>=(F_M10_MIN+d_H) AND HPOS<=(F_M10_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(E_M10_MIN+d_H) AND HPOS<=(E_M10_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V))) 
           OR((HPOS>=(B_M10_MIN+d_H) AND HPOS<=(B_M10_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(C_M10_MIN+d_H) AND HPOS<=(C_M10_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V)))
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------HOUR_ONE_DIGIT_PRESENT-----------------------------------------------------------------------------------------------------
           OR ((HPOS>=(A_H1_MIN+d_H) AND HPOS<=(A_H1_MAX+d_H)) AND (VPOS>=(189-d_V) AND VPOS<=(199-d_V)))OR ((HPOS>=(G_H1_MIN+d_H) AND HPOS<=(G_H1_MAX+d_H)) AND (VPOS>=(261-d_V) AND VPOS<=(271-d_V)))OR ((HPOS>=(D_H1_MIN+d_H) AND HPOS<=(D_H1_MAX+d_H)) AND (VPOS>=(333-d_V) AND VPOS<=(343-d_V))) 
           OR((HPOS>=(F_H1_MIN+d_H) AND HPOS<=(F_H1_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(E_H1_MIN+d_H) AND HPOS<=(E_H1_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V))) 
           OR((HPOS>=(B_H1_MIN+d_H) AND HPOS<=(B_H1_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(C_H1_MIN+d_H) AND HPOS<=(C_H1_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V)))
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------HOUR_TEN_DIGIT_PRESENT-----------------------------------------------------------------------------------------------------
           OR ((HPOS>=(A_H10_MIN+d_H) AND HPOS<=(A_H10_MAX+d_H)) AND (VPOS>=(189-d_V) AND VPOS<=(199-d_V)))OR ((HPOS>=(G_H10_MIN+d_H) AND HPOS<=(G_H10_MAX+d_H)) AND (VPOS>=(261-d_V) AND VPOS<=(271-d_V)))OR ((HPOS>=(D_H10_MIN+d_H) AND HPOS<=(D_H10_MAX+d_H)) AND (VPOS>=(333-d_V) AND VPOS<=(343-d_V))) 
           OR((HPOS>=(F_H10_MIN+d_H) AND HPOS<=(F_H10_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(E_H10_MIN+d_H) AND HPOS<=(E_H10_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V))) 
           OR((HPOS>=(B_H10_MIN+d_H) AND HPOS<=(B_H10_MAX+d_H)) AND (VPOS>=(200-d_V) AND VPOS<=(260-d_V))) OR ((HPOS>=(C_H10_MIN+d_H) AND HPOS<=(C_H10_MAX+d_H)) AND (VPOS>=(272-d_V) AND VPOS<=(332-d_V)))
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------COLON_PRESENT--------------------------------------------------------------------------------------------------------------           
           OR((HPOS>=150+d_H AND HPOS<=160+d_H ) AND (VPOS>=(225-d_V) AND VPOS<=(235-d_V) )) OR ((HPOS>=150+d_H AND HPOS<=160+d_H) AND (VPOS>=(297-d_V) AND VPOS<=(307-d_V)))
           OR ((HPOS>=318+d_H AND HPOS<=328+d_H) AND (VPOS>=(225-d_V) AND VPOS<=(235-d_V))) OR ((HPOS>=318+d_H AND HPOS<=328+d_H) AND (VPOS>=(297-d_V) AND VPOS<=(307-d_V))) 
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------TOP-SECOND-BAR-------------------------------------------------------------------------------------------------------------
           OR((HPOS>=(0+d_H) AND HPOS<=(15+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR ((HPOS>=(20+d_H) AND HPOS<=(35+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR (HPOS>=40+d_H AND HPOS<=55+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) 
           OR(HPOS>=60+d_H AND HPOS<=75+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) OR (HPOS>=80+d_H AND HPOS<=95+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))OR (HPOS>=100+d_H AND HPOS<=115+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) 
           OR((HPOS>=(120+d_H) AND HPOS<=(135+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))) OR ((HPOS>=(140+d_H) AND HPOS<=(155+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR ((HPOS>=(160+d_H) AND HPOS<=(175+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))

           OR((HPOS>=(180+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR ((HPOS>=(200+d_H) AND HPOS<=(215+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR (HPOS>=220+d_H AND HPOS<=235+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) 
           OR(HPOS>=240+d_H AND HPOS<=255+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) OR (HPOS>=260+d_H AND HPOS<=275+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))OR (HPOS>=280+d_H AND HPOS<=295+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) 
           OR((HPOS>=(300+d_H) AND HPOS<=(315+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))) OR ((HPOS>=(320+d_H) AND HPOS<=(335+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR ((HPOS>=(340+d_H) AND HPOS<=(355+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))

           OR((HPOS>=(360+d_H) AND HPOS<=(375+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR ((HPOS>=(380+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR (HPOS>=400+d_H AND HPOS<=415+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) 
           OR(HPOS>=420+d_H AND HPOS<=435+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) OR (HPOS>=440+d_H AND HPOS<=455+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))OR (HPOS>=460+d_H AND HPOS<=475+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) 
           OR((HPOS>=(480+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX))) OR ((HPOS>=(500+d_H) AND HPOS<=(515+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR ((HPOS>=(520+d_H) AND HPOS<=(535+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))

           OR((HPOS>=(540+d_H) AND HPOS<=(555+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR ((HPOS>=(560+d_H) AND HPOS<=(575+d_H)) AND (VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)))OR (HPOS>=580+d_H AND HPOS<=595+d_H AND VPOS>=(TFV_MIN) AND VPOS<=(TFV_MAX)) 
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------BATTOM-SECOND-BAR----------------------------------------------------------------------------------------------------------
           OR((HPOS>=(0+d_H) AND HPOS<=(15+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR ((HPOS>=(20+d_H) AND HPOS<=(35+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR (HPOS>=40+d_H AND HPOS<=55+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) 
           OR(HPOS>=60+d_H AND HPOS<=75+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) OR (HPOS>=80+d_H AND HPOS<=95+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))OR (HPOS>=100+d_H AND HPOS<=115+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) 
           OR((HPOS>=(120+d_H) AND HPOS<=(135+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))) OR ((HPOS>=(140+d_H) AND HPOS<=(155+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR ((HPOS>=(160+d_H) AND HPOS<=(175+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))

           OR((HPOS>=(180+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR ((HPOS>=(200+d_H) AND HPOS<=(215+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR (HPOS>=220+d_H AND HPOS<=235+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) 
           OR(HPOS>=240+d_H AND HPOS<=255+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) OR (HPOS>=260+d_H AND HPOS<=275+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))OR (HPOS>=280+d_H AND HPOS<=295+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) 
           OR((HPOS>=(300+d_H) AND HPOS<=(315+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))) OR ((HPOS>=(320+d_H) AND HPOS<=(335+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR ((HPOS>=(340+d_H) AND HPOS<=(355+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))

           OR((HPOS>=(360+d_H) AND HPOS<=(375+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR ((HPOS>=(380+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR (HPOS>=400+d_H AND HPOS<=415+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) 
           OR(HPOS>=420+d_H AND HPOS<=435+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) OR (HPOS>=440+d_H AND HPOS<=455+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))OR (HPOS>=460+d_H AND HPOS<=475+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) 
           OR((HPOS>=(480+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX))) OR ((HPOS>=(500+d_H) AND HPOS<=(515+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR ((HPOS>=(520+d_H) AND HPOS<=(535+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))

           OR((HPOS>=(540+d_H) AND HPOS<=(555+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR ((HPOS>=(560+d_H) AND HPOS<=(575+d_H)) AND (VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)))OR (HPOS>=580+d_H AND HPOS<=595+d_H AND VPOS>=(BFV_MIN) AND VPOS<=(BFV_MAX)) 
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------TOP-MINUTES-BAR------------------------------------------------------------------------------------------------------------
           OR((HPOS>=(0+d_H) AND HPOS<=(15+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR) AND VPOS<=(TFV_MAX+V_MINUTES_BAR)))OR ((HPOS>=(20+d_H) AND HPOS<=(35+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR (HPOS>=40+d_H AND HPOS<=55+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) 
           OR(HPOS>=60+d_H AND HPOS<=75+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) OR (HPOS>=80+d_H AND HPOS<=95+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))OR (HPOS>=100+d_H AND HPOS<=115+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) 
           OR((HPOS>=(120+d_H) AND HPOS<=(135+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))) OR ((HPOS>=(140+d_H) AND HPOS<=(155+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR ((HPOS>=(160+d_H) AND HPOS<=(175+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))

           OR((HPOS>=(180+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR ((HPOS>=(200+d_H) AND HPOS<=(215+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR (HPOS>=220+d_H AND HPOS<=235+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) 
           OR(HPOS>=240+d_H AND HPOS<=255+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) OR (HPOS>=260+d_H AND HPOS<=275+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))OR (HPOS>=280+d_H AND HPOS<=295+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) 
           OR((HPOS>=(300+d_H) AND HPOS<=(315+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))) OR ((HPOS>=(320+d_H) AND HPOS<=(335+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR ((HPOS>=(340+d_H) AND HPOS<=(355+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))

           OR((HPOS>=(360+d_H) AND HPOS<=(375+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR ((HPOS>=(380+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR (HPOS>=400+d_H AND HPOS<=415+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) 
           OR(HPOS>=420+d_H AND HPOS<=435+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) OR (HPOS>=440+d_H AND HPOS<=455+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))OR (HPOS>=460+d_H AND HPOS<=475+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) 
           OR((HPOS>=(480+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR ))) OR ((HPOS>=(500+d_H) AND HPOS<=(515+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR ((HPOS>=(520+d_H) AND HPOS<=(535+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))

           OR((HPOS>=(540+d_H) AND HPOS<=(555+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR ((HPOS>=(560+d_H) AND HPOS<=(575+d_H)) AND (VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )))OR (HPOS>=580+d_H AND HPOS<=595+d_H AND VPOS>=(TFV_MIN+V_MINUTES_BAR ) AND VPOS<=(TFV_MAX+V_MINUTES_BAR )) 
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------BATTOM-MINUTES-BAR---------------------------------------------------------------------------------------------------------
           OR((HPOS>=(0+d_H) AND HPOS<=(15+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR ((HPOS>=(20+d_H) AND HPOS<=(35+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR (HPOS>=40+d_H AND HPOS<=55+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) 
           OR(HPOS>=60+d_H AND HPOS<=75+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) OR (HPOS>=80+d_H AND HPOS<=95+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))OR (HPOS>=100+d_H AND HPOS<=115+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) 
           OR((HPOS>=(120+d_H) AND HPOS<=(135+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))) OR ((HPOS>=(140+d_H) AND HPOS<=(155+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR ((HPOS>=(160+d_H) AND HPOS<=(175+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))

           OR((HPOS>=(180+d_H) AND HPOS<=(195+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR ((HPOS>=(200+d_H) AND HPOS<=(215+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR (HPOS>=220+d_H AND HPOS<=235+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) 
           OR(HPOS>=240+d_H AND HPOS<=255+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) OR (HPOS>=260+d_H AND HPOS<=275+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))OR (HPOS>=280+d_H AND HPOS<=295+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) 
           OR((HPOS>=(300+d_H) AND HPOS<=(315+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))) OR ((HPOS>=(320+d_H) AND HPOS<=(335+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR ((HPOS>=(340+d_H) AND HPOS<=(355+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))

           OR((HPOS>=(360+d_H) AND HPOS<=(375+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR ((HPOS>=(380+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR (HPOS>=400+d_H AND HPOS<=415+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) 
           OR(HPOS>=420+d_H AND HPOS<=435+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) OR (HPOS>=440+d_H AND HPOS<=455+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))OR (HPOS>=460+d_H AND HPOS<=475+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) 
           OR((HPOS>=(480+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR ))) OR ((HPOS>=(500+d_H) AND HPOS<=(515+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR ((HPOS>=(520+d_H) AND HPOS<=(535+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))

           OR((HPOS>=(540+d_H) AND HPOS<=(555+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR ((HPOS>=(560+d_H) AND HPOS<=(575+d_H)) AND (VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )))OR (HPOS>=580+d_H AND HPOS<=595+d_H AND VPOS>=(BFV_MIN-V_MINUTES_BAR ) AND VPOS<=(BFV_MAX-V_MINUTES_BAR )) 

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------TOP-HOUR-BAR------------------------------------------------------------------------------------------------------------
           OR((HPOS>=(0+d_H) AND HPOS<=(45+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR) AND VPOS<=(TFV_MAX+V_HOUR_BAR)))OR ((HPOS>=(50+d_H) AND HPOS<=(95+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))OR (HPOS>=100+d_H AND HPOS<=145+d_H AND VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )) 
           OR(HPOS>=150+d_H AND HPOS<=195+d_H AND VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )) OR (HPOS>=200+d_H AND HPOS<=245+d_H AND VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR ))OR (HPOS>=250+d_H AND HPOS<=295+d_H AND VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )) 
           OR((HPOS>=(300+d_H) AND HPOS<=(345+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR ))) OR ((HPOS>=(350+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))OR ((HPOS>=(400+d_H) AND HPOS<=(445+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))
           OR((HPOS>=(450+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))OR ((HPOS>=(500+d_H) AND HPOS<=(545+d_H)) AND (VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )))OR (HPOS>=550+d_H AND HPOS<=595+d_H AND VPOS>=(TFV_MIN+V_HOUR_BAR ) AND VPOS<=(TFV_MAX+V_HOUR_BAR )) 
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------BATTOM-HOUR-BAR------------------------------------------------------------------------------------------------------------
           OR((HPOS>=(0+d_H) AND HPOS<=(45+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR) AND VPOS<=(BFV_MAX-V_HOUR_BAR)))OR ((HPOS>=(50+d_H) AND HPOS<=(95+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))OR (HPOS>=100+d_H AND HPOS<=145+d_H AND VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )) 
           OR(HPOS>=150+d_H AND HPOS<=195+d_H AND VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )) OR (HPOS>=200+d_H AND HPOS<=245+d_H AND VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR ))OR (HPOS>=250+d_H AND HPOS<=295+d_H AND VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )) 
           OR((HPOS>=(300+d_H) AND HPOS<=(345+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR ))) OR ((HPOS>=(350+d_H) AND HPOS<=(395+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))OR ((HPOS>=(400+d_H) AND HPOS<=(445+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))
           OR((HPOS>=(450+d_H) AND HPOS<=(495+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))OR ((HPOS>=(500+d_H) AND HPOS<=(545+d_H)) AND (VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )))OR (HPOS>=550+d_H AND HPOS<=595+d_H AND VPOS>=(BFV_MIN-V_HOUR_BAR ) AND VPOS<=(BFV_MAX-V_HOUR_BAR )) 
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------GAME_TIC_TAC_TEO-----------------------------------------------------------------------------------------------------------           
           OR((HPOS>=(L1V_MIN+d_H) AND HPOS<=(L1V_MAX+d_H)) AND (VPOS>=(170) AND VPOS<=(470))) OR ((HPOS>=L2V_MIN+d_H AND HPOS<=L2V_MAX+d_H ) AND (VPOS>=(170) AND VPOS<=(470)))
           OR ((HPOS>=(2+d_H) AND HPOS<=(476+d_H)) AND (VPOS>=(L1H_MIN) AND VPOS<=(L1H_MAX))) OR ((HPOS>=2+d_H AND HPOS<=476+d_H) AND ((VPOS>=(L2H_MIN) AND VPOS<=(L2H_MAX)))) 
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------SQUARE 1-9 ----------------------------------------------------------------------------------------------------------------           
           OR((HPOS>=(SQ1_MIN+d_H) AND HPOS<=(SQ1_MAX+d_H)) AND (VPOS>=(189) AND VPOS<=(241))) OR ((HPOS>=SQ2_MIN+d_H AND HPOS<=SQ2_MAX+d_H ) AND (VPOS>=(189) AND VPOS<=(241)))OR ((HPOS>=SQ3_MIN+d_H AND HPOS<=SQ3_MAX+d_H ) AND (VPOS>=(189) AND VPOS<=(241)))
           OR((HPOS>=(SQ4_MIN+d_H) AND HPOS<=(SQ4_MAX+d_H)) AND (VPOS>=(289) AND VPOS<=(341))) OR ((HPOS>=SQ5_MIN+d_H AND HPOS<=SQ5_MAX+d_H ) AND (VPOS>=(289) AND VPOS<=(341)))OR ((HPOS>=SQ6_MIN+d_H AND HPOS<=SQ6_MAX+d_H ) AND (VPOS>=(289) AND VPOS<=(341)))
           OR((HPOS>=(SQ7_MIN+d_H) AND HPOS<=(SQ7_MAX+d_H)) AND (VPOS>=(389) AND VPOS<=(441))) OR ((HPOS>=SQ8_MIN+d_H AND HPOS<=SQ8_MAX+d_H ) AND (VPOS>=(389) AND VPOS<=(441)))OR ((HPOS>=SQ9_MIN+d_H AND HPOS<=SQ9_MAX+d_H ) AND (VPOS>=(389) AND VPOS<=(441)))then
--------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------SW 15-7 ----------------------------------------------------------------------------------------------------------------           
--           OR((HPOS>=(SWI_SQ1_MIN+d_H) AND HPOS<=(SQ1_MAX+d_H)) AND (VPOS>=(189) AND VPOS<=(241))) OR ((HPOS>=SQ2_MIN+d_H AND HPOS<=SQ2_MAX+d_H ) AND (VPOS>=(189) AND VPOS<=(241)))OR ((HPOS>=SQ3_MIN+d_H AND HPOS<=SQ3_MAX+d_H ) AND (VPOS>=(189) AND VPOS<=(241)))
--           OR((HPOS>=(SQ4_MIN+d_H) AND HPOS<=(SQ4_MAX+d_H)) AND (VPOS>=(289) AND VPOS<=(341))) OR ((HPOS>=SQ5_MIN+d_H AND HPOS<=SQ5_MAX+d_H ) AND (VPOS>=(289) AND VPOS<=(341)))OR ((HPOS>=SQ6_MIN+d_H AND HPOS<=SQ6_MAX+d_H ) AND (VPOS>=(289) AND VPOS<=(341)))
--           OR((HPOS>=(SQ7_MIN+d_H) AND HPOS<=(SQ7_MAX+d_H)) AND (VPOS>=(389) AND VPOS<=(441))) OR ((HPOS>=SQ8_MIN+d_H AND HPOS<=SQ8_MAX+d_H ) AND (VPOS>=(389) AND VPOS<=(441)))OR ((HPOS>=SQ9_MIN+d_H AND HPOS<=SQ9_MAX+d_H ) AND (VPOS>=(389) AND VPOS<=(441)))then
----------------------------------------------------------------------------------------------------------------------------------------------------------------
              VGA_R <= VGA_R_IN;
              VGA_G <= VGA_G_IN;
              VGA_B <= VGA_B_IN;
        ELSE     
           VGA_R <= "0000";
           VGA_G <= "0000";
           VGA_B <= "0000";            
        END IF;
  else
      VGA_R <= "0000";
      VGA_G <= "0000";
      VGA_B <= "0000";
  end if;
end if;
end process;


end Behavioral;
