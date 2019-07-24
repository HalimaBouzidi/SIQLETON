------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use ieee.std_logic_unsigned.all;
--use ieee.std_logic_arith.all;
--use ieee.numeric_std.all;
--
---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;
--
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
----library UNISIM;
----use UNISIM.VComponents.all;
--
--entity graphics is
--    Port ( pixel_clk   : in STD_LOGIC;
--			  dead        : in STD_LOGIC;
--			  hcount      : in STD_LOGIC_VECTOR (10 downto 0);
--			  vcount      : in STD_LOGIC_VECTOR (10 downto 0);
--			  --the rgb signal is 8 bits: 3 for red, 3 for green, and 2 for blue (See Nexys 3 Reference Manual for more information about VGA Port.)
--			  rgb         : out  STD_LOGIC_VECTOR (7 downto 0);
--			  ----------------------------------------------------------
--              VecteurScore       : in  STD_LOGIC_VECTOR (7 downto 0);
--              VecteurUP       : in  STD_LOGIC_VECTOR (16 downto 0);
--              VecteurDOWN       : in  STD_LOGIC_VECTOR (16 downto 0);
--              VecteurRIGHT       : in  STD_LOGIC_VECTOR (16 downto 0);
--              VecteurLEFT       : in  STD_LOGIC_VECTOR (16 downto 0);
--				  start        : in STD_LOGIC;
--				  life        : in STD_LOGIC_VECTOR (1 downto 0);
--				-----------------------------------------------------------  
--			   counter: in std_logic_vector(4 downto 0));
--end graphics;
--
--architecture Behavioral of graphics is
----constant start : integer := 1; 
----constant VecteurScore : std_logic_vector (6 downto 0)  :="1011011";
----constant VecteurUP : std_logic_vector (15 downto 0)  :="1000100010001000";
----constant VecteurDOWN : std_logic_vector (15 downto 0):="0100010001000100";
----constant VecteurRIGHT :std_logic_vector (15 downto 0):="0010001000100010";
----constant VecteurLEFT : std_logic_vector (15 downto 0):="0001000100010001";
--constant lane1_t : integer := 100; --distance between the top lane and top of the screen
--constant by : integer := -150; --distance between the top lane and top of the screen
--
--constant bx : integer := -250; --distance between the top lane and top of the screen
--
--constant fx : integer := -20; --distance between the top lane and top of the screen
--
--constant fy : integer := -200; --distance between the top lane and top of the screen
--
--constant p11 : integer := 30; --distance between the top lane and top of the screen
--
--constant p12 : integer := 60; --distance between the top lane and top of the screen
--
--constant p13 : integer := 90; --distance between the top lane and top of the screen
--
--constant p01 : integer := -30; --distance between the top lane and top of the screen
--
--constant p02 : integer := -60; --distance between the top lane and top of the screen
--constant p03 : integer := -90; --distance between the top lane and top of the screen
--constant posi : integer := -32;
--constant posi2 : integer := -64;
--constant chiffre1 : integer := 200;
--constant posilifesX : integer := 279;
--constant posilifesY : integer := -75; 
--
--constant PosiF1Y : integer := 40;
--constant PosiF2Y : integer := 40;
--constant PosiF3Y : integer := 40;
--constant PosiF4Y : integer := 40;
--constant PosiF1X : integer := -56-52;
--constant PosiF2X : integer := -28-52+1;
--constant PosiF3X : integer :=0 -52+2;
--constant PosiF4X : integer :=28-52+3;
--constant PosiF5X : integer :=56-52+4;
--constant PosiF6X : integer :=84-52+5;
--constant PosiF7X : integer :=112-52+6;
--constant PosiF8X : integer :=140-52+7;
--constant PosiF9X : integer :=168-52+8;
--constant PosiF10X : integer := 196+9 -52;
--constant PosiF11X : integer :=224-52+10;
--constant PosiF12X : integer :=252-52+11;
--constant PosiF13X : integer :=280-52+12;
--constant PosiF14X : integer :=308-52+13;
--constant PosiF15X : integer :=336-52+14;
--constant PosiF16X : integer :=364-52+15;
--
--signal x,y: integer range 0 to 650;
--signal mscore: integer range 0 to 99;
--signal lifes : integer range 0 to 3;
--
----These signals will...
--signal draw_blue,
--       draw_red,
--			draw_black,
--			draw_beige,
--			draw_white: std_logic;
--		 
--signal color_selector : std_logic_vector (2 downto 0);		 
--
--begin
--
--
----Convert our 11-bit inputs, hcount and vcount, into integers,
----which will be easier to use to designate locations on the screen.
--x <= conv_integer(hcount);
--y <= conv_integer(vcount);
--mscore <= conv_integer(VecteurScore);
--lifes <= conv_integer(life);
--
--draw_red <= '1' when(
--------------------------------------------lIFES-------------------------------------------------------------------------------------------
-- (	
--	(((((x+posilifesX>=289 and x+posilifesX<=292)or (x+posilifesX>=302 and x+posilifesX<=305) ) and (y+posilifesY=32 )) or
--(((x+posilifesX>=288 and x+posilifesX<=293)or (x+posilifesX>=301 and x+posilifesX<=307) ) and (y+posilifesY=33 )) or
--(((x+posilifesX>=287 and x+posilifesX<=294)or (x+posilifesX>=300 and x+posilifesX<=308) ) and (y+posilifesY=34 )) or
--(((x+posilifesX>=286 and x+posilifesX<=295)or (x+posilifesX>=299 and x+posilifesX<=309) ) and (y+posilifesY=35 )) or
--(((x+posilifesX>=285 and x+posilifesX<=296)or (x+posilifesX>=298 and x+posilifesX<=310) ) and (y+posilifesY=36 )) or
--((x+posilifesX>=284 and x+posilifesX<=311) and (y+posilifesY=37 )) or
--((x+posilifesX>=284 and x+posilifesX<=311)   and (y+posilifesY=38 )) or
--((x+posilifesX>=283 and x+posilifesX<=312)  and (y+posilifesY=39 )) or
--((x+posilifesX>=283 and x+posilifesX<=312)  and (y+posilifesY=40 )) or
--((x+posilifesX>=283 and x+posilifesX<=312)  and (y+posilifesY=41 )) or
--((x+posilifesX>=284 and x+posilifesX<=311)  and (y+posilifesY=42 )) or
--((x+posilifesX>=285 and x+posilifesX<=310)  and (y+posilifesY=43 )) or
--((x+posilifesX>=285 and x+posilifesX<=310)  and (y+posilifesY=44 )) or
--((x+posilifesX>=286 and x+posilifesX<=309)  and (   y+posilifesY=45 )) or
--((x+posilifesX>=287 and x+posilifesX<=308)  and (y+posilifesY=46 )) or
--((x+posilifesX>=288 and x+posilifesX<=307)  and (y+posilifesY=47 )) or
--((x+posilifesX>=288 and x+posilifesX<=306)  and (y+posilifesY=48 )) or
--((x+posilifesX>=289 and x+posilifesX<=305)  and (y+posilifesY=49 )) or
--((x+posilifesX>=290 and x+posilifesX<=305)  and (y+posilifesY=50 )) or
--((x+posilifesX>=291 and x+posilifesX<=304)  and (y+posilifesY=51 )) or
--((x+posilifesX>=291 and x+posilifesX<=303)  and (y+posilifesY=52 )) or
--((x+posilifesX>=292 and x+posilifesX<=302)  and (y+posilifesY=53 )) or
--((x+posilifesX>=293 and x+posilifesX<=301)  and (y+posilifesY=54 )) or
--((x+posilifesX>=294 and x+posilifesX<=300)  and (y+posilifesY=55 )) or
--((x+posilifesX>=294 and x+posilifesX<=300)  and (y+posilifesY=56 )) or
--((x+posilifesX>=295 and x+posilifesX<=299)  and (y+posilifesY=57 )) or
--((x+posilifesX>=296 and x+posilifesX<=298)  and (y+posilifesY=58 )) or
--((x+posilifesX=297) and (y+posilifesY=59 )) 
--) and (lifes>=1))or
--	 (((((x+posilifesX+posi>=289 and x+posilifesX+posi<=292)or (x+posilifesX+posi>=302 and x+posilifesX+posi<=305) ) and (y+posilifesY=32 )) or
--(((x+posilifesX+posi>=288 and x+posilifesX+posi<=293)or (x+posilifesX+posi>=301 and x+posilifesX+posi<=307) ) and (y+posilifesY=33 )) or
--(((x+posilifesX+posi>=287 and x+posilifesX+posi<=294)or (x+posilifesX+posi>=300 and x+posilifesX+posi<=308) ) and (y+posilifesY=34 )) or
--(((x+posilifesX+posi>=286 and x+posilifesX+posi<=295)or (x+posilifesX+posi>=299 and x+posilifesX+posi<=309) ) and (y+posilifesY=35 )) or
--(((x+posilifesX+posi>=285 and x+posilifesX+posi<=296)or (x+posilifesX+posi>=298 and x+posilifesX+posi<=310) ) and (y+posilifesY=36 )) or
--((x+posilifesX+posi>=284 and x+posilifesX+posi<=311) and (y+posilifesY=37 )) or
--((x+posilifesX+posi>=284 and x+posilifesX+posi<=311)   and (y+posilifesY=38 )) or
--((x+posilifesX+posi>=283 and x+posilifesX+posi<=312)  and (y+posilifesY=39 )) or
--((x+posilifesX+posi>=283 and x+posilifesX+posi<=312)  and (y+posilifesY=40 )) or
--((x+posilifesX+posi>=283 and x+posilifesX+posi<=312)  and (y+posilifesY=41 )) or
--((x+posilifesX+posi>=284 and x+posilifesX+posi<=311)  and (y+posilifesY=42 )) or
--((x+posilifesX+posi>=285 and x+posilifesX+posi<=310)  and (y+posilifesY=43 )) or
--((x+posilifesX+posi>=285 and x+posilifesX+posi<=310)  and (y+posilifesY=44 )) or
--((x+posilifesX+posi>=286 and x+posilifesX+posi<=309)  and (y+posilifesY=45 )) or
--((x+posilifesX+posi>=287 and x+posilifesX+posi<=308)  and (y+posilifesY=46 )) or
--((x+posilifesX+posi>=288 and x+posilifesX+posi<=307)  and (y+posilifesY=47 )) or
--((x+posilifesX+posi>=288 and x+posilifesX+posi<=306)  and (y+posilifesY=48 )) or
--((x+posilifesX+posi>=289 and x+posilifesX+posi<=305)  and (y+posilifesY=49 )) or
--((x+posilifesX+posi>=290 and x+posilifesX+posi<=305)  and (y+posilifesY=50 )) or
--((x+posilifesX+posi>=291 and x+posilifesX+posi<=304)  and (y+posilifesY=51 )) or
--((x+posilifesX+posi>=291 and x+posilifesX+posi<=303)  and (y+posilifesY=52 )) or
--((x+posilifesX+posi>=292 and x+posilifesX+posi<=302)  and (y+posilifesY=53 )) or
--((x+posilifesX+posi>=293 and x+posilifesX+posi<=301)  and (y+posilifesY=54 )) or
--((x+posilifesX+posi>=294 and x+posilifesX+posi<=300)  and (y+posilifesY=55 )) or
--((x+posilifesX+posi>=294 and x+posilifesX+posi<=300)  and (y+posilifesY=56 )) or
--((x+posilifesX+posi>=295 and x+posilifesX+posi<=299)  and (y+posilifesY=57 )) or
--((x+posilifesX+posi>=296 and x+posilifesX+posi<=298)  and (y+posilifesY=58 )) or
--((x+posilifesX+posi=297) and (y+posilifesY=59 )) 
--) and (lifes>=2))or
--	 (((((x+posilifesX+posi2>=289 and x+posilifesX+posi2<=292)or (x+posilifesX+posi2>=302 and x+posilifesX+posi2<=305) ) and (y+posilifesY=32 )) or
--(((x+posilifesX+posi2>=288 and x+posilifesX+posi2<=293)or (x+posilifesX+posi2>=301 and x+posilifesX+posi2<=307) ) and (y+posilifesY=33 )) or
--(((x+posilifesX+posi2>=287 and x+posilifesX+posi2<=294)or (x+posilifesX+posi2>=300 and x+posilifesX+posi2<=308) ) and (y+posilifesY=34 )) or
--(((x+posilifesX+posi2>=286 and x+posilifesX+posi2<=295)or (x+posilifesX+posi2>=299 and x+posilifesX+posi2<=309) ) and (y+posilifesY=35 )) or
--(((x+posilifesX+posi2>=285 and x+posilifesX+posi2<=296)or (x+posilifesX+posi2>=298 and x+posilifesX+posi2<=310) ) and (y+posilifesY=36 )) or
--((x+posilifesX+posi2>=284 and x+posilifesX+posi2<=311) and (y+posilifesY=37 )) or
--((x+posilifesX+posi2>=284 and x+posilifesX+posi2<=311)   and (y+posilifesY=38 )) or
--((x+posilifesX+posi2>=283 and x+posilifesX+posi2<=312)  and (y+posilifesY=39 )) or
--((x+posilifesX+posi2>=283 and x+posilifesX+posi2<=312)  and (y+posilifesY=40 )) or
--((x+posilifesX+posi2>=283 and x+posilifesX+posi2<=312)  and (y+posilifesY=41 )) or
--((x+posilifesX+posi2>=284 and x+posilifesX+posi2<=311)  and (y+posilifesY=42 )) or
--((x+posilifesX+posi2>=285 and x+posilifesX+posi2<=310)  and (y+posilifesY=43 )) or
--((x+posilifesX+posi2>=285 and x+posilifesX+posi2<=310)  and (y+posilifesY=44 )) or
--((x+posilifesX+posi2>=286 and x+posilifesX+posi2<=309)  and (y+posilifesY=45 )) or
--((x+posilifesX+posi2>=287 and x+posilifesX+posi2<=308)  and (y+posilifesY=46 )) or
--((x+posilifesX+posi2>=288 and x+posilifesX+posi2<=307)  and (y+posilifesY=47 )) or
--((x+posilifesX+posi2>=288 and x+posilifesX+posi2<=306)  and (y+posilifesY=48 )) or
--((x+posilifesX+posi2>=289 and x+posilifesX+posi2<=305)  and (y+posilifesY=49 )) or
--((x+posilifesX+posi2>=290 and x+posilifesX+posi2<=305)  and (y+posilifesY=50 )) or
--((x+posilifesX+posi2>=291 and x+posilifesX+posi2<=304)  and (y+posilifesY=51 )) or
--((x+posilifesX+posi2>=291 and x+posilifesX+posi2<=303)  and (y+posilifesY=52 )) or
--((x+posilifesX+posi2>=292 and x+posilifesX+posi2<=302)  and (y+posilifesY=53 )) or
--((x+posilifesX+posi2>=293 and x+posilifesX+posi2<=301)  and (y+posilifesY=54 )) or
--((x+posilifesX+posi2>=294 and x+posilifesX+posi2<=300)  and (y+posilifesY=55 )) or
--((x+posilifesX+posi2>=294 and x+posilifesX+posi2<=300)  and (y+posilifesY=56 )) or
--((x+posilifesX+posi2>=295 and x+posilifesX+posi2<=299)  and (y+posilifesY=57 )) or
--((x+posilifesX+posi2>=296 and x+posilifesX+posi2<=298)  and (y+posilifesY=58 )) or
--((x+posilifesX+posi2=297) and (y+posilifesY=59 )) ) and (lifes=3)))  and (start='1')) 
--
--
--
--	else '0';
--
----
--draw_blue <= '1' when (((
--(x>=290-150 and x<=320-150) and (y+chiffre1>=245 and y+chiffre1<=305 ))or
--((x>=323-150 and x<=640) and (y+chiffre1=250 or y+chiffre1=249 or y+chiffre1=248 or y+chiffre1=247))or
--((x>=323-150 and x<=640) and (y+chiffre1=300 or y+chiffre1=301 or y+chiffre1=302 or y+chiffre1=303))or
--
--
--------------------------------------CHIFFRES POUR SCore--------------------------------------------
-----------------------------------le 0
--((((x-60>=10 and x-60<=17) and (y-6=39 or y-6=66 )) or
--((x-60=7 or x-60=8 or x-60=9 or x-60=18 or x-60=19 or x-60=20 ) and ( y-6=40 or y-6=65 )) or
--((x-60=6 or x-60=21) and (y-6=41 or y-6=64 )) or
--((x-60=5 or x-60=22 ) and (y-6=42 or y-6=63 )) or
--((x-60=4 or x-60=23 ) and (y-6=43 or y-6=62 )) or
--((x-60=3 or x-60=24 ) and (y-6=44 or y-6=61 )) or
--((x-60=2 or x-60=25 ) and (y-6=45 or y-6=60 )) or
--((x-60=1 or x-60=26 ) and (y-6=46 or y-6=28 or y-6=29 or y-6=59 or y-6=58 or y-6=57)) or
--((x-60=0 or x-60=27 ) and (y-6>=47 and  y-6<=56)))and (mscore mod 10=0)) or
--------------------------------------le 1
--((((x-60=14 or x-60=15) and (y-6>=41 and y-6<=66 )))and (mscore mod 10 = 1)) or
--------------------------------------le 2
-- ((((x-60>=5 and x-60<=25) and (y-6=42 or y-6=41 )) or
--((x-60>=5 and x-60<=25) and (y-6=66 or y-6=65)) or
--((x-60>=5 and x-60<=25) and (y-6=53 or y-6=52  )) or
--((x-60=25 or  x-60=24) and (y>=41 and y-6<=53 )) or
--((x-60=5 or x-60=6) and (y-6>=53 and y-6<=66)))and (mscore mod 10=2)) or
-------------------------------------le 3
--((((x-60=25 or x-60=24) and (y-6>=41 and y-6<=66 )) or
--((x-60>=4 and x-60<=25) and (y-6=41 or y-6=42 )) or
--((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52)) or
--((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65))) and (mscore mod 10=3))or
-------------------------------------------le 4
--((((x-60=25 or x-60=24) and (y-6>=41 and y-6<=66 )) or
--((x-60=4 or x-60=5) and (y-6>=41 and y-6<=53 )) or
--((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52 ))) and (mscore mod 10=4)) or
--
---------------------------------------------le5
--
--((((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40 )) or
--((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65)) or
--((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52)) or
--((x-60=4 or x-60=5) and (y-6>=41 and y-6<=53 )) or
--((x-60=25 or x-60=24) and (y-6>=53 and y-6<=66 ))) and (mscore mod 10=5)) or
------------------------------------------------------le 6
--((((x-60=4 or x-60=5) and (y-6>=41 and y-6<=66 )) or
--((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40  )) or
--((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65)) or
--((x-60=25 or x-60=24) and (y-6>=53 and y-6<=66 )) or
--((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52 ))) and (mscore mod 10=6)) or
-----------------------------------------------------le 7
--((((x-60=25 or x-60=24) and (y-6>=41 and y-6<=66 )) or
--((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40 )) )and (mscore mod 10=7))or
----------------------------------------------------le 8
--
--((((x-60=4 or x-60=5) and (y-6>=41 and y-6<=66 )) or
--((x-60=25 or x-60=24 ) and (y-6>=41 and y-6<=66 )) or
--((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40 )) or
--((x-60>=4 and x-60<=25) and (y-6=53  or y-6=52)) or
--((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65 )) ) and (mscore mod 10=8))or
--------------------------------------------------le 9
--
--((((x-60=25 or x-60=24) and (y-6>=41 and y-6<=66 )) or
--((x-60=4 or x-60=5) and (y-6>=41 and y-6<=53 )) or
--((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40 )) or
--((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65 )) or
--((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52 ))) and (mscore mod 10=9)) or
-------------------------------------------------------------------------------------------------
-- ---------------------------------le 0
--((((x-20>=10 and x-20<=17) and (y-6=39 or y-6=66 )) or
--((x-20=7 or x-20=8 or x-20=9 or x-20=18 or x-20=19 or x-20=20 ) and ( y-6=40 or y-6=65 )) or
--((x-20=6 or x-20=21) and (y-6=41 or y-6=64 )) or
--((x-20=5 or x-20=22 ) and (y-6=42 or y-6=63 )) or
--((x-20=4 or x-20=23 ) and (y-6=43 or y-6=62 )) or
--((x-20=3 or x-20=24 ) and (y-6=44 or y-6=61 )) or
--((x-20=2 or x-20=25 ) and (y-6=45 or y-6=60 )) or
--((x-20=1 or x-20=26 ) and (y-6=46 or y-6=28 or y-6=29 or y-6=59 or y-6=58 or y-6=57)) or
--((x-20=0 or x-20=27 ) and (y-6>=47 and  y-6<=56)))and (mscore >=0 and mscore<10)) or
--------------------------------------le 1
--((((x-20=14 or x-20=15) and (y-6>=39 and y-6<=66 )))and (mscore >=10 and mscore<20)) or
--------------------------------------le 2
-- ((((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40  )) or
--((x-20>=3 and x-20<=25) and (y-6=66 or y-6=65)) or
--((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52 )) or
--((x-20=25 or x-20=24) and (y-6>=40 and y-6<=53 )) or
--((x-20=3 or x-20=4) and (y-6>=53 and y-6<=66)))and (mscore >=20 and mscore<30)) or
-------------------------------------le 3
--((((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
--((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40  )) or
--((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52)) or
--((x-20>=3 and x-20<=25) and (y-6=66 or y-6=65))) and (mscore >=30 and mscore<40))or
-------------------------------------------le 4
--((((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
--((x-20=3 or x-20=4) and (y-6>=39 and y-6<=53 )) or
--((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52))) and (mscore >=40 and mscore<50)) or
--
---------------------------------------------le5
--
--((((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40 )) or
--((x-20>=3 and x-20<=25) and (y-6=66 or y-6=65 )) or
--((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52)) or
--((x-20=3 or x-20=4) and (y-6>=39 and y-6<=53 )) or
--((x-20=25 or x-20=24 ) and (y-6>=53 and y-6<=66 ))) and (mscore >=50 and mscore<60)) or
------------------------------------------------------le 6
--((((x-20=4 or x-20=5) and (y-6>=39 and y-6<=66 )) or
--((x-20>=4 and x-20<=25) and (y-6=39 or y-6=40 )) or
--((x-20>=0 and x-20<=25) and (y-6=66 or y-6=65 )) or
--((x-20=25 or x-20=24) and (y-6>=53 and y-6<=66 )) or
--((x-20>=4 and x-20<=25) and (y-6=53 or y-6=52))) and (mscore >=60 and mscore<70)) or
-----------------------------------------------------le 7
--((((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
--((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40  )) )and (mscore >=70 and mscore<80))or
----------------------------------------------------le 8
--
--((((x-20=3 or x-20=4) and (y-6>=39 and y-6<=66 )) or
--((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
--((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40 )) or
--((x-20>=3 and x-20<=25) and (y-6=53  or y-6=52)) or
--((x-20>=3 and x-20<=25) and (y-6=66  or y-6=65)) ) and (mscore >=80 and mscore<90))or
--------------------------------------------------le 9
--
--((((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
--((x-20=3 or x-20=4) and (y-6>=39 and y-6<=53 )) or
--((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40 )) or
--((x-20>=3 and x-20<=25) and (y-6=66 or y-6=65 )) or
--((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52  ))) and (mscore >=90 and mscore<100)))and (start='1'))
----------------------------------------------------------------------------------------------------------------
--
--	else '0';
--   
------------------------------------------------------------------------------------------------
-------------------------------------DESSINER EN BLANC------------------------------------------
--draw_white <= '1' when ( 
--(
--(
----------------------------------------Le danceur-----------------------------------------------
----visage
--(
--   	(( 
--    (((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or
--
--	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or
--
--	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or
--
--	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or
--
--	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or
--
--	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or
--
--	
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or
--
--((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or
--
--((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or
--
--((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or
--
--
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or
--
--	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or
--
--	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or
--
--	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or
--
--	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or
--
--	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or
--
--	-----------------dbut 9afas
--
--	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--
--	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--
--	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or
--
--	-----------------7awd
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or
--
--	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or
--
--	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or
--
--	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or
--
--	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or
--
--	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or
--
--	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or
--
--	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or
--
--	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or
--
--	------------------Mains normal
--
--	
--
--	((y +by >= 60 and y+by <= 64) and (x+bx = 67 or x+bx = 90)) or
--
--	((y +by >= 60 and y+by <= 64) and (x+bx = 66 or x+bx = 91)) or
--
--	((y +by >= 60 and y+by <= 66) and (x+bx = 65 or x+bx = 92)) or
--
--	((y +by >= 61 and y+by <= 67) and (x+bx = 64 or x+bx = 93)) or
--
--	((y +by >= 63 and y+by <= 69) and (x+bx = 63 or x+bx = 94)) or
--
--	((y +by >= 65 and y+by <= 83) and (x+bx = 62 or x+bx = 95)) or
--
--	((y +by >= 66 and y+by <= 83) and (x+bx = 61 or x+bx = 96)) or
--
--	((y +by >= 68 and y+by <= 84) and (x+bx = 60 or x+bx = 97)) or
--
--	((y +by >= 83 and y+by <= 88) and (x+bx = 59 or x+bx = 98)) or
--
--	((y +by >= 83 and y+by <= 88) and (x+bx = 58 or x+bx = 99)) or
--
--	
--
--	
--
--	------------------pieds normal
--
--	((y +by >= 92 and y+by <= 118) and ((x+bx >= 72 and x+bx <= 74) or (x+bx >= 83 and x+bx <= 85))) or
--
--	((y +by >= 116 and y+by <= 118) and ((x+bx >= 86 and x+bx <= 90) or (x+bx >= 67 and x+bx <= 71))) 
--
--
--
--	) and (counter="00000")
--
--	) or
--
--	
--
--	(
--
--	--**********************************************************************1*******************************************************************
--
--		--**********************************************************************11*******************************************************************
--		(((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or
--	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or
--	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or
--	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or
--	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or
--	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or
--	
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or
--((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or
--((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or
--((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or
--	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or
--	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or
--	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or
--	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or
--	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or
--	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or
--	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or
--	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or
--	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or
--	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or
--	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or
--	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or
--	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or
--	--droite tal3a
--		((x +bx >= 43 and x+bx <= 47) and (y+by = 43)) or
--	((x +bx >= 43 and x+bx <= 48) and (y+by = 44)) or
--	((x +bx >= 44 and x+bx <= 49) and (y+by = 45)) or
--	((x +bx >= 46 and x+bx <= 51) and (y+by = 46)) or
--	((x +bx >= 47 and x+bx <= 52) and (y+by = 47)) or
--	((x +bx >= 48 and x+bx <= 54) and (y+by = 48)) or
--	((x +bx >= 49 and x+bx <= 55) and (y+by = 49)) or
--	((x +bx >= 49 and x+bx <= 56) and (y+by = 50)) or
--	((x +bx >= 50 and x+bx <= 58) and (y+by = 51 ))or
--	((x +bx >= 51 and x+bx <= 59) and (y+by = 52 ))or
--	((x +bx >= 53 and x+bx <= 61) and (y+by = 53)) or
--	((x +bx >= 53 and x+bx <= 62) and (y+by = 54)) or
--	((x +bx >= 54 and x+bx <= 63) and (y+by = 55)) or
--	((x +bx >= 55 and x+bx <= 68) and (y+by = 56)) or
--	((x +bx >= 57 and x+bx <= 68) and (y+by = 57))or
--	((x +bx >= 58 and x+bx <= 68) and (y+by = 58)) or
--	((x +bx >= 60 and x+bx <= 68) and (y+by = 59)) or
--	((x +bx >= 61 and x+bx <= 67) and (y+by = 60)) or
--	((x +bx >= 62 and x+bx <= 66) and (y+by = 61)) or
--	((x +bx >= 64 and x+bx <= 66) and (y+by = 62)) or
--	((x +bx >= 65 and x+bx <= 66 ) and (y+by = 63)) or
--		--gauche metwiya
--	((x +bx >= 89 and x+bx <= 89) and (y+by = 57)) or
--	((x +bx >= 89 and x+bx <= 89) and (y+by = 58)) or
--	((x +bx >= 89 and x+bx <= 90) and (y+by = 59)) or
--	((x +bx >= 89 and x+bx <= 91) and (y+by = 60)) or
--	((x +bx >= 89 and x+bx <= 92) and (y+by = 61)) or
--	((x +bx >= 89 and x+bx <= 93) and (y+by = 62)) or
--	((x +bx >= 89 and x+bx <= 94) and (y+by = 63)) or
--	((x +bx >= 93 and x+bx <= 95) and (y+by = 64)) or
--	((x +bx >= 94 and x+bx <= 96) and (y+by = 65 ))or
--	((x +bx >= 95 and x+bx <= 97) and (y+by = 66 ))or
--	((x +bx >= 96 and x+bx <= 98) and (y+by = 67)) or
--	((x +bx >= 97 and x+bx <= 99) and (y+by = 68)) or
--	((x +bx >= 98 and x+bx <= 100) and (y+by = 69)) or
--	((x +bx >= 97 and x+bx <= 101) and (y+by = 70)) or
--	((x +bx >= 96 and x+bx <= 101) and (y+by = 71)) or
--	((x +bx >= 94 and x+bx <= 100) and (y+by = 72)) or
--	((x +bx >= 93 and x+bx <= 99) and (y+by = 73)) or
--	((x +bx >= 92 and x+bx <= 98) and (y+by = 74)) or
--	((x +bx >= 91 and x+bx <= 97) and (y+by = 75)) or
--	((x +bx >= 90 and x+bx <= 95) and (y+by = 76)) or
--	((x +bx >= 90 and x+bx <= 94 ) and (y+by = 77)) or
--	((x +bx >= 90 and x+bx <= 93 ) and (y+by = 78)) or
--	((x +bx >= 91 and x+bx <= 93 ) and (y+by = 79)) or
--	((x +bx >= 91 and x+bx <= 94 ) and (y+by = 80)) or
--	((x +bx >= 92 and x+bx <= 95 ) and (y+by = 81)) or
--	((x +bx >= 93 and x+bx <= 95 ) and (y+by = 82)) or
--	((x +bx >= 93 and x+bx <= 96 ) and (y+by = 83)) or
--	((x +bx >= 94 and x+bx <= 96 ) and (y+by = 84)) or
--		---droite mefto7in
--	((x +bx >= 69 and x+bx <= 71) and (y+by = 92)) or
--	((x +bx >= 69 and x+bx <= 71) and (y+by = 93)) or
--	((x +bx >= 67 and x+bx <= 71) and (y+by = 94)) or
--	((x +bx >= 66 and x+bx <= 71) and (y+by = 95)) or
--	((x +bx >= 65 and x+bx <= 70) and (y+by = 96)) or
--	((x +bx >= 64 and x+bx <= 69) and (y+by = 97)) or
--	((x +bx >= 63 and x+bx <= 66) and (y+by = 98)) or
--	((x +bx >= 62 and x+bx <= 66) and (y+by = 99)) or
--	((x +bx >= 61 and x+bx <= 65) and (y+by = 100)) or
--	((x +bx >= 60 and x+bx <= 64) and (y+by = 101)) or
--	((x +bx >= 61 and x+bx <= 63) and (y+by = 102)) or
--	((x +bx >= 61 and x+bx <= 63) and (y+by = 103)) or
--	((x +bx >= 62 and x+bx <= 63) and (y+by = 104)) or
--	((x +bx >= 62 and x+bx <= 64) and (y+by = 105)) or
--	((x +bx >= 63 and x+bx <= 64) and (y+by = 106)) or
--	((x +bx >= 63 and x+bx <= 65) and (y+by = 107)) or
--	((x +bx >= 64 and x+bx <= 65) and (y+by = 108)) or
--	((x +bx >= 64 and x+bx <= 66) and (y+by = 109)) or
--	((x +bx >= 65 and x+bx <= 66) and (y+by = 110)) or
--	((x +bx >= 65 and x+bx <= 67) and (y+by = 111)) or
--	((x +bx >= 66 and x+bx <= 68) and (y+by = 112)) or
--	((x +bx >= 66 and x+bx <= 69) and (y+by = 113)) or
--	((x +bx >= 66 and x+bx <= 70) and (y+by = 114)) or
--	((x +bx >= 67 and x+bx <= 70) and (y+by = 115)) or
--((x +bx >= 60 and x+bx <= 70) and (y +by >= 115 and y+by <= 119)) or
------gauche mkesla
--	((x +bx >= 83 and x+bx <= 87) and (y+by = 92)) or
--	((x +bx >= 83 and x+bx <= 87) and (y+by = 93)) or
--	((x +bx >= 83 and x+bx <= 87) and (y+by = 94)) or
--	((x +bx >= 84 and x+bx <= 87) and (y+by = 95)) or
--	((x +bx >= 84 and x+bx <= 87) and (y+by = 96)) or
--	((x +bx >= 85 and x+bx <= 87) and (y+by = 97)) or
--	((x +bx >= 85 and x+bx <= 88) and (y+by = 98)) or
--	((x +bx >= 85 and x+bx <= 89) and (y+by = 99)) or
--	((x +bx >= 86 and x+bx <= 89) and (y+by = 100))or
--	((x +bx >= 86 and x+bx <= 89) and (y+by = 101)) or
--	((x +bx >= 87 and x+bx <= 90) and (y+by = 102)) or
--	((x +bx >= 87 and x+bx <= 90) and (y+by = 103)) or
--	((x +bx >= 87 and x+bx <= 91) and (y+by = 104)) or
--	((x +bx >= 88 and x+bx <= 91) and (y+by = 105)) or
--	((x +bx >= 88 and x+bx <= 91) and (y+by = 106)) or
--	((x +bx >= 89 and x+bx <= 92) and (y+by = 107)) or
--	((x +bx >= 89 and x+bx <= 92) and (y+by = 108)) or
--	((x +bx >= 90 and x+bx <= 93) and (y+by = 109)) or
--	((x +bx >= 91 and x+bx <= 94) and (y+by = 110)) or
--	((x +bx >= 91 and x+bx <= 95) and (y+by = 111)) or
--	((x +bx >= 92 and x+bx <= 95) and (y+by = 112)) or
--	((x +bx >= 92 and x+bx <= 96) and (y+by = 113)) or
--	((x +bx >= 93 and x+bx <= 97) and (y+by = 114)) or
--	((x +bx >= 94 and x+bx <= 97) and (y+by = 115)) or
--	((x +bx >= 94 and x+bx <= 104) and (y +by >= 115 and y+by <= 119))
--
--	) and (counter="00001")
--
--	) 
--
--	
--
--	--********************************
--
--	 or
--
--	
--
--	(
--
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p11 >= 75) and (x + bx + p11 <= 82) and (y + by = 29)) or
--	((x + bx + p11 >= 72) and (x + bx + p11 <= 85) and (y + by = 30)) or
--	((x + bx + p11 >= 70) and (x + bx + p11 <= 87) and (y + by = 31)) or
--	((x + bx + p11 >= 70) and (x + bx + p11 <= 89) and (y + by = 32)) or
--	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 33)) or
--	((x + bx + p11 >= 68) and (x + bx + p11 <= 90) and (y + by = 34)) or
--	((x + bx + p11 >= 66) and (x + bx + p11 <= 90) and (y + by = 35)) or
--	((x + bx + p11 >= 66) and (x + bx + p11 <= 90) and (y + by = 36)) or
--	((x + bx + p11 >= 66) and (x + bx + p11 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p11 >= 65) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 38)) or
--((((x + bx + p11 >= 65) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 39)) or
--((((x + bx + p11 >= 65) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 40)) or
--((((x + bx + p11 >= 65) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 41)) or
--((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 90))) and (y + by = 42)) or
--((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 90))) and (y + by = 43)) or
--((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 86) and (x + bx + p11 <= 89))) and (y + by = 44)) or
--((((x + bx + p11 >= 68) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 86) and (x + bx + p11 <= 89))) and (y + by = 45)) or
--((((x + bx + p11 >= 69) and (x + bx + p11 <= 76)) or (x + bx + p11 = 78) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 87))) and (y + by = 46)) or
--((((x + bx + p11 >= 71) and (x + bx + p11 <= 76)) or (x + bx + p11 = 78) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p11 >= 74) and (x + bx + p11 <= 83) and (y + by = 48)) or
--	((x + bx + p11 >= 77) and (x + bx + p11 <= 79) and (y + by = 49)) or
--	((((x + bx + p11 >= 71) and (x + bx + p11 <= 72)) or ((x + bx + p11 >= 85) and (x + bx + p11 <= 85))) and (y + by = 50)) or
--	((((x + bx + p11 >= 72) and (x + bx + p11 <= 75)) or ((x + bx + p11 >= 81) and (x + bx + p11 <= 85))) and (y + by = 51)) or
--	((x + bx + p11 >= 73) and (x + bx + p11 <= 84) and (y + by = 52)) or
--	((x + bx + p11 >= 74) and (x + bx + p11 <= 83) and (y + by = 53)) or
--	((x + bx + p11 >= 75) and (x + bx + p11 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p11 >= 66 and x+bx + p11 <= 67) or (x +bx + p11 >= 89 and x+bx + p11 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p11 >= 68 and x+bx + p11 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p11 >= 77 and x+bx + p11 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p11 >= 68) and (x + bx + p11 <= 76)) or ((x + bx + p11 >= 82) and (x + bx + p11 <= 89))) and (y + by = 81)) or
--	((((x + bx + p11 >= 68) and (x + bx + p11 <= 76)) or ((x + bx + p11 >= 82) and (x + bx + p11 <= 89))) and (y + by = 82)) or
--	((((x + bx + p11 >= 68) and (x + bx + p11 <= 78)) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 89))) and (y + by = 83)) or
--	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 84)) or
--	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 85)) or
--	((x + bx + p11 >= 69) and (x + bx + p11 <= 88) and (y + by = 86)) or
--	((x + bx + p11 >= 70) and (x + bx + p11 <= 88) and (y + by = 87)) or
--	((x + bx + p11 >= 72) and (x + bx + p11 <= 86) and (y + by = 88)) or
--	((x + bx + p11 >= 74) and (x + bx + p11 <= 84) and (y + by = 89)) or
--	((x + bx + p11 >= 75) and (x + bx + p11 <= 82) and (y + by = 90)) or
--	((x + bx + p11 >= 77) and (x + bx + p11 <= 80) and (y + by = 91)) or
--	((x + bx + p11 >= 78) and (x + bx + p11 <= 78) and (y + by = 92)) or
--	--droite tal3a
--		((x +bx + p11 >= 43 and x+bx + p11 <= 47) and (y+by = 43)) or
--	((x +bx + p11 >= 43 and x+bx + p11 <= 48) and (y+by = 44)) or
--	((x +bx + p11 >= 44 and x+bx + p11 <= 49) and (y+by = 45)) or
--	((x +bx + p11 >= 46 and x+bx + p11 <= 51) and (y+by = 46)) or
--	((x +bx + p11 >= 47 and x+bx + p11 <= 52) and (y+by = 47)) or
--	((x +bx + p11 >= 48 and x+bx + p11 <= 54) and (y+by = 48)) or
--	((x +bx + p11 >= 49 and x+bx + p11 <= 55) and (y+by = 49)) or
--	((x +bx + p11 >= 49 and x+bx + p11 <= 56) and (y+by = 50)) or
--	((x +bx + p11 >= 50 and x+bx + p11 <= 58) and (y+by = 51 ))or
--	((x +bx + p11 >= 51 and x+bx + p11 <= 59) and (y+by = 52 ))or
--	((x +bx + p11 >= 53 and x+bx + p11 <= 61) and (y+by = 53)) or
--	((x +bx + p11 >= 53 and x+bx + p11 <= 62) and (y+by = 54)) or
--	((x +bx + p11 >= 54 and x+bx + p11 <= 63) and (y+by = 55)) or
--	((x +bx + p11 >= 55 and x+bx + p11 <= 68) and (y+by = 56)) or
--	((x +bx + p11 >= 57 and x+bx + p11 <= 68) and (y+by = 57))or
--	((x +bx + p11 >= 58 and x+bx + p11 <= 68) and (y+by = 58)) or
--	((x +bx + p11 >= 60 and x+bx + p11 <= 68) and (y+by = 59)) or
--	((x +bx + p11 >= 61 and x+bx + p11 <= 67) and (y+by = 60)) or
--	((x +bx + p11 >= 62 and x+bx + p11 <= 66) and (y+by = 61)) or
--	((x +bx + p11 >= 64 and x+bx + p11 <= 66) and (y+by = 62)) or
--	((x +bx + p11 >= 65 and x+bx + p11 <= 66 ) and (y+by = 63)) or
--		--gauche metwiya
--	((x +bx + p11 >= 89 and x+bx + p11 <= 89) and (y+by = 57)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 89) and (y+by = 58)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 90) and (y+by = 59)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 91) and (y+by = 60)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 92) and (y+by = 61)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 93) and (y+by = 62)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 94) and (y+by = 63)) or
--	((x +bx + p11 >= 93 and x+bx + p11 <= 95) and (y+by = 64)) or
--	((x +bx + p11 >= 94 and x+bx + p11 <= 96) and (y+by = 65 ))or
--	((x +bx + p11 >= 95 and x+bx + p11 <= 97) and (y+by = 66 ))or
--	((x +bx + p11 >= 96 and x+bx + p11 <= 98) and (y+by = 67)) or
--	((x +bx + p11 >= 97 and x+bx + p11 <= 99) and (y+by = 68)) or
--	((x +bx + p11 >= 98 and x+bx + p11 <= 100) and (y+by = 69)) or
--	((x +bx + p11 >= 97 and x+bx + p11 <= 101) and (y+by = 70)) or
--	((x +bx + p11 >= 96 and x+bx + p11 <= 101) and (y+by = 71)) or
--	((x +bx + p11 >= 94 and x+bx + p11 <= 100) and (y+by = 72)) or
--	((x +bx + p11 >= 93 and x+bx + p11 <= 99) and (y+by = 73)) or
--	((x +bx + p11 >= 92 and x+bx + p11 <= 98) and (y+by = 74)) or
--	((x +bx + p11 >= 91 and x+bx + p11 <= 97) and (y+by = 75)) or
--	((x +bx + p11 >= 90 and x+bx + p11 <= 95) and (y+by = 76)) or
--	((x +bx + p11 >= 90 and x+bx + p11 <= 94 ) and (y+by = 77)) or
--	((x +bx + p11 >= 90 and x+bx + p11 <= 93 ) and (y+by = 78)) or
--	((x +bx + p11 >= 91 and x+bx + p11 <= 93 ) and (y+by = 79)) or
--	((x +bx + p11 >= 91 and x+bx + p11 <= 94 ) and (y+by = 80)) or
--	((x +bx + p11 >= 92 and x+bx + p11 <= 95 ) and (y+by = 81)) or
--	((x +bx + p11 >= 93 and x+bx + p11 <= 95 ) and (y+by = 82)) or
--	((x +bx + p11 >= 93 and x+bx + p11 <= 96 ) and (y+by = 83)) or
--	((x +bx + p11 >= 94 and x+bx + p11 <= 96 ) and (y+by = 84)) or
--		---droite mefto7in
--	((x +bx + p11 >= 69 and x+bx + p11 <= 71) and (y+by = 92)) or
--	((x +bx + p11 >= 69 and x+bx + p11 <= 71) and (y+by = 93)) or
--	((x +bx + p11 >= 67 and x+bx + p11 <= 71) and (y+by = 94)) or
--	((x +bx + p11 >= 66 and x+bx + p11 <= 71) and (y+by = 95)) or
--	((x +bx + p11 >= 65 and x+bx + p11 <= 70) and (y+by = 96)) or
--	((x +bx + p11 >= 64 and x+bx + p11 <= 69) and (y+by = 97)) or
--	((x +bx + p11 >= 63 and x+bx + p11 <= 66) and (y+by = 98)) or
--	((x +bx + p11 >= 62 and x+bx + p11 <= 66) and (y+by = 99)) or
--	((x +bx + p11 >= 61 and x+bx + p11 <= 65) and (y+by = 100)) or
--	((x +bx + p11 >= 60 and x+bx + p11 <= 64) and (y+by = 101)) or
--	((x +bx + p11 >= 61 and x+bx + p11 <= 63) and (y+by = 102)) or
--	((x +bx + p11 >= 61 and x+bx + p11 <= 63) and (y+by = 103)) or
--	((x +bx + p11 >= 62 and x+bx + p11 <= 63) and (y+by = 104)) or
--	((x +bx + p11 >= 62 and x+bx + p11 <= 64) and (y+by = 105)) or
--	((x +bx + p11 >= 63 and x+bx + p11 <= 64) and (y+by = 106)) or
--	((x +bx + p11 >= 63 and x+bx + p11 <= 65) and (y+by = 107)) or
--	((x +bx + p11 >= 64 and x+bx + p11 <= 65) and (y+by = 108)) or
--	((x +bx + p11 >= 64 and x+bx + p11 <= 66) and (y+by = 109)) or
--	((x +bx + p11 >= 65 and x+bx + p11 <= 66) and (y+by = 110)) or
--	((x +bx + p11 >= 65 and x+bx + p11 <= 67) and (y+by = 111)) or
--	((x +bx + p11 >= 66 and x+bx + p11 <= 68) and (y+by = 112)) or
--	((x +bx + p11 >= 66 and x+bx + p11 <= 69) and (y+by = 113)) or
--	((x +bx + p11 >= 66 and x+bx + p11 <= 70) and (y+by = 114)) or
--	((x +bx + p11 >= 67 and x+bx + p11 <= 70) and (y+by = 115)) or
--((x +bx + p11 >= 60 and x+bx + p11 <= 70) and (y +by >= 115 and y+by <= 119)) or
------gauche mkesla
--	((x +bx + p11 >= 83 and x+bx + p11 <= 87) and (y+by = 92)) or
--	((x +bx + p11 >= 83 and x+bx + p11 <= 87) and (y+by = 93)) or
--	((x +bx + p11 >= 83 and x+bx + p11 <= 87) and (y+by = 94)) or
--	((x +bx + p11 >= 84 and x+bx + p11 <= 87) and (y+by = 95)) or
--	((x +bx + p11 >= 84 and x+bx + p11 <= 87) and (y+by = 96)) or
--	((x +bx + p11 >= 85 and x+bx + p11 <= 87) and (y+by = 97)) or
--	((x +bx + p11 >= 85 and x+bx + p11 <= 88) and (y+by = 98)) or
--	((x +bx + p11 >= 85 and x+bx + p11 <= 89) and (y+by = 99)) or
--	((x +bx + p11 >= 86 and x+bx + p11 <= 89) and (y+by = 100))or
--	((x +bx + p11 >= 86 and x+bx + p11 <= 89) and (y+by = 101)) or
--	((x +bx + p11 >= 87 and x+bx + p11 <= 90) and (y+by = 102)) or
--	((x +bx + p11 >= 87 and x+bx + p11 <= 90) and (y+by = 103)) or
--	((x +bx + p11 >= 87 and x+bx + p11 <= 91) and (y+by = 104)) or
--	((x +bx + p11 >= 88 and x+bx + p11 <= 91) and (y+by = 105)) or
--	((x +bx + p11 >= 88 and x+bx + p11 <= 91) and (y+by = 106)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 92) and (y+by = 107)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 92) and (y+by = 108)) or
--	((x +bx + p11 >= 90 and x+bx + p11 <= 93) and (y+by = 109)) or
--	((x +bx + p11 >= 91 and x+bx + p11 <= 94) and (y+by = 110)) or
--	((x +bx + p11 >= 91 and x+bx + p11 <= 95) and (y+by = 111)) or
--	((x +bx + p11 >= 92 and x+bx + p11 <= 95) and (y+by = 112)) or
--	((x +bx + p11 >= 92 and x+bx + p11 <= 96) and (y+by = 113)) or
--	((x +bx + p11 >= 93 and x+bx + p11 <= 97) and (y+by = 114)) or
--	((x +bx + p11 >= 94 and x+bx + p11 <= 97) and (y+by = 115)) or
--	((x +bx + p11 >= 87 and x+bx + p11 <= 97) and (y +by >= 115 and y+by <= 119))
--
--	) and (counter="00010")
--
--	)
--
--		 or
--
--	
--
--	(
--
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p12 >= 75) and (x + bx + p12 <= 82) and (y + by = 29)) or
--	((x + bx + p12 >= 72) and (x + bx + p12 <= 85) and (y + by = 30)) or
--	((x + bx + p12 >= 70) and (x + bx + p12 <= 87) and (y + by = 31)) or
--	((x + bx + p12 >= 70) and (x + bx + p12 <= 89) and (y + by = 32)) or
--	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 33)) or
--	((x + bx + p12 >= 68) and (x + bx + p12 <= 90) and (y + by = 34)) or
--	((x + bx + p12 >= 66) and (x + bx + p12 <= 90) and (y + by = 35)) or
--	((x + bx + p12 >= 66) and (x + bx + p12 <= 90) and (y + by = 36)) or
--	((x + bx + p12 >= 66) and (x + bx + p12 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p12 >= 65) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 38)) or
--((((x + bx + p12 >= 65) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 39)) or
--((((x + bx + p12 >= 65) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 40)) or
--((((x + bx + p12 >= 65) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 41)) or
--((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 90))) and (y + by = 42)) or
--((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 90))) and (y + by = 43)) or
--((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 86) and (x + bx + p12 <= 89))) and (y + by = 44)) or
--((((x + bx + p12 >= 68) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 86) and (x + bx + p12 <= 89))) and (y + by = 45)) or
--((((x + bx + p12 >= 69) and (x + bx + p12 <= 76)) or (x + bx + p12 = 78) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 87))) and (y + by = 46)) or
--((((x + bx + p12 >= 71) and (x + bx + p12 <= 76)) or (x + bx + p12 = 78) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p12 >= 74) and (x + bx + p12 <= 83) and (y + by = 48)) or
--	((x + bx + p12 >= 77) and (x + bx + p12 <= 79) and (y + by = 49)) or
--	((((x + bx + p12 >= 71) and (x + bx + p12 <= 72)) or ((x + bx + p12 >= 85) and (x + bx + p12 <= 85))) and (y + by = 50)) or
--	((((x + bx + p12 >= 72) and (x + bx + p12 <= 75)) or ((x + bx + p12 >= 81) and (x + bx + p12 <= 85))) and (y + by = 51)) or
--	((x + bx + p12 >= 73) and (x + bx + p12 <= 84) and (y + by = 52)) or
--	((x + bx + p12 >= 74) and (x + bx + p12 <= 83) and (y + by = 53)) or
--	((x + bx + p12 >= 75) and (x + bx + p12 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p12 >= 66 and x+bx + p12 <= 67) or (x +bx + p12 >= 89 and x+bx + p12 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p12 >= 68 and x+bx + p12 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p12 >= 77 and x+bx + p12 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p12 >= 68) and (x + bx + p12 <= 76)) or ((x + bx + p12 >= 82) and (x + bx + p12 <= 89))) and (y + by = 81)) or
--	((((x + bx + p12 >= 68) and (x + bx + p12 <= 76)) or ((x + bx + p12 >= 82) and (x + bx + p12 <= 89))) and (y + by = 82)) or
--	((((x + bx + p12 >= 68) and (x + bx + p12 <= 78)) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 89))) and (y + by = 83)) or
--	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 84)) or
--	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 85)) or
--	((x + bx + p12 >= 69) and (x + bx + p12 <= 88) and (y + by = 86)) or
--	((x + bx + p12 >= 70) and (x + bx + p12 <= 88) and (y + by = 87)) or
--	((x + bx + p12 >= 72) and (x + bx + p12 <= 86) and (y + by = 88)) or
--	((x + bx + p12 >= 74) and (x + bx + p12 <= 84) and (y + by = 89)) or
--	((x + bx + p12 >= 75) and (x + bx + p12 <= 82) and (y + by = 90)) or
--	((x + bx + p12 >= 77) and (x + bx + p12 <= 80) and (y + by = 91)) or
--	((x + bx + p12 >= 78) and (x + bx + p12 <= 78) and (y + by = 92)) or
--	--droite tal3a
--		((x +bx + p12 >= 43 and x+bx + p12 <= 47) and (y+by = 43)) or
--	((x +bx + p12 >= 43 and x+bx + p12 <= 48) and (y+by = 44)) or
--	((x +bx + p12 >= 44 and x+bx + p12 <= 49) and (y+by = 45)) or
--	((x +bx + p12 >= 46 and x+bx + p12 <= 51) and (y+by = 46)) or
--	((x +bx + p12 >= 47 and x+bx + p12 <= 52) and (y+by = 47)) or
--	((x +bx + p12 >= 48 and x+bx + p12 <= 54) and (y+by = 48)) or
--	((x +bx + p12 >= 49 and x+bx + p12 <= 55) and (y+by = 49)) or
--	((x +bx + p12 >= 49 and x+bx + p12 <= 56) and (y+by = 50)) or
--	((x +bx + p12 >= 50 and x+bx + p12 <= 58) and (y+by = 51 ))or
--	((x +bx + p12 >= 51 and x+bx + p12 <= 59) and (y+by = 52 ))or
--	((x +bx + p12 >= 53 and x+bx + p12 <= 61) and (y+by = 53)) or
--	((x +bx + p12 >= 53 and x+bx + p12 <= 62) and (y+by = 54)) or
--	((x +bx + p12 >= 54 and x+bx + p12 <= 63) and (y+by = 55)) or
--	((x +bx + p12 >= 55 and x+bx + p12 <= 68) and (y+by = 56)) or
--	((x +bx + p12 >= 57 and x+bx + p12 <= 68) and (y+by = 57))or
--	((x +bx + p12 >= 58 and x+bx + p12 <= 68) and (y+by = 58)) or
--	((x +bx + p12 >= 60 and x+bx + p12 <= 68) and (y+by = 59)) or
--	((x +bx + p12 >= 61 and x+bx + p12 <= 67) and (y+by = 60)) or
--	((x +bx + p12 >= 62 and x+bx + p12 <= 66) and (y+by = 61)) or
--	((x +bx + p12 >= 64 and x+bx + p12 <= 66) and (y+by = 62)) or
--	((x +bx + p12 >= 65 and x+bx + p12 <= 66 ) and (y+by = 63)) or
--		--gauche metwiya
--	((x +bx + p12 >= 89 and x+bx + p12 <= 89) and (y+by = 57)) or
--	((x +bx + p12 >= 89 and x+bx + p12 <= 89) and (y+by = 58)) or
--	((x +bx + p12 >= 89 and x+bx + p12 <= 90) and (y+by = 59)) or
--	((x +bx + p12 >= 89 and x+bx + p12 <= 91) and (y+by = 60)) or
--	((x +bx + p12 >= 89 and x+bx + p12 <= 92) and (y+by = 61)) or
--	((x +bx + p12 >= 89 and x+bx + p12 <= 93) and (y+by = 62)) or
--	((x +bx + p12 >= 89 and x+bx + p12 <= 94) and (y+by = 63)) or
--	((x +bx + p12 >= 93 and x+bx + p12 <= 95) and (y+by = 64)) or
--	((x +bx + p12 >= 94 and x+bx + p12 <= 96) and (y+by = 65 ))or
--	((x +bx + p12 >= 95 and x+bx + p12 <= 97) and (y+by = 66 ))or
--	((x +bx + p12 >= 96 and x+bx + p12 <= 98) and (y+by = 67)) or
--	((x +bx + p12 >= 97 and x+bx + p12 <= 99) and (y+by = 68)) or
--	((x +bx + p12 >= 98 and x+bx + p12 <= 100) and (y+by = 69)) or
--	((x +bx + p12 >= 97 and x+bx + p12 <= 101) and (y+by = 70)) or
--	((x +bx + p12 >= 96 and x+bx + p12 <= 101) and (y+by = 71)) or
--	((x +bx + p12 >= 94 and x+bx + p12 <= 100) and (y+by = 72)) or
--	((x +bx + p12 >= 93 and x+bx + p12 <= 99) and (y+by = 73)) or
--	((x +bx + p12 >= 92 and x+bx + p12 <= 98) and (y+by = 74)) or
--	((x +bx + p12 >= 91 and x+bx + p12 <= 97) and (y+by = 75)) or
--	((x +bx + p12 >= 90 and x+bx + p12 <= 95) and (y+by = 76)) or
--	((x +bx + p12 >= 90 and x+bx + p12 <= 94 ) and (y+by = 77)) or
--	((x +bx + p12 >= 90 and x+bx + p12 <= 93 ) and (y+by = 78)) or
--	((x +bx + p12 >= 91 and x+bx + p12 <= 93 ) and (y+by = 79)) or
--	((x +bx + p12 >= 91 and x+bx + p12 <= 94 ) and (y+by = 80)) or
--	((x +bx + p12 >= 92 and x+bx + p12 <= 95 ) and (y+by = 81)) or
--	((x +bx + p12 >= 93 and x+bx + p12 <= 95 ) and (y+by = 82)) or
--	((x +bx + p12 >= 93 and x+bx + p12 <= 96 ) and (y+by = 83)) or
--	((x +bx + p12 >= 94 and x+bx + p12 <= 96 ) and (y+by = 84)) or
--		---droite mefto7in
--	((x +bx + p12 >= 69 and x+bx + p12 <= 71) and (y+by = 92)) or
--	((x +bx + p12 >= 69 and x+bx + p12 <= 71) and (y+by = 93)) or
--	((x +bx + p12 >= 67 and x+bx + p12 <= 71) and (y+by = 94)) or
--	((x +bx + p12 >= 66 and x+bx + p12 <= 71) and (y+by = 95)) or
--	((x +bx + p12 >= 65 and x+bx + p12 <= 70) and (y+by = 96)) or
--	((x +bx + p12 >= 64 and x+bx + p12 <= 69) and (y+by = 97)) or
--	((x +bx + p12 >= 63 and x+bx + p12 <= 66) and (y+by = 98)) or
--	((x +bx + p12 >= 62 and x+bx + p12 <= 66) and (y+by = 99)) or
--	((x +bx + p12 >= 61 and x+bx + p12 <= 65) and (y+by = 100)) or
--	((x +bx + p12 >= 60 and x+bx + p12 <= 64) and (y+by = 101)) or
--	((x +bx + p12 >= 61 and x+bx + p12 <= 63) and (y+by = 102)) or
--	((x +bx + p12 >= 61 and x+bx + p12 <= 63) and (y+by = 103)) or
--	((x +bx + p12 >= 62 and x+bx + p12 <= 63) and (y+by = 104)) or
--	((x +bx + p12 >= 62 and x+bx + p12 <= 64) and (y+by = 105)) or
--	((x +bx + p12 >= 63 and x+bx + p12 <= 64) and (y+by = 106)) or
--	((x +bx + p12 >= 63 and x+bx + p12 <= 65) and (y+by = 107)) or
--	((x +bx + p12 >= 64 and x+bx + p12 <= 65) and (y+by = 108)) or
--	((x +bx + p12 >= 64 and x+bx + p12 <= 66) and (y+by = 109)) or
--	((x +bx + p12 >= 65 and x+bx + p12 <= 66) and (y+by = 110)) or
--	((x +bx + p12 >= 65 and x+bx + p12 <= 67) and (y+by = 111)) or
--	((x +bx + p12 >= 66 and x+bx + p12 <= 68) and (y+by = 112)) or
--	((x +bx + p12 >= 66 and x+bx + p12 <= 69) and (y+by = 113)) or
--	((x +bx + p12 >= 66 and x+bx + p12 <= 70) and (y+by = 114)) or
--	((x +bx + p12 >= 67 and x+bx + p12 <= 70) and (y+by = 115)) or
--((x +bx + p12 >= 60 and x+bx + p12 <= 70) and (y +by >= 115 and y+by <= 119)) or
------gauche mkesla
--	((x +bx + p12 >= 83 and x+bx + p12 <= 87) and (y+by = 92)) or
--	((x +bx + p12 >= 83 and x+bx + p12 <= 87) and (y+by = 93)) or
--	((x +bx + p12 >= 83 and x+bx + p12 <= 87) and (y+by = 94)) or
--	((x +bx + p12 >= 84 and x+bx + p12 <= 87) and (y+by = 95)) or
--	((x +bx + p12 >= 84 and x+bx + p12 <= 87) and (y+by = 96)) or
--	((x +bx + p12 >= 85 and x+bx + p12 <= 87) and (y+by = 97)) or
--	((x +bx + p12 >= 85 and x+bx + p12 <= 88) and (y+by = 98)) or
--	((x +bx + p12 >= 85 and x+bx + p12 <= 89) and (y+by = 99)) or
--	((x +bx + p12 >= 86 and x+bx + p12 <= 89) and (y+by = 100))or
--	((x +bx + p12 >= 86 and x+bx + p12 <= 89) and (y+by = 101)) or
--	((x +bx + p12 >= 87 and x+bx + p12 <= 90) and (y+by = 102)) or
--	((x +bx + p12 >= 87 and x+bx + p12 <= 90) and (y+by = 103)) or
--	((x +bx + p12 >= 87 and x+bx + p12 <= 91) and (y+by = 104)) or
--	((x +bx + p12 >= 88 and x+bx + p12 <= 91) and (y+by = 105)) or
--	((x +bx + p12 >= 88 and x+bx + p12 <= 91) and (y+by = 106)) or
--	((x +bx + p12 >= 89 and x+bx + p12 <= 92) and (y+by = 107)) or
--	((x +bx + p12 >= 89 and x+bx + p12 <= 92) and (y+by = 108)) or
--	((x +bx + p12 >= 90 and x+bx + p12 <= 93) and (y+by = 109)) or
--	((x +bx + p12 >= 91 and x+bx + p12 <= 94) and (y+by = 110)) or
--	((x +bx + p12 >= 91 and x+bx + p12 <= 95) and (y+by = 111)) or
--	((x +bx + p12 >= 92 and x+bx + p12 <= 95) and (y+by = 112)) or
--	((x +bx + p12 >= 92 and x+bx + p12 <= 96) and (y+by = 113)) or
--	((x +bx + p12 >= 93 and x+bx + p12 <= 97) and (y+by = 114)) or
--	((x +bx + p12 >= 94 and x+bx + p12 <= 97) and (y+by = 115)) or
--	((x +bx + p12 >= 94 and x+bx + p12 <= 104) and (y +by >= 115 and y+by <= 119))
--	
--
--	) and (counter="00011"))
--
--	
--
--			 or
--
--	
--
--	(
--
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p13 >= 75) and (x + bx + p13 <= 82) and (y + by = 29)) or
--	((x + bx + p13 >= 72) and (x + bx + p13 <= 85) and (y + by = 30)) or
--	((x + bx + p13 >= 70) and (x + bx + p13 <= 87) and (y + by = 31)) or
--	((x + bx + p13 >= 70) and (x + bx + p13 <= 89) and (y + by = 32)) or
--	((x + bx + p13 >= 68) and (x + bx + p13 <= 89) and (y + by = 33)) or
--	((x + bx + p13 >= 68) and (x + bx + p13 <= 90) and (y + by = 34)) or
--	((x + bx + p13 >= 66) and (x + bx + p13 <= 90) and (y + by = 35)) or
--	((x + bx + p13 >= 66) and (x + bx + p13 <= 90) and (y + by = 36)) or
--	((x + bx + p13 >= 66) and (x + bx + p13 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p13 >= 65) and (x + bx + p13 <= 71)) or ((x + bx + p13 >= 76) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 91))) and (y + by = 38)) or
--((((x + bx + p13 >= 65) and (x + bx + p13 <= 71)) or ((x + bx + p13 >= 76) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 91))) and (y + by = 39)) or
--((((x + bx + p13 >= 65) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 91))) and (y + by = 40)) or
--((((x + bx + p13 >= 65) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 80)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 91))) and (y + by = 41)) or
--((((x + bx + p13 >= 66) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 80)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 90))) and (y + by = 42)) or
--((((x + bx + p13 >= 66) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 80)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 90))) and (y + by = 43)) or
--((((x + bx + p13 >= 66) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 86) and (x + bx + p13 <= 89))) and (y + by = 44)) or
--((((x + bx + p13 >= 68) and (x + bx + p13 <= 71)) or ((x + bx + p13 >= 76) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 86) and (x + bx + p13 <= 89))) and (y + by = 45)) or
--((((x + bx + p13 >= 69) and (x + bx + p13 <= 76)) or (x + bx + p13 = 78) or ((x + bx + p13 >= 80) and (x + bx + p13 <= 87))) and (y + by = 46)) or
--((((x + bx + p13 >= 71) and (x + bx + p13 <= 76)) or (x + bx + p13 = 78) or ((x + bx + p13 >= 80) and (x + bx + p13 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p13 >= 74) and (x + bx + p13 <= 83) and (y + by = 48)) or
--	((x + bx + p13 >= 77) and (x + bx + p13 <= 79) and (y + by = 49)) or
--	((((x + bx + p13 >= 71) and (x + bx + p13 <= 72)) or ((x + bx + p13 >= 85) and (x + bx + p13 <= 85))) and (y + by = 50)) or
--	((((x + bx + p13 >= 72) and (x + bx + p13 <= 75)) or ((x + bx + p13 >= 81) and (x + bx + p13 <= 85))) and (y + by = 51)) or
--	((x + bx + p13 >= 73) and (x + bx + p13 <= 84) and (y + by = 52)) or
--	((x + bx + p13 >= 74) and (x + bx + p13 <= 83) and (y + by = 53)) or
--	((x + bx + p13 >= 75) and (x + bx + p13 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p13 >= 66 and x+bx + p13 <= 67) or (x +bx + p13 >= 89 and x+bx + p13 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p13 >= 68 and x+bx + p13 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p13 >= 77 and x+bx + p13 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p13 >= 68) and (x + bx + p13 <= 76)) or ((x + bx + p13 >= 82) and (x + bx + p13 <= 89))) and (y + by = 81)) or
--	((((x + bx + p13 >= 68) and (x + bx + p13 <= 76)) or ((x + bx + p13 >= 82) and (x + bx + p13 <= 89))) and (y + by = 82)) or
--	((((x + bx + p13 >= 68) and (x + bx + p13 <= 78)) or ((x + bx + p13 >= 80) and (x + bx + p13 <= 89))) and (y + by = 83)) or
--	((x + bx + p13 >= 68) and (x + bx + p13 <= 89) and (y + by = 84)) or
--	((x + bx + p13 >= 68) and (x + bx + p13 <= 89) and (y + by = 85)) or
--	((x + bx + p13 >= 69) and (x + bx + p13 <= 88) and (y + by = 86)) or
--	((x + bx + p13 >= 70) and (x + bx + p13 <= 88) and (y + by = 87)) or
--	((x + bx + p13 >= 72) and (x + bx + p13 <= 86) and (y + by = 88)) or
--	((x + bx + p13 >= 74) and (x + bx + p13 <= 84) and (y + by = 89)) or
--	((x + bx + p13 >= 75) and (x + bx + p13 <= 82) and (y + by = 90)) or
--	((x + bx + p13 >= 77) and (x + bx + p13 <= 80) and (y + by = 91)) or
--	((x + bx + p13 >= 78) and (x + bx + p13 <= 78) and (y + by = 92)) or
--	--droite tal3a
--		((x +bx + p13 >= 43 and x+bx + p13 <= 47) and (y+by = 43)) or
--	((x +bx + p13 >= 43 and x+bx + p13 <= 48) and (y+by = 44)) or
--	((x +bx + p13 >= 44 and x+bx + p13 <= 49) and (y+by = 45)) or
--	((x +bx + p13 >= 46 and x+bx + p13 <= 51) and (y+by = 46)) or
--	((x +bx + p13 >= 47 and x+bx + p13 <= 52) and (y+by = 47)) or
--	((x +bx + p13 >= 48 and x+bx + p13 <= 54) and (y+by = 48)) or
--	((x +bx + p13 >= 49 and x+bx + p13 <= 55) and (y+by = 49)) or
--	((x +bx + p13 >= 49 and x+bx + p13 <= 56) and (y+by = 50)) or
--	((x +bx + p13 >= 50 and x+bx + p13 <= 58) and (y+by = 51 ))or
--	((x +bx + p13 >= 51 and x+bx + p13 <= 59) and (y+by = 52 ))or
--	((x +bx + p13 >= 53 and x+bx + p13 <= 61) and (y+by = 53)) or
--	((x +bx + p13 >= 53 and x+bx + p13 <= 62) and (y+by = 54)) or
--	((x +bx + p13 >= 54 and x+bx + p13 <= 63) and (y+by = 55)) or
--	((x +bx + p13 >= 55 and x+bx + p13 <= 68) and (y+by = 56)) or
--	((x +bx + p13 >= 57 and x+bx + p13 <= 68) and (y+by = 57))or
--	((x +bx + p13 >= 58 and x+bx + p13 <= 68) and (y+by = 58)) or
--	((x +bx + p13 >= 60 and x+bx + p13 <= 68) and (y+by = 59)) or
--	((x +bx + p13 >= 61 and x+bx + p13 <= 67) and (y+by = 60)) or
--	((x +bx + p13 >= 62 and x+bx + p13 <= 66) and (y+by = 61)) or
--	((x +bx + p13 >= 64 and x+bx + p13 <= 66) and (y+by = 62)) or
--	((x +bx + p13 >= 65 and x+bx + p13 <= 66 ) and (y+by = 63)) or
--		--gauche metwiya
--	((x +bx + p13 >= 89 and x+bx + p13 <= 89) and (y+by = 57)) or
--	((x +bx + p13 >= 89 and x+bx + p13 <= 89) and (y+by = 58)) or
--	((x +bx + p13 >= 89 and x+bx + p13 <= 90) and (y+by = 59)) or
--	((x +bx + p13 >= 89 and x+bx + p13 <= 91) and (y+by = 60)) or
--	((x +bx + p13 >= 89 and x+bx + p13 <= 92) and (y+by = 61)) or
--	((x +bx + p13 >= 89 and x+bx + p13 <= 93) and (y+by = 62)) or
--	((x +bx + p13 >= 89 and x+bx + p13 <= 94) and (y+by = 63)) or
--	((x +bx + p13 >= 93 and x+bx + p13 <= 95) and (y+by = 64)) or
--	((x +bx + p13 >= 94 and x+bx + p13 <= 96) and (y+by = 65 ))or
--	((x +bx + p13 >= 95 and x+bx + p13 <= 97) and (y+by = 66 ))or
--	((x +bx + p13 >= 96 and x+bx + p13 <= 98) and (y+by = 67)) or
--	((x +bx + p13 >= 97 and x+bx + p13 <= 99) and (y+by = 68)) or
--	((x +bx + p13 >= 98 and x+bx + p13 <= 100) and (y+by = 69)) or
--	((x +bx + p13 >= 97 and x+bx + p13 <= 101) and (y+by = 70)) or
--	((x +bx + p13 >= 96 and x+bx + p13 <= 101) and (y+by = 71)) or
--	((x +bx + p13 >= 94 and x+bx + p13 <= 100) and (y+by = 72)) or
--	((x +bx + p13 >= 93 and x+bx + p13 <= 99) and (y+by = 73)) or
--	((x +bx + p13 >= 92 and x+bx + p13 <= 98) and (y+by = 74)) or
--	((x +bx + p13 >= 91 and x+bx + p13 <= 97) and (y+by = 75)) or
--	((x +bx + p13 >= 90 and x+bx + p13 <= 95) and (y+by = 76)) or
--	((x +bx + p13 >= 90 and x+bx + p13 <= 94 ) and (y+by = 77)) or
--	((x +bx + p13 >= 90 and x+bx + p13 <= 93 ) and (y+by = 78)) or
--	((x +bx + p13 >= 91 and x+bx + p13 <= 93 ) and (y+by = 79)) or
--	((x +bx + p13 >= 91 and x+bx + p13 <= 94 ) and (y+by = 80)) or
--	((x +bx + p13 >= 92 and x+bx + p13 <= 95 ) and (y+by = 81)) or
--	((x +bx + p13 >= 93 and x+bx + p13 <= 95 ) and (y+by = 82)) or
--	((x +bx + p13 >= 93 and x+bx + p13 <= 96 ) and (y+by = 83)) or
--	((x +bx + p13 >= 94 and x+bx + p13 <= 96 ) and (y+by = 84)) or
--		---droite mefto7in
--	((x +bx + p13 >= 69 and x+bx + p13 <= 71) and (y+by = 92)) or
--	((x +bx + p13 >= 69 and x+bx + p13 <= 71) and (y+by = 93)) or
--	((x +bx + p13 >= 67 and x+bx + p13 <= 71) and (y+by = 94)) or
--	((x +bx + p13 >= 66 and x+bx + p13 <= 71) and (y+by = 95)) or
--	((x +bx + p13 >= 65 and x+bx + p13 <= 70) and (y+by = 96)) or
--	((x +bx + p13 >= 64 and x+bx + p13 <= 69) and (y+by = 97)) or
--	((x +bx + p13 >= 63 and x+bx + p13 <= 66) and (y+by = 98)) or
--	((x +bx + p13 >= 62 and x+bx + p13 <= 66) and (y+by = 99)) or
--	((x +bx + p13 >= 61 and x+bx + p13 <= 65) and (y+by = 100)) or
--	((x +bx + p13 >= 60 and x+bx + p13 <= 64) and (y+by = 101)) or
--	((x +bx + p13 >= 61 and x+bx + p13 <= 63) and (y+by = 102)) or
--	((x +bx + p13 >= 61 and x+bx + p13 <= 63) and (y+by = 103)) or
--	((x +bx + p13 >= 62 and x+bx + p13 <= 63) and (y+by = 104)) or
--	((x +bx + p13 >= 62 and x+bx + p13 <= 64) and (y+by = 105)) or
--	((x +bx + p13 >= 63 and x+bx + p13 <= 64) and (y+by = 106)) or
--	((x +bx + p13 >= 63 and x+bx + p13 <= 65) and (y+by = 107)) or
--	((x +bx + p13 >= 64 and x+bx + p13 <= 65) and (y+by = 108)) or
--	((x +bx + p13 >= 64 and x+bx + p13 <= 66) and (y+by = 109)) or
--	((x +bx + p13 >= 65 and x+bx + p13 <= 66) and (y+by = 110)) or
--	((x +bx + p13 >= 65 and x+bx + p13 <= 67) and (y+by = 111)) or
--	((x +bx + p13 >= 66 and x+bx + p13 <= 68) and (y+by = 112)) or
--	((x +bx + p13 >= 66 and x+bx + p13 <= 69) and (y+by = 113)) or
--	((x +bx + p13 >= 66 and x+bx + p13 <= 70) and (y+by = 114)) or
--	((x +bx + p13 >= 67 and x+bx + p13 <= 70) and (y+by = 115)) or
--((x +bx + p13 >= 60 and x+bx + p13 <= 70) and (y +by >= 115 and y+by <= 119)) or
------gauche mkesla
--	((x +bx + p13 >= 83 and x+bx + p13 <= 87) and (y+by = 92)) or
--	((x +bx + p13 >= 83 and x+bx + p13 <= 87) and (y+by = 93)) or
--	((x +bx + p13 >= 83 and x+bx + p13 <= 87) and (y+by = 94)) or
--	((x +bx + p13 >= 84 and x+bx + p13 <= 87) and (y+by = 95)) or
--	((x +bx + p13 >= 84 and x+bx + p13 <= 87) and (y+by = 96)) or
--	((x +bx + p13 >= 85 and x+bx + p13 <= 87) and (y+by = 97)) or
--	((x +bx + p13 >= 85 and x+bx + p13 <= 88) and (y+by = 98)) or
--	((x +bx + p13 >= 85 and x+bx + p13 <= 89) and (y+by = 99)) or
--	((x +bx + p13 >= 86 and x+bx + p13 <= 89) and (y+by = 100))or
--	((x +bx + p13 >= 86 and x+bx + p13 <= 89) and (y+by = 101)) or
--	((x +bx + p13 >= 87 and x+bx + p13 <= 90) and (y+by = 102)) or
--	((x +bx + p13 >= 87 and x+bx + p13 <= 90) and (y+by = 103)) or
--	((x +bx + p13 >= 87 and x+bx + p13 <= 91) and (y+by = 104)) or
--	((x +bx + p13 >= 88 and x+bx + p13 <= 91) and (y+by = 105)) or
--	((x +bx + p13 >= 88 and x+bx + p13 <= 91) and (y+by = 106)) or
--	((x +bx + p13 >= 89 and x+bx + p13 <= 92) and (y+by = 107)) or
--	((x +bx + p13 >= 89 and x+bx + p13 <= 92) and (y+by = 108)) or
--	((x +bx + p13 >= 90 and x+bx + p13 <= 93) and (y+by = 109)) or
--	((x +bx + p13 >= 91 and x+bx + p13 <= 94) and (y+by = 110)) or
--	((x +bx + p13 >= 91 and x+bx + p13 <= 95) and (y+by = 111)) or
--	((x +bx + p13 >= 92 and x+bx + p13 <= 95) and (y+by = 112)) or
--	((x +bx + p13 >= 92 and x+bx + p13 <= 96) and (y+by = 113)) or
--	((x +bx + p13 >= 93 and x+bx + p13 <= 97) and (y+by = 114)) or
--	((x +bx + p13 >= 94 and x+bx + p13 <= 97) and (y+by = 115)) or
--	((x +bx + p13 >= 87 and x+bx + p13 <= 97) and (y +by >= 115 and y+by <= 119))
--	
--	
--
--	) and (counter="00100"))	
--
--	or
--
--	(
--
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p12 >= 75) and (x + bx + p12 <= 82) and (y + by = 29)) or
--	((x + bx + p12 >= 72) and (x + bx + p12 <= 85) and (y + by = 30)) or
--	((x + bx + p12 >= 70) and (x + bx + p12 <= 87) and (y + by = 31)) or
--	((x + bx + p12 >= 70) and (x + bx + p12 <= 89) and (y + by = 32)) or
--	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 33)) or
--	((x + bx + p12 >= 68) and (x + bx + p12 <= 90) and (y + by = 34)) or
--	((x + bx + p12 >= 66) and (x + bx + p12 <= 90) and (y + by = 35)) or
--	((x + bx + p12 >= 66) and (x + bx + p12 <= 90) and (y + by = 36)) or
--	((x + bx + p12 >= 66) and (x + bx + p12 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p12 >= 65) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 38)) or
--((((x + bx + p12 >= 65) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 39)) or
--((((x + bx + p12 >= 65) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 40)) or
--((((x + bx + p12 >= 65) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 41)) or
--((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 90))) and (y + by = 42)) or
--((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 90))) and (y + by = 43)) or
--((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 86) and (x + bx + p12 <= 89))) and (y + by = 44)) or
--((((x + bx + p12 >= 68) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 86) and (x + bx + p12 <= 89))) and (y + by = 45)) or
--((((x + bx + p12 >= 69) and (x + bx + p12 <= 76)) or (x + bx + p12 = 78) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 87))) and (y + by = 46)) or
--((((x + bx + p12 >= 71) and (x + bx + p12 <= 76)) or (x + bx + p12 = 78) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p12 >= 74) and (x + bx + p12 <= 83) and (y + by = 48)) or
--	((x + bx + p12 >= 77) and (x + bx + p12 <= 79) and (y + by = 49)) or
--	((((x + bx + p12 >= 71) and (x + bx + p12 <= 72)) or ((x + bx + p12 >= 85) and (x + bx + p12 <= 85))) and (y + by = 50)) or
--	((((x + bx + p12 >= 72) and (x + bx + p12 <= 75)) or ((x + bx + p12 >= 81) and (x + bx + p12 <= 85))) and (y + by = 51)) or
--	((x + bx + p12 >= 73) and (x + bx + p12 <= 84) and (y + by = 52)) or
--	((x + bx + p12 >= 74) and (x + bx + p12 <= 83) and (y + by = 53)) or
--	((x + bx + p12 >= 75) and (x + bx + p12 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p12 >= 66 and x+bx + p12 <= 67) or (x +bx + p12 >= 89 and x+bx + p12 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p12 >= 68 and x+bx + p12 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p12 >= 77 and x+bx + p12 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p12 >= 68) and (x + bx + p12 <= 76)) or ((x + bx + p12 >= 82) and (x + bx + p12 <= 89))) and (y + by = 81)) or
--	((((x + bx + p12 >= 68) and (x + bx + p12 <= 76)) or ((x + bx + p12 >= 82) and (x + bx + p12 <= 89))) and (y + by = 82)) or
--	((((x + bx + p12 >= 68) and (x + bx + p12 <= 78)) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 89))) and (y + by = 83)) or
--	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 84)) or
--	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 85)) or
--	((x + bx + p12 >= 69) and (x + bx + p12 <= 88) and (y + by = 86)) or
--	((x + bx + p12 >= 70) and (x + bx + p12 <= 88) and (y + by = 87)) or
--	((x + bx + p12 >= 72) and (x + bx + p12 <= 86) and (y + by = 88)) or
--	((x + bx + p12 >= 74) and (x + bx + p12 <= 84) and (y + by = 89)) or
--	((x + bx + p12 >= 75) and (x + bx + p12 <= 82) and (y + by = 90)) or
--	((x + bx + p12 >= 77) and (x + bx + p12 <= 80) and (y + by = 91)) or
--	((x + bx + p12 >= 78) and (x + bx + p12 <= 78) and (y + by = 92)) or
--	------------------Mains normal
--	
--	((y +by >= 60 and y+by <= 64) and (x+bx + p12 = 67 or x+bx + p12 = 90)) or
--	((y +by >= 60 and y+by <= 64) and (x+bx + p12 = 66 or x+bx + p12 = 91)) or
--	((y +by >= 60 and y+by <= 66) and (x+bx + p12 = 65 or x+bx + p12 = 92)) or
--	((y +by >= 61 and y+by <= 67) and (x+bx + p12 = 64 or x+bx + p12 = 93)) or
--	((y +by >= 63 and y+by <= 69) and (x+bx + p12 = 63 or x+bx + p12 = 94)) or
--	((y +by >= 65 and y+by <= 83) and (x+bx + p12 = 62 or x+bx + p12 = 95)) or
--	((y +by >= 66 and y+by <= 83) and (x+bx + p12 = 61 or x+bx + p12 = 96)) or
--	((y +by >= 68 and y+by <= 84) and (x+bx + p12 = 60 or x+bx + p12 = 97)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p12 = 59 or x+bx + p12 = 98)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p12 = 58 or x+bx + p12 = 99)) or
--		---droite leldakhel
--	((x +bx + p12 >= 71 and x+bx + p12 <= 6) and (y+by = 92)) or
--	((x +bx + p12 >= 71 and x+bx + p12 <=77) and (y+by = 93)) or
--	((x +bx + p12 >= 71 and x+bx + p12 <= 77) and (y+by = 94)) or
--	((x +bx + p12 >= 72 and x+bx + p12 <= 77) and (y+by = 95)) or
--	((x +bx + p12 >= 72 and x+bx + p12 <= 77) and (y+by = 96)) or
--	((x +bx + p12 >= 72 and x+bx + p12 <= 77) and (y+by = 97)) or
--	((x +bx + p12 >= 73 and x+bx + p12 <= 77) and (y+by = 98)) or
--	((x +bx + p12 >= 73 and x+bx + p12 <= 77) and (y+by = 99)) or
--	((x +bx + p12 >= 74 and x+bx + p12 <= 77) and (y+by = 100)) or
--	((x +bx + p12 >= 74 and x+bx + p12 <= 77) and (y+by = 101)) or
--	((x +bx + p12 >= 74 and x+bx + p12 <= 77) and (y+by = 102)) or
--	((x +bx + p12 >= 74 and x+bx + p12 <= 77) and (y+by = 103)) or
--	((x +bx + p12 >= 73 and x+bx + p12 <= 77) and (y+by = 104)) or
--	((x +bx + p12 >= 73 and x+bx + p12 <= 77) and (y+by = 105)) or
--	((x +bx + p12 >= 72 and x+bx + p12 <= 76) and (y+by = 106)) or
--	((x +bx + p12 >= 71 and x+bx + p12 <= 75) and (y+by = 107)) or
--	((x +bx + p12 >= 70 and x+bx + p12 <= 75) and (y+by = 108)) or
--	((x +bx + p12 >= 70 and x+bx + p12 <= 74) and (y+by = 109)) or
--	((x +bx + p12 >= 69 and x+bx + p12 <= 73) and (y+by = 110)) or
--	((x +bx + p12 >= 68 and x+bx + p12 <= 72) and (y+by = 111)) or
--	((x +bx + p12 >= 67 and x+bx + p12 <= 71) and (y+by = 112)) or
--	((x +bx + p12 >= 67 and x+bx + p12 <= 70) and (y+by = 113)) or
--	((x +bx + p12 >= 66 and x+bx + p12 <= 69) and (y+by = 114)) or
--	((x +bx + p12 >= 66 and x+bx + p12 <= 70) and (y+by = 115)) or
--	((x +bx + p12 >= 66 and x+bx + p12 <= 74) and (y+by = 116)) or
--	((x +bx + p12 >= 67 and x+bx + p12 <= 76) and (y+by = 117)) or
--	((x +bx + p12 >= 69 and x+bx + p12 <= 76) and (y+by = 118)) or
--	((x +bx + p12 >= 69 and x+bx + p12 <= 76) and (y+by = 118)) or
--
--		----gauche leldakhel
--	((x +bx + p12 >= 80 and x+bx + p12 <= 87) and (y+by = 92)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 87) and (y+by = 93)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 86) and (y+by = 94)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 86) and (y+by = 95)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 85) and (y+by = 96)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 85) and (y+by = 97)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 84) and (y+by = 98)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 84) and (y+by = 99)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 100)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 101)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 102)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 103)) or
--	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 104)) or
--	((x +bx + p12 >= 81 and x+bx + p12 <= 84) and (y+by = 105)) or
--	((x +bx + p12 >= 81 and x+bx + p12 <= 84) and (y+by = 106)) or
--	((x +bx + p12 >= 82 and x+bx + p12 <= 85) and (y+by = 107)) or
--	((x +bx + p12 >= 83 and x+bx + p12 <= 86) and (y+by = 108)) or
--	((x +bx + p12 >= 83 and x+bx + p12 <= 87) and (y+by = 109)) or
--	((x +bx + p12 >= 84 and x+bx + p12 <= 87) and (y+by = 110)) or
--	((x +bx + p12 >= 85 and x+bx + p12 <= 88) and (y+by = 111)) or
--	((x +bx + p12 >= 86 and x+bx + p12 <= 89) and (y+by = 112)) or
--	((x +bx + p12 >= 87 and x+bx + p12 <= 91) and (y+by = 113)) or
--	((x +bx + p12 >= 88 and x+bx + p12 <= 92) and (y+by = 114)) or
--	((x +bx + p12 >= 88 and x+bx + p12 <= 92) and (y+by = 115)) or
--	((x +bx + p12 >= 86 and x+bx + p12 <= 92) and (y+by = 116)) or
--	((x +bx + p12 >= 85 and x+bx + p12 <= 92) and (y+by = 117)) or
--	((x +bx + p12 >= 83 and x+bx + p12 <= 90) and (y+by = 118)) 
--
--	
--
--	) and (counter="00101"))		 or
--
--	
--
--	(
--
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p11 >= 75) and (x + bx + p11 <= 82) and (y + by = 29)) or
--	((x + bx + p11 >= 72) and (x + bx + p11 <= 85) and (y + by = 30)) or
--	((x + bx + p11 >= 70) and (x + bx + p11 <= 87) and (y + by = 31)) or
--	((x + bx + p11 >= 70) and (x + bx + p11 <= 89) and (y + by = 32)) or
--	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 33)) or
--	((x + bx + p11 >= 68) and (x + bx + p11 <= 90) and (y + by = 34)) or
--	((x + bx + p11 >= 66) and (x + bx + p11 <= 90) and (y + by = 35)) or
--	((x + bx + p11 >= 66) and (x + bx + p11 <= 90) and (y + by = 36)) or
--	((x + bx + p11 >= 66) and (x + bx + p11 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p11 >= 65) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 38)) or
--((((x + bx + p11 >= 65) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 39)) or
--((((x + bx + p11 >= 65) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 40)) or
--((((x + bx + p11 >= 65) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 41)) or
--((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 90))) and (y + by = 42)) or
--((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 90))) and (y + by = 43)) or
--((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 86) and (x + bx + p11 <= 89))) and (y + by = 44)) or
--((((x + bx + p11 >= 68) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 86) and (x + bx + p11 <= 89))) and (y + by = 45)) or
--((((x + bx + p11 >= 69) and (x + bx + p11 <= 76)) or (x + bx + p11 = 78) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 87))) and (y + by = 46)) or
--((((x + bx + p11 >= 71) and (x + bx + p11 <= 76)) or (x + bx + p11 = 78) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p11 >= 74) and (x + bx + p11 <= 83) and (y + by = 48)) or
--	((x + bx + p11 >= 77) and (x + bx + p11 <= 79) and (y + by = 49)) or
--	((((x + bx + p11 >= 71) and (x + bx + p11 <= 72)) or ((x + bx + p11 >= 85) and (x + bx + p11 <= 85))) and (y + by = 50)) or
--	((((x + bx + p11 >= 72) and (x + bx + p11 <= 75)) or ((x + bx + p11 >= 81) and (x + bx + p11 <= 85))) and (y + by = 51)) or
--	((x + bx + p11 >= 73) and (x + bx + p11 <= 84) and (y + by = 52)) or
--	((x + bx + p11 >= 74) and (x + bx + p11 <= 83) and (y + by = 53)) or
--	((x + bx + p11 >= 75) and (x + bx + p11 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p11 >= 66 and x+bx + p11 <= 67) or (x +bx + p11 >= 89 and x+bx + p11 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p11 >= 68 and x+bx + p11 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p11 >= 77 and x+bx + p11 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p11 >= 68) and (x + bx + p11 <= 76)) or ((x + bx + p11 >= 82) and (x + bx + p11 <= 89))) and (y + by = 81)) or
--	((((x + bx + p11 >= 68) and (x + bx + p11 <= 76)) or ((x + bx + p11 >= 82) and (x + bx + p11 <= 89))) and (y + by = 82)) or
--	((((x + bx + p11 >= 68) and (x + bx + p11 <= 78)) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 89))) and (y + by = 83)) or
--	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 84)) or
--	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 85)) or
--	((x + bx + p11 >= 69) and (x + bx + p11 <= 88) and (y + by = 86)) or
--	((x + bx + p11 >= 70) and (x + bx + p11 <= 88) and (y + by = 87)) or
--	((x + bx + p11 >= 72) and (x + bx + p11 <= 86) and (y + by = 88)) or
--	((x + bx + p11 >= 74) and (x + bx + p11 <= 84) and (y + by = 89)) or
--	((x + bx + p11 >= 75) and (x + bx + p11 <= 82) and (y + by = 90)) or
--	((x + bx + p11 >= 77) and (x + bx + p11 <= 80) and (y + by = 91)) or
--	((x + bx + p11 >= 78) and (x + bx + p11 <= 78) and (y + by = 92)) or
--	------------------Mains normal
--	
--	((y +by >= 60 and y+by <= 64) and (x+bx + p11 = 67 or x+bx + p11 = 90)) or
--	((y +by >= 60 and y+by <= 64) and (x+bx + p11 = 66 or x+bx + p11 = 91)) or
--	((y +by >= 60 and y+by <= 66) and (x+bx + p11 = 65 or x+bx + p11 = 92)) or
--	((y +by >= 61 and y+by <= 67) and (x+bx + p11 = 64 or x+bx + p11 = 93)) or
--	((y +by >= 63 and y+by <= 69) and (x+bx + p11 = 63 or x+bx + p11 = 94)) or
--	((y +by >= 65 and y+by <= 83) and (x+bx + p11 = 62 or x+bx + p11 = 95)) or
--	((y +by >= 66 and y+by <= 83) and (x+bx + p11 = 61 or x+bx + p11 = 96)) or
--	((y +by >= 68 and y+by <= 84) and (x+bx + p11 = 60 or x+bx + p11 = 97)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p11 = 59 or x+bx + p11 = 98)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p11 = 58 or x+bx + p11 = 99)) or
--	---droite layer 7
--	((x +bx + p11 >= 71 and x+bx + p11 <= 74) and (y+by = 92)) or
--	((x +bx + p11 >= 70 and x+bx + p11 <=74 )and (y+by = 93)) or
--	((x +bx + p11 >= 69 and x+bx + p11 <= 74) and (y+by = 94)) or
--	((x +bx + p11 >= 68 and x+bx + p11 <= 74) and (y+by = 95)) or
--	((x +bx + p11 >= 66 and x+bx + p11 <= 72) and (y+by = 96)) or
--	((x +bx + p11 >= 65 and x+bx + p11 <= 70) and (y+by = 97)) or
--	((x +bx + p11 >= 65 and x+bx + p11 <= 69) and (y+by = 98)) or
--	((x +bx + p11 >= 64 and x+bx + p11 <= 67) and (y+by = 99)) or
--	((x +bx + p11 >= 63 and x+bx + p11 <= 66) and (y+by = 100)) or
--	((x +bx + p11 >= 62 and x+bx + p11 <= 65) and (y+by = 101)) or
--	((x +bx + p11 >= 62 and x+bx + p11 <= 65) and (y+by = 102)) or
--	((x +bx + p11 >= 62 and x+bx + p11 <= 66) and (y+by = 103)) or
--	((x +bx + p11 >= 63 and x+bx + p11 <= 67) and (y+by = 104)) or
--	((x +bx + p11 >= 63 and x+bx + p11 <= 68) and (y+by = 105)) or
--	((x +bx + p11 >= 64 and x+bx + p11 <= 69) and (y+by = 106)) or
--	((x +bx + p11 >= 65 and x+bx + p11 <= 70) and (y+by = 107)) or
--	((x +bx + p11 >= 66 and x+bx + p11 <= 71) and (y+by = 108)) or
--	((x +bx + p11 >= 66 and x+bx + p11 <= 72) and (y+by = 109)) or
--	((x +bx + p11 >= 67 and x+bx + p11 <= 73) and (y+by = 110)) or
--	((x +bx + p11 >= 68 and x+bx + p11 <= 74) and (y+by = 111)) or
--	((x +bx + p11 >= 68 and x+bx + p11 <= 75) and (y+by = 112)) or
--	((x +bx + p11 >= 69 and x+bx + p11 <= 75) and (y+by = 113)) or
--	((x +bx + p11 >= 70 and x+bx + p11 <= 75) and (y+by = 114)) or
--	--((x +bx + p11 >= 66 and x+bx + p11 <= 70) and (y+by = 115)) or
--((x +bx + p11 >= 65 and x+bx + p11 <= 75) and (y +by >= 115 and y+by <= 119)) or
------gauche layer7
--	((x +bx + p11 >= 83 and x+bx + p11 <= 86) and (y+by = 92)) or
--	((x +bx + p11 >= 83 and x+bx + p11 <=87 )and (y+by = 93)) or
--	((x +bx + p11 >= 83 and x+bx + p11 <= 88) and (y+by = 94)) or
--	((x +bx + p11 >= 83 and x+bx + p11 <= 90) and (y+by = 95)) or
--	((x +bx + p11 >= 84 and x+bx + p11 <= 91) and (y+by = 96)) or
--	((x +bx + p11 >= 85 and x+bx + p11 <= 93) and (y+by = 97)) or
--	((x +bx + p11 >= 87 and x+bx + p11 <= 94) and (y+by = 98)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 94) and (y+by = 99)) or
--	((x +bx + p11 >= 90 and x+bx + p11 <= 93) and (y+by = 100)) or
--	((x +bx + p11 >= 91 and x+bx + p11 <= 93) and (y+by = 101)) or
--	((x +bx + p11 >= 90 and x+bx + p11 <= 92) and (y+by = 102)) or
--	((x +bx + p11 >= 89 and x+bx + p11 <= 92) and (y+by = 103)) or
--	((x +bx + p11 >= 88 and x+bx + p11 <= 91) and (y+by = 104)) or
--	((x +bx + p11 >= 87 and x+bx + p11 <= 91) and (y+by = 105)) or
--	((x +bx + p11 >= 86 and x+bx + p11 <= 90) and (y+by = 106)) or
--	((x +bx + p11 >= 85 and x+bx + p11 <= 90) and (y+by = 107)) or
--	((x +bx + p11 >= 84 and x+bx + p11 <= 89) and (y+by = 108)) or
--	((x +bx + p11 >= 84 and x+bx + p11 <= 89) and (y+by = 109)) or
--	((x +bx + p11 >= 84 and x+bx + p11 <= 89) and (y+by = 110)) or
--	((x +bx + p11 >= 83 and x+bx + p11 <= 88) and (y+by = 111)) or
--	((x +bx + p11 >= 83 and x+bx + p11 <= 86) and (y+by = 112)) or
--	((x +bx + p11 >= 83 and x+bx + p11 <= 86) and (y+by = 113)) or
--	((x +bx + p11 >= 83 and x+bx + p11 <= 89) and (y+by = 114)) or
--	--((x +bx + p11 >= 66 and x+bx + p11 <= 70) and (y+by = 115)) or
--((x +bx + p11 >= 83 and x+bx + p11 <= 93) and (y +by >= 115 and y+by <= 119))
--
--	) and (counter="00110"))
--
--		
--
--		or
--
--	
--
--	(
--
----**********************************************************************11*******************************************************************
--		(((x + bx  >= 75) and (x + bx  <= 82) and (y + by = 29)) or
--	((x + bx  >= 72) and (x + bx  <= 85) and (y + by = 30)) or
--	((x + bx  >= 70) and (x + bx  <= 87) and (y + by = 31)) or
--	((x + bx  >= 70) and (x + bx  <= 89) and (y + by = 32)) or
--	((x + bx  >= 68) and (x + bx  <= 89) and (y + by = 33)) or
--	((x + bx  >= 68) and (x + bx  <= 90) and (y + by = 34)) or
--	((x + bx  >= 66) and (x + bx  <= 90) and (y + by = 35)) or
--	((x + bx  >= 66) and (x + bx  <= 90) and (y + by = 36)) or
--	((x + bx  >= 66) and (x + bx  <= 91) and (y + by = 37)) or
--	
--((((x + bx  >= 65) and (x + bx  <= 71)) or ((x + bx  >= 76) and (x + bx  <= 81)) or ((x + bx  >= 87) and (x + bx  <= 91))) and (y + by = 38)) or
--((((x + bx  >= 65) and (x + bx  <= 71)) or ((x + bx  >= 76) and (x + bx  <= 81)) or ((x + bx  >= 87) and (x + bx  <= 91))) and (y + by = 39)) or
--((((x + bx  >= 65) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 81)) or ((x + bx  >= 87) and (x + bx  <= 91))) and (y + by = 40)) or
--((((x + bx  >= 65) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 80)) or ((x + bx  >= 87) and (x + bx  <= 91))) and (y + by = 41)) or
--((((x + bx  >= 66) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 80)) or ((x + bx  >= 87) and (x + bx  <= 90))) and (y + by = 42)) or
--((((x + bx  >= 66) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 80)) or ((x + bx  >= 87) and (x + bx  <= 90))) and (y + by = 43)) or
--((((x + bx  >= 66) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 81)) or ((x + bx  >= 86) and (x + bx  <= 89))) and (y + by = 44)) or
--((((x + bx  >= 68) and (x + bx  <= 71)) or ((x + bx  >= 76) and (x + bx  <= 81)) or ((x + bx  >= 86) and (x + bx  <= 89))) and (y + by = 45)) or
--((((x + bx  >= 69) and (x + bx  <= 76)) or (x + bx  = 78) or ((x + bx  >= 80) and (x + bx  <= 87))) and (y + by = 46)) or
--((((x + bx  >= 71) and (x + bx  <= 76)) or (x + bx  = 78) or ((x + bx  >= 80) and (x + bx  <= 87))) and (y + by = 47)) or
--
--	((x + bx  >= 74) and (x + bx  <= 83) and (y + by = 48)) or
--	((x + bx  >= 77) and (x + bx  <= 79) and (y + by = 49)) or
--	((((x + bx  >= 71) and (x + bx  <= 72)) or ((x + bx  >= 85) and (x + bx  <= 85))) and (y + by = 50)) or
--	((((x + bx  >= 72) and (x + bx  <= 75)) or ((x + bx  >= 81) and (x + bx  <= 85))) and (y + by = 51)) or
--	((x + bx  >= 73) and (x + bx  <= 84) and (y + by = 52)) or
--	((x + bx  >= 74) and (x + bx  <= 83) and (y + by = 53)) or
--	((x + bx  >= 75) and (x + bx  <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx  >= 66 and x+bx  <= 67) or (x +bx  >= 89 and x+bx  <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx  >= 68 and x+bx  <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx  >= 77 and x+bx  <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx  >= 68) and (x + bx  <= 76)) or ((x + bx  >= 82) and (x + bx  <= 89))) and (y + by = 81)) or
--	((((x + bx  >= 68) and (x + bx  <= 76)) or ((x + bx  >= 82) and (x + bx  <= 89))) and (y + by = 82)) or
--	((((x + bx  >= 68) and (x + bx  <= 78)) or ((x + bx  >= 80) and (x + bx  <= 89))) and (y + by = 83)) or
--	((x + bx  >= 68) and (x + bx  <= 89) and (y + by = 84)) or
--	((x + bx  >= 68) and (x + bx  <= 89) and (y + by = 85)) or
--	((x + bx  >= 69) and (x + bx  <= 88) and (y + by = 86)) or
--	((x + bx  >= 70) and (x + bx  <= 88) and (y + by = 87)) or
--	((x + bx  >= 72) and (x + bx  <= 86) and (y + by = 88)) or
--	((x + bx  >= 74) and (x + bx  <= 84) and (y + by = 89)) or
--	((x + bx  >= 75) and (x + bx  <= 82) and (y + by = 90)) or
--	((x + bx  >= 77) and (x + bx  <= 80) and (y + by = 91)) or
--	((x + bx  >= 78) and (x + bx  <= 78) and (y + by = 92)) or
--	------------------Mains normal
--	
--	((y +by >= 60 and y+by <= 64) and (x+bx  = 67 or x+bx  = 90)) or
--	((y +by >= 60 and y+by <= 64) and (x+bx  = 66 or x+bx  = 91)) or
--	((y +by >= 60 and y+by <= 66) and (x+bx  = 65 or x+bx  = 92)) or
--	((y +by >= 61 and y+by <= 67) and (x+bx  = 64 or x+bx  = 93)) or
--	((y +by >= 63 and y+by <= 69) and (x+bx  = 63 or x+bx  = 94)) or
--	((y +by >= 65 and y+by <= 83) and (x+bx  = 62 or x+bx  = 95)) or
--	((y +by >= 66 and y+by <= 83) and (x+bx  = 61 or x+bx  = 96)) or
--	((y +by >= 68 and y+by <= 84) and (x+bx  = 60 or x+bx  = 97)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx  = 59 or x+bx  = 98)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx  = 58 or x+bx  = 99)) or
--		---droite leldakhel
--	((x +bx  >= 71 and x+bx  <= 6) and (y+by = 92)) or
--	((x +bx  >= 71 and x+bx  <=77) and (y+by = 93)) or
--	((x +bx  >= 71 and x+bx  <= 77) and (y+by = 94)) or
--	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 95)) or
--	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 96)) or
--	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 97)) or
--	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 98)) or
--	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 99)) or
--	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 100)) or
--	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 101)) or
--	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 102)) or
--	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 103)) or
--	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 104)) or
--	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 105)) or
--	((x +bx  >= 72 and x+bx  <= 76) and (y+by = 106)) or
--	((x +bx  >= 71 and x+bx  <= 75) and (y+by = 107)) or
--	((x +bx  >= 70 and x+bx  <= 75) and (y+by = 108)) or
--	((x +bx  >= 70 and x+bx  <= 74) and (y+by = 109)) or
--	((x +bx  >= 69 and x+bx  <= 73) and (y+by = 110)) or
--	((x +bx  >= 68 and x+bx  <= 72) and (y+by = 111)) or
--	((x +bx  >= 67 and x+bx  <= 71) and (y+by = 112)) or
--	((x +bx  >= 67 and x+bx  <= 70) and (y+by = 113)) or
--	((x +bx  >= 66 and x+bx  <= 69) and (y+by = 114)) or
--	((x +bx  >= 66 and x+bx  <= 70) and (y+by = 115)) or
--	((x +bx  >= 66 and x+bx  <= 74) and (y+by = 116)) or
--	((x +bx  >= 67 and x+bx  <= 76) and (y+by = 117)) or
--	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or
--	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or
--
--		----gauche leldakhel
--	((x +bx  >= 80 and x+bx  <= 87) and (y+by = 92)) or
--	((x +bx  >= 80 and x+bx  <= 87) and (y+by = 93)) or
--	((x +bx  >= 80 and x+bx  <= 86) and (y+by = 94)) or
--	((x +bx  >= 80 and x+bx  <= 86) and (y+by = 95)) or
--	((x +bx  >= 80 and x+bx  <= 85) and (y+by = 96)) or
--	((x +bx  >= 80 and x+bx  <= 85) and (y+by = 97)) or
--	((x +bx  >= 80 and x+bx  <= 84) and (y+by = 98)) or
--	((x +bx  >= 80 and x+bx  <= 84) and (y+by = 99)) or
--	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 100))or
--	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 101)) or
--	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 102)) or
--	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 103)) or
--	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 104)) or
--	((x +bx  >= 81 and x+bx  <= 84) and (y+by = 105)) or
--	((x +bx  >= 81 and x+bx  <= 84) and (y+by = 106)) or
--	((x +bx  >= 82 and x+bx  <= 85) and (y+by = 107)) or
--	((x +bx  >= 83 and x+bx  <= 86) and (y+by = 108)) or
--	((x +bx  >= 83 and x+bx  <= 87) and (y+by = 109)) or
--	((x +bx  >= 84 and x+bx  <= 87) and (y+by = 110)) or
--	((x +bx  >= 85 and x+bx  <= 88) and (y+by = 111)) or
--	((x +bx  >= 86 and x+bx  <= 89) and (y+by = 112)) or
--	((x +bx  >= 87 and x+bx  <= 91) and (y+by = 113)) or
--	((x +bx  >= 88 and x+bx  <= 92) and (y+by = 114)) or
--	((x +bx  >= 88 and x+bx  <= 92) and (y+by = 115)) or
--	((x +bx  >= 86 and x+bx  <= 92) and (y+by = 116)) or
--	((x +bx  >= 85 and x+bx  <= 92) and (y+by = 117)) or
--	((x +bx  >= 83 and x+bx  <= 90) and (y+by = 118)) 
--
--
--	) and (counter="00111"))
--
--	
--
--	or 
--
--	
--
--		(
--
----**********************************************************************11*******************************************************************
--		(((x + bx + p01 >= 75) and (x + bx + p01 <= 82) and (y + by = 29)) or
--	((x + bx + p01 >= 72) and (x + bx + p01 <= 85) and (y + by = 30)) or
--	((x + bx + p01 >= 70) and (x + bx + p01 <= 87) and (y + by = 31)) or
--	((x + bx + p01 >= 70) and (x + bx + p01 <= 89) and (y + by = 32)) or
--	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 33)) or
--	((x + bx + p01 >= 68) and (x + bx + p01 <= 90) and (y + by = 34)) or
--	((x + bx + p01 >= 66) and (x + bx + p01 <= 90) and (y + by = 35)) or
--	((x + bx + p01 >= 66) and (x + bx + p01 <= 90) and (y + by = 36)) or
--	((x + bx + p01 >= 66) and (x + bx + p01 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p01 >= 65) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 38)) or
--((((x + bx + p01 >= 65) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 39)) or
--((((x + bx + p01 >= 65) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 40)) or
--((((x + bx + p01 >= 65) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 41)) or
--((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 90))) and (y + by = 42)) or
--((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 90))) and (y + by = 43)) or
--((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 86) and (x + bx + p01 <= 89))) and (y + by = 44)) or
--((((x + bx + p01 >= 68) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 86) and (x + bx + p01 <= 89))) and (y + by = 45)) or
--((((x + bx + p01 >= 69) and (x + bx + p01 <= 76)) or (x + bx + p01 = 78) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 87))) and (y + by = 46)) or
--((((x + bx + p01 >= 71) and (x + bx + p01 <= 76)) or (x + bx + p01 = 78) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p01 >= 74) and (x + bx + p01 <= 83) and (y + by = 48)) or
--	((x + bx + p01 >= 77) and (x + bx + p01 <= 79) and (y + by = 49)) or
--	((((x + bx + p01 >= 71) and (x + bx + p01 <= 72)) or ((x + bx + p01 >= 85) and (x + bx + p01 <= 85))) and (y + by = 50)) or
--	((((x + bx + p01 >= 72) and (x + bx + p01 <= 75)) or ((x + bx + p01 >= 81) and (x + bx + p01 <= 85))) and (y + by = 51)) or
--	((x + bx + p01 >= 73) and (x + bx + p01 <= 84) and (y + by = 52)) or
--	((x + bx + p01 >= 74) and (x + bx + p01 <= 83) and (y + by = 53)) or
--	((x + bx + p01 >= 75) and (x + bx + p01 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p01 >= 66 and x+bx + p01 <= 67) or (x +bx + p01 >= 89 and x+bx + p01 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p01 >= 68 and x+bx + p01 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p01 >= 77 and x+bx + p01 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p01 >= 68) and (x + bx + p01 <= 76)) or ((x + bx + p01 >= 82) and (x + bx + p01 <= 89))) and (y + by = 81)) or
--	((((x + bx + p01 >= 68) and (x + bx + p01 <= 76)) or ((x + bx + p01 >= 82) and (x + bx + p01 <= 89))) and (y + by = 82)) or
--	((((x + bx + p01 >= 68) and (x + bx + p01 <= 78)) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 89))) and (y + by = 83)) or
--	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 84)) or
--	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 85)) or
--	((x + bx + p01 >= 69) and (x + bx + p01 <= 88) and (y + by = 86)) or
--	((x + bx + p01 >= 70) and (x + bx + p01 <= 88) and (y + by = 87)) or
--	((x + bx + p01 >= 72) and (x + bx + p01 <= 86) and (y + by = 88)) or
--	((x + bx + p01 >= 74) and (x + bx + p01 <= 84) and (y + by = 89)) or
--	((x + bx + p01 >= 75) and (x + bx + p01 <= 82) and (y + by = 90)) or
--	((x + bx + p01 >= 77) and (x + bx + p01 <= 80) and (y + by = 91)) or
--	((x + bx + p01 >= 78) and (x + bx + p01 <= 78) and (y + by = 92)) or
--	------------------Mains normal
--	
--	((y +by >= 60 and y+by <= 64) and (x+bx + p01 = 67 or x+bx + p01 = 90)) or
--	((y +by >= 60 and y+by <= 64) and (x+bx + p01 = 66 or x+bx + p01 = 91)) or
--	((y +by >= 60 and y+by <= 66) and (x+bx + p01 = 65 or x+bx + p01 = 92)) or
--	((y +by >= 61 and y+by <= 67) and (x+bx + p01 = 64 or x+bx + p01 = 93)) or
--	((y +by >= 63 and y+by <= 69) and (x+bx + p01 = 63 or x+bx + p01 = 94)) or
--	((y +by >= 65 and y+by <= 83) and (x+bx + p01 = 62 or x+bx + p01 = 95)) or
--	((y +by >= 66 and y+by <= 83) and (x+bx + p01 = 61 or x+bx + p01 = 96)) or
--	((y +by >= 68 and y+by <= 84) and (x+bx + p01 = 60 or x+bx + p01 = 97)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p01 = 59 or x+bx + p01 = 98)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p01 = 58 or x+bx + p01 = 99)) or
--	---droite layer 7
--	((x +bx + p01 >= 71 and x+bx + p01 <= 74) and (y+by = 92)) or
--	((x +bx + p01 >= 70 and x+bx + p01 <=74 )and (y+by = 93)) or
--	((x +bx + p01 >= 69 and x+bx + p01 <= 74) and (y+by = 94)) or
--	((x +bx + p01 >= 68 and x+bx + p01 <= 74) and (y+by = 95)) or
--	((x +bx + p01 >= 66 and x+bx + p01 <= 72) and (y+by = 96)) or
--	((x +bx + p01 >= 65 and x+bx + p01 <= 70) and (y+by = 97)) or
--	((x +bx + p01 >= 65 and x+bx + p01 <= 69) and (y+by = 98)) or
--	((x +bx + p01 >= 64 and x+bx + p01 <= 67) and (y+by = 99)) or
--	((x +bx + p01 >= 63 and x+bx + p01 <= 66) and (y+by = 100)) or
--	((x +bx + p01 >= 62 and x+bx + p01 <= 65) and (y+by = 101)) or
--	((x +bx + p01 >= 62 and x+bx + p01 <= 65) and (y+by = 102)) or
--	((x +bx + p01 >= 62 and x+bx + p01 <= 66) and (y+by = 103)) or
--	((x +bx + p01 >= 63 and x+bx + p01 <= 67) and (y+by = 104)) or
--	((x +bx + p01 >= 63 and x+bx + p01 <= 68) and (y+by = 105)) or
--	((x +bx + p01 >= 64 and x+bx + p01 <= 69) and (y+by = 106)) or
--	((x +bx + p01 >= 65 and x+bx + p01 <= 70) and (y+by = 107)) or
--	((x +bx + p01 >= 66 and x+bx + p01 <= 71) and (y+by = 108)) or
--	((x +bx + p01 >= 66 and x+bx + p01 <= 72) and (y+by = 109)) or
--	((x +bx + p01 >= 67 and x+bx + p01 <= 73) and (y+by = 110)) or
--	((x +bx + p01 >= 68 and x+bx + p01 <= 74) and (y+by = 111)) or
--	((x +bx + p01 >= 68 and x+bx + p01 <= 75) and (y+by = 112)) or
--	((x +bx + p01 >= 69 and x+bx + p01 <= 75) and (y+by = 113)) or
--	((x +bx + p01 >= 70 and x+bx + p01 <= 75) and (y+by = 114)) or
--	--((x +bx + p01 >= 66 and x+bx + p01 <= 70) and (y+by = 115)) or
--((x +bx + p01 >= 65 and x+bx + p01 <= 75) and (y +by >= 115 and y+by <= 119)) or
------gauche layer7
--	((x +bx + p01 >= 83 and x+bx + p01 <= 86) and (y+by = 92)) or
--	((x +bx + p01 >= 83 and x+bx + p01 <=87 )and (y+by = 93)) or
--	((x +bx + p01 >= 83 and x+bx + p01 <= 88) and (y+by = 94)) or
--	((x +bx + p01 >= 83 and x+bx + p01 <= 90) and (y+by = 95)) or
--	((x +bx + p01 >= 84 and x+bx + p01 <= 91) and (y+by = 96)) or
--	((x +bx + p01 >= 85 and x+bx + p01 <= 93) and (y+by = 97)) or
--	((x +bx + p01 >= 87 and x+bx + p01 <= 94) and (y+by = 98)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 94) and (y+by = 99)) or
--	((x +bx + p01 >= 90 and x+bx + p01 <= 93) and (y+by = 100)) or
--	((x +bx + p01 >= 91 and x+bx + p01 <= 93) and (y+by = 101)) or
--	((x +bx + p01 >= 90 and x+bx + p01 <= 92) and (y+by = 102)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 92) and (y+by = 103)) or
--	((x +bx + p01 >= 88 and x+bx + p01 <= 91) and (y+by = 104)) or
--	((x +bx + p01 >= 87 and x+bx + p01 <= 91) and (y+by = 105)) or
--	((x +bx + p01 >= 86 and x+bx + p01 <= 90) and (y+by = 106)) or
--	((x +bx + p01 >= 85 and x+bx + p01 <= 90) and (y+by = 107)) or
--	((x +bx + p01 >= 84 and x+bx + p01 <= 89) and (y+by = 108)) or
--	((x +bx + p01 >= 84 and x+bx + p01 <= 89) and (y+by = 109)) or
--	((x +bx + p01 >= 84 and x+bx + p01 <= 89) and (y+by = 110)) or
--	((x +bx + p01 >= 83 and x+bx + p01 <= 88) and (y+by = 111)) or
--	((x +bx + p01 >= 83 and x+bx + p01 <= 86) and (y+by = 112)) or
--	((x +bx + p01 >= 83 and x+bx + p01 <= 86) and (y+by = 113)) or
--	((x +bx + p01 >= 83 and x+bx + p01 <= 89) and (y+by = 114)) or
--	--((x +bx + p01 >= 66 and x+bx + p01 <= 70) and (y+by = 115)) or
--((x +bx + p01 >= 83 and x+bx + p01 <= 93) and (y +by >= 115 and y+by <= 119))
--
--
--
--	) and (counter="01000"))
--
--	
--
--	or
--
--	
--
--	(
--
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 29)) or
--	((x + bx + p02 >= 72) and (x + bx + p02 <= 85) and (y + by = 30)) or
--	((x + bx + p02 >= 70) and (x + bx + p02 <= 87) and (y + by = 31)) or
--	((x + bx + p02 >= 70) and (x + bx + p02 <= 89) and (y + by = 32)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 33)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 90) and (y + by = 34)) or
--	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 35)) or
--	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 36)) or
--	((x + bx + p02 >= 66) and (x + bx + p02 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 38)) or
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 39)) or
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 40)) or
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 41)) or
--((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 42)) or
--((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 43)) or
--((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 44)) or
--((((x + bx + p02 >= 68) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 45)) or
--((((x + bx + p02 >= 69) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 46)) or
--((((x + bx + p02 >= 71) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 48)) or
--	((x + bx + p02 >= 77) and (x + bx + p02 <= 79) and (y + by = 49)) or
--	((((x + bx + p02 >= 71) and (x + bx + p02 <= 72)) or ((x + bx + p02 >= 85) and (x + bx + p02 <= 85))) and (y + by = 50)) or
--	((((x + bx + p02 >= 72) and (x + bx + p02 <= 75)) or ((x + bx + p02 >= 81) and (x + bx + p02 <= 85))) and (y + by = 51)) or
--	((x + bx + p02 >= 73) and (x + bx + p02 <= 84) and (y + by = 52)) or
--	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 53)) or
--	((x + bx + p02 >= 75) and (x + bx + p02 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p02 >= 66 and x+bx + p02 <= 67) or (x +bx + p02 >= 89 and x+bx + p02 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p02 >= 68 and x+bx + p02 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p02 >= 77 and x+bx + p02 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 81)) or
--	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 82)) or
--	((((x + bx + p02 >= 68) and (x + bx + p02 <= 78)) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 89))) and (y + by = 83)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 84)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 85)) or
--	((x + bx + p02 >= 69) and (x + bx + p02 <= 88) and (y + by = 86)) or
--	((x + bx + p02 >= 70) and (x + bx + p02 <= 88) and (y + by = 87)) or
--	((x + bx + p02 >= 72) and (x + bx + p02 <= 86) and (y + by = 88)) or
--	((x + bx + p02 >= 74) and (x + bx + p02 <= 84) and (y + by = 89)) or
--	((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 90)) or
--	((x + bx + p02 >= 77) and (x + bx + p02 <= 80) and (y + by = 91)) or
--	((x + bx + p02 >= 78) and (x + bx + p02 <= 78) and (y + by = 92)) or
--	------------------Mains normal
--	
--	((y +by >= 60 and y+by <= 64) and (x+bx + p02 = 67 or x+bx + p02 = 90)) or
--	((y +by >= 60 and y+by <= 64) and (x+bx + p02 = 66 or x+bx + p02 = 91)) or
--	((y +by >= 60 and y+by <= 66) and (x+bx + p02 = 65 or x+bx + p02 = 92)) or
--	((y +by >= 61 and y+by <= 67) and (x+bx + p02 = 64 or x+bx + p02 = 93)) or
--	((y +by >= 63 and y+by <= 69) and (x+bx + p02 = 63 or x+bx + p02 = 94)) or
--	((y +by >= 65 and y+by <= 83) and (x+bx + p02 = 62 or x+bx + p02 = 95)) or
--	((y +by >= 66 and y+by <= 83) and (x+bx + p02 = 61 or x+bx + p02 = 96)) or
--	((y +by >= 68 and y+by <= 84) and (x+bx + p02 = 60 or x+bx + p02 = 97)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p02 = 59 or x+bx + p02 = 98)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p02 = 58 or x+bx + p02 = 99)) or
--		---droite leldakhel
--	((x +bx + p02 >= 71 and x+bx + p02 <= 6) and (y+by = 92)) or
--	((x +bx + p02 >= 71 and x+bx + p02 <=77) and (y+by = 93)) or
--	((x +bx + p02 >= 71 and x+bx + p02 <= 77) and (y+by = 94)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 95)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 96)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 97)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 98)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 99)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 100)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 101)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 102)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 103)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 104)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 105)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 76) and (y+by = 106)) or
--	((x +bx + p02 >= 71 and x+bx + p02 <= 75) and (y+by = 107)) or
--	((x +bx + p02 >= 70 and x+bx + p02 <= 75) and (y+by = 108)) or
--	((x +bx + p02 >= 70 and x+bx + p02 <= 74) and (y+by = 109)) or
--	((x +bx + p02 >= 69 and x+bx + p02 <= 73) and (y+by = 110)) or
--	((x +bx + p02 >= 68 and x+bx + p02 <= 72) and (y+by = 111)) or
--	((x +bx + p02 >= 67 and x+bx + p02 <= 71) and (y+by = 112)) or
--	((x +bx + p02 >= 67 and x+bx + p02 <= 70) and (y+by = 113)) or
--	((x +bx + p02 >= 66 and x+bx + p02 <= 69) and (y+by = 114)) or
--	((x +bx + p02 >= 66 and x+bx + p02 <= 70) and (y+by = 115)) or
--	((x +bx + p02 >= 66 and x+bx + p02 <= 74) and (y+by = 116)) or
--	((x +bx + p02 >= 67 and x+bx + p02 <= 76) and (y+by = 117)) or
--	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
--	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
--
--		----gauche leldakhel
--	((x +bx + p02 >= 80 and x+bx + p02 <= 87) and (y+by = 92)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 87) and (y+by = 93)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 86) and (y+by = 94)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 86) and (y+by = 95)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 85) and (y+by = 96)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 85) and (y+by = 97)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 84) and (y+by = 98)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 84) and (y+by = 99)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 100))or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 101)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 102)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 103)) or
--	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 104)) or
--	((x +bx + p02 >= 81 and x+bx + p02 <= 84) and (y+by = 105)) or
--	((x +bx + p02 >= 81 and x+bx + p02 <= 84) and (y+by = 106)) or
--	((x +bx + p02 >= 82 and x+bx + p02 <= 85) and (y+by = 107)) or
--	((x +bx + p02 >= 83 and x+bx + p02 <= 86) and (y+by = 108)) or
--	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 109)) or
--	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 110)) or
--	((x +bx + p02 >= 85 and x+bx + p02 <= 88) and (y+by = 111)) or
--	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 112)) or
--	((x +bx + p02 >= 87 and x+bx + p02 <= 91) and (y+by = 113)) or
--	((x +bx + p02 >= 88 and x+bx + p02 <= 92) and (y+by = 114)) or
--	((x +bx + p02 >= 88 and x+bx + p02 <= 92) and (y+by = 115)) or
--	((x +bx + p02 >= 86 and x+bx + p02 <= 92) and (y+by = 116)) or
--	((x +bx + p02 >= 85 and x+bx + p02 <= 92) and (y+by = 117)) or
--	((x +bx + p02 >= 83 and x+bx + p02 <= 90) and (y+by = 118)) 
--
--
--	) and (counter="01001"))
--
--	
--
--	or
--
--	
--
--		(
--
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p03 >= 75) and (x + bx + p03 <= 82) and (y + by = 29)) or
--	((x + bx + p03 >= 72) and (x + bx + p03 <= 85) and (y + by = 30)) or
--	((x + bx + p03 >= 70) and (x + bx + p03 <= 87) and (y + by = 31)) or
--	((x + bx + p03 >= 70) and (x + bx + p03 <= 89) and (y + by = 32)) or
--	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 33)) or
--	((x + bx + p03 >= 68) and (x + bx + p03 <= 90) and (y + by = 34)) or
--	((x + bx + p03 >= 66) and (x + bx + p03 <= 90) and (y + by = 35)) or
--	((x + bx + p03 >= 66) and (x + bx + p03 <= 90) and (y + by = 36)) or
--	((x + bx + p03 >= 66) and (x + bx + p03 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p03 >= 65) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 38)) or
--((((x + bx + p03 >= 65) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 39)) or
--((((x + bx + p03 >= 65) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 40)) or
--((((x + bx + p03 >= 65) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 41)) or
--((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 90))) and (y + by = 42)) or
--((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 90))) and (y + by = 43)) or
--((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 86) and (x + bx + p03 <= 89))) and (y + by = 44)) or
--((((x + bx + p03 >= 68) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 86) and (x + bx + p03 <= 89))) and (y + by = 45)) or
--((((x + bx + p03 >= 69) and (x + bx + p03 <= 76)) or (x + bx + p03 = 78) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 87))) and (y + by = 46)) or
--((((x + bx + p03 >= 71) and (x + bx + p03 <= 76)) or (x + bx + p03 = 78) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p03 >= 74) and (x + bx + p03 <= 83) and (y + by = 48)) or
--	((x + bx + p03 >= 77) and (x + bx + p03 <= 79) and (y + by = 49)) or
--	((((x + bx + p03 >= 71) and (x + bx + p03 <= 72)) or ((x + bx + p03 >= 85) and (x + bx + p03 <= 85))) and (y + by = 50)) or
--	((((x + bx + p03 >= 72) and (x + bx + p03 <= 75)) or ((x + bx + p03 >= 81) and (x + bx + p03 <= 85))) and (y + by = 51)) or
--	((x + bx + p03 >= 73) and (x + bx + p03 <= 84) and (y + by = 52)) or
--	((x + bx + p03 >= 74) and (x + bx + p03 <= 83) and (y + by = 53)) or
--	((x + bx + p03 >= 75) and (x + bx + p03 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p03 >= 66 and x+bx + p03 <= 67) or (x +bx + p03 >= 89 and x+bx + p03 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p03 >= 68 and x+bx + p03 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p03 >= 77 and x+bx + p03 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p03 >= 68) and (x + bx + p03 <= 76)) or ((x + bx + p03 >= 82) and (x + bx + p03 <= 89))) and (y + by = 81)) or
--	((((x + bx + p03 >= 68) and (x + bx + p03 <= 76)) or ((x + bx + p03 >= 82) and (x + bx + p03 <= 89))) and (y + by = 82)) or
--	((((x + bx + p03 >= 68) and (x + bx + p03 <= 78)) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 89))) and (y + by = 83)) or
--	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 84)) or
--	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 85)) or
--	((x + bx + p03 >= 69) and (x + bx + p03 <= 88) and (y + by = 86)) or
--	((x + bx + p03 >= 70) and (x + bx + p03 <= 88) and (y + by = 87)) or
--	((x + bx + p03 >= 72) and (x + bx + p03 <= 86) and (y + by = 88)) or
--	((x + bx + p03 >= 74) and (x + bx + p03 <= 84) and (y + by = 89)) or
--	((x + bx + p03 >= 75) and (x + bx + p03 <= 82) and (y + by = 90)) or
--	((x + bx + p03 >= 77) and (x + bx + p03 <= 80) and (y + by = 91)) or
--	((x + bx + p03 >= 78) and (x + bx + p03 <= 78) and (y + by = 92)) or
--	------------------Mains normal
--	
--	((y +by >= 60 and y+by <= 64) and (x+bx + p03 = 67 or x+bx + p03 = 90)) or
--	((y +by >= 60 and y+by <= 64) and (x+bx + p03 = 66 or x+bx + p03 = 91)) or
--	((y +by >= 60 and y+by <= 66) and (x+bx + p03 = 65 or x+bx + p03 = 92)) or
--	((y +by >= 61 and y+by <= 67) and (x+bx + p03 = 64 or x+bx + p03 = 93)) or
--	((y +by >= 63 and y+by <= 69) and (x+bx + p03 = 63 or x+bx + p03 = 94)) or
--	((y +by >= 65 and y+by <= 83) and (x+bx + p03 = 62 or x+bx + p03 = 95)) or
--	((y +by >= 66 and y+by <= 83) and (x+bx + p03 = 61 or x+bx + p03 = 96)) or
--	((y +by >= 68 and y+by <= 84) and (x+bx + p03 = 60 or x+bx + p03 = 97)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p03 = 59 or x+bx + p03 = 98)) or
--	((y +by >= 83 and y+by <= 88) and (x+bx + p03 = 58 or x+bx + p03 = 99)) or
--	---droite layer 7
--	((x +bx + p03 >= 71 and x+bx + p03 <= 74) and (y+by = 92)) or
--	((x +bx + p03 >= 70 and x+bx + p03 <=74 )and (y+by = 93)) or
--	((x +bx + p03 >= 69 and x+bx + p03 <= 74) and (y+by = 94)) or
--	((x +bx + p03 >= 68 and x+bx + p03 <= 74) and (y+by = 95)) or
--	((x +bx + p03 >= 66 and x+bx + p03 <= 72) and (y+by = 96)) or
--	((x +bx + p03 >= 65 and x+bx + p03 <= 70) and (y+by = 97)) or
--	((x +bx + p03 >= 65 and x+bx + p03 <= 69) and (y+by = 98)) or
--	((x +bx + p03 >= 64 and x+bx + p03 <= 67) and (y+by = 99)) or
--	((x +bx + p03 >= 63 and x+bx + p03 <= 66) and (y+by = 100)) or
--	((x +bx + p03 >= 62 and x+bx + p03 <= 65) and (y+by = 101)) or
--	((x +bx + p03 >= 62 and x+bx + p03 <= 65) and (y+by = 102)) or
--	((x +bx + p03 >= 62 and x+bx + p03 <= 66) and (y+by = 103)) or
--	((x +bx + p03 >= 63 and x+bx + p03 <= 67) and (y+by = 104)) or
--	((x +bx + p03 >= 63 and x+bx + p03 <= 68) and (y+by = 105)) or
--	((x +bx + p03 >= 64 and x+bx + p03 <= 69) and (y+by = 106)) or
--	((x +bx + p03 >= 65 and x+bx + p03 <= 70) and (y+by = 107)) or
--	((x +bx + p03 >= 66 and x+bx + p03 <= 71) and (y+by = 108)) or
--	((x +bx + p03 >= 66 and x+bx + p03 <= 72) and (y+by = 109)) or
--	((x +bx + p03 >= 67 and x+bx + p03 <= 73) and (y+by = 110)) or
--	((x +bx + p03 >= 68 and x+bx + p03 <= 74) and (y+by = 111)) or
--	((x +bx + p03 >= 68 and x+bx + p03 <= 75) and (y+by = 112)) or
--	((x +bx + p03 >= 69 and x+bx + p03 <= 75) and (y+by = 113)) or
--	((x +bx + p03 >= 70 and x+bx + p03 <= 75) and (y+by = 114)) or
--	--((x +bx + p03 >= 66 and x+bx + p03 <= 70) and (y+by = 115)) or
--((x +bx + p03 >= 65 and x+bx + p03 <= 75) and (y +by >= 115 and y+by <= 119)) or
------gauche layer7
--	((x +bx + p03 >= 83 and x+bx + p03 <= 86) and (y+by = 92)) or
--	((x +bx + p03 >= 83 and x+bx + p03 <=87 )and (y+by = 93)) or
--	((x +bx + p03 >= 83 and x+bx + p03 <= 88) and (y+by = 94)) or
--	((x +bx + p03 >= 83 and x+bx + p03 <= 90) and (y+by = 95)) or
--	((x +bx + p03 >= 84 and x+bx + p03 <= 91) and (y+by = 96)) or
--	((x +bx + p03 >= 85 and x+bx + p03 <= 93) and (y+by = 97)) or
--	((x +bx + p03 >= 87 and x+bx + p03 <= 94) and (y+by = 98)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 94) and (y+by = 99)) or
--	((x +bx + p03 >= 90 and x+bx + p03 <= 93) and (y+by = 100)) or
--	((x +bx + p03 >= 91 and x+bx + p03 <= 93) and (y+by = 101)) or
--	((x +bx + p03 >= 90 and x+bx + p03 <= 92) and (y+by = 102)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 92) and (y+by = 103)) or
--	((x +bx + p03 >= 88 and x+bx + p03 <= 91) and (y+by = 104)) or
--	((x +bx + p03 >= 87 and x+bx + p03 <= 91) and (y+by = 105)) or
--	((x +bx + p03 >= 86 and x+bx + p03 <= 90) and (y+by = 106)) or
--	((x +bx + p03 >= 85 and x+bx + p03 <= 90) and (y+by = 107)) or
--	((x +bx + p03 >= 84 and x+bx + p03 <= 89) and (y+by = 108)) or
--	((x +bx + p03 >= 84 and x+bx + p03 <= 89) and (y+by = 109)) or
--	((x +bx + p03 >= 84 and x+bx + p03 <= 89) and (y+by = 110)) or
--	((x +bx + p03 >= 83 and x+bx + p03 <= 88) and (y+by = 111)) or
--	((x +bx + p03 >= 83 and x+bx + p03 <= 86) and (y+by = 112)) or
--	((x +bx + p03 >= 83 and x+bx + p03 <= 86) and (y+by = 113)) or
--	((x +bx + p03 >= 83 and x+bx + p03 <= 89) and (y+by = 114)) or
--	--((x +bx + p03 >= 66 and x+bx + p03 <= 70) and (y+by = 115)) or
--((x +bx + p03 >= 83 and x+bx + p03 <= 93) and (y +by >= 115 and y+by <= 119))
--
--
--	) and (counter="01010"))
--
--	
--
----	
----		or 	(
----	--**********************************************************************11*******************************************************************
----		(((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 29)) or
----	((x + bx + p02 >= 72) and (x + bx + p02 <= 85) and (y + by = 30)) or
----	((x + bx + p02 >= 70) and (x + bx + p02 <= 87) and (y + by = 31)) or
----	((x + bx + p02 >= 70) and (x + bx + p02 <= 89) and (y + by = 32)) or
----	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 33)) or
----	((x + bx + p02 >= 68) and (x + bx + p02 <= 90) and (y + by = 34)) or
----	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 35)) or
----	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 36)) or
----	((x + bx + p02 >= 66) and (x + bx + p02 <= 91) and (y + by = 37)) or
----	
----((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 38)) or
----((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 39)) or
----((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 40)) or
----((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 41)) or
----((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 42)) or
----((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 43)) or
----((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 44)) or
----((((x + bx + p02 >= 68) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 45)) or
----((((x + bx + p02 >= 69) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 46)) or
----((((x + bx + p02 >= 71) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 47)) or
----
----	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 48)) or
----	((x + bx + p02 >= 77) and (x + bx + p02 <= 79) and (y + by = 49)) or
----	((((x + bx + p02 >= 71) and (x + bx + p02 <= 72)) or ((x + bx + p02 >= 85) and (x + bx + p02 <= 85))) and (y + by = 50)) or
----	((((x + bx + p02 >= 72) and (x + bx + p02 <= 75)) or ((x + bx + p02 >= 81) and (x + bx + p02 <= 85))) and (y + by = 51)) or
----	((x + bx + p02 >= 73) and (x + bx + p02 <= 84) and (y + by = 52)) or
----	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 53)) or
----	((x + bx + p02 >= 75) and (x + bx + p02 <= 81) and (y + by = 54)) or
----	-----------------dbut 9afas
----	(((x +bx + p02 >= 66 and x+bx + p02 <= 67) or (x +bx + p02 >= 89 and x+bx + p02 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
----	(((x +bx + p02 >= 68 and x+bx + p02 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
----	((x +bx + p02 >= 77 and x+bx + p02 <= 79) and  (y +by >= 56 and y+by <= 79)) or
----	-----------------7awd
----	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 81)) or
----	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 82)) or
----	((((x + bx + p02 >= 68) and (x + bx + p02 <= 78)) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 89))) and (y + by = 83)) or
----	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 84)) or
----	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 85)) or
----	((x + bx + p02 >= 69) and (x + bx + p02 <= 88) and (y + by = 86)) or
----	((x + bx + p02 >= 70) and (x + bx + p02 <= 88) and (y + by = 87)) or
----	((x + bx + p02 >= 72) and (x + bx + p02 <= 86) and (y + by = 88)) or
----	((x + bx + p02 >= 74) and (x + bx + p02 <= 84) and (y + by = 89)) or
----	((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 90)) or
----	((x + bx + p02 >= 77) and (x + bx + p02 <= 80) and (y + by = 91)) or
----	((x + bx + p02 >= 78) and (x + bx + p02 <= 78) and (y + by = 92)) or
----		--gauche metwiya
----	((x +bx + p02 >= 89 and x+bx + p02 <= 89) and (y+by = 57)) or
----	((x +bx + p02 >= 89 and x+bx + p02 <= 89) and (y+by = 58)) or
----	((x +bx + p02 >= 89 and x+bx + p02 <= 90) and (y+by = 59)) or
----	((x +bx + p02 >= 89 and x+bx + p02 <= 91) and (y+by = 60)) or
----	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 61)) or
----	((x +bx + p02 >= 89 and x+bx + p02 <= 93) and (y+by = 62)) or
----	((x +bx + p02 >= 89 and x+bx + p02 <= 94) and (y+by = 63)) or
----	((x +bx + p02 >= 93 and x+bx + p02 <= 95) and (y+by = 64)) or
----	((x +bx + p02 >= 94 and x+bx + p02 <= 96) and (y+by = 65 ))or
----	((x +bx + p02 >= 95 and x+bx + p02 <= 97) and (y+by = 66 ))or
----	((x +bx + p02 >= 96 and x+bx + p02 <= 98) and (y+by = 67)) or
----	((x +bx + p02 >= 97 and x+bx + p02 <= 99) and (y+by = 68)) or
----	((x +bx + p02 >= 98 and x+bx + p02 <= 100) and (y+by = 69)) or
----	((x +bx + p02 >= 97 and x+bx + p02 <= 101) and (y+by = 70)) or
----	((x +bx + p02 >= 96 and x+bx + p02 <= 101) and (y+by = 71)) or
----	((x +bx + p02 >= 94 and x+bx + p02 <= 100) and (y+by = 72)) or
----	((x +bx + p02 >= 93 and x+bx + p02 <= 99) and (y+by = 73)) or
----	((x +bx + p02 >= 92 and x+bx + p02 <= 98) and (y+by = 74)) or
----	((x +bx + p02 >= 91 and x+bx + p02 <= 97) and (y+by = 75)) or
----	((x +bx + p02 >= 90 and x+bx + p02 <= 95) and (y+by = 76)) or
----	((x +bx + p02 >= 90 and x+bx + p02 <= 94 ) and (y+by = 77)) or
----	((x +bx + p02 >= 90 and x+bx + p02 <= 93 ) and (y+by = 78)) or
----	((x +bx + p02 >= 91 and x+bx + p02 <= 93 ) and (y+by = 79)) or
----	((x +bx + p02 >= 91 and x+bx + p02 <= 94 ) and (y+by = 80)) or
----	((x +bx + p02 >= 92 and x+bx + p02 <= 95 ) and (y+by = 81)) or
----	((x +bx + p02 >= 93 and x+bx + p02 <= 95 ) and (y+by = 82)) or
----	((x +bx + p02 >= 93 and x+bx + p02 <= 96 ) and (y+by = 83)) or
----	((x +bx + p02 >= 94 and x+bx + p02 <= 96 ) and (y+by = 84)) or
----		--droite tal3a
----		((x +bx + p02 >= 43 and x+bx + p02 <= 47) and (y+by = 43)) or
----	((x +bx + p02 >= 43 and x+bx + p02 <= 48) and (y+by = 44)) or
----	((x +bx + p02 >= 44 and x+bx + p02 <= 49) and (y+by = 45)) or
----	((x +bx + p02 >= 46 and x+bx + p02 <= 51) and (y+by = 46)) or
----	((x +bx + p02 >= 47 and x+bx + p02 <= 52) and (y+by = 47)) or
----	((x +bx + p02 >= 48 and x+bx + p02 <= 54) and (y+by = 48)) or
----	((x +bx + p02 >= 49 and x+bx + p02 <= 55) and (y+by = 49)) or
----	((x +bx + p02 >= 49 and x+bx + p02 <= 56) and (y+by = 50)) or
----	((x +bx + p02 >= 50 and x+bx + p02 <= 58) and (y+by = 51 ))or
----	((x +bx + p02 >= 51 and x+bx + p02 <= 59) and (y+by = 52 ))or
----	((x +bx + p02 >= 53 and x+bx + p02 <= 61) and (y+by = 53)) or
----	((x +bx + p02 >= 53 and x+bx + p02 <= 62) and (y+by = 54)) or
----	((x +bx + p02 >= 54 and x+bx + p02 <= 63) and (y+by = 55)) or
----	((x +bx + p02 >= 55 and x+bx + p02 <= 68) and (y+by = 56)) or
----	((x +bx + p02 >= 57 and x+bx + p02 <= 68) and (y+by = 57))or
----	((x +bx + p02 >= 58 and x+bx + p02 <= 68) and (y+by = 58)) or
----	((x +bx + p02 >= 60 and x+bx + p02 <= 68) and (y+by = 59)) or
----	((x +bx + p02 >= 61 and x+bx + p02 <= 67) and (y+by = 60)) or
----	((x +bx + p02 >= 62 and x+bx + p02 <= 66) and (y+by = 61)) or
----	((x +bx + p02 >= 64 and x+bx + p02 <= 66) and (y+by = 62)) or
----	((x +bx + p02 >= 65 and x+bx + p02 <= 66 ) and (y+by = 63)) or
------pied
----	---droite leldakhel
----	((x +bx + p02 >= 71 and x+bx + p02 <= 6) and (y+by = 92)) or
----	((x +bx + p02 >= 71 and x+bx + p02 <=77) and (y+by = 93)) or
----	((x +bx + p02 >= 71 and x+bx + p02 <= 77) and (y+by = 94)) or
----	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 95)) or
----	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 96)) or
----	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 97)) or
----	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 98)) or
----	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 99)) or
----	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 100)) or
----	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 101)) or
----	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 102)) or
----	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 103)) or
----	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 104)) or
----	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 105)) or
----	((x +bx + p02 >= 72 and x+bx + p02 <= 76) and (y+by = 106)) or
----	((x +bx + p02 >= 71 and x+bx + p02 <= 75) and (y+by = 107)) or
----	((x +bx + p02 >= 70 and x+bx + p02 <= 75) and (y+by = 108)) or
----	((x +bx + p02 >= 70 and x+bx + p02 <= 74) and (y+by = 109)) or
----	((x +bx + p02 >= 69 and x+bx + p02 <= 73) and (y+by = 110)) or
----	((x +bx + p02 >= 68 and x+bx + p02 <= 72) and (y+by = 111)) or
----	((x +bx + p02 >= 67 and x+bx + p02 <= 71) and (y+by = 112)) or
----	((x +bx + p02 >= 67 and x+bx + p02 <= 70) and (y+by = 113)) or
----	((x +bx + p02 >= 66 and x+bx + p02 <= 69) and (y+by = 114)) or
----	((x +bx + p02 >= 66 and x+bx + p02 <= 70) and (y+by = 115)) or
----	((x +bx + p02 >= 66 and x+bx + p02 <= 74) and (y+by = 116)) or
----	((x +bx + p02 >= 67 and x+bx + p02 <= 76) and (y+by = 117)) or
----	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
----	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
----
----	----gauche mkesla
----	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 92)) or
----	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 93)) or
----	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 94)) or
----	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 95)) or
----	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 96)) or
----	((x +bx + p02 >= 85 and x+bx + p02 <= 87) and (y+by = 97)) or
----	((x +bx + p02 >= 85 and x+bx + p02 <= 88) and (y+by = 98)) or
----	((x +bx + p02 >= 85 and x+bx + p02 <= 89) and (y+by = 99)) or
----	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 100))or
----	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 101)) or
----	((x +bx + p02 >= 87 and x+bx + p02 <= 90) and (y+by = 102)) or
----	((x +bx + p02 >= 87 and x+bx + p02 <= 90) and (y+by = 103)) or
----	((x +bx + p02 >= 87 and x+bx + p02 <= 91) and (y+by = 104)) or
----	((x +bx + p02 >= 88 and x+bx + p02 <= 91) and (y+by = 105)) or
----	((x +bx + p02 >= 88 and x+bx + p02 <= 91) and (y+by = 106)) or
----	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 107)) or
----	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 108)) or
----	((x +bx + p02 >= 90 and x+bx + p02 <= 93) and (y+by = 109)) or
----	((x +bx + p02 >= 91 and x+bx + p02 <= 94) and (y+by = 110)) or
----	((x +bx + p02 >= 91 and x+bx + p02 <= 95) and (y+by = 111)) or
----	((x +bx + p02 >= 92 and x+bx + p02 <= 95) and (y+by = 112)) or
----	((x +bx + p02 >= 92 and x+bx + p02 <= 96) and (y+by = 113)) or
----	((x +bx + p02 >= 93 and x+bx + p02 <= 97) and (y+by = 114)) or
----	((x +bx + p02 >= 94 and x+bx + p02 <= 97) and (y+by = 115)) or
----	((x +bx + p02 >= 94 and x+bx + p02 <= 104) and (y +by >= 115 and y+by <= 119))
----
----	) and (counter="01011"))
--
--	
--
--	or
--		(
--
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p03 >= 75) and (x + bx + p03 <= 82) and (y + by = 29)) or
--	((x + bx + p03 >= 72) and (x + bx + p03 <= 85) and (y + by = 30)) or
--	((x + bx + p03 >= 70) and (x + bx + p03 <= 87) and (y + by = 31)) or
--	((x + bx + p03 >= 70) and (x + bx + p03 <= 89) and (y + by = 32)) or
--	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 33)) or
--	((x + bx + p03 >= 68) and (x + bx + p03 <= 90) and (y + by = 34)) or
--	((x + bx + p03 >= 66) and (x + bx + p03 <= 90) and (y + by = 35)) or
--	((x + bx + p03 >= 66) and (x + bx + p03 <= 90) and (y + by = 36)) or
--	((x + bx + p03 >= 66) and (x + bx + p03 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p03 >= 65) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 38)) or
--((((x + bx + p03 >= 65) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 39)) or
--((((x + bx + p03 >= 65) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 40)) or
--((((x + bx + p03 >= 65) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 41)) or
--((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 90))) and (y + by = 42)) or
--((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 90))) and (y + by = 43)) or
--((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 86) and (x + bx + p03 <= 89))) and (y + by = 44)) or
--((((x + bx + p03 >= 68) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 86) and (x + bx + p03 <= 89))) and (y + by = 45)) or
--((((x + bx + p03 >= 69) and (x + bx + p03 <= 76)) or (x + bx + p03 = 78) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 87))) and (y + by = 46)) or
--((((x + bx + p03 >= 71) and (x + bx + p03 <= 76)) or (x + bx + p03 = 78) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p03 >= 74) and (x + bx + p03 <= 83) and (y + by = 48)) or
--	((x + bx + p03 >= 77) and (x + bx + p03 <= 79) and (y + by = 49)) or
--	((((x + bx + p03 >= 71) and (x + bx + p03 <= 72)) or ((x + bx + p03 >= 85) and (x + bx + p03 <= 85))) and (y + by = 50)) or
--	((((x + bx + p03 >= 72) and (x + bx + p03 <= 75)) or ((x + bx + p03 >= 81) and (x + bx + p03 <= 85))) and (y + by = 51)) or
--	((x + bx + p03 >= 73) and (x + bx + p03 <= 84) and (y + by = 52)) or
--	((x + bx + p03 >= 74) and (x + bx + p03 <= 83) and (y + by = 53)) or
--	((x + bx + p03 >= 75) and (x + bx + p03 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p03 >= 66 and x+bx + p03 <= 67) or (x +bx + p03 >= 89 and x+bx + p03 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p03 >= 68 and x+bx + p03 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p03 >= 77 and x+bx + p03 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p03 >= 68) and (x + bx + p03 <= 76)) or ((x + bx + p03 >= 82) and (x + bx + p03 <= 89))) and (y + by = 81)) or
--	((((x + bx + p03 >= 68) and (x + bx + p03 <= 76)) or ((x + bx + p03 >= 82) and (x + bx + p03 <= 89))) and (y + by = 82)) or
--	((((x + bx + p03 >= 68) and (x + bx + p03 <= 78)) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 89))) and (y + by = 83)) or
--	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 84)) or
--	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 85)) or
--	((x + bx + p03 >= 69) and (x + bx + p03 <= 88) and (y + by = 86)) or
--	((x + bx + p03 >= 70) and (x + bx + p03 <= 88) and (y + by = 87)) or
--	((x + bx + p03 >= 72) and (x + bx + p03 <= 86) and (y + by = 88)) or
--	((x + bx + p03 >= 74) and (x + bx + p03 <= 84) and (y + by = 89)) or
--	((x + bx + p03 >= 75) and (x + bx + p03 <= 82) and (y + by = 90)) or
--	((x + bx + p03 >= 77) and (x + bx + p03 <= 80) and (y + by = 91)) or
--	((x + bx + p03 >= 78) and (x + bx + p03 <= 78) and (y + by = 92)) or
--
--	---main
--	((x +bx + p03 >= 89 and x+bx + p03 <= 89) and (y+by = 57)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 89) and (y+by = 58)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 90) and (y+by = 59)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 91) and (y+by = 60)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 92) and (y+by = 61)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 93) and (y+by = 62)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 94) and (y+by = 63)) or
--	((x +bx + p03 >= 93 and x+bx + p03 <= 95) and (y+by = 64)) or
--	((x +bx + p03 >= 94 and x+bx + p03 <= 96) and (y+by = 65 ))or
--	((x +bx + p03 >= 95 and x+bx + p03 <= 97) and (y+by = 66 ))or
--	((x +bx + p03 >= 96 and x+bx + p03 <= 98) and (y+by = 67)) or
--	((x +bx + p03 >= 97 and x+bx + p03 <= 99) and (y+by = 68)) or
--	((x +bx + p03 >= 98 and x+bx + p03 <= 100) and (y+by = 69)) or
--	((x +bx + p03 >= 97 and x+bx + p03 <= 101) and (y+by = 70)) or
--	((x +bx + p03 >= 96 and x+bx + p03 <= 101) and (y+by = 71)) or
--	((x +bx + p03 >= 94 and x+bx + p03 <= 100) and (y+by = 72)) or
--	((x +bx + p03 >= 93 and x+bx + p03 <= 99) and (y+by = 73)) or
--	((x +bx + p03 >= 92 and x+bx + p03 <= 98) and (y+by = 74)) or
--	((x +bx + p03 >= 91 and x+bx + p03 <= 97) and (y+by = 75)) or
--	((x +bx + p03 >= 90 and x+bx + p03 <= 95) and (y+by = 76)) or
--	((x +bx + p03 >= 90 and x+bx + p03 <= 94 ) and (y+by = 77)) or
--	((x +bx + p03 >= 90 and x+bx + p03 <= 93 ) and (y+by = 78)) or
--	((x +bx + p03 >= 91 and x+bx + p03 <= 93 ) and (y+by = 79)) or
--	((x +bx + p03 >= 91 and x+bx + p03 <= 94 ) and (y+by = 80)) or
--	((x +bx + p03 >= 92 and x+bx + p03 <= 95 ) and (y+by = 81)) or
--	((x +bx + p03 >= 93 and x+bx + p03 <= 95 ) and (y+by = 82)) or
--	((x +bx + p03 >= 93 and x+bx + p03 <= 96 ) and (y+by = 83)) or
--	((x +bx + p03 >= 94 and x+bx + p03 <= 96 ) and (y+by = 84)) or
--		--droite tal3a
--		((x +bx + p03 >= 43 and x+bx + p03 <= 47) and (y+by = 43)) or
--	((x +bx + p03 >= 43 and x+bx + p03 <= 48) and (y+by = 44)) or
--	((x +bx + p03 >= 44 and x+bx + p03 <= 49) and (y+by = 45)) or
--	((x +bx + p03 >= 46 and x+bx + p03 <= 51) and (y+by = 46)) or
--	((x +bx + p03 >= 47 and x+bx + p03 <= 52) and (y+by = 47)) or
--	((x +bx + p03 >= 48 and x+bx + p03 <= 54) and (y+by = 48)) or
--	((x +bx + p03 >= 49 and x+bx + p03 <= 55) and (y+by = 49)) or
--	((x +bx + p03 >= 49 and x+bx + p03 <= 56) and (y+by = 50)) or
--	((x +bx + p03 >= 50 and x+bx + p03 <= 58) and (y+by = 51 ))or
--	((x +bx + p03 >= 51 and x+bx + p03 <= 59) and (y+by = 52 ))or
--	((x +bx + p03 >= 53 and x+bx + p03 <= 61) and (y+by = 53)) or
--	((x +bx + p03 >= 53 and x+bx + p03 <= 62) and (y+by = 54)) or
--	((x +bx + p03 >= 54 and x+bx + p03 <= 63) and (y+by = 55)) or
--	((x +bx + p03 >= 55 and x+bx + p03 <= 68) and (y+by = 56)) or
--	((x +bx + p03 >= 57 and x+bx + p03 <= 68) and (y+by = 57))or
--	((x +bx + p03 >= 58 and x+bx + p03 <= 68) and (y+by = 58)) or
--	((x +bx + p03 >= 60 and x+bx + p03 <= 68) and (y+by = 59)) or
--	((x +bx + p03 >= 61 and x+bx + p03 <= 67) and (y+by = 60)) or
--	((x +bx + p03 >= 62 and x+bx + p03 <= 66) and (y+by = 61)) or
--	((x +bx + p03 >= 64 and x+bx + p03 <= 66) and (y+by = 62)) or
--	((x +bx + p03 >= 65 and x+bx + p03 <= 66 ) and (y+by = 63)) or
----pied
--	---droite leldakhel
--	((x +bx + p03 >= 71 and x+bx + p03 <= 6) and (y+by = 92)) or
--	((x +bx + p03 >= 71 and x+bx + p03 <=77) and (y+by = 93)) or
--	((x +bx + p03 >= 71 and x+bx + p03 <= 77) and (y+by = 94)) or
--	((x +bx + p03 >= 72 and x+bx + p03 <= 77) and (y+by = 95)) or
--	((x +bx + p03 >= 72 and x+bx + p03 <= 77) and (y+by = 96)) or
--	((x +bx + p03 >= 72 and x+bx + p03 <= 77) and (y+by = 97)) or
--	((x +bx + p03 >= 73 and x+bx + p03 <= 77) and (y+by = 98)) or
--	((x +bx + p03 >= 73 and x+bx + p03 <= 77) and (y+by = 99)) or
--	((x +bx + p03 >= 74 and x+bx + p03 <= 77) and (y+by = 100)) or
--	((x +bx + p03 >= 74 and x+bx + p03 <= 77) and (y+by = 101)) or
--	((x +bx + p03 >= 74 and x+bx + p03 <= 77) and (y+by = 102)) or
--	((x +bx + p03 >= 74 and x+bx + p03 <= 77) and (y+by = 103)) or
--	((x +bx + p03 >= 73 and x+bx + p03 <= 77) and (y+by = 104)) or
--	((x +bx + p03 >= 73 and x+bx + p03 <= 77) and (y+by = 105)) or
--	((x +bx + p03 >= 72 and x+bx + p03 <= 76) and (y+by = 106)) or
--	((x +bx + p03 >= 71 and x+bx + p03 <= 75) and (y+by = 107)) or
--	((x +bx + p03 >= 70 and x+bx + p03 <= 75) and (y+by = 108)) or
--	((x +bx + p03 >= 70 and x+bx + p03 <= 74) and (y+by = 109)) or
--	((x +bx + p03 >= 69 and x+bx + p03 <= 73) and (y+by = 110)) or
--	((x +bx + p03 >= 68 and x+bx + p03 <= 72) and (y+by = 111)) or
--	((x +bx + p03 >= 67 and x+bx + p03 <= 71) and (y+by = 112)) or
--	((x +bx + p03 >= 67 and x+bx + p03 <= 70) and (y+by = 113)) or
--	((x +bx + p03 >= 66 and x+bx + p03 <= 69) and (y+by = 114)) or
--	((x +bx + p03 >= 66 and x+bx + p03 <= 70) and (y+by = 115)) or
--	((x +bx + p03 >= 66 and x+bx + p03 <= 74) and (y+by = 116)) or
--	((x +bx + p03 >= 67 and x+bx + p03 <= 76) and (y+by = 117)) or
--	((x +bx + p03 >= 69 and x+bx + p03 <= 76) and (y+by = 118)) or
--	((x +bx + p03 >= 69 and x+bx + p03 <= 76) and (y+by = 118)) or
--
--	----gauche mkesla
--	((x +bx + p03 >= 83 and x+bx + p03 <= 87) and (y+by = 92)) or
--	((x +bx + p03 >= 83 and x+bx + p03 <= 87) and (y+by = 93)) or
--	((x +bx + p03 >= 83 and x+bx + p03 <= 87) and (y+by = 94)) or
--	((x +bx + p03 >= 84 and x+bx + p03 <= 87) and (y+by = 95)) or
--	((x +bx + p03 >= 84 and x+bx + p03 <= 87) and (y+by = 96)) or
--	((x +bx + p03 >= 85 and x+bx + p03 <= 87) and (y+by = 97)) or
--	((x +bx + p03 >= 85 and x+bx + p03 <= 88) and (y+by = 98)) or
--	((x +bx + p03 >= 85 and x+bx + p03 <= 89) and (y+by = 99)) or
--	((x +bx + p03 >= 86 and x+bx + p03 <= 89) and (y+by = 100))or
--	((x +bx + p03 >= 86 and x+bx + p03 <= 89) and (y+by = 101)) or
--	((x +bx + p03 >= 87 and x+bx + p03 <= 90) and (y+by = 102)) or
--	((x +bx + p03 >= 87 and x+bx + p03 <= 90) and (y+by = 103)) or
--	((x +bx + p03 >= 87 and x+bx + p03 <= 91) and (y+by = 104)) or
--	((x +bx + p03 >= 88 and x+bx + p03 <= 91) and (y+by = 105)) or
--	((x +bx + p03 >= 88 and x+bx + p03 <= 91) and (y+by = 106)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 92) and (y+by = 107)) or
--	((x +bx + p03 >= 89 and x+bx + p03 <= 92) and (y+by = 108)) or
--	((x +bx + p03 >= 90 and x+bx + p03 <= 93) and (y+by = 109)) or
--	((x +bx + p03 >= 91 and x+bx + p03 <= 94) and (y+by = 110)) or
--	((x +bx + p03 >= 91 and x+bx + p03 <= 95) and (y+by = 111)) or
--	((x +bx + p03 >= 92 and x+bx + p03 <= 95) and (y+by = 112)) or
--	((x +bx + p03 >= 92 and x+bx + p03 <= 96) and (y+by = 113)) or
--	((x +bx + p03 >= 93 and x+bx + p03 <= 97) and (y+by = 114)) or
--	((x +bx + p03 >= 94 and x+bx + p03 <= 97) and (y+by = 115)) or
--	((x +bx + p03 >= 94 and x+bx + p03 <= 104) and (y +by >= 115 and y+by <= 119))
--
--	) and (counter="01011"))
--		or 	(
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 29)) or
--	((x + bx + p02 >= 72) and (x + bx + p02 <= 85) and (y + by = 30)) or
--	((x + bx + p02 >= 70) and (x + bx + p02 <= 87) and (y + by = 31)) or
--	((x + bx + p02 >= 70) and (x + bx + p02 <= 89) and (y + by = 32)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 33)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 90) and (y + by = 34)) or
--	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 35)) or
--	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 36)) or
--	((x + bx + p02 >= 66) and (x + bx + p02 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 38)) or
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 39)) or
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 40)) or
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 41)) or
--((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 42)) or
--((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 43)) or
--((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 44)) or
--((((x + bx + p02 >= 68) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 45)) or
--((((x + bx + p02 >= 69) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 46)) or
--((((x + bx + p02 >= 71) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 48)) or
--	((x + bx + p02 >= 77) and (x + bx + p02 <= 79) and (y + by = 49)) or
--	((((x + bx + p02 >= 71) and (x + bx + p02 <= 72)) or ((x + bx + p02 >= 85) and (x + bx + p02 <= 85))) and (y + by = 50)) or
--	((((x + bx + p02 >= 72) and (x + bx + p02 <= 75)) or ((x + bx + p02 >= 81) and (x + bx + p02 <= 85))) and (y + by = 51)) or
--	((x + bx + p02 >= 73) and (x + bx + p02 <= 84) and (y + by = 52)) or
--	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 53)) or
--	((x + bx + p02 >= 75) and (x + bx + p02 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p02 >= 66 and x+bx + p02 <= 67) or (x +bx + p02 >= 89 and x+bx + p02 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p02 >= 68 and x+bx + p02 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p02 >= 77 and x+bx + p02 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 81)) or
--	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 82)) or
--	((((x + bx + p02 >= 68) and (x + bx + p02 <= 78)) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 89))) and (y + by = 83)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 84)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 85)) or
--	((x + bx + p02 >= 69) and (x + bx + p02 <= 88) and (y + by = 86)) or
--	((x + bx + p02 >= 70) and (x + bx + p02 <= 88) and (y + by = 87)) or
--	((x + bx + p02 >= 72) and (x + bx + p02 <= 86) and (y + by = 88)) or
--	((x + bx + p02 >= 74) and (x + bx + p02 <= 84) and (y + by = 89)) or
--	((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 90)) or
--	((x + bx + p02 >= 77) and (x + bx + p02 <= 80) and (y + by = 91)) or
--	((x + bx + p02 >= 78) and (x + bx + p02 <= 78) and (y + by = 92)) or
--		--gauche metwiya
--	((x +bx + p02 >= 89 and x+bx + p02 <= 89) and (y+by = 57)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 89) and (y+by = 58)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 90) and (y+by = 59)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 91) and (y+by = 60)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 61)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 93) and (y+by = 62)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 94) and (y+by = 63)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 95) and (y+by = 64)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 96) and (y+by = 65 ))or
--	((x +bx + p02 >= 95 and x+bx + p02 <= 97) and (y+by = 66 ))or
--	((x +bx + p02 >= 96 and x+bx + p02 <= 98) and (y+by = 67)) or
--	((x +bx + p02 >= 97 and x+bx + p02 <= 99) and (y+by = 68)) or
--	((x +bx + p02 >= 98 and x+bx + p02 <= 100) and (y+by = 69)) or
--	((x +bx + p02 >= 97 and x+bx + p02 <= 101) and (y+by = 70)) or
--	((x +bx + p02 >= 96 and x+bx + p02 <= 101) and (y+by = 71)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 100) and (y+by = 72)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 99) and (y+by = 73)) or
--	((x +bx + p02 >= 92 and x+bx + p02 <= 98) and (y+by = 74)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 97) and (y+by = 75)) or
--	((x +bx + p02 >= 90 and x+bx + p02 <= 95) and (y+by = 76)) or
--	((x +bx + p02 >= 90 and x+bx + p02 <= 94 ) and (y+by = 77)) or
--	((x +bx + p02 >= 90 and x+bx + p02 <= 93 ) and (y+by = 78)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 93 ) and (y+by = 79)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 94 ) and (y+by = 80)) or
--	((x +bx + p02 >= 92 and x+bx + p02 <= 95 ) and (y+by = 81)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 95 ) and (y+by = 82)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 96 ) and (y+by = 83)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 96 ) and (y+by = 84)) or
--		--droite tal3a
--		((x +bx + p02 >= 43 and x+bx + p02 <= 47) and (y+by = 43)) or
--	((x +bx + p02 >= 43 and x+bx + p02 <= 48) and (y+by = 44)) or
--	((x +bx + p02 >= 44 and x+bx + p02 <= 49) and (y+by = 45)) or
--	((x +bx + p02 >= 46 and x+bx + p02 <= 51) and (y+by = 46)) or
--	((x +bx + p02 >= 47 and x+bx + p02 <= 52) and (y+by = 47)) or
--	((x +bx + p02 >= 48 and x+bx + p02 <= 54) and (y+by = 48)) or
--	((x +bx + p02 >= 49 and x+bx + p02 <= 55) and (y+by = 49)) or
--	((x +bx + p02 >= 49 and x+bx + p02 <= 56) and (y+by = 50)) or
--	((x +bx + p02 >= 50 and x+bx + p02 <= 58) and (y+by = 51 ))or
--	((x +bx + p02 >= 51 and x+bx + p02 <= 59) and (y+by = 52 ))or
--	((x +bx + p02 >= 53 and x+bx + p02 <= 61) and (y+by = 53)) or
--	((x +bx + p02 >= 53 and x+bx + p02 <= 62) and (y+by = 54)) or
--	((x +bx + p02 >= 54 and x+bx + p02 <= 63) and (y+by = 55)) or
--	((x +bx + p02 >= 55 and x+bx + p02 <= 68) and (y+by = 56)) or
--	((x +bx + p02 >= 57 and x+bx + p02 <= 68) and (y+by = 57))or
--	((x +bx + p02 >= 58 and x+bx + p02 <= 68) and (y+by = 58)) or
--	((x +bx + p02 >= 60 and x+bx + p02 <= 68) and (y+by = 59)) or
--	((x +bx + p02 >= 61 and x+bx + p02 <= 67) and (y+by = 60)) or
--	((x +bx + p02 >= 62 and x+bx + p02 <= 66) and (y+by = 61)) or
--	((x +bx + p02 >= 64 and x+bx + p02 <= 66) and (y+by = 62)) or
--	((x +bx + p02 >= 65 and x+bx + p02 <= 66 ) and (y+by = 63)) or
----pied
--	---droite leldakhel
--	((x +bx + p02 >= 71 and x+bx + p02 <= 6) and (y+by = 92)) or
--	((x +bx + p02 >= 71 and x+bx + p02 <=77) and (y+by = 93)) or
--	((x +bx + p02 >= 71 and x+bx + p02 <= 77) and (y+by = 94)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 95)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 96)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 97)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 98)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 99)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 100)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 101)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 102)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 103)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 104)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 105)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 76) and (y+by = 106)) or
--	((x +bx + p02 >= 71 and x+bx + p02 <= 75) and (y+by = 107)) or
--	((x +bx + p02 >= 70 and x+bx + p02 <= 75) and (y+by = 108)) or
--	((x +bx + p02 >= 70 and x+bx + p02 <= 74) and (y+by = 109)) or
--	((x +bx + p02 >= 69 and x+bx + p02 <= 73) and (y+by = 110)) or
--	((x +bx + p02 >= 68 and x+bx + p02 <= 72) and (y+by = 111)) or
--	((x +bx + p02 >= 67 and x+bx + p02 <= 71) and (y+by = 112)) or
--	((x +bx + p02 >= 67 and x+bx + p02 <= 70) and (y+by = 113)) or
--	((x +bx + p02 >= 66 and x+bx + p02 <= 69) and (y+by = 114)) or
--	((x +bx + p02 >= 66 and x+bx + p02 <= 70) and (y+by = 115)) or
--	((x +bx + p02 >= 66 and x+bx + p02 <= 74) and (y+by = 116)) or
--	((x +bx + p02 >= 67 and x+bx + p02 <= 76) and (y+by = 117)) or
--	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
--	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
--
--	----gauche mkesla
--	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 92)) or
--	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 93)) or
--	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 94)) or
--	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 95)) or
--	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 96)) or
--	((x +bx + p02 >= 85 and x+bx + p02 <= 87) and (y+by = 97)) or
--	((x +bx + p02 >= 85 and x+bx + p02 <= 88) and (y+by = 98)) or
--	((x +bx + p02 >= 85 and x+bx + p02 <= 89) and (y+by = 99)) or
--	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 100))or
--	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 101)) or
--	((x +bx + p02 >= 87 and x+bx + p02 <= 90) and (y+by = 102)) or
--	((x +bx + p02 >= 87 and x+bx + p02 <= 90) and (y+by = 103)) or
--	((x +bx + p02 >= 87 and x+bx + p02 <= 91) and (y+by = 104)) or
--	((x +bx + p02 >= 88 and x+bx + p02 <= 91) and (y+by = 105)) or
--	((x +bx + p02 >= 88 and x+bx + p02 <= 91) and (y+by = 106)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 107)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 108)) or
--	((x +bx + p02 >= 90 and x+bx + p02 <= 93) and (y+by = 109)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 94) and (y+by = 110)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 95) and (y+by = 111)) or
--	((x +bx + p02 >= 92 and x+bx + p02 <= 95) and (y+by = 112)) or
--	((x +bx + p02 >= 92 and x+bx + p02 <= 96) and (y+by = 113)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 97) and (y+by = 114)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 97) and (y+by = 115)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 104) and (y +by >= 115 and y+by <= 119))
--
--	) and (counter="01100"))
--	
--	
--		or 	(
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p01 >= 75) and (x + bx + p01 <= 82) and (y + by = 29)) or
--	((x + bx + p01 >= 72) and (x + bx + p01 <= 85) and (y + by = 30)) or
--	((x + bx + p01 >= 70) and (x + bx + p01 <= 87) and (y + by = 31)) or
--	((x + bx + p01 >= 70) and (x + bx + p01 <= 89) and (y + by = 32)) or
--	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 33)) or
--	((x + bx + p01 >= 68) and (x + bx + p01 <= 90) and (y + by = 34)) or
--	((x + bx + p01 >= 66) and (x + bx + p01 <= 90) and (y + by = 35)) or
--	((x + bx + p01 >= 66) and (x + bx + p01 <= 90) and (y + by = 36)) or
--	((x + bx + p01 >= 66) and (x + bx + p01 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p01 >= 65) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 38)) or
--((((x + bx + p01 >= 65) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 39)) or
--((((x + bx + p01 >= 65) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 40)) or
--((((x + bx + p01 >= 65) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 41)) or
--((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 90))) and (y + by = 42)) or
--((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 90))) and (y + by = 43)) or
--((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 86) and (x + bx + p01 <= 89))) and (y + by = 44)) or
--((((x + bx + p01 >= 68) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 86) and (x + bx + p01 <= 89))) and (y + by = 45)) or
--((((x + bx + p01 >= 69) and (x + bx + p01 <= 76)) or (x + bx + p01 = 78) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 87))) and (y + by = 46)) or
--((((x + bx + p01 >= 71) and (x + bx + p01 <= 76)) or (x + bx + p01 = 78) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p01 >= 74) and (x + bx + p01 <= 83) and (y + by = 48)) or
--	((x + bx + p01 >= 77) and (x + bx + p01 <= 79) and (y + by = 49)) or
--	((((x + bx + p01 >= 71) and (x + bx + p01 <= 72)) or ((x + bx + p01 >= 85) and (x + bx + p01 <= 85))) and (y + by = 50)) or
--	((((x + bx + p01 >= 72) and (x + bx + p01 <= 75)) or ((x + bx + p01 >= 81) and (x + bx + p01 <= 85))) and (y + by = 51)) or
--	((x + bx + p01 >= 73) and (x + bx + p01 <= 84) and (y + by = 52)) or
--	((x + bx + p01 >= 74) and (x + bx + p01 <= 83) and (y + by = 53)) or
--	((x + bx + p01 >= 75) and (x + bx + p01 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p01 >= 66 and x+bx + p01 <= 67) or (x +bx + p01 >= 89 and x+bx + p01 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p01 >= 68 and x+bx + p01 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p01 >= 77 and x+bx + p01 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p01 >= 68) and (x + bx + p01 <= 76)) or ((x + bx + p01 >= 82) and (x + bx + p01 <= 89))) and (y + by = 81)) or
--	((((x + bx + p01 >= 68) and (x + bx + p01 <= 76)) or ((x + bx + p01 >= 82) and (x + bx + p01 <= 89))) and (y + by = 82)) or
--	((((x + bx + p01 >= 68) and (x + bx + p01 <= 78)) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 89))) and (y + by = 83)) or
--	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 84)) or
--	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 85)) or
--	((x + bx + p01 >= 69) and (x + bx + p01 <= 88) and (y + by = 86)) or
--	((x + bx + p01 >= 70) and (x + bx + p01 <= 88) and (y + by = 87)) or
--	((x + bx + p01 >= 72) and (x + bx + p01 <= 86) and (y + by = 88)) or
--	((x + bx + p01 >= 74) and (x + bx + p01 <= 84) and (y + by = 89)) or
--	((x + bx + p01 >= 75) and (x + bx + p01 <= 82) and (y + by = 90)) or
--	((x + bx + p01 >= 77) and (x + bx + p01 <= 80) and (y + by = 91)) or
--	((x + bx + p01 >= 78) and (x + bx + p01 <= 78) and (y + by = 92)) or
--		--gauche metwiya
--	((x +bx + p01 >= 89 and x+bx + p01 <= 89) and (y+by = 57)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 89) and (y+by = 58)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 90) and (y+by = 59)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 91) and (y+by = 60)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 92) and (y+by = 61)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 93) and (y+by = 62)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 94) and (y+by = 63)) or
--	((x +bx + p01 >= 93 and x+bx + p01 <= 95) and (y+by = 64)) or
--	((x +bx + p01 >= 94 and x+bx + p01 <= 96) and (y+by = 65 ))or
--	((x +bx + p01 >= 95 and x+bx + p01 <= 97) and (y+by = 66 ))or
--	((x +bx + p01 >= 96 and x+bx + p01 <= 98) and (y+by = 67)) or
--	((x +bx + p01 >= 97 and x+bx + p01 <= 99) and (y+by = 68)) or
--	((x +bx + p01 >= 98 and x+bx + p01 <= 100) and (y+by = 69)) or
--	((x +bx + p01 >= 97 and x+bx + p01 <= 101) and (y+by = 70)) or
--	((x +bx + p01 >= 96 and x+bx + p01 <= 101) and (y+by = 71)) or
--	((x +bx + p01 >= 94 and x+bx + p01 <= 100) and (y+by = 72)) or
--	((x +bx + p01 >= 93 and x+bx + p01 <= 99) and (y+by = 73)) or
--	((x +bx + p01 >= 92 and x+bx + p01 <= 98) and (y+by = 74)) or
--	((x +bx + p01 >= 91 and x+bx + p01 <= 97) and (y+by = 75)) or
--	((x +bx + p01 >= 90 and x+bx + p01 <= 95) and (y+by = 76)) or
--	((x +bx + p01 >= 90 and x+bx + p01 <= 94 ) and (y+by = 77)) or
--	((x +bx + p01 >= 90 and x+bx + p01 <= 93 ) and (y+by = 78)) or
--	((x +bx + p01 >= 91 and x+bx + p01 <= 93 ) and (y+by = 79)) or
--	((x +bx + p01 >= 91 and x+bx + p01 <= 94 ) and (y+by = 80)) or
--	((x +bx + p01 >= 92 and x+bx + p01 <= 95 ) and (y+by = 81)) or
--	((x +bx + p01 >= 93 and x+bx + p01 <= 95 ) and (y+by = 82)) or
--	((x +bx + p01 >= 93 and x+bx + p01 <= 96 ) and (y+by = 83)) or
--	((x +bx + p01 >= 94 and x+bx + p01 <= 96 ) and (y+by = 84)) or
--		--droite tal3a
--		((x +bx + p01 >= 43 and x+bx + p01 <= 47) and (y+by = 43)) or
--	((x +bx + p01 >= 43 and x+bx + p01 <= 48) and (y+by = 44)) or
--	((x +bx + p01 >= 44 and x+bx + p01 <= 49) and (y+by = 45)) or
--	((x +bx + p01 >= 46 and x+bx + p01 <= 51) and (y+by = 46)) or
--	((x +bx + p01 >= 47 and x+bx + p01 <= 52) and (y+by = 47)) or
--	((x +bx + p01 >= 48 and x+bx + p01 <= 54) and (y+by = 48)) or
--	((x +bx + p01 >= 49 and x+bx + p01 <= 55) and (y+by = 49)) or
--	((x +bx + p01 >= 49 and x+bx + p01 <= 56) and (y+by = 50)) or
--	((x +bx + p01 >= 50 and x+bx + p01 <= 58) and (y+by = 51 ))or
--	((x +bx + p01 >= 51 and x+bx + p01 <= 59) and (y+by = 52 ))or
--	((x +bx + p01 >= 53 and x+bx + p01 <= 61) and (y+by = 53)) or
--	((x +bx + p01 >= 53 and x+bx + p01 <= 62) and (y+by = 54)) or
--	((x +bx + p01 >= 54 and x+bx + p01 <= 63) and (y+by = 55)) or
--	((x +bx + p01 >= 55 and x+bx + p01 <= 68) and (y+by = 56)) or
--	((x +bx + p01 >= 57 and x+bx + p01 <= 68) and (y+by = 57))or
--	((x +bx + p01 >= 58 and x+bx + p01 <= 68) and (y+by = 58)) or
--	((x +bx + p01 >= 60 and x+bx + p01 <= 68) and (y+by = 59)) or
--	((x +bx + p01 >= 61 and x+bx + p01 <= 67) and (y+by = 60)) or
--	((x +bx + p01 >= 62 and x+bx + p01 <= 66) and (y+by = 61)) or
--	((x +bx + p01 >= 64 and x+bx + p01 <= 66) and (y+by = 62)) or
--	((x +bx + p01 >= 65 and x+bx + p01 <= 66 ) and (y+by = 63)) or
----pied
--	---droite leldakhel
--	((x +bx + p01 >= 71 and x+bx + p01 <= 6) and (y+by = 92)) or
--	((x +bx + p01 >= 71 and x+bx + p01 <=77) and (y+by = 93)) or
--	((x +bx + p01 >= 71 and x+bx + p01 <= 77) and (y+by = 94)) or
--	((x +bx + p01 >= 72 and x+bx + p01 <= 77) and (y+by = 95)) or
--	((x +bx + p01 >= 72 and x+bx + p01 <= 77) and (y+by = 96)) or
--	((x +bx + p01 >= 72 and x+bx + p01 <= 77) and (y+by = 97)) or
--	((x +bx + p01 >= 73 and x+bx + p01 <= 77) and (y+by = 98)) or
--	((x +bx + p01 >= 73 and x+bx + p01 <= 77) and (y+by = 99)) or
--	((x +bx + p01 >= 74 and x+bx + p01 <= 77) and (y+by = 100)) or
--	((x +bx + p01 >= 74 and x+bx + p01 <= 77) and (y+by = 101)) or
--	((x +bx + p01 >= 74 and x+bx + p01 <= 77) and (y+by = 102)) or
--	((x +bx + p01 >= 74 and x+bx + p01 <= 77) and (y+by = 103)) or
--	((x +bx + p01 >= 73 and x+bx + p01 <= 77) and (y+by = 104)) or
--	((x +bx + p01 >= 73 and x+bx + p01 <= 77) and (y+by = 105)) or
--	((x +bx + p01 >= 72 and x+bx + p01 <= 76) and (y+by = 106)) or
--	((x +bx + p01 >= 71 and x+bx + p01 <= 75) and (y+by = 107)) or
--	((x +bx + p01 >= 70 and x+bx + p01 <= 75) and (y+by = 108)) or
--	((x +bx + p01 >= 70 and x+bx + p01 <= 74) and (y+by = 109)) or
--	((x +bx + p01 >= 69 and x+bx + p01 <= 73) and (y+by = 110)) or
--	((x +bx + p01 >= 68 and x+bx + p01 <= 72) and (y+by = 111)) or
--	((x +bx + p01 >= 67 and x+bx + p01 <= 71) and (y+by = 112)) or
--	((x +bx + p01 >= 67 and x+bx + p01 <= 70) and (y+by = 113)) or
--	((x +bx + p01 >= 66 and x+bx + p01 <= 69) and (y+by = 114)) or
--	((x +bx + p01 >= 66 and x+bx + p01 <= 70) and (y+by = 115)) or
--	((x +bx + p01 >= 66 and x+bx + p01 <= 74) and (y+by = 116)) or
--	((x +bx + p01 >= 67 and x+bx + p01 <= 76) and (y+by = 117)) or
--	((x +bx + p01 >= 69 and x+bx + p01 <= 76) and (y+by = 118)) or
--	((x +bx + p01 >= 69 and x+bx + p01 <= 76) and (y+by = 118)) or
--
--	----gauche mkesla
--	((x +bx + p01 >= 83 and x+bx + p01 <= 87) and (y+by = 92)) or
--	((x +bx + p01 >= 83 and x+bx + p01 <= 87) and (y+by = 93)) or
--	((x +bx + p01 >= 83 and x+bx + p01 <= 87) and (y+by = 94)) or
--	((x +bx + p01 >= 84 and x+bx + p01 <= 87) and (y+by = 95)) or
--	((x +bx + p01 >= 84 and x+bx + p01 <= 87) and (y+by = 96)) or
--	((x +bx + p01 >= 85 and x+bx + p01 <= 87) and (y+by = 97)) or
--	((x +bx + p01 >= 85 and x+bx + p01 <= 88) and (y+by = 98)) or
--	((x +bx + p01 >= 85 and x+bx + p01 <= 89) and (y+by = 99)) or
--	((x +bx + p01 >= 86 and x+bx + p01 <= 89) and (y+by = 100))or
--	((x +bx + p01 >= 86 and x+bx + p01 <= 89) and (y+by = 101)) or
--	((x +bx + p01 >= 87 and x+bx + p01 <= 90) and (y+by = 102)) or
--	((x +bx + p01 >= 87 and x+bx + p01 <= 90) and (y+by = 103)) or
--	((x +bx + p01 >= 87 and x+bx + p01 <= 91) and (y+by = 104)) or
--	((x +bx + p01 >= 88 and x+bx + p01 <= 91) and (y+by = 105)) or
--	((x +bx + p01 >= 88 and x+bx + p01 <= 91) and (y+by = 106)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 92) and (y+by = 107)) or
--	((x +bx + p01 >= 89 and x+bx + p01 <= 92) and (y+by = 108)) or
--	((x +bx + p01 >= 90 and x+bx + p01 <= 93) and (y+by = 109)) or
--	((x +bx + p01 >= 91 and x+bx + p01 <= 94) and (y+by = 110)) or
--	((x +bx + p01 >= 91 and x+bx + p01 <= 95) and (y+by = 111)) or
--	((x +bx + p01 >= 92 and x+bx + p01 <= 95) and (y+by = 112)) or
--	((x +bx + p01 >= 92 and x+bx + p01 <= 96) and (y+by = 113)) or
--	((x +bx + p01 >= 93 and x+bx + p01 <= 97) and (y+by = 114)) or
--	((x +bx + p01 >= 94 and x+bx + p01 <= 97) and (y+by = 115)) or
--	((x +bx + p01 >= 94 and x+bx + p01 <= 104) and (y +by >= 115 and y+by <= 119))
--
--	) and (counter="01101"))
--
--	
--
--		
--		or 	(
--	--**********************************************************************11*******************************************************************
--		(((x + bx   >= 75) and (x + bx   <= 82) and (y + by = 29)) or
--	((x + bx   >= 72) and (x + bx   <= 85) and (y + by = 30)) or
--	((x + bx   >= 70) and (x + bx   <= 87) and (y + by = 31)) or
--	((x + bx   >= 70) and (x + bx   <= 89) and (y + by = 32)) or
--	((x + bx   >= 68) and (x + bx   <= 89) and (y + by = 33)) or
--	((x + bx   >= 68) and (x + bx   <= 90) and (y + by = 34)) or
--	((x + bx   >= 66) and (x + bx   <= 90) and (y + by = 35)) or
--	((x + bx   >= 66) and (x + bx   <= 90) and (y + by = 36)) or
--	((x + bx   >= 66) and (x + bx   <= 91) and (y + by = 37)) or
--	
--((((x + bx   >= 65) and (x + bx   <= 71)) or ((x + bx   >= 76) and (x + bx   <= 81)) or ((x + bx   >= 87) and (x + bx   <= 91))) and (y + by = 38)) or
--((((x + bx   >= 65) and (x + bx   <= 71)) or ((x + bx   >= 76) and (x + bx   <= 81)) or ((x + bx   >= 87) and (x + bx   <= 91))) and (y + by = 39)) or
--((((x + bx   >= 65) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 81)) or ((x + bx   >= 87) and (x + bx   <= 91))) and (y + by = 40)) or
--((((x + bx   >= 65) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 80)) or ((x + bx   >= 87) and (x + bx   <= 91))) and (y + by = 41)) or
--((((x + bx   >= 66) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 80)) or ((x + bx   >= 87) and (x + bx   <= 90))) and (y + by = 42)) or
--((((x + bx   >= 66) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 80)) or ((x + bx   >= 87) and (x + bx   <= 90))) and (y + by = 43)) or
--((((x + bx   >= 66) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 81)) or ((x + bx   >= 86) and (x + bx   <= 89))) and (y + by = 44)) or
--((((x + bx   >= 68) and (x + bx   <= 71)) or ((x + bx   >= 76) and (x + bx   <= 81)) or ((x + bx   >= 86) and (x + bx   <= 89))) and (y + by = 45)) or
--((((x + bx   >= 69) and (x + bx   <= 76)) or (x + bx   = 78) or ((x + bx   >= 80) and (x + bx   <= 87))) and (y + by = 46)) or
--((((x + bx   >= 71) and (x + bx   <= 76)) or (x + bx   = 78) or ((x + bx   >= 80) and (x + bx   <= 87))) and (y + by = 47)) or
--
--	((x + bx   >= 74) and (x + bx   <= 83) and (y + by = 48)) or
--	((x + bx   >= 77) and (x + bx   <= 79) and (y + by = 49)) or
--	((((x + bx   >= 71) and (x + bx   <= 72)) or ((x + bx   >= 85) and (x + bx   <= 85))) and (y + by = 50)) or
--	((((x + bx   >= 72) and (x + bx   <= 75)) or ((x + bx   >= 81) and (x + bx   <= 85))) and (y + by = 51)) or
--	((x + bx   >= 73) and (x + bx   <= 84) and (y + by = 52)) or
--	((x + bx   >= 74) and (x + bx   <= 83) and (y + by = 53)) or
--	((x + bx   >= 75) and (x + bx   <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx   >= 66 and x+bx   <= 67) or (x +bx   >= 89 and x+bx   <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx   >= 68 and x+bx   <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx   >= 77 and x+bx   <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx   >= 68) and (x + bx   <= 76)) or ((x + bx   >= 82) and (x + bx   <= 89))) and (y + by = 81)) or
--	((((x + bx   >= 68) and (x + bx   <= 76)) or ((x + bx   >= 82) and (x + bx   <= 89))) and (y + by = 82)) or
--	((((x + bx   >= 68) and (x + bx   <= 78)) or ((x + bx   >= 80) and (x + bx   <= 89))) and (y + by = 83)) or
--	((x + bx   >= 68) and (x + bx   <= 89) and (y + by = 84)) or
--	((x + bx   >= 68) and (x + bx   <= 89) and (y + by = 85)) or
--	((x + bx   >= 69) and (x + bx   <= 88) and (y + by = 86)) or
--	((x + bx   >= 70) and (x + bx   <= 88) and (y + by = 87)) or
--	((x + bx   >= 72) and (x + bx   <= 86) and (y + by = 88)) or
--	((x + bx   >= 74) and (x + bx   <= 84) and (y + by = 89)) or
--	((x + bx   >= 75) and (x + bx   <= 82) and (y + by = 90)) or
--	((x + bx   >= 77) and (x + bx   <= 80) and (y + by = 91)) or
--	((x + bx   >= 78) and (x + bx   <= 78) and (y + by = 92)) or
--		--gauche metwiya
--	((x +bx   >= 89 and x+bx   <= 89) and (y+by = 57)) or
--	((x +bx   >= 89 and x+bx   <= 89) and (y+by = 58)) or
--	((x +bx   >= 89 and x+bx   <= 90) and (y+by = 59)) or
--	((x +bx   >= 89 and x+bx   <= 91) and (y+by = 60)) or
--	((x +bx   >= 89 and x+bx   <= 92) and (y+by = 61)) or
--	((x +bx   >= 89 and x+bx   <= 93) and (y+by = 62)) or
--	((x +bx   >= 89 and x+bx   <= 94) and (y+by = 63)) or
--	((x +bx   >= 93 and x+bx   <= 95) and (y+by = 64)) or
--	((x +bx   >= 94 and x+bx   <= 96) and (y+by = 65 ))or
--	((x +bx   >= 95 and x+bx   <= 97) and (y+by = 66 ))or
--	((x +bx   >= 96 and x+bx   <= 98) and (y+by = 67)) or
--	((x +bx   >= 97 and x+bx   <= 99) and (y+by = 68)) or
--	((x +bx   >= 98 and x+bx   <= 100) and (y+by = 69)) or
--	((x +bx   >= 97 and x+bx   <= 101) and (y+by = 70)) or
--	((x +bx   >= 96 and x+bx   <= 101) and (y+by = 71)) or
--	((x +bx   >= 94 and x+bx   <= 100) and (y+by = 72)) or
--	((x +bx   >= 93 and x+bx   <= 99) and (y+by = 73)) or
--	((x +bx   >= 92 and x+bx   <= 98) and (y+by = 74)) or
--	((x +bx   >= 91 and x+bx   <= 97) and (y+by = 75)) or
--	((x +bx   >= 90 and x+bx   <= 95) and (y+by = 76)) or
--	((x +bx   >= 90 and x+bx   <= 94 ) and (y+by = 77)) or
--	((x +bx   >= 90 and x+bx   <= 93 ) and (y+by = 78)) or
--	((x +bx   >= 91 and x+bx   <= 93 ) and (y+by = 79)) or
--	((x +bx   >= 91 and x+bx   <= 94 ) and (y+by = 80)) or
--	((x +bx   >= 92 and x+bx   <= 95 ) and (y+by = 81)) or
--	((x +bx   >= 93 and x+bx   <= 95 ) and (y+by = 82)) or
--	((x +bx   >= 93 and x+bx   <= 96 ) and (y+by = 83)) or
--	((x +bx   >= 94 and x+bx   <= 96 ) and (y+by = 84)) or
--		--droite tal3a
--		((x +bx   >= 43 and x+bx   <= 47) and (y+by = 43)) or
--	((x +bx   >= 43 and x+bx   <= 48) and (y+by = 44)) or
--	((x +bx   >= 44 and x+bx   <= 49) and (y+by = 45)) or
--	((x +bx   >= 46 and x+bx   <= 51) and (y+by = 46)) or
--	((x +bx   >= 47 and x+bx   <= 52) and (y+by = 47)) or
--	((x +bx   >= 48 and x+bx   <= 54) and (y+by = 48)) or
--	((x +bx   >= 49 and x+bx   <= 55) and (y+by = 49)) or
--	((x +bx   >= 49 and x+bx   <= 56) and (y+by = 50)) or
--	((x +bx   >= 50 and x+bx   <= 58) and (y+by = 51 ))or
--	((x +bx   >= 51 and x+bx   <= 59) and (y+by = 52 ))or
--	((x +bx   >= 53 and x+bx   <= 61) and (y+by = 53)) or
--	((x +bx   >= 53 and x+bx   <= 62) and (y+by = 54)) or
--	((x +bx   >= 54 and x+bx   <= 63) and (y+by = 55)) or
--	((x +bx   >= 55 and x+bx   <= 68) and (y+by = 56)) or
--	((x +bx   >= 57 and x+bx   <= 68) and (y+by = 57))or
--	((x +bx   >= 58 and x+bx   <= 68) and (y+by = 58)) or
--	((x +bx   >= 60 and x+bx   <= 68) and (y+by = 59)) or
--	((x +bx   >= 61 and x+bx   <= 67) and (y+by = 60)) or
--	((x +bx   >= 62 and x+bx   <= 66) and (y+by = 61)) or
--	((x +bx   >= 64 and x+bx   <= 66) and (y+by = 62)) or
--	((x +bx   >= 65 and x+bx   <= 66 ) and (y+by = 63)) or
----pied
--	---droite leldakhel
--	((x +bx   >= 71 and x+bx   <= 6) and (y+by = 92)) or
--	((x +bx   >= 71 and x+bx   <=77) and (y+by = 93)) or
--	((x +bx   >= 71 and x+bx   <= 77) and (y+by = 94)) or
--	((x +bx   >= 72 and x+bx   <= 77) and (y+by = 95)) or
--	((x +bx   >= 72 and x+bx   <= 77) and (y+by = 96)) or
--	((x +bx   >= 72 and x+bx   <= 77) and (y+by = 97)) or
--	((x +bx   >= 73 and x+bx   <= 77) and (y+by = 98)) or
--	((x +bx   >= 73 and x+bx   <= 77) and (y+by = 99)) or
--	((x +bx   >= 74 and x+bx   <= 77) and (y+by = 100)) or
--	((x +bx   >= 74 and x+bx   <= 77) and (y+by = 101)) or
--	((x +bx   >= 74 and x+bx   <= 77) and (y+by = 102)) or
--	((x +bx   >= 74 and x+bx   <= 77) and (y+by = 103)) or
--	((x +bx   >= 73 and x+bx   <= 77) and (y+by = 104)) or
--	((x +bx   >= 73 and x+bx   <= 77) and (y+by = 105)) or
--	((x +bx   >= 72 and x+bx   <= 76) and (y+by = 106)) or
--	((x +bx   >= 71 and x+bx   <= 75) and (y+by = 107)) or
--	((x +bx   >= 70 and x+bx   <= 75) and (y+by = 108)) or
--	((x +bx   >= 70 and x+bx   <= 74) and (y+by = 109)) or
--	((x +bx   >= 69 and x+bx   <= 73) and (y+by = 110)) or
--	((x +bx   >= 68 and x+bx   <= 72) and (y+by = 111)) or
--	((x +bx   >= 67 and x+bx   <= 71) and (y+by = 112)) or
--	((x +bx   >= 67 and x+bx   <= 70) and (y+by = 113)) or
--	((x +bx   >= 66 and x+bx   <= 69) and (y+by = 114)) or
--	((x +bx   >= 66 and x+bx   <= 70) and (y+by = 115)) or
--	((x +bx   >= 66 and x+bx   <= 74) and (y+by = 116)) or
--	((x +bx   >= 67 and x+bx   <= 76) and (y+by = 117)) or
--	((x +bx   >= 69 and x+bx   <= 76) and (y+by = 118)) or
--	((x +bx   >= 69 and x+bx   <= 76) and (y+by = 118)) or
--
--	----gauche mkesla
--	((x +bx   >= 83 and x+bx   <= 87) and (y+by = 92)) or
--	((x +bx   >= 83 and x+bx   <= 87) and (y+by = 93)) or
--	((x +bx   >= 83 and x+bx   <= 87) and (y+by = 94)) or
--	((x +bx   >= 84 and x+bx   <= 87) and (y+by = 95)) or
--	((x +bx   >= 84 and x+bx   <= 87) and (y+by = 96)) or
--	((x +bx   >= 85 and x+bx   <= 87) and (y+by = 97)) or
--	((x +bx   >= 85 and x+bx   <= 88) and (y+by = 98)) or
--	((x +bx   >= 85 and x+bx   <= 89) and (y+by = 99)) or
--	((x +bx   >= 86 and x+bx   <= 89) and (y+by = 100))or
--	((x +bx   >= 86 and x+bx   <= 89) and (y+by = 101)) or
--	((x +bx   >= 87 and x+bx   <= 90) and (y+by = 102)) or
--	((x +bx   >= 87 and x+bx   <= 90) and (y+by = 103)) or
--	((x +bx   >= 87 and x+bx   <= 91) and (y+by = 104)) or
--	((x +bx   >= 88 and x+bx   <= 91) and (y+by = 105)) or
--	((x +bx   >= 88 and x+bx   <= 91) and (y+by = 106)) or
--	((x +bx   >= 89 and x+bx   <= 92) and (y+by = 107)) or
--	((x +bx   >= 89 and x+bx   <= 92) and (y+by = 108)) or
--	((x +bx   >= 90 and x+bx   <= 93) and (y+by = 109)) or
--	((x +bx   >= 91 and x+bx   <= 94) and (y+by = 110)) or
--	((x +bx   >= 91 and x+bx   <= 95) and (y+by = 111)) or
--	((x +bx   >= 92 and x+bx   <= 95) and (y+by = 112)) or
--	((x +bx   >= 92 and x+bx   <= 96) and (y+by = 113)) or
--	((x +bx   >= 93 and x+bx   <= 97) and (y+by = 114)) or
--	((x +bx   >= 94 and x+bx   <= 97) and (y+by = 115)) or
--	((x +bx   >= 94 and x+bx   <= 104) and (y +by >= 115 and y+by <= 119))
--
--	) and (counter="01110"))
--
--	
--
--	or
--
--	((((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or
--
--	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or
--
--	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or
--
--	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or
--
--	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or
--
--	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or
--
--	
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or
--
--((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or
--
--((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or
--
--((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or
--
--
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or
--
--	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or
--
--	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or
--
--	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or
--
--	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or
--
--	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or
--
--	-----------------dbut 9afas
--
--	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--
--	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--
--	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or
--
--	-----------------7awd
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or
--
--	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or
--
--	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or
--
--	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or
--
--	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or
--
--	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or
--
--	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or
--
--	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or
--
--	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or
--
--	------------------Mains normal
--
--	
--
--	((y +by >= 60 and y+by <= 64) and (x+bx = 67)) or
--
--	((y +by >= 60 and y+by <= 64) and (x+bx = 66)) or
--
--	((y +by >= 60 and y+by <= 66) and (x+bx = 65 )) or
--
--	((y +by >= 61 and y+by <= 67) and (x+bx = 64 )) or
--
--	((y +by >= 63 and y+by <= 69) and (x+bx = 63 )) or
--
--	((y +by >= 65 and y+by <= 83) and (x+bx = 62 )) or
--
--	((y +by >= 66 and y+by <= 83) and (x+bx = 61 )) or
--
--	((y +by >= 68 and y+by <= 84) and (x+bx = 60 )) or
--
--	((y +by >= 83 and y+by <= 88) and (x+bx = 59 )) or
--
--	((y +by >= 83 and y+by <= 88) and (x+bx = 58 )) or
--
--	--gauche tal3a
--	((x +bx >= 107 and x+bx <= 111) and (y+by = 43)) or
--	((x +bx >= 107 and x+bx <= 111) and (y+by = 44)) or
--	((x +bx >= 106 and x+bx <= 110) and (y+by = 45)) or
--	((x +bx >= 105 and x+bx <= 109) and (y+by = 46)) or
--	((x +bx >= 104 and x+bx <= 108) and (y+by = 47)) or
--	((x +bx >= 103 and x+bx <= 107) and (y+by = 48)) or
--	((x +bx >= 102 and x+bx <= 105) and (y+by = 49)) or
--	((x +bx >= 102 and x+bx <= 105) and (y+by = 50)) or
--	((x +bx >= 101 and x+bx <= 104) and (y+by = 51 ))or
--	((x +bx >= 100 and x+bx <= 103) and (y+by = 52 ))or
--	((x +bx >= 98 and x+bx <= 102) and (y+by = 53)) or
--	((x +bx >= 98 and x+bx <= 101) and (y+by = 54)) or
--	((x +bx >= 97 and x+bx <= 100) and (y+by = 55)) or
--	((x +bx >= 96 and x+bx <= 99) and (y+by = 56)) or
--	((x +bx >= 95 and x+bx <= 98) and (y+by = 57))or
--	((x +bx >= 94 and x+bx <= 98) and (y+by = 58)) or
--	((x +bx >= 92 and x+bx <= 97) and (y+by = 59)) or
--	((x +bx >= 91 and x+bx <= 96) and (y+by = 60)) or
--	((x +bx >= 90 and x+bx <= 95) and (y+by = 61)) or
--	((x +bx >= 89 and x+bx <= 94) and (y+by = 62)) or
--	((x +bx >= 87 and x+bx <= 93) and (y+by = 63)) or
--
--	
--
--	------------------pieds normal
--
--	((y +by >= 92 and y+by <= 118) and ((x+bx >= 72 and x+bx <= 74) or (x+bx >= 83 and x+bx <= 85))) or
--
--	((y +by >= 116 and y+by <= 118) and ((x+bx >= 86 and x+bx <= 90) or (x+bx >= 67 and x+bx <= 71))) 
--
--
--
--	) and (counter="01111"))
--
--	
--
--	or
--
--	
--
--	((((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or
--
--	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or
--
--	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or
--
--	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or
--
--	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or
--
--	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or
--
--	
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or
--
--((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or
--
--((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or
--
--((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or
--
--
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or
--
--	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or
--
--	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or
--
--	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or
--
--	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or
--
--	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or
--
--	-----------------dbut 9afas
--
--	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--
--	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--
--	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or
--
--	-----------------7awd
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or
--
--	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or
--
--	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or
--
--	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or
--
--	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or
--
--	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or
--
--	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or
--
--	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or
--
--	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or
--
--	------------------Mains gauche normal
--
--	
--
--	((y +by >= 60 and y+by <= 64) and (x +bx= 90)) or
--
--	((y +by >= 60 and y+by <= 64) and (x+bx = 91)) or
--
--	((y +by >= 60 and y+by <= 66) and ( x+bx = 92)) or
--
--	((y +by >= 61 and y+by <= 67) and (x+bx = 93)) or
--
--	((y +by >= 63 and y+by <= 69) and ( x+bx = 94)) or
--
--	((y +by >= 65 and y+by <= 83) and (x+bx = 95)) or
--
--	((y +by >= 66 and y+by <= 83) and (x+bx= 96)) or
--
--	((y +by >= 68 and y+by <= 84) and (x+bx = 97)) or
--
--	((y +by >= 83 and y+by <= 88) and ( x+bx = 98)) or
--
--	((y +by >= 83 and y+by <= 88) and ( x+bx = 99)) or
--
--	
--
--		--droite tal3a
--		((x +bx >= 43 and x+bx <= 47) and (y+by = 43)) or
--	((x +bx >= 43 and x+bx <= 48) and (y+by = 44)) or
--	((x +bx >= 44 and x+bx <= 49) and (y+by = 45)) or
--	((x +bx >= 46 and x+bx <= 51) and (y+by = 46)) or
--	((x +bx >= 47 and x+bx <= 52) and (y+by = 47)) or
--	((x +bx >= 48 and x+bx <= 54) and (y+by = 48)) or
--	((x +bx >= 49 and x+bx <= 55) and (y+by = 49)) or
--	((x +bx >= 49 and x+bx <= 56) and (y+by = 50)) or
--	((x +bx >= 50 and x+bx <= 58) and (y+by = 51 ))or
--	((x +bx >= 51 and x+bx <= 59) and (y+by = 52 ))or
--	((x +bx >= 53 and x+bx <= 61) and (y+by = 53)) or
--	((x +bx >= 53 and x+bx <= 62) and (y+by = 54)) or
--	((x +bx >= 54 and x+bx <= 63) and (y+by = 55)) or
--	((x +bx >= 55 and x+bx <= 68) and (y+by = 56)) or
--	((x +bx >= 57 and x+bx <= 68) and (y+by = 57))or
--	((x +bx >= 58 and x+bx <= 68) and (y+by = 58)) or
--	((x +bx >= 60 and x+bx <= 68) and (y+by = 59)) or
--	((x +bx >= 61 and x+bx <= 67) and (y+by = 60)) or
--	((x +bx >= 62 and x+bx <= 66) and (y+by = 61)) or
--	((x +bx >= 64 and x+bx <= 66) and (y+by = 62)) or
--	((x +bx >= 65 and x+bx <= 66 ) and (y+by = 63)) or
--
--	------------------pieds normal
--
--	((y +by >= 92 and y+by <= 118) and ((x+bx >= 72 and x+bx <= 74) or (x+bx >= 83 and x+bx <= 85))) or
--
--	((y +by >= 116 and y+by <= 118) and ((x+bx >= 86 and x+bx <= 90) or (x+bx >= 67 and x+bx <= 71))) 
--
--
--
--	) and (counter="10001"))
--
--	
--
--	or(
--
--	(((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or
--
--	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or
--
--	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or
--
--	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or
--
--	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or
--
--	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or
--
--	
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or
--
--((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or
--
--((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or
--
--((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or
--
--
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or
--
--	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or
--
--	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or
--
--	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or
--
--	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or
--
--	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or
--
--	-----------------dbut 9afas
--
--	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--
--	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--
--	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or
--
--	-----------------7awd
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or
--
--	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or
--
--	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or
--
--	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or
--
--	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or
--
--	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or
--
--	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or
--
--	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or
--
--	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or
--
--	------------------Mains normal
--
--	
--
--		--droite tal3a
--		((x +bx >= 43 and x+bx <= 47) and (y+by = 43)) or
--	((x +bx >= 43 and x+bx <= 48) and (y+by = 44)) or
--	((x +bx >= 44 and x+bx <= 49) and (y+by = 45)) or
--	((x +bx >= 46 and x+bx <= 51) and (y+by = 46)) or
--	((x +bx >= 47 and x+bx <= 52) and (y+by = 47)) or
--	((x +bx >= 48 and x+bx <= 54) and (y+by = 48)) or
--	((x +bx >= 49 and x+bx <= 55) and (y+by = 49)) or
--	((x +bx >= 49 and x+bx <= 56) and (y+by = 50)) or
--	((x +bx >= 50 and x+bx <= 58) and (y+by = 51 ))or
--	((x +bx >= 51 and x+bx <= 59) and (y+by = 52 ))or
--	((x +bx >= 53 and x+bx <= 61) and (y+by = 53)) or
--	((x +bx >= 53 and x+bx <= 62) and (y+by = 54)) or
--	((x +bx >= 54 and x+bx <= 63) and (y+by = 55)) or
--	((x +bx >= 55 and x+bx <= 68) and (y+by = 56)) or
--	((x +bx >= 57 and x+bx <= 68) and (y+by = 57))or
--	((x +bx >= 58 and x+bx <= 68) and (y+by = 58)) or
--	((x +bx >= 60 and x+bx <= 68) and (y+by = 59)) or
--	((x +bx >= 61 and x+bx <= 67) and (y+by = 60)) or
--	((x +bx >= 62 and x+bx <= 66) and (y+by = 61)) or
--	((x +bx >= 64 and x+bx <= 66) and (y+by = 62)) or
--	((x +bx >= 65 and x+bx <= 66 ) and (y+by = 63)) or
--
--	--gauche tal3a
--	((x +bx >= 107 and x+bx <= 111) and (y+by = 43)) or
--	((x +bx >= 107 and x+bx <= 111) and (y+by = 44)) or
--	((x +bx >= 106 and x+bx <= 110) and (y+by = 45)) or
--	((x +bx >= 105 and x+bx <= 109) and (y+by = 46)) or
--	((x +bx >= 104 and x+bx <= 108) and (y+by = 47)) or
--	((x +bx >= 103 and x+bx <= 107) and (y+by = 48)) or
--	((x +bx >= 102 and x+bx <= 105) and (y+by = 49)) or
--	((x +bx >= 102 and x+bx <= 105) and (y+by = 50)) or
--	((x +bx >= 101 and x+bx <= 104) and (y+by = 51 ))or
--	((x +bx >= 100 and x+bx <= 103) and (y+by = 52 ))or
--	((x +bx >= 98 and x+bx <= 102) and (y+by = 53)) or
--	((x +bx >= 98 and x+bx <= 101) and (y+by = 54)) or
--	((x +bx >= 97 and x+bx <= 100) and (y+by = 55)) or
--	((x +bx >= 96 and x+bx <= 99) and (y+by = 56)) or
--	((x +bx >= 95 and x+bx <= 98) and (y+by = 57))or
--	((x +bx >= 94 and x+bx <= 98) and (y+by = 58)) or
--	((x +bx >= 92 and x+bx <= 97) and (y+by = 59)) or
--	((x +bx >= 91 and x+bx <= 96) and (y+by = 60)) or
--	((x +bx >= 90 and x+bx <= 95) and (y+by = 61)) or
--	((x +bx >= 89 and x+bx <= 94) and (y+by = 62)) or
--	((x +bx >= 87 and x+bx <= 93) and (y+by = 63)) or
--
--	--pieds---droite layer 7
--	((x +bx >= 71 and x+bx <= 74) and (y+by = 92)) or
--	((x +bx >= 70 and x+bx <=74 )and (y+by = 93)) or
--	((x +bx >= 69 and x+bx <= 74) and (y+by = 94)) or
--	((x +bx >= 68 and x+bx <= 74) and (y+by = 95)) or
--	((x +bx >= 66 and x+bx <= 72) and (y+by = 96)) or
--	((x +bx >= 65 and x+bx <= 70) and (y+by = 97)) or
--	((x +bx >= 65 and x+bx <= 69) and (y+by = 98)) or
--	((x +bx >= 64 and x+bx <= 67) and (y+by = 99)) or
--	((x +bx >= 63 and x+bx <= 66) and (y+by = 100)) or
--	((x +bx >= 62 and x+bx <= 65) and (y+by = 101)) or
--	((x +bx >= 62 and x+bx <= 65) and (y+by = 102)) or
--	((x +bx >= 62 and x+bx <= 66) and (y+by = 103)) or
--	((x +bx >= 63 and x+bx <= 67) and (y+by = 104)) or
--	((x +bx >= 63 and x+bx <= 68) and (y+by = 105)) or
--	((x +bx >= 64 and x+bx <= 69) and (y+by = 106)) or
--	((x +bx >= 65 and x+bx <= 70) and (y+by = 107)) or
--	((x +bx >= 66 and x+bx <= 71) and (y+by = 108)) or
--	((x +bx >= 66 and x+bx <= 72) and (y+by = 109)) or
--	((x +bx >= 67 and x+bx <= 73) and (y+by = 110)) or
--	((x +bx >= 68 and x+bx <= 74) and (y+by = 111)) or
--	((x +bx >= 68 and x+bx <= 75) and (y+by = 112)) or
--	((x +bx >= 69 and x+bx <= 75) and (y+by = 113)) or
--	((x +bx >= 70 and x+bx <= 75) and (y+by = 114)) or
--
--	----gauche leldakhel
--		----gauche leldakhel
--	((x +bx >= 80 and x+bx <= 87) and (y+by = 92)) or
--	((x +bx >= 80 and x+bx <= 87) and (y+by = 93)) or
--	((x +bx >= 80 and x+bx <= 86) and (y+by = 94)) or
--	((x +bx >= 80 and x+bx <= 86) and (y+by = 95)) or
--	((x +bx >= 80 and x+bx <= 85) and (y+by = 96)) or
--	((x +bx >= 80 and x+bx <= 85) and (y+by = 97)) or
--	((x +bx >= 80 and x+bx <= 84) and (y+by = 98)) or
--	((x +bx >= 80 and x+bx <= 84) and (y+by = 99)) or
--	((x +bx >= 80 and x+bx <= 83) and (y+by = 100))or
--	((x +bx >= 80 and x+bx <= 83) and (y+by = 101)) or
--	((x +bx >= 80 and x+bx <= 83) and (y+by = 102)) or
--	((x +bx >= 80 and x+bx <= 83) and (y+by = 103)) or
--	((x +bx >= 80 and x+bx <= 83) and (y+by = 104)) or
--	((x +bx >= 81 and x+bx <= 84) and (y+by = 105)) or
--	((x +bx >= 81 and x+bx <= 84) and (y+by = 106)) or
--	((x +bx >= 82 and x+bx <= 85) and (y+by = 107)) or
--	((x +bx >= 83 and x+bx <= 86) and (y+by = 108)) or
--	((x +bx >= 83 and x+bx <= 87) and (y+by = 109)) or
--	((x +bx >= 84 and x+bx <= 87) and (y+by = 110)) or
--	((x +bx >= 85 and x+bx <= 88) and (y+by = 111)) or
--	((x +bx >= 86 and x+bx <= 89) and (y+by = 112)) or
--	((x +bx >= 87 and x+bx <= 91) and (y+by = 113)) or
--	((x +bx >= 88 and x+bx <= 92) and (y+by = 114)) or
--	((x +bx >= 88 and x+bx <= 92) and (y+by = 115)) or
--	((x +bx >= 86 and x+bx <= 92) and (y+by = 116)) or
--	((x +bx >= 85 and x+bx <= 92) and (y+by = 117)) or
--	((x +bx >= 83 and x+bx <= 90) and (y+by = 118)) or
--
--	--((x +bx >= 66 and x+bx <= 70) and (y+by = 115)) or
--((x +bx >= 65 and x+bx <= 75) and (y +by >= 115 and y+by <= 119))
--
--	) and (counter="10011"))
--
--	
--
--	or 
--
--	((((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or
--
--	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or
--
--	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or
--
--	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or
--
--	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or
--
--	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or
--
--	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or
--
--	
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or
--
--((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or
--
--((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or
--
--((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or
--
--((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or
--
--((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or
--
--((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or
--
--
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or
--
--	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or
--
--	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or
--
--	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or
--
--	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or
--
--	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or
--
--	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or
--
--	-----------------dbut 9afas
--
--	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--
--	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--
--	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or
--
--	-----------------7awd
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or
--
--	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or
--
--	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or
--
--	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or
--
--	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or
--
--	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or
--
--	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or
--
--	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or
--
--	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or
--
--	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or
--
--	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or
--
--	------------------Mains normal
--
--		--droite tal3a
--		((x +bx >= 43 and x+bx <= 47) and (y+by = 43)) or
--	((x +bx >= 43 and x+bx <= 48) and (y+by = 44)) or
--	((x +bx >= 44 and x+bx <= 49) and (y+by = 45)) or
--	((x +bx >= 46 and x+bx <= 51) and (y+by = 46)) or
--	((x +bx >= 47 and x+bx <= 52) and (y+by = 47)) or
--	((x +bx >= 48 and x+bx <= 54) and (y+by = 48)) or
--	((x +bx >= 49 and x+bx <= 55) and (y+by = 49)) or
--	((x +bx >= 49 and x+bx <= 56) and (y+by = 50)) or
--	((x +bx >= 50 and x+bx <= 58) and (y+by = 51 ))or
--	((x +bx >= 51 and x+bx <= 59) and (y+by = 52 ))or
--	((x +bx >= 53 and x+bx <= 61) and (y+by = 53)) or
--	((x +bx >= 53 and x+bx <= 62) and (y+by = 54)) or
--	((x +bx >= 54 and x+bx <= 63) and (y+by = 55)) or
--	((x +bx >= 55 and x+bx <= 68) and (y+by = 56)) or
--	((x +bx >= 57 and x+bx <= 68) and (y+by = 57))or
--	((x +bx >= 58 and x+bx <= 68) and (y+by = 58)) or
--	((x +bx >= 60 and x+bx <= 68) and (y+by = 59)) or
--	((x +bx >= 61 and x+bx <= 67) and (y+by = 60)) or
--	((x +bx >= 62 and x+bx <= 66) and (y+by = 61)) or
--	((x +bx >= 64 and x+bx <= 66) and (y+by = 62)) or
--	((x +bx >= 65 and x+bx <= 66 ) and (y+by = 63)) or
--
--	--gauche tal3a
--	((x +bx >= 107 and x+bx <= 111) and (y+by = 43)) or
--	((x +bx >= 107 and x+bx <= 111) and (y+by = 44)) or
--	((x +bx >= 106 and x+bx <= 110) and (y+by = 45)) or
--	((x +bx >= 105 and x+bx <= 109) and (y+by = 46)) or
--	((x +bx >= 104 and x+bx <= 108) and (y+by = 47)) or
--	((x +bx >= 103 and x+bx <= 107) and (y+by = 48)) or
--	((x +bx >= 102 and x+bx <= 105) and (y+by = 49)) or
--	((x +bx >= 102 and x+bx <= 105) and (y+by = 50)) or
--	((x +bx >= 101 and x+bx <= 104) and (y+by = 51 ))or
--	((x +bx >= 100 and x+bx <= 103) and (y+by = 52 ))or
--	((x +bx >= 98 and x+bx <= 102) and (y+by = 53)) or
--	((x +bx >= 98 and x+bx <= 101) and (y+by = 54)) or
--	((x +bx >= 97 and x+bx <= 100) and (y+by = 55)) or
--	((x +bx >= 96 and x+bx <= 99) and (y+by = 56)) or
--	((x +bx >= 95 and x+bx <= 98) and (y+by = 57))or
--	((x +bx >= 94 and x+bx <= 98) and (y+by = 58)) or
--	((x +bx >= 92 and x+bx <= 97) and (y+by = 59)) or
--	((x +bx >= 91 and x+bx <= 96) and (y+by = 60)) or
--	((x +bx >= 90 and x+bx <= 95) and (y+by = 61)) or
--	((x +bx >= 89 and x+bx <= 94) and (y+by = 62)) or
--	((x +bx >= 87 and x+bx <= 93) and (y+by = 63)) or
--
--	
--
--	
--
--	---droite leldakhel
--	((x +bx  >= 71 and x+bx  <= 6) and (y+by = 92)) or
--	((x +bx  >= 71 and x+bx  <=77) and (y+by = 93)) or
--	((x +bx  >= 71 and x+bx  <= 77) and (y+by = 94)) or
--	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 95)) or
--	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 96)) or
--	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 97)) or
--	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 98)) or
--	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 99)) or
--	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 100)) or
--	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 101)) or
--	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 102)) or
--	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 103)) or
--	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 104)) or
--	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 105)) or
--	((x +bx  >= 72 and x+bx  <= 76) and (y+by = 106)) or
--	((x +bx  >= 71 and x+bx  <= 75) and (y+by = 107)) or
--	((x +bx  >= 70 and x+bx  <= 75) and (y+by = 108)) or
--	((x +bx  >= 70 and x+bx  <= 74) and (y+by = 109)) or
--	((x +bx  >= 69 and x+bx  <= 73) and (y+by = 110)) or
--	((x +bx  >= 68 and x+bx  <= 72) and (y+by = 111)) or
--	((x +bx  >= 67 and x+bx  <= 71) and (y+by = 112)) or
--	((x +bx  >= 67 and x+bx  <= 70) and (y+by = 113)) or
--	((x +bx  >= 66 and x+bx  <= 69) and (y+by = 114)) or
--	((x +bx  >= 66 and x+bx  <= 70) and (y+by = 115)) or
--	((x +bx  >= 66 and x+bx  <= 74) and (y+by = 116)) or
--	((x +bx  >= 67 and x+bx  <= 76) and (y+by = 117)) or
--	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or
--	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or
--
--	----gauche layer7
--	((x +bx >= 83 and x+bx <= 86) and (y+by = 92)) or
--	((x +bx >= 83 and x+bx <=87 )and (y+by = 93)) or
--	((x +bx >= 83 and x+bx <= 88) and (y+by = 94)) or
--	((x +bx >= 83 and x+bx <= 90) and (y+by = 95)) or
--	((x +bx >= 84 and x+bx <= 91) and (y+by = 96)) or
--	((x +bx >= 85 and x+bx <= 93) and (y+by = 97)) or
--	((x +bx >= 87 and x+bx <= 94) and (y+by = 98)) or
--	((x +bx >= 89 and x+bx <= 94) and (y+by = 99)) or
--	((x +bx >= 90 and x+bx <= 93) and (y+by = 100)) or
--	((x +bx >= 91 and x+bx <= 93) and (y+by = 101)) or
--	((x +bx >= 90 and x+bx <= 92) and (y+by = 102)) or
--	((x +bx >= 89 and x+bx <= 92) and (y+by = 103)) or
--	((x +bx >= 88 and x+bx <= 91) and (y+by = 104)) or
--	((x +bx >= 87 and x+bx <= 91) and (y+by = 105)) or
--	((x +bx >= 86 and x+bx <= 90) and (y+by = 106)) or
--	((x +bx >= 85 and x+bx <= 90) and (y+by = 107)) or
--	((x +bx >= 84 and x+bx <= 89) and (y+by = 108)) or
--	((x +bx >= 84 and x+bx <= 89) and (y+by = 109)) or
--	((x +bx >= 84 and x+bx <= 89) and (y+by = 110)) or
--	((x +bx >= 83 and x+bx <= 88) and (y+by = 111)) or
--	((x +bx >= 83 and x+bx <= 86) and (y+by = 112)) or
--	((x +bx >= 83 and x+bx <= 86) and (y+by = 113)) or
--	((x +bx >= 83 and x+bx <= 89) and (y+by = 114)) or
--	--((x +bx >= 66 and x+bx <= 70) and (y+by = 115)) or
--((x +bx >= 83 and x+bx <= 93) and (y +by >= 115 and y+by <= 119)) 
--	) and (counter="10110"))or
--	
--	-----------------------------------------------------------------------------------
--	----------------------ESPACE SCORE - Tete de squelette---------------------------------------
--	-----------------------------------------------------------------------------------
--	 ((x>=32 and x<=67) and (y=4)) or 
--	 ((x>=30 and x<=69) and (y=5)) or
--	 ((x>=28 and x<=71) and (y=6)) or
--	 ((x>=26 and x<=73) and (y=7)) or
--	 ((x>=24 and x<=75) and (y=8)) or 
--	 ((x>=23 and x<=76) and (y=9)) or
--	 ((x>=22 and x<=77) and (y=10)) or
--	 ((x>=20 and x<=79) and (y=11))or
--	 ((x>=19 and x<=80) and (y=12)) or 
--	 ((x>=18 and x<=81) and (y=13)) or
--	 ((x>=17 and x<=82) and (y=14)) or
--	 ((x>=16 and x<=83) and (y=15))or
--	 ((x>=15 and x<=84) and (y=16)) or 
--	 ((x>=14 and x<=85) and (y=17)) or
--	 ((x>=13 and x<=86) and (y=18)) or
--	 ((x>=12 and x<=87) and (y=19))or
--	 ((x>=11 and x<=88) and (y=20)) or 
--	 ((x>=11 and x<=88) and (y=21)) or
--	 ((x>=10 and x<=89) and (y=22)) or
--	 ((x>=9 and x<=90) and (y=23))or
--	 ((x>=9 and x<=90) and (y=24))or
--	 ((x>=8 and x<=91) and (y=25))or
--	 ((x>=7 and x<=92) and (y=26))or
--	 ((x>=7 and x<=92) and (y=27))or
--	 ((x>=6 and x<=93) and (y=28))or
--	 ((x>=6 and x<=93) and (y=29))or
--	 ((x>=5 and x<=94) and (y=30))or
--	 ((x>=5 and x<=94) and (y=31))or
--	 ((x>=4 and x<=95) and (y=32))or
--	 ((x>=4 and x<=96) and (y=33))or
--	 ((x>=4 and x<=97) and (y=34))or
--	 ((x>=3 and x<=98) and (y=35))or
--	 ((x>=3 and x<=98) and (y=36))or
--	 ((x>=3 and x<=98) and (y=37))or
--	 ((x>=3 and x<=98) and (y=38))or
--	 ((x>=2 and x<=99) and (y=39))or
--	 ((x>=2  and x<=99) and (y=40))or
--	  
--	 (((x>=1 and x<=28)or (x>=39 and x<=99)) and (y=41))or
--	 (((x>=1 and x<=25) or (x>=42 and x<=70)or (x>=78 and x<=99)) and (y=42))or
--	 (((x>=0 and x<=23) or (x>=44 and x<=67)or (x>=81 and x<=99)) and (y=43))or
--	 (((x>=0 and x<=22) or (x>=45 and x<=65)or (x>=83 and x<=99)) and (y=44))or
--	 (((x>=0 and x<=21) or (x>=46 and x<=64) or (x>=85 and x<=99)) and (y=45))or 
--	 (((x>=0 and x<=20) or (x>=47 and x<=63) or (x>=86 and x<=99)) and (y=46))or 
--	 (((x>=0 and x<=19) or (x>=48 and x<=62) or (x>=87 and x<=99)) and (y=47))or 
--	 (((x>=0 and x<=18) or (x>=49 and x<=61) or (x>=88 and x<=99)) and (y=48))or 
--	 (((x>=0 and x<=17) or (x>=50 and x<=60)or (x>=89 and x<=99)) and (y=49))or 
--	 (((x>=0 and x<=17) or (x>=50 and x<=59) or (x>=89 and x<=99)) and (y=50))or 
--	 (((x>=0 and x<=16) or (x>=51 and x<=58) or (x>=90 and x<=99)) and (y=51))or 
--	 (((x>=0 and x<=16) or (x>=51 and x<=58) or (x>=90 and x<=99)) and (y=52))or 
--	 (((x>=0 and x<=16) or (x>=51 and x<=58) or (x>=90 and x<=99)) and (y=53))or 
--	 (((x>=0 and x<=15) or (x>=52 and x<=58) or (x>=91 and x<=99)) and (y=54))or 
--	 (((x>=0 and x<=15)or (x>=52 and x<=57)or (x>=91 and x<=99)) and (y>=55 and y<=62))or
--	 (((x>=0 and x<=16)or (x>=51 and x<=57)or (x>=91 and x<=99)) and (y=63))or 
--	 (((x>=0 and x<=16)or (x>=51 and x<=57)or (x>=90 and x<=99)) and (y=64))or 
--	 (((x>=0 and x<=16)or (x>=51 and x<=57)or (x>=90 and x<=99)) and (y=65))or 
--	 (((x>=1 and x<=17)or (x>=50 and x<=57) or (x>=90 and x<=98)) and (y=66))or 
--	 (((x>=2 and x<=18)or (x>=49 and x<=57)or (x>=89 and x<=98)) and (y=67))or 
--	 (((x>=3 and x<=18)or (x>=49 and x<=58) or (x>=89 and x<=97)) and (y=68))or 
--	 (((x>=4 and x<=19)or (x>=48 and x<=58)or (x>=88 and x<=97)) and (y=69))or 
--	 (((x>=5 and x<=20)or (x>=48 and x<=59) or (x>=87 and x<=97)) and (y=70))or 
--	 (((x>=5 and x<=21)or (x>=47 and x<=50) or (x>=86 and x<=96)or (x>=55 and x<=60)) and (y=71))or 
--	 (((x>=5 and x<=23)or (x>=45 and x<=50) or (x>=85 and x<=96)or (x>=55 and x<=61)) and (y=72))or  	 
--	 (((x>=5 and x<=24)or (x>=44 and x<=49)or (x>=84 and x<=96)or (x>=55 and x<=62)) and (y=73))or  	 
--	 (((x>=4 and x<=26)or (x>=42 and x<=48) or (x>=83 and x<=96)or (x>=56 and x<=63)) and (y=74))or  	 
--	 (((x>=3 and x<=29)or (x>=39 and x<=47)or (x>=82 and x<=96)or (x>=57 and x<=65)) and (y=75))or  	 
--	 (((x>=3 and x<=46)or (x>=57 and x<=68)or (x>=78 and x<=97)) and (y=76))or  	 
--	 (((x>=3 and x<=45)or (x>=58 and x<=98)) and (y=77))or  	 
--	 (((x>=3 and x<=45)or (x>=58 and x<=98)) and (y=78))or  	 
--	 (((x>=3 and x<=45)or (x>=59 and x<=98)) and (y=79))or  	 
--	 (((x>=3 and x<=45)or (x>=59 and x<=98)) and (y=80))or  	 
--	 (((x>=3 and x<=98)) and (y=81))or  	 
--	 (((x>=3 and x<=98)) and (y=82))or  	 
--	 (((x>=3 and x<=98)) and (y=83))or	-- 
--	 (((x>=3 and x<=21)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=78 and x<=98)) and (y=84))or	 
--	 (((x>=4 and x<=19)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=79 and x<=97)) and (y=85))or	 
--	 (((x>=5 and x<=19)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=80 and x<=97)) and (y=86))or	 
--	 (((x>=6 and x<=18)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=82 and x<=96)) and (y=87))or	 
--	 (((x>=6 and x<=17)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=84 and x<=95)) and (y=88))or	 
--	 (((x>=7 and x<=16)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=92 and x<=94)) and (y=89))or	 
--	 (((x>=8 and x<=15)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=90))or	 
--	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=91))or	 
--	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=92))or	 
--	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=93))or	 
--	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=94))or	 
--	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=95))or	 
--	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=96))or	 
--	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=97))or	 
--	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=98))or	 
--	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=99))	or 
--   ------------------------------------------------------------------------------------------------------------------------------------------------
--	--------------------------------les limites du rectangle--------------------------
--	------------------------------------------------------------------------------------------
--	
--	((x>=289-150 and x<=321-150) and (y+chiffre1=306 ))or
--	((x>=289-150 and x<=321-150) and (y+chiffre1=244 ))or
--	((x=289-150 or x=321-150) and (y+chiffre1>=244 and y+chiffre1<=306 ))or
--   ------------------------------------------------------------------------------------------	
--	------------------------------------le rectangle lifes---------------------------------------
--	----------------------------------------------------------------------------------------------
--	((x+posilifesX>=280 and x+posilifesX<=380) and (y+posilifesY=30 or y+posilifesY=29))or
--	 ((x+posilifesX>=280 and x+posilifesX<=380) and (y+posilifesY=60 or y+posilifesY= 61)) or 
--	 ((x+posilifesX=280 or x+posilifesX=279) and (y+posilifesY>=30 and y+posilifesY<=60)) or
--	 ((x+posilifesX=380 or x+posilifesX=381) and (y+posilifesY>=30 and y+posilifesY<=60)) or 
--	-----------------------------------------------------------------------------------------
--   ---------------------------------------lES FLECHES---------------------------------------	 
--   -----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-15eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--   ((((x+PosiF1X>=527 and x+PosiF1X<=528) and (y+PosiF1Y=100 ))or
--	((x+PosiF1X>=525 and x+PosiF1X<=528) and (y+PosiF1Y=101 ))or
--	((x+PosiF1X>=523 and x+PosiF1X<=528) and (y+PosiF1Y=102 ))or
--	((x+PosiF1X>=521 and x+PosiF1X<=528) and (y+PosiF1Y=103 ))or
--	((x+PosiF1X>=519 and x+PosiF1X<=528) and (y+PosiF1Y=104 ))or
--	((x+PosiF1X>=517 and x+PosiF1X<=528) and (y+PosiF1Y=105))or
--	((x+PosiF1X>=515 and x+PosiF1X<=528) and (y+PosiF1Y=106))or
--	((x+PosiF1X>=513 and x+PosiF1X<=528) and (y+PosiF1Y=107))or
--	((x+PosiF1X>=511 and x+PosiF1X<=528) and (y+PosiF1Y=108 ))or
--	((x+PosiF1X>=509 and x+PosiF1X<=528) and (y+PosiF1Y=109)) or
--	((x+PosiF1X>=507 and x+PosiF1X<=528) and (y+PosiF1Y=110)) or
--	((x+PosiF1X>=505 and x+PosiF1X<=528) and (y+PosiF1Y=111)) or
--	((x+PosiF1X>=503 and x+PosiF1X<=528) and (y+PosiF1Y=112)) or
--	((x+PosiF1X>=501 and x+PosiF1X<=528) and (y+PosiF1Y=113)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF1Y=114)) or
--	((x+PosiF1X>=501 and x+PosiF1X<=528) and (y+PosiF1Y=115)) or
--	((x+PosiF1X>=503 and x+PosiF1X<=528) and (y+PosiF1Y=116)) or
--	((x+PosiF1X>=505 and x+PosiF1X<=528) and (y+PosiF1Y=117)) or
--	((x+PosiF1X>=507 and x+PosiF1X<=528) and (y+PosiF1Y=118)) or
--	((x+PosiF1X>=509 and x+PosiF1X<=528) and (y+PosiF1Y=119)) or
--	((x+PosiF1X>=511 and x+PosiF1X<=528) and (y+PosiF1Y=120 ))or
--	((x+PosiF1X>=513 and x+PosiF1X<=528) and (y+PosiF1Y=121 ))or
--	((x+PosiF1X>=515 and x+PosiF1X<=528) and (y+PosiF1Y=122 ))or
--	((x+PosiF1X>=517 and x+PosiF1X<=528) and (y+PosiF1Y=123 ))or
--	((x+PosiF1X>=519 and x+PosiF1X<=528) and (y+PosiF1Y=124 ))or
--	((x+PosiF1X>=521 and x+PosiF1X<=528) and (y+PosiF1Y=125 ))or
--	((x+PosiF1X>=523 and x+PosiF1X<=528) and (y+PosiF1Y=126 ))or
--	((x+PosiF1X>=525 and x+PosiF1X<=528) and (y+PosiF1Y=127 ))or
--	((x+PosiF1X>=527 and x+PosiF1X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(16)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-14eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF2X>=527 and x+PosiF2X<=528) and (y+PosiF1Y=100 ))or
--	((x+PosiF2X>=525 and x+PosiF2X<=528) and (y+PosiF1Y=101 ))or
--	((x+PosiF2X>=523 and x+PosiF2X<=528) and (y+PosiF1Y=102 ))or
--	((x+PosiF2X>=521 and x+PosiF2X<=528) and (y+PosiF1Y=103 ))or
--	((x+PosiF2X>=519 and x+PosiF2X<=528) and (y+PosiF1Y=104 ))or
--	((x+PosiF2X>=517 and x+PosiF2X<=528) and (y+PosiF1Y=105))or
--	((x+PosiF2X>=515 and x+PosiF2X<=528) and (y+PosiF1Y=106))or
--	((x+PosiF2X>=513 and x+PosiF2X<=528) and (y+PosiF1Y=107))or
--	((x+PosiF2X>=511 and x+PosiF2X<=528) and (y+PosiF1Y=108 ))or
--	((x+PosiF2X>=509 and x+PosiF2X<=528) and (y+PosiF1Y=109)) or
--	((x+PosiF2X>=507 and x+PosiF2X<=528) and (y+PosiF1Y=110)) or
--	((x+PosiF2X>=505 and x+PosiF2X<=528) and (y+PosiF1Y=111)) or
--	((x+PosiF2X>=503 and x+PosiF2X<=528) and (y+PosiF1Y=112)) or
--	((x+PosiF2X>=501 and x+PosiF2X<=528) and (y+PosiF1Y=113)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF1Y=114)) or
--	((x+PosiF2X>=501 and x+PosiF2X<=528) and (y+PosiF1Y=115)) or
--	((x+PosiF2X>=503 and x+PosiF2X<=528) and (y+PosiF1Y=116)) or
--	((x+PosiF2X>=505 and x+PosiF2X<=528) and (y+PosiF1Y=117)) or
--	((x+PosiF2X>=507 and x+PosiF2X<=528) and (y+PosiF1Y=118)) or
--	((x+PosiF2X>=509 and x+PosiF2X<=528) and (y+PosiF1Y=119)) or
--	((x+PosiF2X>=511 and x+PosiF2X<=528) and (y+PosiF1Y=120 ))or
--	((x+PosiF2X>=513 and x+PosiF2X<=528) and (y+PosiF1Y=121 ))or
--	((x+PosiF2X>=515 and x+PosiF2X<=528) and (y+PosiF1Y=122 ))or
--	((x+PosiF2X>=517 and x+PosiF2X<=528) and (y+PosiF1Y=123 ))or
--	((x+PosiF2X>=519 and x+PosiF2X<=528) and (y+PosiF1Y=124 ))or
--	((x+PosiF2X>=521 and x+PosiF2X<=528) and (y+PosiF1Y=125 ))or
--	((x+PosiF2X>=523 and x+PosiF2X<=528) and (y+PosiF1Y=126 ))or
--	((x+PosiF2X>=525 and x+PosiF2X<=528) and (y+PosiF1Y=127 ))or
--	((x+PosiF2X>=527 and x+PosiF2X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(15)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-13eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF3X>=527 and x+PosiF3X<=528) and (y+PosiF1Y=100 ))or
--	((x+PosiF3X>=525 and x+PosiF3X<=528) and (y+PosiF1Y=101 ))or
--	((x+PosiF3X>=523 and x+PosiF3X<=528) and (y+PosiF1Y=102 ))or
--	((x+PosiF3X>=521 and x+PosiF3X<=528) and (y+PosiF1Y=103 ))or
--	((x+PosiF3X>=519 and x+PosiF3X<=528) and (y+PosiF1Y=104 ))or
--	((x+PosiF3X>=517 and x+PosiF3X<=528) and (y+PosiF1Y=105))or
--	((x+PosiF3X>=515 and x+PosiF3X<=528) and (y+PosiF1Y=106))or
--	((x+PosiF3X>=513 and x+PosiF3X<=528) and (y+PosiF1Y=107))or
--	((x+PosiF3X>=511 and x+PosiF3X<=528) and (y+PosiF1Y=108 ))or
--	((x+PosiF3X>=509 and x+PosiF3X<=528) and (y+PosiF1Y=109)) or
--	((x+PosiF3X>=507 and x+PosiF3X<=528) and (y+PosiF1Y=110)) or
--	((x+PosiF3X>=505 and x+PosiF3X<=528) and (y+PosiF1Y=111)) or
--	((x+PosiF3X>=503 and x+PosiF3X<=528) and (y+PosiF1Y=112)) or
--	((x+PosiF3X>=501 and x+PosiF3X<=528) and (y+PosiF1Y=113)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF1Y=114)) or
--	((x+PosiF3X>=501 and x+PosiF3X<=528) and (y+PosiF1Y=115)) or
--	((x+PosiF3X>=503 and x+PosiF3X<=528) and (y+PosiF1Y=116)) or
--	((x+PosiF3X>=505 and x+PosiF3X<=528) and (y+PosiF1Y=117)) or
--	((x+PosiF3X>=507 and x+PosiF3X<=528) and (y+PosiF1Y=118)) or
--	((x+PosiF3X>=509 and x+PosiF3X<=528) and (y+PosiF1Y=119)) or
--	((x+PosiF3X>=511 and x+PosiF3X<=528) and (y+PosiF1Y=120 ))or
--	((x+PosiF3X>=513 and x+PosiF3X<=528) and (y+PosiF1Y=121 ))or
--	((x+PosiF3X>=515 and x+PosiF3X<=528) and (y+PosiF1Y=122 ))or
--	((x+PosiF3X>=517 and x+PosiF3X<=528) and (y+PosiF1Y=123 ))or
--	((x+PosiF3X>=519 and x+PosiF3X<=528) and (y+PosiF1Y=124 ))or
--	((x+PosiF3X>=521 and x+PosiF3X<=528) and (y+PosiF1Y=125 ))or
--	((x+PosiF3X>=523 and x+PosiF3X<=528) and (y+PosiF1Y=126 ))or
--	((x+PosiF3X>=525 and x+PosiF3X<=528) and (y+PosiF1Y=127 ))or
--	((x+PosiF3X>=527 and x+PosiF3X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(14)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-12eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF4X>=527 and x+PosiF4X<=528) and (y+PosiF1Y=100 ))or
--	((x+PosiF4X>=525 and x+PosiF4X<=528) and (y+PosiF1Y=101 ))or
--	((x+PosiF4X>=523 and x+PosiF4X<=528) and (y+PosiF1Y=102 ))or
--	((x+PosiF4X>=521 and x+PosiF4X<=528) and (y+PosiF1Y=103 ))or
--	((x+PosiF4X>=519 and x+PosiF4X<=528) and (y+PosiF1Y=104 ))or
--	((x+PosiF4X>=517 and x+PosiF4X<=528) and (y+PosiF1Y=105))or
--	((x+PosiF4X>=515 and x+PosiF4X<=528) and (y+PosiF1Y=106))or
--	((x+PosiF4X>=513 and x+PosiF4X<=528) and (y+PosiF1Y=107))or
--	((x+PosiF4X>=511 and x+PosiF4X<=528) and (y+PosiF1Y=108 ))or
--	((x+PosiF4X>=509 and x+PosiF4X<=528) and (y+PosiF1Y=109)) or
--	((x+PosiF4X>=507 and x+PosiF4X<=528) and (y+PosiF1Y=110)) or
--	((x+PosiF4X>=505 and x+PosiF4X<=528) and (y+PosiF1Y=111)) or
--	((x+PosiF4X>=503 and x+PosiF4X<=528) and (y+PosiF1Y=112)) or
--	((x+PosiF4X>=501 and x+PosiF4X<=528) and (y+PosiF1Y=113)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF1Y=114)) or
--	((x+PosiF4X>=501 and x+PosiF4X<=528) and (y+PosiF1Y=115)) or
--	((x+PosiF4X>=503 and x+PosiF4X<=528) and (y+PosiF1Y=116)) or
--	((x+PosiF4X>=505 and x+PosiF4X<=528) and (y+PosiF1Y=117)) or
--	((x+PosiF4X>=507 and x+PosiF4X<=528) and (y+PosiF1Y=118)) or
--	((x+PosiF4X>=509 and x+PosiF4X<=528) and (y+PosiF1Y=119)) or
--	((x+PosiF4X>=511 and x+PosiF4X<=528) and (y+PosiF1Y=120 ))or
--	((x+PosiF4X>=513 and x+PosiF4X<=528) and (y+PosiF1Y=121 ))or
--	((x+PosiF4X>=515 and x+PosiF4X<=528) and (y+PosiF1Y=122 ))or
--	((x+PosiF4X>=517 and x+PosiF4X<=528) and (y+PosiF1Y=123 ))or
--	((x+PosiF4X>=519 and x+PosiF4X<=528) and (y+PosiF1Y=124 ))or
--	((x+PosiF4X>=521 and x+PosiF4X<=528) and (y+PosiF1Y=125 ))or
--	((x+PosiF4X>=523 and x+PosiF4X<=528) and (y+PosiF1Y=126 ))or
--	((x+PosiF4X>=525 and x+PosiF4X<=528) and (y+PosiF1Y=127 ))or
--	((x+PosiF4X>=527 and x+PosiF4X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(13)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-11eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF5X>=527 and x+PosiF5X<=528) and (y+PosiF1Y=100 ))or
--	((x+PosiF5X>=525 and x+PosiF5X<=528) and (y+PosiF1Y=101 ))or
--	((x+PosiF5X>=523 and x+PosiF5X<=528) and (y+PosiF1Y=102 ))or
--	((x+PosiF5X>=521 and x+PosiF5X<=528) and (y+PosiF1Y=103 ))or
--	((x+PosiF5X>=519 and x+PosiF5X<=528) and (y+PosiF1Y=104 ))or
--	((x+PosiF5X>=517 and x+PosiF5X<=528) and (y+PosiF1Y=105))or
--	((x+PosiF5X>=515 and x+PosiF5X<=528) and (y+PosiF1Y=106))or
--	((x+PosiF5X>=513 and x+PosiF5X<=528) and (y+PosiF1Y=107))or
--	((x+PosiF5X>=511 and x+PosiF5X<=528) and (y+PosiF1Y=108 ))or
--	((x+PosiF5X>=509 and x+PosiF5X<=528) and (y+PosiF1Y=109)) or
--	((x+PosiF5X>=507 and x+PosiF5X<=528) and (y+PosiF1Y=110)) or
--	((x+PosiF5X>=505 and x+PosiF5X<=528) and (y+PosiF1Y=111)) or
--	((x+PosiF5X>=503 and x+PosiF5X<=528) and (y+PosiF1Y=112)) or
--	((x+PosiF5X>=501 and x+PosiF5X<=528) and (y+PosiF1Y=113)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF1Y=114)) or
--	((x+PosiF5X>=501 and x+PosiF5X<=528) and (y+PosiF1Y=115)) or
--	((x+PosiF5X>=503 and x+PosiF5X<=528) and (y+PosiF1Y=116)) or
--	((x+PosiF5X>=505 and x+PosiF5X<=528) and (y+PosiF1Y=117)) or
--	((x+PosiF5X>=507 and x+PosiF5X<=528) and (y+PosiF1Y=118)) or
--	((x+PosiF5X>=509 and x+PosiF5X<=528) and (y+PosiF1Y=119)) or
--	((x+PosiF5X>=511 and x+PosiF5X<=528) and (y+PosiF1Y=120 ))or
--	((x+PosiF5X>=513 and x+PosiF5X<=528) and (y+PosiF1Y=121 ))or
--	((x+PosiF5X>=515 and x+PosiF5X<=528) and (y+PosiF1Y=122 ))or
--	((x+PosiF5X>=517 and x+PosiF5X<=528) and (y+PosiF1Y=123 ))or
--	((x+PosiF5X>=519 and x+PosiF5X<=528) and (y+PosiF1Y=124 ))or
--	((x+PosiF5X>=521 and x+PosiF5X<=528) and (y+PosiF1Y=125 ))or
--	((x+PosiF5X>=523 and x+PosiF5X<=528) and (y+PosiF1Y=126 ))or
--	((x+PosiF5X>=525 and x+PosiF5X<=528) and (y+PosiF1Y=127 ))or
--	((x+PosiF5X>=527 and x+PosiF5X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(12)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-10eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF6X>=527 and x+PosiF6X<=528) and (y+PosiF1Y=100 ))or
--	((x+PosiF6X>=525 and x+PosiF6X<=528) and (y+PosiF1Y=101 ))or
--	((x+PosiF6X>=523 and x+PosiF6X<=528) and (y+PosiF1Y=102 ))or
--	((x+PosiF6X>=521 and x+PosiF6X<=528) and (y+PosiF1Y=103 ))or
--	((x+PosiF6X>=519 and x+PosiF6X<=528) and (y+PosiF1Y=104 ))or
--	((x+PosiF6X>=517 and x+PosiF6X<=528) and (y+PosiF1Y=105))or
--	((x+PosiF6X>=515 and x+PosiF6X<=528) and (y+PosiF1Y=106))or
--	((x+PosiF6X>=513 and x+PosiF6X<=528) and (y+PosiF1Y=107))or
--	((x+PosiF6X>=511 and x+PosiF6X<=528) and (y+PosiF1Y=108 ))or
--	((x+PosiF6X>=509 and x+PosiF6X<=528) and (y+PosiF1Y=109)) or
--	((x+PosiF6X>=507 and x+PosiF6X<=528) and (y+PosiF1Y=110)) or
--	((x+PosiF6X>=505 and x+PosiF6X<=528) and (y+PosiF1Y=111)) or
--	((x+PosiF6X>=503 and x+PosiF6X<=528) and (y+PosiF1Y=112)) or
--	((x+PosiF6X>=501 and x+PosiF6X<=528) and (y+PosiF1Y=113)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF1Y=114)) or
--	((x+PosiF6X>=501 and x+PosiF6X<=528) and (y+PosiF1Y=115)) or
--	((x+PosiF6X>=503 and x+PosiF6X<=528) and (y+PosiF1Y=116)) or
--	((x+PosiF6X>=505 and x+PosiF6X<=528) and (y+PosiF1Y=117)) or
--	((x+PosiF6X>=507 and x+PosiF6X<=528) and (y+PosiF1Y=118)) or
--	((x+PosiF6X>=509 and x+PosiF6X<=528) and (y+PosiF1Y=119)) or
--	((x+PosiF6X>=511 and x+PosiF6X<=528) and (y+PosiF1Y=120 ))or
--	((x+PosiF6X>=513 and x+PosiF6X<=528) and (y+PosiF1Y=121 ))or
--	((x+PosiF6X>=515 and x+PosiF6X<=528) and (y+PosiF1Y=122 ))or
--	((x+PosiF6X>=517 and x+PosiF6X<=528) and (y+PosiF1Y=123 ))or
--	((x+PosiF6X>=519 and x+PosiF6X<=528) and (y+PosiF1Y=124 ))or
--	((x+PosiF6X>=521 and x+PosiF6X<=528) and (y+PosiF1Y=125 ))or
--	((x+PosiF6X>=523 and x+PosiF6X<=528) and (y+PosiF1Y=126 ))or
--	((x+PosiF6X>=525 and x+PosiF6X<=528) and (y+PosiF1Y=127 ))or
--	((x+PosiF6X>=527 and x+PosiF6X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(11)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-9eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF7X>=527 and x+PosiF7X<=528) and (y+PosiF1Y=100 ))or
--	((x+PosiF7X>=525 and x+PosiF7X<=528) and (y+PosiF1Y=101 ))or
--	((x+PosiF7X>=523 and x+PosiF7X<=528) and (y+PosiF1Y=102 ))or
--	((x+PosiF7X>=521 and x+PosiF7X<=528) and (y+PosiF1Y=103 ))or
--	((x+PosiF7X>=519 and x+PosiF7X<=528) and (y+PosiF1Y=104 ))or
--	((x+PosiF7X>=517 and x+PosiF7X<=528) and (y+PosiF1Y=105))or
--	((x+PosiF7X>=515 and x+PosiF7X<=528) and (y+PosiF1Y=106))or
--	((x+PosiF7X>=513 and x+PosiF7X<=528) and (y+PosiF1Y=107))or
--	((x+PosiF7X>=511 and x+PosiF7X<=528) and (y+PosiF1Y=108 ))or
--	((x+PosiF7X>=509 and x+PosiF7X<=528) and (y+PosiF1Y=109)) or
--	((x+PosiF7X>=507 and x+PosiF7X<=528) and (y+PosiF1Y=110)) or
--	((x+PosiF7X>=505 and x+PosiF7X<=528) and (y+PosiF1Y=111)) or
--	((x+PosiF7X>=503 and x+PosiF7X<=528) and (y+PosiF1Y=112)) or
--	((x+PosiF7X>=501 and x+PosiF7X<=528) and (y+PosiF1Y=113)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF1Y=114)) or
--	((x+PosiF7X>=501 and x+PosiF7X<=528) and (y+PosiF1Y=115)) or
--	((x+PosiF7X>=503 and x+PosiF7X<=528) and (y+PosiF1Y=116)) or
--	((x+PosiF7X>=505 and x+PosiF7X<=528) and (y+PosiF1Y=117)) or
--	((x+PosiF7X>=507 and x+PosiF7X<=528) and (y+PosiF1Y=118)) or
--	((x+PosiF7X>=509 and x+PosiF7X<=528) and (y+PosiF1Y=119)) or
--	((x+PosiF7X>=511 and x+PosiF7X<=528) and (y+PosiF1Y=120 ))or
--	((x+PosiF7X>=513 and x+PosiF7X<=528) and (y+PosiF1Y=121 ))or
--	((x+PosiF7X>=515 and x+PosiF7X<=528) and (y+PosiF1Y=122 ))or
--	((x+PosiF7X>=517 and x+PosiF7X<=528) and (y+PosiF1Y=123 ))or
--	((x+PosiF7X>=519 and x+PosiF7X<=528) and (y+PosiF1Y=124 ))or
--	((x+PosiF7X>=521 and x+PosiF7X<=528) and (y+PosiF1Y=125 ))or
--	((x+PosiF7X>=523 and x+PosiF7X<=528) and (y+PosiF1Y=126 ))or
--	((x+PosiF7X>=525 and x+PosiF7X<=528) and (y+PosiF1Y=127 ))or
--	((x+PosiF7X>=527 and x+PosiF7X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(10)='1' )) or
--	----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-8eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF8X>=527 and x+PosiF8X<=528) and (y+PosiF1Y=100 ))or
--	((x+PosiF8X>=525 and x+PosiF8X<=528) and (y+PosiF1Y=101 ))or
--	((x+PosiF8X>=523 and x+PosiF8X<=528) and (y+PosiF1Y=102 ))or
--	((x+PosiF8X>=521 and x+PosiF8X<=528) and (y+PosiF1Y=103 ))or
--	((x+PosiF8X>=519 and x+PosiF8X<=528) and (y+PosiF1Y=104 ))or
--	((x+PosiF8X>=517 and x+PosiF8X<=528) and (y+PosiF1Y=105))or
--	((x+PosiF8X>=515 and x+PosiF8X<=528) and (y+PosiF1Y=106))or
--	((x+PosiF8X>=513 and x+PosiF8X<=528) and (y+PosiF1Y=107))or
--	((x+PosiF8X>=511 and x+PosiF8X<=528) and (y+PosiF1Y=108 ))or
--	((x+PosiF8X>=509 and x+PosiF8X<=528) and (y+PosiF1Y=109)) or
--	((x+PosiF8X>=507 and x+PosiF8X<=528) and (y+PosiF1Y=110)) or
--	((x+PosiF8X>=505 and x+PosiF8X<=528) and (y+PosiF1Y=111)) or
--	((x+PosiF8X>=503 and x+PosiF8X<=528) and (y+PosiF1Y=112)) or
--	((x+PosiF8X>=501 and x+PosiF8X<=528) and (y+PosiF1Y=113)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF1Y=114)) or
--	((x+PosiF8X>=501 and x+PosiF8X<=528) and (y+PosiF1Y=115)) or
--	((x+PosiF8X>=503 and x+PosiF8X<=528) and (y+PosiF1Y=116)) or
--	((x+PosiF8X>=505 and x+PosiF8X<=528) and (y+PosiF1Y=117)) or
--	((x+PosiF8X>=507 and x+PosiF8X<=528) and (y+PosiF1Y=118)) or
--	((x+PosiF8X>=509 and x+PosiF8X<=528) and (y+PosiF1Y=119)) or
--	((x+PosiF8X>=511 and x+PosiF8X<=528) and (y+PosiF1Y=120 ))or
--	((x+PosiF8X>=513 and x+PosiF8X<=528) and (y+PosiF1Y=121 ))or
--	((x+PosiF8X>=515 and x+PosiF8X<=528) and (y+PosiF1Y=122 ))or
--	((x+PosiF8X>=517 and x+PosiF8X<=528) and (y+PosiF1Y=123 ))or
--	((x+PosiF8X>=519 and x+PosiF8X<=528) and (y+PosiF1Y=124 ))or
--	((x+PosiF8X>=521 and x+PosiF8X<=528) and (y+PosiF1Y=125 ))or
--	((x+PosiF8X>=523 and x+PosiF8X<=528) and (y+PosiF1Y=126 ))or
--	((x+PosiF8X>=525 and x+PosiF8X<=528) and (y+PosiF1Y=127 ))or
--	((x+PosiF8X>=527 and x+PosiF8X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(9)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-7eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+posiF9X>=527 and x+posiF9X<=528) and (y+PosiF1Y=100 ))or
--	((x+posiF9X>=525 and x+posiF9X<=528) and (y+PosiF1Y=101 ))or
--	((x+posiF9X>=523 and x+posiF9X<=528) and (y+PosiF1Y=102 ))or
--	((x+posiF9X>=521 and x+posiF9X<=528) and (y+PosiF1Y=103 ))or
--	((x+posiF9X>=519 and x+posiF9X<=528) and (y+PosiF1Y=104 ))or
--	((x+posiF9X>=517 and x+posiF9X<=528) and (y+PosiF1Y=105))or
--	((x+posiF9X>=515 and x+posiF9X<=528) and (y+PosiF1Y=106))or
--	((x+posiF9X>=513 and x+posiF9X<=528) and (y+PosiF1Y=107))or
--	((x+posiF9X>=511 and x+posiF9X<=528) and (y+PosiF1Y=108 ))or
--	((x+posiF9X>=509 and x+posiF9X<=528) and (y+PosiF1Y=109)) or
--	((x+posiF9X>=507 and x+posiF9X<=528) and (y+PosiF1Y=110)) or
--	((x+posiF9X>=505 and x+posiF9X<=528) and (y+PosiF1Y=111)) or
--	((x+posiF9X>=503 and x+posiF9X<=528) and (y+PosiF1Y=112)) or
--	((x+posiF9X>=501 and x+posiF9X<=528) and (y+PosiF1Y=113)) or
--	((x+posiF9X>=500 and x+posiF9X<=528) and (y+PosiF1Y=114)) or
--	((x+posiF9X>=501 and x+posiF9X<=528) and (y+PosiF1Y=115)) or
--	((x+posiF9X>=503 and x+posiF9X<=528) and (y+PosiF1Y=116)) or
--	((x+posiF9X>=505 and x+posiF9X<=528) and (y+PosiF1Y=117)) or
--	((x+posiF9X>=507 and x+posiF9X<=528) and (y+PosiF1Y=118)) or
--	((x+posiF9X>=509 and x+posiF9X<=528) and (y+PosiF1Y=119)) or
--	((x+posiF9X>=511 and x+posiF9X<=528) and (y+PosiF1Y=120 ))or
--	((x+posiF9X>=513 and x+posiF9X<=528) and (y+PosiF1Y=121 ))or
--	((x+posiF9X>=515 and x+posiF9X<=528) and (y+PosiF1Y=122 ))or
--	((x+posiF9X>=517 and x+posiF9X<=528) and (y+PosiF1Y=123 ))or
--	((x+posiF9X>=519 and x+posiF9X<=528) and (y+PosiF1Y=124 ))or
--	((x+posiF9X>=521 and x+posiF9X<=528) and (y+PosiF1Y=125 ))or
--	((x+posiF9X>=523 and x+posiF9X<=528) and (y+PosiF1Y=126 ))or
--	((x+posiF9X>=525 and x+posiF9X<=528) and (y+PosiF1Y=127 ))or
--	((x+posiF9X>=527 and x+posiF9X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(8)='1' )) or
--	----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-6eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF10X>=527 and x+PosiF10X<=528) and (y+PosiF1Y=100 ))or
--	((x+PosiF10X>=525 and x+PosiF10X<=528) and (y+PosiF1Y=101 ))or
--	((x+PosiF10X>=523 and x+PosiF10X<=528) and (y+PosiF1Y=102 ))or
--	((x+PosiF10X>=521 and x+PosiF10X<=528) and (y+PosiF1Y=103 ))or
--	((x+PosiF10X>=519 and x+PosiF10X<=528) and (y+PosiF1Y=104 ))or
--	((x+PosiF10X>=517 and x+PosiF10X<=528) and (y+PosiF1Y=105))or
--	((x+PosiF10X>=515 and x+PosiF10X<=528) and (y+PosiF1Y=106))or
--	((x+PosiF10X>=513 and x+PosiF10X<=528) and (y+PosiF1Y=107))or
--	((x+PosiF10X>=511 and x+PosiF10X<=528) and (y+PosiF1Y=108 ))or
--	((x+PosiF10X>=509 and x+PosiF10X<=528) and (y+PosiF1Y=109)) or
--	((x+PosiF10X>=507 and x+PosiF10X<=528) and (y+PosiF1Y=110)) or
--	((x+PosiF10X>=505 and x+PosiF10X<=528) and (y+PosiF1Y=111)) or
--	((x+PosiF10X>=503 and x+PosiF10X<=528) and (y+PosiF1Y=112)) or
--	((x+PosiF10X>=501 and x+PosiF10X<=528) and (y+PosiF1Y=113)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF1Y=114)) or
--	((x+PosiF10X>=501 and x+PosiF10X<=528) and (y+PosiF1Y=115)) or
--	((x+PosiF10X>=503 and x+PosiF10X<=528) and (y+PosiF1Y=116)) or
--	((x+PosiF10X>=505 and x+PosiF10X<=528) and (y+PosiF1Y=117)) or
--	((x+PosiF10X>=507 and x+PosiF10X<=528) and (y+PosiF1Y=118)) or
--	((x+PosiF10X>=509 and x+PosiF10X<=528) and (y+PosiF1Y=119)) or
--	((x+PosiF10X>=511 and x+PosiF10X<=528) and (y+PosiF1Y=120 ))or
--	((x+PosiF10X>=513 and x+PosiF10X<=528) and (y+PosiF1Y=121 ))or
--	((x+PosiF10X>=515 and x+PosiF10X<=528) and (y+PosiF1Y=122 ))or
--	((x+PosiF10X>=517 and x+PosiF10X<=528) and (y+PosiF1Y=123 ))or
--	((x+PosiF10X>=519 and x+PosiF10X<=528) and (y+PosiF1Y=124 ))or
--	((x+PosiF10X>=521 and x+PosiF10X<=528) and (y+PosiF1Y=125 ))or
--	((x+PosiF10X>=523 and x+PosiF10X<=528) and (y+PosiF1Y=126 ))or
--	((x+PosiF10X>=525 and x+PosiF10X<=528) and (y+PosiF1Y=127 ))or
--	((x+PosiF10X>=527 and x+PosiF10X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(7)='1' )) or
--	----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-5eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((X+PosiF11X>=527 and X+PosiF11X<=528) and (y+PosiF1Y=100 ))or
--	((X+PosiF11X>=525 and X+PosiF11X<=528) and (y+PosiF1Y=101 ))or
--	((X+PosiF11X>=523 and X+PosiF11X<=528) and (y+PosiF1Y=102 ))or
--	((X+PosiF11X>=521 and X+PosiF11X<=528) and (y+PosiF1Y=103 ))or
--	((X+PosiF11X>=519 and X+PosiF11X<=528) and (y+PosiF1Y=104 ))or
--	((X+PosiF11X>=517 and X+PosiF11X<=528) and (y+PosiF1Y=105))or
--	((X+PosiF11X>=515 and X+PosiF11X<=528) and (y+PosiF1Y=106))or
--	((X+PosiF11X>=513 and X+PosiF11X<=528) and (y+PosiF1Y=107))or
--	((X+PosiF11X>=511 and X+PosiF11X<=528) and (y+PosiF1Y=108 ))or
--	((X+PosiF11X>=509 and X+PosiF11X<=528) and (y+PosiF1Y=109)) or
--	((X+PosiF11X>=507 and X+PosiF11X<=528) and (y+PosiF1Y=110)) or
--	((X+PosiF11X>=505 and X+PosiF11X<=528) and (y+PosiF1Y=111)) or
--	((X+PosiF11X>=503 and X+PosiF11X<=528) and (y+PosiF1Y=112)) or
--	((X+PosiF11X>=501 and X+PosiF11X<=528) and (y+PosiF1Y=113)) or
--	((X+PosiF11X>=500 and X+PosiF11X<=528) and (y+PosiF1Y=114)) or
--	((X+PosiF11X>=501 and X+PosiF11X<=528) and (y+PosiF1Y=115)) or
--	((X+PosiF11X>=503 and X+PosiF11X<=528) and (y+PosiF1Y=116)) or
--	((X+PosiF11X>=505 and X+PosiF11X<=528) and (y+PosiF1Y=117)) or
--	((X+PosiF11X>=507 and X+PosiF11X<=528) and (y+PosiF1Y=118)) or
--	((X+PosiF11X>=509 and X+PosiF11X<=528) and (y+PosiF1Y=119)) or
--	((X+PosiF11X>=511 and X+PosiF11X<=528) and (y+PosiF1Y=120 ))or
--	((X+PosiF11X>=513 and X+PosiF11X<=528) and (y+PosiF1Y=121 ))or
--	((X+PosiF11X>=515 and X+PosiF11X<=528) and (y+PosiF1Y=122 ))or
--	((X+PosiF11X>=517 and X+PosiF11X<=528) and (y+PosiF1Y=123 ))or
--	((X+PosiF11X>=519 and X+PosiF11X<=528) and (y+PosiF1Y=124 ))or
--	((X+PosiF11X>=521 and X+PosiF11X<=528) and (y+PosiF1Y=125 ))or
--	((X+PosiF11X>=523 and X+PosiF11X<=528) and (y+PosiF1Y=126 ))or
--	((X+PosiF11X>=525 and X+PosiF11X<=528) and (y+PosiF1Y=127 ))or
--	((X+PosiF11X>=527 and x+PosiF11X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(6)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-4eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((X+PosiF12X>=527 and X+PosiF12X<=528) and (y+PosiF1Y=100 ))or
--	((X+PosiF12X>=525 and X+PosiF12X<=528) and (y+PosiF1Y=101 ))or
--	((X+PosiF12X>=523 and X+PosiF12X<=528) and (y+PosiF1Y=102 ))or
--	((X+PosiF12X>=521 and X+PosiF12X<=528) and (y+PosiF1Y=103 ))or
--	((X+PosiF12X>=519 and X+PosiF12X<=528) and (y+PosiF1Y=104 ))or
--	((X+PosiF12X>=517 and X+PosiF12X<=528) and (y+PosiF1Y=105))or
--	((X+PosiF12X>=515 and X+PosiF12X<=528) and (y+PosiF1Y=106))or
--	((X+PosiF12X>=513 and X+PosiF12X<=528) and (y+PosiF1Y=107))or
--	((X+PosiF12X>=511 and X+PosiF12X<=528) and (y+PosiF1Y=108 ))or
--	((X+PosiF12X>=509 and X+PosiF12X<=528) and (y+PosiF1Y=109)) or
--	((X+PosiF12X>=507 and X+PosiF12X<=528) and (y+PosiF1Y=110)) or
--	((X+PosiF12X>=505 and X+PosiF12X<=528) and (y+PosiF1Y=111)) or
--	((X+PosiF12X>=503 and X+PosiF12X<=528) and (y+PosiF1Y=112)) or
--	((X+PosiF12X>=501 and X+PosiF12X<=528) and (y+PosiF1Y=113)) or
--	((X+PosiF12X>=500 and X+PosiF12X<=528) and (y+PosiF1Y=114)) or
--	((X+PosiF12X>=501 and X+PosiF12X<=528) and (y+PosiF1Y=115)) or
--	((X+PosiF12X>=503 and X+PosiF12X<=528) and (y+PosiF1Y=116)) or
--	((X+PosiF12X>=505 and X+PosiF12X<=528) and (y+PosiF1Y=117)) or
--	((X+PosiF12X>=507 and X+PosiF12X<=528) and (y+PosiF1Y=118)) or
--	((X+PosiF12X>=509 and X+PosiF12X<=528) and (y+PosiF1Y=119)) or
--	((X+PosiF12X>=511 and X+PosiF12X<=528) and (y+PosiF1Y=120 ))or
--	((X+PosiF12X>=513 and X+PosiF12X<=528) and (y+PosiF1Y=121 ))or
--	((X+PosiF12X>=515 and X+PosiF12X<=528) and (y+PosiF1Y=122 ))or
--	((X+PosiF12X>=517 and X+PosiF12X<=528) and (y+PosiF1Y=123 ))or
--	((X+PosiF12X>=519 and X+PosiF12X<=528) and (y+PosiF1Y=124 ))or
--	((X+PosiF12X>=521 and X+PosiF12X<=528) and (y+PosiF1Y=125 ))or
--	((X+PosiF12X>=523 and X+PosiF12X<=528) and (y+PosiF1Y=126 ))or
--	((X+PosiF12X>=525 and X+PosiF12X<=528) and (y+PosiF1Y=127 ))or
--	((X+PosiF12X>=527 and X+PosiF12X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(5)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-3eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((X+PosiF13X>=527 and X+PosiF13X<=528) and (y+PosiF1Y=100 ))or
--	((X+PosiF13X>=525 and X+PosiF13X<=528) and (y+PosiF1Y=101 ))or
--	((X+PosiF13X>=523 and X+PosiF13X<=528) and (y+PosiF1Y=102 ))or
--	((X+PosiF13X>=521 and X+PosiF13X<=528) and (y+PosiF1Y=103 ))or
--	((X+PosiF13X>=519 and X+PosiF13X<=528) and (y+PosiF1Y=104 ))or
--	((X+PosiF13X>=517 and X+PosiF13X<=528) and (y+PosiF1Y=105))or
--	((X+PosiF13X>=515 and X+PosiF13X<=528) and (y+PosiF1Y=106))or
--	((X+PosiF13X>=513 and X+PosiF13X<=528) and (y+PosiF1Y=107))or
--	((X+PosiF13X>=511 and X+PosiF13X<=528) and (y+PosiF1Y=108 ))or
--	((X+PosiF13X>=509 and X+PosiF13X<=528) and (y+PosiF1Y=109)) or
--	((X+PosiF13X>=507 and X+PosiF13X<=528) and (y+PosiF1Y=110)) or
--	((X+PosiF13X>=505 and X+PosiF13X<=528) and (y+PosiF1Y=111)) or
--	((X+PosiF13X>=503 and X+PosiF13X<=528) and (y+PosiF1Y=112)) or
--	((X+PosiF13X>=501 and X+PosiF13X<=528) and (y+PosiF1Y=113)) or
--	((X+PosiF13X>=500 and X+PosiF13X<=528) and (y+PosiF1Y=114)) or
--	((X+PosiF13X>=501 and X+PosiF13X<=528) and (y+PosiF1Y=115)) or
--	((X+PosiF13X>=503 and X+PosiF13X<=528) and (y+PosiF1Y=116)) or
--	((X+PosiF13X>=505 and X+PosiF13X<=528) and (y+PosiF1Y=117)) or
--	((X+PosiF13X>=507 and X+PosiF13X<=528) and (y+PosiF1Y=118)) or
--	((X+PosiF13X>=509 and X+PosiF13X<=528) and (y+PosiF1Y=119)) or
--	((X+PosiF13X>=511 and X+PosiF13X<=528) and (y+PosiF1Y=120 ))or
--	((X+PosiF13X>=513 and X+PosiF13X<=528) and (y+PosiF1Y=121 ))or
--	((X+PosiF13X>=515 and X+PosiF13X<=528) and (y+PosiF1Y=122 ))or
--	((X+PosiF13X>=517 and X+PosiF13X<=528) and (y+PosiF1Y=123 ))or
--	((X+PosiF13X>=519 and X+PosiF13X<=528) and (y+PosiF1Y=124 ))or
--	((X+PosiF13X>=521 and X+PosiF13X<=528) and (y+PosiF1Y=125 ))or
--	((X+PosiF13X>=523 and X+PosiF13X<=528) and (y+PosiF1Y=126 ))or
--	((X+PosiF13X>=525 and X+PosiF13X<=528) and (y+PosiF1Y=127 ))or
--	((X+PosiF13X>=527 and X+PosiF13X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(4)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-2eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((X+PosiF14X>=527 and X+PosiF14X<=528) and (y+PosiF1Y=100 ))or
--	((X+PosiF14X>=525 and X+PosiF14X<=528) and (y+PosiF1Y=101 ))or
--	((X+PosiF14X>=523 and X+PosiF14X<=528) and (y+PosiF1Y=102 ))or
--	((X+PosiF14X>=521 and X+PosiF14X<=528) and (y+PosiF1Y=103 ))or
--	((X+PosiF14X>=519 and X+PosiF14X<=528) and (y+PosiF1Y=104 ))or
--	((X+PosiF14X>=517 and X+PosiF14X<=528) and (y+PosiF1Y=105))or
--	((X+PosiF14X>=515 and X+PosiF14X<=528) and (y+PosiF1Y=106))or
--	((X+PosiF14X>=513 and X+PosiF14X<=528) and (y+PosiF1Y=107))or
--	((X+PosiF14X>=511 and X+PosiF14X<=528) and (y+PosiF1Y=108 ))or
--	((X+PosiF14X>=509 and X+PosiF14X<=528) and (y+PosiF1Y=109)) or
--	((X+PosiF14X>=507 and X+PosiF14X<=528) and (y+PosiF1Y=110)) or
--	((X+PosiF14X>=505 and X+PosiF14X<=528) and (y+PosiF1Y=111)) or
--	((X+PosiF14X>=503 and X+PosiF14X<=528) and (y+PosiF1Y=112)) or
--	((X+PosiF14X>=501 and X+PosiF14X<=528) and (y+PosiF1Y=113)) or
--	((X+PosiF14X>=500 and X+PosiF14X<=528) and (y+PosiF1Y=114)) or
--	((X+PosiF14X>=501 and X+PosiF14X<=528) and (y+PosiF1Y=115)) or
--	((X+PosiF14X>=503 and X+PosiF14X<=528) and (y+PosiF1Y=116)) or
--	((X+PosiF14X>=505 and X+PosiF14X<=528) and (y+PosiF1Y=117)) or
--	((X+PosiF14X>=507 and X+PosiF14X<=528) and (y+PosiF1Y=118)) or
--	((X+PosiF14X>=509 and X+PosiF14X<=528) and (y+PosiF1Y=119)) or
--	((X+PosiF14X>=511 and X+PosiF14X<=528) and (y+PosiF1Y=120 ))or
--	((X+PosiF14X>=513 and X+PosiF14X<=528) and (y+PosiF1Y=121 ))or
--	((X+PosiF14X>=515 and X+PosiF14X<=528) and (y+PosiF1Y=122 ))or
--	((X+PosiF14X>=517 and X+PosiF14X<=528) and (y+PosiF1Y=123 ))or
--	((X+PosiF14X>=519 and X+PosiF14X<=528) and (y+PosiF1Y=124 ))or
--	((X+PosiF14X>=521 and X+PosiF14X<=528) and (y+PosiF1Y=125 ))or
--	((X+PosiF14X>=523 and X+PosiF14X<=528) and (y+PosiF1Y=126 ))or
--	((X+PosiF14X>=525 and X+PosiF14X<=528) and (y+PosiF1Y=127 ))or
--	((X+PosiF14X>=527 and X+PosiF14X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(3)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-1ere position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((X+PosiF15X>=527 and X+PosiF15X<=528) and (y+PosiF1Y=100 ))or
--	((X+PosiF15X>=525 and X+PosiF15X<=528) and (y+PosiF1Y=101 ))or
--	((X+PosiF15X>=523 and X+PosiF15X<=528) and (y+PosiF1Y=102 ))or
--	((X+PosiF15X>=521 and X+PosiF15X<=528) and (y+PosiF1Y=103 ))or
--	((X+PosiF15X>=519 and X+PosiF15X<=528) and (y+PosiF1Y=104 ))or
--	((X+PosiF15X>=517 and X+PosiF15X<=528) and (y+PosiF1Y=105))or
--	((X+PosiF15X>=515 and X+PosiF15X<=528) and (y+PosiF1Y=106))or
--	((X+PosiF15X>=513 and X+PosiF15X<=528) and (y+PosiF1Y=107))or
--	((X+PosiF15X>=511 and X+PosiF15X<=528) and (y+PosiF1Y=108 ))or
--	((X+PosiF15X>=509 and X+PosiF15X<=528) and (y+PosiF1Y=109)) or
--	((X+PosiF15X>=507 and X+PosiF15X<=528) and (y+PosiF1Y=110)) or
--	((X+PosiF15X>=505 and X+PosiF15X<=528) and (y+PosiF1Y=111)) or
--	((X+PosiF15X>=503 and X+PosiF15X<=528) and (y+PosiF1Y=112)) or
--	((X+PosiF15X>=501 and X+PosiF15X<=528) and (y+PosiF1Y=113)) or
--	((X+PosiF15X>=500 and X+PosiF15X<=528) and (y+PosiF1Y=114)) or
--	((X+PosiF15X>=501 and X+PosiF15X<=528) and (y+PosiF1Y=115)) or
--	((X+PosiF15X>=503 and X+PosiF15X<=528) and (y+PosiF1Y=116)) or
--	((X+PosiF15X>=505 and X+PosiF15X<=528) and (y+PosiF1Y=117)) or
--	((X+PosiF15X>=507 and X+PosiF15X<=528) and (y+PosiF1Y=118)) or
--	((X+PosiF15X>=509 and X+PosiF15X<=528) and (y+PosiF1Y=119)) or
--	((X+PosiF15X>=511 and X+PosiF15X<=528) and (y+PosiF1Y=120 ))or
--	((X+PosiF15X>=513 and X+PosiF15X<=528) and (y+PosiF1Y=121 ))or
--	((X+PosiF15X>=515 and X+PosiF15X<=528) and (y+PosiF1Y=122 ))or
--	((X+PosiF15X>=517 and X+PosiF15X<=528) and (y+PosiF1Y=123 ))or
--	((X+PosiF15X>=519 and X+PosiF15X<=528) and (y+PosiF1Y=124 ))or
--	((X+PosiF15X>=521 and X+PosiF15X<=528) and (y+PosiF1Y=125 ))or
--	((X+PosiF15X>=523 and X+PosiF15X<=528) and (y+PosiF1Y=126 ))or
--	((X+PosiF15X>=525 and X+PosiF15X<=528) and (y+PosiF1Y=127 ))or
--	((X+PosiF15X>=527 and X+PosiF15X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(2)='1' )) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------Gauche-0eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((X+PosiF16X>=527 and X+PosiF16X<=528) and (y+PosiF1Y=100 ))or
--	((X+PosiF16X>=525 and X+PosiF16X<=528) and (y+PosiF1Y=101 ))or
--	((X+PosiF16X>=523 and X+PosiF16X<=528) and (y+PosiF1Y=102 ))or
--	((X+PosiF16X>=521 and X+PosiF16X<=528) and (y+PosiF1Y=103 ))or
--	((X+PosiF16X>=519 and X+PosiF16X<=528) and (y+PosiF1Y=104 ))or
--	((X+PosiF16X>=517 and X+PosiF16X<=528) and (y+PosiF1Y=105))or
--	((X+PosiF16X>=515 and X+PosiF16X<=528) and (y+PosiF1Y=106))or
--	((X+PosiF16X>=513 and X+PosiF16X<=528) and (y+PosiF1Y=107))or
--	((X+PosiF16X>=511 and X+PosiF16X<=528) and (y+PosiF1Y=108 ))or
--	((X+PosiF16X>=509 and X+PosiF16X<=528) and (y+PosiF1Y=109)) or
--	((X+PosiF16X>=507 and X+PosiF16X<=528) and (y+PosiF1Y=110)) or
--	((X+PosiF16X>=505 and X+PosiF16X<=528) and (y+PosiF1Y=111)) or
--	((X+PosiF16X>=503 and X+PosiF16X<=528) and (y+PosiF1Y=112)) or
--	((X+PosiF16X>=501 and X+PosiF16X<=528) and (y+PosiF1Y=113)) or
--	((X+PosiF16X>=500 and X+PosiF16X<=528) and (y+PosiF1Y=114)) or
--	((X+PosiF16X>=501 and X+PosiF16X<=528) and (y+PosiF1Y=115)) or
--	((X+PosiF16X>=503 and X+PosiF16X<=528) and (y+PosiF1Y=116)) or
--	((X+PosiF16X>=505 and X+PosiF16X<=528) and (y+PosiF1Y=117)) or
--	((X+PosiF16X>=507 and X+PosiF16X<=528) and (y+PosiF1Y=118)) or
--	((X+PosiF16X>=509 and X+PosiF16X<=528) and (y+PosiF1Y=119)) or
--	((X+PosiF16X>=511 and X+PosiF16X<=528) and (y+PosiF1Y=120 ))or
--	((X+PosiF16X>=513 and X+PosiF16X<=528) and (y+PosiF1Y=121 ))or
--	((X+PosiF16X>=515 and X+PosiF16X<=528) and (y+PosiF1Y=122 ))or
--	((X+PosiF16X>=517 and X+PosiF16X<=528) and (y+PosiF1Y=123 ))or
--	((X+PosiF16X>=519 and X+PosiF16X<=528) and (y+PosiF1Y=124 ))or
--	((X+PosiF16X>=521 and X+PosiF16X<=528) and (y+PosiF1Y=125 ))or
--	((X+PosiF16X>=523 and X+PosiF16X<=528) and (y+PosiF1Y=126 ))or
--	((X+PosiF16X>=525 and X+PosiF16X<=528) and (y+PosiF1Y=127 ))or
--	((X+PosiF16X>=527 and X+PosiF16X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(1)='1' ))or
--	----------------------------------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-15eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF1X>=500 and x+PosiF1X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF1X>=500 and x+PosiF1X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF1X>=500 and x+PosiF1X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF1X>=500 and x+PosiF1X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF1X>=500 and x+PosiF1X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(16)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-14eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF2X>=500 and x+PosiF2X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF2X>=500 and x+PosiF2X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF2X>=500 and x+PosiF2X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF2X>=500 and x+PosiF2X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF2X>=500 and x+PosiF2X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(15)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-13eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF3X>=500 and x+PosiF3X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF3X>=500 and x+PosiF3X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF3X>=500 and x+PosiF3X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF3X>=500 and x+PosiF3X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF3X>=500 and x+PosiF3X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(14)='1')) or
--	----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-12eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF4X>=500 and x+PosiF4X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF4X>=500 and x+PosiF4X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF4X>=500 and x+PosiF4X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF4X>=500 and x+PosiF4X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF4X>=500 and x+PosiF4X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(13)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-11eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF5X>=500 and x+PosiF5X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF5X>=500 and x+PosiF5X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF5X>=500 and x+PosiF5X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF5X>=500 and x+PosiF5X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF5X>=500 and x+PosiF5X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(12)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-10eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF6X>=500 and x+PosiF6X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF6X>=500 and x+PosiF6X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF6X>=500 and x+PosiF6X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF6X>=500 and x+PosiF6X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF6X>=500 and x+PosiF6X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(11)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-9eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF7X>=500 and x+PosiF7X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF7X>=500 and x+PosiF7X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF7X>=500 and x+PosiF7X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF7X>=500 and x+PosiF7X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF7X>=500 and x+PosiF7X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(10)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-8eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF8X>=500 and x+PosiF8X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF8X>=500 and x+PosiF8X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF8X>=500 and x+PosiF8X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF8X>=500 and x+PosiF8X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF8X>=500 and x+PosiF8X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(9)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-7eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF9X>=500 and x+PosiF9X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF9X>=500 and x+PosiF9X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF9X>=500 and x+PosiF9X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF9X>=500 and x+PosiF9X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF9X>=500 and x+PosiF9X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(8)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-6eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF9X>=500 and x+PosiF9X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF10X>=500 and x+PosiF10X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF10X>=500 and x+PosiF10X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF10X>=500 and x+PosiF10X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF10X>=500 and x+PosiF10X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(7)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-5eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF11X>=500 and x+PosiF11X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF11X>=500 and x+PosiF11X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF11X>=500 and x+PosiF11X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF11X>=500 and x+PosiF11X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF11X>=500 and x+PosiF11X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(6)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-4eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF12X>=500 and x+PosiF12X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF12X>=500 and x+PosiF12X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF12X>=500 and x+PosiF12X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF12X>=500 and x+PosiF12X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF12X>=500 and x+PosiF12X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(5)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-3eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF13X>=500 and x+PosiF13X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF13X>=500 and x+PosiF13X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF13X>=500 and x+PosiF13X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF13X>=500 and x+PosiF13X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF13X>=500 and x+PosiF13X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(4)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-2eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF14X>=500 and x+PosiF14X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF14X>=500 and x+PosiF14X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF14X>=500 and x+PosiF14X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF14X>=500 and x+PosiF14X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF14X>=500 and x+PosiF14X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(3)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-1ere position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF15X>=500 and x+PosiF15X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF15X>=500 and x+PosiF15X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF15X>=500 and x+PosiF15X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF15X>=500 and x+PosiF15X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF15X>=500 and x+PosiF15X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(2)='1')) or
--	-----------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------DROITe-0eme position----------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	((((x+PosiF16X>=500 and x+PosiF16X<=501) and (y+PosiF2Y=100 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=503) and (y+PosiF2Y=101 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=505) and (y+PosiF2Y=102 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=507) and (y+PosiF2Y=103 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=509) and (y+PosiF2Y=104 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=511) and (y+PosiF2Y=105))or
--	((x+PosiF16X>=500 and x+PosiF16X<=513) and (y+PosiF2Y=106))or
--	((x+PosiF16X>=500 and x+PosiF16X<=515) and (y+PosiF2Y=107))or
--	((x+PosiF16X>=500 and x+PosiF16X<=517) and (y+PosiF2Y=108 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=519) and (y+PosiF2Y=109)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=521) and (y+PosiF2Y=110)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=523) and (y+PosiF2Y=111)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=525) and (y+PosiF2Y=112)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=527) and (y+PosiF2Y=113)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF2Y=114)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=527) and (y+PosiF2Y=115)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=525) and (y+PosiF2Y=116)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=523) and (y+PosiF2Y=117)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=521) and (y+PosiF2Y=118)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=519) and (y+PosiF2Y=119)) or
--	((x+PosiF16X>=500 and x+PosiF16X<=517) and (y+PosiF2Y=120 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=515) and (y+PosiF2Y=121 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=513) and (y+PosiF2Y=122 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=511) and (y+PosiF2Y=123 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=509) and (y+PosiF2Y=124 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=507) and (y+PosiF2Y=125 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=505) and (y+PosiF2Y=126 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=503) and (y+PosiF2Y=127 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(1)='1')) or
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-15eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	----------------------------------------------------------------------------------------------------------------Bqs--------------------------------------
--	((((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF1X>=501 and x+PosiF1X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF1X>=501 and x+PosiF1X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF1X>=502 and x+PosiF1X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF1X>=502 and x+PosiF1X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF1X>=503 and x+PosiF1X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF1X>=503 and x+PosiF1X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF1X>=504 and x+PosiF1X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF1X>=504 and x+PosiF1X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF1X>=505 and x+PosiF1X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF1X>=505 and x+PosiF1X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF1X>=506 and x+PosiF1X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF1X>=506 and x+PosiF1X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF1X>=507 and x+PosiF1X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF1X>=507 and x+PosiF1X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF1X>=508 and x+PosiF1X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF1X>=508 and x+PosiF1X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF1X>=509 and x+PosiF1X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF1X>=509 and x+PosiF1X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF1X>=510 and x+PosiF1X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF1X>=510 and x+PosiF1X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF1X>=511 and x+PosiF1X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF1X>=511 and x+PosiF1X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF1X>=512 and x+PosiF1X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF1X>=512 and x+PosiF1X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF1X>=513 and x+PosiF1X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF1X>=513 and x+PosiF1X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF1X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(16)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-14eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF2X>=501 and x+PosiF2X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF2X>=501 and x+PosiF2X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF2X>=502 and x+PosiF2X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF2X>=502 and x+PosiF2X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF2X>=503 and x+PosiF2X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF2X>=503 and x+PosiF2X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF2X>=504 and x+PosiF2X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF2X>=504 and x+PosiF2X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF2X>=505 and x+PosiF2X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF2X>=505 and x+PosiF2X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF2X>=506 and x+PosiF2X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF2X>=506 and x+PosiF2X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF2X>=507 and x+PosiF2X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF2X>=507 and x+PosiF2X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF2X>=508 and x+PosiF2X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF2X>=508 and x+PosiF2X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF2X>=509 and x+PosiF2X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF2X>=509 and x+PosiF2X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF2X>=510 and x+PosiF2X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF2X>=510 and x+PosiF2X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF2X>=511 and x+PosiF2X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF2X>=511 and x+PosiF2X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF2X>=512 and x+PosiF2X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF2X>=512 and x+PosiF2X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF2X>=513 and x+PosiF2X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF2X>=513 and x+PosiF2X<=515) and (y+PosiF3Y=127 ))or
--	((PosiF2X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(15)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-13eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF3X>=501 and x+PosiF3X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF3X>=501 and x+PosiF3X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF3X>=502 and x+PosiF3X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF3X>=502 and x+PosiF3X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF3X>=503 and x+PosiF3X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF3X>=503 and x+PosiF3X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF3X>=504 and x+PosiF3X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF3X>=504 and x+PosiF3X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF3X>=505 and x+PosiF3X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF3X>=505 and x+PosiF3X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF3X>=506 and x+PosiF3X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF3X>=506 and x+PosiF3X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF3X>=507 and x+PosiF3X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF3X>=507 and x+PosiF3X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF3X>=508 and x+PosiF3X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF3X>=508 and x+PosiF3X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF3X>=509 and x+PosiF3X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF3X>=509 and x+PosiF3X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF3X>=510 and x+PosiF3X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF3X>=510 and x+PosiF3X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF3X>=511 and x+PosiF3X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF3X>=511 and x+PosiF3X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF3X>=512 and x+PosiF3X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF3X>=512 and x+PosiF3X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF3X>=513 and x+PosiF3X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF3X>=513 and x+PosiF3X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF4X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(14)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-12eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF4X>=501 and x+PosiF4X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF4X>=501 and x+PosiF4X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF4X>=502 and x+PosiF4X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF4X>=502 and x+PosiF4X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF4X>=503 and x+PosiF4X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF4X>=503 and x+PosiF4X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF4X>=504 and x+PosiF4X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF4X>=504 and x+PosiF4X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF4X>=505 and x+PosiF4X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF4X>=505 and x+PosiF4X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF4X>=506 and x+PosiF4X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF4X>=506 and x+PosiF4X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF4X>=507 and x+PosiF4X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF4X>=507 and x+PosiF4X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF4X>=508 and x+PosiF4X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF4X>=508 and x+PosiF4X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF4X>=509 and x+PosiF4X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF4X>=509 and x+PosiF4X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF4X>=510 and x+PosiF4X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF4X>=510 and x+PosiF4X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF4X>=511 and x+PosiF4X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF4X>=511 and x+PosiF4X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF4X>=512 and x+PosiF4X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF4X>=512 and x+PosiF4X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF4X>=513 and x+PosiF4X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF4X>=513 and x+PosiF4X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF4X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(13)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-11eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF5X>=501 and x+PosiF5X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF5X>=501 and x+PosiF5X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF5X>=502 and x+PosiF5X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF5X>=502 and x+PosiF5X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF5X>=503 and x+PosiF5X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF5X>=503 and x+PosiF5X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF5X>=504 and x+PosiF5X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF5X>=504 and x+PosiF5X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF5X>=505 and x+PosiF5X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF5X>=505 and x+PosiF5X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF5X>=506 and x+PosiF5X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF5X>=506 and x+PosiF5X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF5X>=507 and x+PosiF5X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF5X>=507 and x+PosiF5X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF5X>=508 and x+PosiF5X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF5X>=508 and x+PosiF5X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF5X>=509 and x+PosiF5X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF5X>=509 and x+PosiF5X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF5X>=510 and x+PosiF5X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF5X>=510 and x+PosiF5X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF5X>=511 and x+PosiF5X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF5X>=511 and x+PosiF5X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF5X>=512 and x+PosiF5X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF5X>=512 and x+PosiF5X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF5X>=513 and x+PosiF5X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF5X>=513 and x+PosiF5X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF5X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(12)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-10eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF6X>=501 and x+PosiF6X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF6X>=501 and x+PosiF6X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF6X>=502 and x+PosiF6X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF6X>=502 and x+PosiF6X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF6X>=503 and x+PosiF6X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF6X>=503 and x+PosiF6X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF6X>=504 and x+PosiF6X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF6X>=504 and x+PosiF6X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF6X>=505 and x+PosiF6X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF6X>=505 and x+PosiF6X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF6X>=506 and x+PosiF6X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF6X>=506 and x+PosiF6X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF6X>=507 and x+PosiF6X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF6X>=507 and x+PosiF6X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF6X>=508 and x+PosiF6X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF6X>=508 and x+PosiF6X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF6X>=509 and x+PosiF6X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF6X>=509 and x+PosiF6X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF6X>=510 and x+PosiF6X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF6X>=510 and x+PosiF6X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF6X>=511 and x+PosiF6X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF6X>=511 and x+PosiF6X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF6X>=512 and x+PosiF6X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF6X>=512 and x+PosiF6X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF6X>=513 and x+PosiF6X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF6X>=513 and x+PosiF6X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF7X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(11)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-9eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF7X>=501 and x+PosiF7X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF7X>=501 and x+PosiF7X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF7X>=502 and x+PosiF7X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF7X>=502 and x+PosiF7X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF7X>=503 and x+PosiF7X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF7X>=503 and x+PosiF7X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF7X>=504 and x+PosiF7X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF7X>=504 and x+PosiF7X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF7X>=505 and x+PosiF7X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF7X>=505 and x+PosiF7X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF7X>=506 and x+PosiF7X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF7X>=506 and x+PosiF7X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF7X>=507 and x+PosiF7X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF7X>=507 and x+PosiF7X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF7X>=508 and x+PosiF7X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF7X>=508 and x+PosiF7X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF7X>=509 and x+PosiF7X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF7X>=509 and x+PosiF7X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF7X>=510 and x+PosiF7X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF7X>=510 and x+PosiF7X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF7X>=511 and x+PosiF7X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF7X>=511 and x+PosiF7X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF7X>=512 and x+PosiF7X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF7X>=512 and x+PosiF7X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF7X>=513 and x+PosiF7X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF7X>=513 and x+PosiF7X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF7X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(10)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-8eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF8X>=501 and x+PosiF8X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF8X>=501 and x+PosiF8X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF8X>=502 and x+PosiF8X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF8X>=502 and x+PosiF8X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF8X>=503 and x+PosiF8X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF8X>=503 and x+PosiF8X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF8X>=504 and x+PosiF8X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF8X>=504 and x+PosiF8X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF8X>=505 and x+PosiF8X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF8X>=505 and x+PosiF8X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF8X>=506 and x+PosiF8X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF8X>=506 and x+PosiF8X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF8X>=507 and x+PosiF8X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF8X>=507 and x+PosiF8X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF8X>=508 and x+PosiF8X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF8X>=508 and x+PosiF8X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF8X>=509 and x+PosiF8X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF8X>=509 and x+PosiF8X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF8X>=510 and x+PosiF8X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF8X>=510 and x+PosiF8X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF8X>=511 and x+PosiF8X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF8X>=511 and x+PosiF8X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF8X>=512 and x+PosiF8X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF8X>=512 and x+PosiF8X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF8X>=513 and x+PosiF8X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF8X>=513 and x+PosiF8X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF8X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(9)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-7eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF9X>=501 and x+PosiF9X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF9X>=501 and x+PosiF9X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF9X>=502 and x+PosiF9X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF9X>=502 and x+PosiF9X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF9X>=503 and x+PosiF9X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF9X>=503 and x+PosiF9X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF9X>=504 and x+PosiF9X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF9X>=504 and x+PosiF9X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF9X>=505 and x+PosiF9X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF9X>=505 and x+PosiF9X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF9X>=506 and x+PosiF9X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF9X>=506 and x+PosiF9X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF9X>=507 and x+PosiF9X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF9X>=507 and x+PosiF9X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF9X>=508 and x+PosiF9X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF9X>=508 and x+PosiF9X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF9X>=509 and x+PosiF9X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF9X>=509 and x+PosiF9X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF9X>=510 and x+PosiF9X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF9X>=510 and x+PosiF9X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF9X>=511 and x+PosiF9X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF9X>=511 and x+PosiF9X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF9X>=512 and x+PosiF9X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF9X>=512 and x+PosiF9X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF9X>=513 and x+PosiF9X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF9X>=513 and x+PosiF9X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF9X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(8)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-6eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF10X>=501 and x+PosiF10X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF10X>=501 and x+PosiF10X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF10X>=502 and x+PosiF10X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF10X>=502 and x+PosiF10X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF10X>=503 and x+PosiF10X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF10X>=503 and x+PosiF10X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF10X>=504 and x+PosiF10X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF10X>=504 and x+PosiF10X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF10X>=505 and x+PosiF10X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF10X>=505 and x+PosiF10X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF10X>=506 and x+PosiF10X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF10X>=506 and x+PosiF10X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF10X>=507 and x+PosiF10X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF10X>=507 and x+PosiF10X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF10X>=508 and x+PosiF10X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF10X>=508 and x+PosiF10X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF10X>=509 and x+PosiF10X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF10X>=509 and x+PosiF10X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF10X>=510 and x+PosiF10X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF10X>=510 and x+PosiF10X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF10X>=511 and x+PosiF10X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF10X>=511 and x+PosiF10X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF10X>=512 and x+PosiF10X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF10X>=512 and x+PosiF10X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF10X>=513 and x+PosiF10X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF10X>=513 and x+PosiF10X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF11X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(7)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-5eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF11X>=501 and x+PosiF11X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF11X>=501 and x+PosiF11X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF11X>=502 and x+PosiF11X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF11X>=502 and x+PosiF11X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF11X>=503 and x+PosiF11X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF11X>=503 and x+PosiF11X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF11X>=504 and x+PosiF11X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF11X>=504 and x+PosiF11X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF11X>=505 and x+PosiF11X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF11X>=505 and x+PosiF11X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF11X>=506 and x+PosiF11X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF11X>=506 and x+PosiF11X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF11X>=507 and x+PosiF11X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF11X>=507 and x+PosiF11X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF11X>=508 and x+PosiF11X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF11X>=508 and x+PosiF11X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF11X>=509 and x+PosiF11X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF11X>=509 and x+PosiF11X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF11X>=510 and x+PosiF11X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF11X>=510 and x+PosiF11X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF11X>=511 and x+PosiF11X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF11X>=511 and x+PosiF11X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF11X>=512 and x+PosiF11X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF11X>=512 and x+PosiF11X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF11X>=513 and x+PosiF11X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF11X>=513 and x+PosiF11X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF11X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(6)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-4eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF12X>=501 and x+PosiF12X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF12X>=501 and x+PosiF12X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF12X>=502 and x+PosiF12X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF12X>=502 and x+PosiF12X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF12X>=503 and x+PosiF12X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF12X>=503 and x+PosiF12X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF12X>=504 and x+PosiF12X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF12X>=504 and x+PosiF12X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF12X>=505 and x+PosiF12X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF12X>=505 and x+PosiF12X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF12X>=506 and x+PosiF12X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF12X>=506 and x+PosiF12X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF12X>=507 and x+PosiF12X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF12X>=507 and x+PosiF12X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF12X>=508 and x+PosiF12X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF12X>=508 and x+PosiF12X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF12X>=509 and x+PosiF12X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF12X>=509 and x+PosiF12X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF12X>=510 and x+PosiF12X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF12X>=510 and x+PosiF12X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF12X>=511 and x+PosiF12X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF12X>=511 and x+PosiF12X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF12X>=512 and x+PosiF12X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF12X>=512 and x+PosiF12X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF12X>=513 and x+PosiF12X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF12X>=513 and x+PosiF12X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF12X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(5)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-3eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF13X>=501 and x+PosiF13X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF13X>=501 and x+PosiF13X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF13X>=502 and x+PosiF13X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF13X>=502 and x+PosiF13X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF13X>=503 and x+PosiF13X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF13X>=503 and x+PosiF13X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF13X>=504 and x+PosiF13X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF13X>=504 and x+PosiF13X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF13X>=505 and x+PosiF13X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF13X>=505 and x+PosiF13X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF13X>=506 and x+PosiF13X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF13X>=506 and x+PosiF13X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF13X>=507 and x+PosiF13X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF13X>=507 and x+PosiF13X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF13X>=508 and x+PosiF13X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF13X>=508 and x+PosiF13X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF13X>=509 and x+PosiF13X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF13X>=509 and x+PosiF13X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF13X>=510 and x+PosiF13X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF13X>=510 and x+PosiF13X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF13X>=511 and x+PosiF13X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF13X>=511 and x+PosiF13X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF13X>=512 and x+PosiF13X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF13X>=512 and x+PosiF13X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF13X>=513 and x+PosiF13X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF13X>=513 and x+PosiF13X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF13X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(4)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-2eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF14X>=501 and x+PosiF14X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF14X>=501 and x+PosiF14X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF14X>=502 and x+PosiF14X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF14X>=502 and x+PosiF14X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF14X>=503 and x+PosiF14X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF14X>=503 and x+PosiF14X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF14X>=504 and x+PosiF14X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF14X>=504 and x+PosiF14X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF14X>=505 and x+PosiF14X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF14X>=505 and x+PosiF14X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF14X>=506 and x+PosiF14X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF14X>=506 and x+PosiF14X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF14X>=507 and x+PosiF14X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF14X>=507 and x+PosiF14X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF14X>=508 and x+PosiF14X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF14X>=508 and x+PosiF14X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF14X>=509 and x+PosiF14X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF14X>=509 and x+PosiF14X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF14X>=510 and x+PosiF14X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF14X>=510 and x+PosiF14X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF14X>=511 and x+PosiF14X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF14X>=511 and x+PosiF14X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF14X>=512 and x+PosiF14X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF14X>=512 and x+PosiF14X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF14X>=513 and x+PosiF14X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF14X>=513 and x+PosiF14X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF14X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(3)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-1eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF15X>=500 and x+PosiF15X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF15X>=501 and x+PosiF15X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF15X>=501 and x+PosiF15X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF15X>=502 and x+PosiF15X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF15X>=502 and x+PosiF15X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF15X>=503 and x+PosiF15X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF15X>=503 and x+PosiF15X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF15X>=504 and x+PosiF15X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF15X>=504 and x+PosiF15X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF15X>=505 and x+PosiF15X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF15X>=505 and x+PosiF15X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF15X>=506 and x+PosiF15X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF15X>=506 and x+PosiF15X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF15X>=507 and x+PosiF15X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF15X>=507 and x+PosiF15X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF15X>=508 and x+PosiF15X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF15X>=508 and x+PosiF15X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF15X>=509 and x+PosiF15X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF15X>=509 and x+PosiF15X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF15X>=510 and x+PosiF15X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF15X>=510 and x+PosiF15X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF15X>=511 and x+PosiF15X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF15X>=511 and x+PosiF15X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF15X>=512 and x+PosiF15X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF15X>=512 and x+PosiF15X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF15X>=513 and x+PosiF15X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF15X>=513 and x+PosiF15X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF16X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(2)='1')) or
--	----------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------BAS-0eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--		((((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF3Y=100 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF3Y=101 ))or
--	((x+PosiF16X>=501 and x+PosiF16X<=527) and (y+PosiF3Y=102 ))or
--	((x+PosiF16X>=501 and x+PosiF16X<=527) and (y+PosiF3Y=103 ))or
--	((x+PosiF16X>=502 and x+PosiF16X<=526) and (y+PosiF3Y=104 ))or
--	((x+PosiF16X>=502 and x+PosiF16X<=526) and (y+PosiF3Y=105))or
--	((x+PosiF16X>=503 and x+PosiF16X<=525) and (y+PosiF3Y=106))or
--	((x+PosiF16X>=503 and x+PosiF16X<=525) and (y+PosiF3Y=107))or
--	((x+PosiF16X>=504 and x+PosiF16X<=524) and (y+PosiF3Y=108 ))or
--	((x+PosiF16X>=504 and x+PosiF16X<=524) and (y+PosiF3Y=109)) or
--	((x+PosiF16X>=505 and x+PosiF16X<=523) and (y+PosiF3Y=110)) or
--	((x+PosiF16X>=505 and x+PosiF16X<=523) and (y+PosiF3Y=111)) or
--	((x+PosiF16X>=506 and x+PosiF16X<=522) and (y+PosiF3Y=112)) or
--	((x+PosiF16X>=506 and x+PosiF16X<=522) and (y+PosiF3Y=113)) or
--	((x+PosiF16X>=507 and x+PosiF16X<=521) and (y+PosiF3Y=114)) or
--	((x+PosiF16X>=507 and x+PosiF16X<=521) and (y+PosiF3Y=115)) or
--	((x+PosiF16X>=508 and x+PosiF16X<=520) and (y+PosiF3Y=116)) or
--	((x+PosiF16X>=508 and x+PosiF16X<=520) and (y+PosiF3Y=117)) or
--	((x+PosiF16X>=509 and x+PosiF16X<=519) and (y+PosiF3Y=118)) or
--	((x+PosiF16X>=509 and x+PosiF16X<=519) and (y+PosiF3Y=119)) or
--	((x+PosiF16X>=510 and x+PosiF16X<=518) and (y+PosiF3Y=120 ))or
--	((x+PosiF16X>=510 and x+PosiF16X<=518) and (y+PosiF3Y=121 ))or
--	((x+PosiF16X>=511 and x+PosiF16X<=517) and (y+PosiF3Y=122 ))or
--	((x+PosiF16X>=511 and x+PosiF16X<=517) and (y+PosiF3Y=123 ))or
--	((x+PosiF16X>=512 and x+PosiF16X<=516) and (y+PosiF3Y=124 ))or
--	((x+PosiF16X>=512 and x+PosiF16X<=516) and (y+PosiF3Y=125 ))or
--	((x+PosiF16X>=513 and x+PosiF16X<=515) and (y+PosiF3Y=126 ))or
--	((x+PosiF16X>=513 and x+PosiF16X<=515) and (y+PosiF3Y=127 ))or
--	((x+PosiF16X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(1)='1')) or 
--	-----------------------------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-15eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF1X>=501 and x+PosiF1X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF1X>=501 and x+PosiF1X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF1X>=502 and x+PosiF1X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF1X>=502 and x+PosiF1X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF1X>=503 and x+PosiF1X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF1X>=503 and x+PosiF1X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF1X>=504 and x+PosiF1X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF1X>=504 and x+PosiF1X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF1X>=505 and x+PosiF1X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF1X>=505 and x+PosiF1X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF1X>=506 and x+PosiF1X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF1X>=506 and x+PosiF1X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF1X>=507 and x+PosiF1X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF1X>=507 and x+PosiF1X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF1X>=508 and x+PosiF1X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF1X>=508 and x+PosiF1X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF1X>=509 and x+PosiF1X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF1X>=509 and x+PosiF1X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF1X>=510 and x+PosiF1X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF1X>=510 and x+PosiF1X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF1X>=511 and x+PosiF1X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF1X>=511 and x+PosiF1X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF1X>=512 and x+PosiF1X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF1X>=512 and x+PosiF1X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF1X>=513 and x+PosiF1X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF1X>=513 and x+PosiF1X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF1X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(16)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-14eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF2X>=501 and x+PosiF2X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF2X>=501 and x+PosiF2X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF2X>=502 and x+PosiF2X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF2X>=502 and x+PosiF2X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF2X>=503 and x+PosiF2X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF2X>=503 and x+PosiF2X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF2X>=504 and x+PosiF2X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF2X>=504 and x+PosiF2X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF2X>=505 and x+PosiF2X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF2X>=505 and x+PosiF2X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF2X>=506 and x+PosiF2X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF2X>=506 and x+PosiF2X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF2X>=507 and x+PosiF2X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF2X>=507 and x+PosiF2X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF2X>=508 and x+PosiF2X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF2X>=508 and x+PosiF2X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF2X>=509 and x+PosiF2X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF2X>=509 and x+PosiF2X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF2X>=510 and x+PosiF2X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF2X>=510 and x+PosiF2X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF2X>=511 and x+PosiF2X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF2X>=511 and x+PosiF2X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF2X>=512 and x+PosiF2X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF2X>=512 and x+PosiF2X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF2X>=513 and x+PosiF2X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF2X>=513 and x+PosiF2X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF2X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(15)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-13eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF3X>=501 and x+PosiF3X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF3X>=501 and x+PosiF3X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF3X>=502 and x+PosiF3X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF3X>=502 and x+PosiF3X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF3X>=503 and x+PosiF3X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF3X>=503 and x+PosiF3X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF3X>=504 and x+PosiF3X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF3X>=504 and x+PosiF3X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF3X>=505 and x+PosiF3X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF3X>=505 and x+PosiF3X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF3X>=506 and x+PosiF3X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF3X>=506 and x+PosiF3X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF3X>=507 and x+PosiF3X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF3X>=507 and x+PosiF3X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF3X>=508 and x+PosiF3X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF3X>=508 and x+PosiF3X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF3X>=509 and x+PosiF3X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF3X>=509 and x+PosiF3X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF3X>=510 and x+PosiF3X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF3X>=510 and x+PosiF3X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF3X>=511 and x+PosiF3X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF3X>=511 and x+PosiF3X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF3X>=512 and x+PosiF3X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF3X>=512 and x+PosiF3X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF3X>=513 and x+PosiF3X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF3X>=513 and x+PosiF3X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF3X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(14)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-12eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF4X>=501 and x+PosiF4X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF4X>=501 and x+PosiF4X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF4X>=502 and x+PosiF4X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF4X>=502 and x+PosiF4X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF4X>=503 and x+PosiF4X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF4X>=503 and x+PosiF4X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF4X>=504 and x+PosiF4X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF4X>=504 and x+PosiF4X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF4X>=505 and x+PosiF4X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF4X>=505 and x+PosiF4X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF4X>=506 and x+PosiF4X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF4X>=506 and x+PosiF4X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF4X>=507 and x+PosiF4X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF4X>=507 and x+PosiF4X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF4X>=508 and x+PosiF4X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF4X>=508 and x+PosiF4X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF4X>=509 and x+PosiF4X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF4X>=509 and x+PosiF4X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF4X>=510 and x+PosiF4X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF4X>=510 and x+PosiF4X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF4X>=511 and x+PosiF4X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF4X>=511 and x+PosiF4X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF4X>=512 and x+PosiF4X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF4X>=512 and x+PosiF4X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF4X>=513 and x+PosiF4X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF4X>=513 and x+PosiF4X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF4X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(13)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-11eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF5X>=501 and x+PosiF5X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF5X>=501 and x+PosiF5X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF5X>=502 and x+PosiF5X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF5X>=502 and x+PosiF5X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF5X>=503 and x+PosiF5X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF5X>=503 and x+PosiF5X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF5X>=504 and x+PosiF5X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF5X>=504 and x+PosiF5X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF5X>=505 and x+PosiF5X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF5X>=505 and x+PosiF5X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF5X>=506 and x+PosiF5X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF5X>=506 and x+PosiF5X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF5X>=507 and x+PosiF5X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF5X>=507 and x+PosiF5X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF5X>=508 and x+PosiF5X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF5X>=508 and x+PosiF5X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF5X>=509 and x+PosiF5X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF5X>=509 and x+PosiF5X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF5X>=510 and x+PosiF5X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF5X>=510 and x+PosiF5X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF5X>=511 and x+PosiF5X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF5X>=511 and x+PosiF5X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF5X>=512 and x+PosiF5X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF5X>=512 and x+PosiF5X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF5X>=513 and x+PosiF5X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF5X>=513 and x+PosiF5X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF5X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(12)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-10eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF6X>=501 and x+PosiF6X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF6X>=501 and x+PosiF6X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF6X>=502 and x+PosiF6X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF6X>=502 and x+PosiF6X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF6X>=503 and x+PosiF6X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF6X>=503 and x+PosiF6X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF6X>=504 and x+PosiF6X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF6X>=504 and x+PosiF6X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF6X>=505 and x+PosiF6X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF6X>=505 and x+PosiF6X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF6X>=506 and x+PosiF6X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF6X>=506 and x+PosiF6X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF6X>=507 and x+PosiF6X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF6X>=507 and x+PosiF6X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF6X>=508 and x+PosiF6X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF6X>=508 and x+PosiF6X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF6X>=509 and x+PosiF6X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF6X>=509 and x+PosiF6X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF6X>=510 and x+PosiF6X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF6X>=510 and x+PosiF6X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF6X>=511 and x+PosiF6X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF6X>=511 and x+PosiF6X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF6X>=512 and x+PosiF6X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF6X>=512 and x+PosiF6X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF6X>=513 and x+PosiF6X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF6X>=513 and x+PosiF6X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF6X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(11)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-9eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF7X>=501 and x+PosiF7X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF7X>=501 and x+PosiF7X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF7X>=502 and x+PosiF7X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF7X>=502 and x+PosiF7X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF7X>=503 and x+PosiF7X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF7X>=503 and x+PosiF7X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF7X>=504 and x+PosiF7X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF7X>=504 and x+PosiF7X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF7X>=505 and x+PosiF7X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF7X>=505 and x+PosiF7X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF7X>=506 and x+PosiF7X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF7X>=506 and x+PosiF7X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF7X>=507 and x+PosiF7X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF7X>=507 and x+PosiF7X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF7X>=508 and x+PosiF7X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF7X>=508 and x+PosiF7X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF7X>=509 and x+PosiF7X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF7X>=509 and x+PosiF7X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF7X>=510 and x+PosiF7X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF7X>=510 and x+PosiF7X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF7X>=511 and x+PosiF7X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF7X>=511 and x+PosiF7X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF7X>=512 and x+PosiF7X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF7X>=512 and x+PosiF7X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF7X>=513 and x+PosiF7X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF7X>=513 and x+PosiF7X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF7X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(10)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-8eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF8X>=500 and x+PosiF8x+PosiF8X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF8X>=501 and x+PosiF8X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF8X>=501 and x+PosiF8X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF8X>=502 and x+PosiF8X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF8X>=502 and x+PosiF8X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF8X>=503 and x+PosiF8X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF8X>=503 and x+PosiF8X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF8X>=504 and x+PosiF8X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF8X>=504 and x+PosiF8X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF8X>=505 and x+PosiF8X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF8X>=505 and x+PosiF8X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF8X>=506 and x+PosiF8X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF8X>=506 and x+PosiF8X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF8X>=507 and x+PosiF8X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF8X>=507 and x+PosiF8X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF8X>=508 and x+PosiF8X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF8X>=508 and x+PosiF8X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF8X>=509 and x+PosiF8X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF8X>=509 and x+PosiF8X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF8X>=510 and x+PosiF8X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF8X>=510 and x+PosiF8X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF8X>=511 and x+PosiF8X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF8X>=511 and x+PosiF8X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF8X>=512 and x+PosiF8X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF8X>=512 and x+PosiF8X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF8X>=513 and x+PosiF8X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF8X>=513 and x+PosiF8X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF8X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(9)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-7eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF9X>=501 and x+PosiF9X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF9X>=501 and x+PosiF9X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF9X>=502 and x+PosiF9X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF9X>=502 and x+PosiF9X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF9X>=503 and x+PosiF9X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF9X>=503 and x+PosiF9X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF9X>=504 and x+PosiF9X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF9X>=504 and x+PosiF9X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF9X>=505 and x+PosiF9X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF9X>=505 and x+PosiF9X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF9X>=506 and x+PosiF9X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF9X>=506 and x+PosiF9X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF9X>=507 and x+PosiF9X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF9X>=507 and x+PosiF9X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF9X>=508 and x+PosiF9X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF9X>=508 and x+PosiF9X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF9X>=509 and x+PosiF9X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF9X>=509 and x+PosiF9X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF9X>=510 and x+PosiF9X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF9X>=510 and x+PosiF9X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF9X>=511 and x+PosiF9X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF9X>=511 and x+PosiF9X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF9X>=512 and x+PosiF9X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF9X>=512 and x+PosiF9X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF9X>=513 and x+PosiF9X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF9X>=513 and x+PosiF9X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF9X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(8)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-6eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF10X>=501 and x+PosiF10X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF10X>=501 and x+PosiF10X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF10X>=502 and x+PosiF10X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF10X>=502 and x+PosiF10X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF10X>=503 and x+PosiF10X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF10X>=503 and x+PosiF10X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF10X>=504 and x+PosiF10X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF10X>=504 and x+PosiF10X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF10X>=505 and x+PosiF10X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF10X>=505 and x+PosiF10X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF10X>=506 and x+PosiF10X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF10X>=506 and x+PosiF10X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF10X>=507 and x+PosiF10X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF10X>=507 and x+PosiF10X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF10X>=508 and x+PosiF10X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF10X>=508 and x+PosiF10X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF10X>=509 and x+PosiF10X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF10X>=509 and x+PosiF10X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF10X>=510 and x+PosiF10X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF10X>=510 and x+PosiF10X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF10X>=511 and x+PosiF10X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF10X>=511 and x+PosiF10X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF10X>=512 and x+PosiF10X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF10X>=512 and x+PosiF10X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF10X>=513 and x+PosiF10X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF10X>=513 and x+PosiF10X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF10X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(7)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-5eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF11X>=501 and x+PosiF11X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF11X>=501 and x+PosiF11X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF11X>=502 and x+PosiF11X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF11X>=502 and x+PosiF11X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF11X>=503 and x+PosiF11X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF11X>=503 and x+PosiF11X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF11X>=504 and x+PosiF11X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF11X>=504 and x+PosiF11X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF11X>=505 and x+PosiF11X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF11X>=505 and x+PosiF11X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF11X>=506 and x+PosiF11X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF11X>=506 and x+PosiF11X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF11X>=507 and x+PosiF11X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF11X>=507 and x+PosiF11X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF11X>=508 and x+PosiF11X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF11X>=508 and x+PosiF11X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF11X>=509 and x+PosiF11X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF11X>=509 and x+PosiF11X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF11X>=510 and x+PosiF11X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF11X>=510 and x+PosiF11X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF11X>=511 and x+PosiF11X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF11X>=511 and x+PosiF11X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF11X>=512 and x+PosiF11X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF11X>=512 and x+PosiF11X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF11X>=513 and x+PosiF11X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF11X>=513 and x+PosiF11X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF11X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(6)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-4eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF12X>=501 and x+PosiF12X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF12X>=501 and x+PosiF12X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF12X>=502 and x+PosiF12X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF12X>=502 and x+PosiF12X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF12X>=503 and x+PosiF12X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF12X>=503 and x+PosiF12X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF12X>=504 and x+PosiF12X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF12X>=504 and x+PosiF12X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF12X>=505 and x+PosiF12X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF12X>=505 and x+PosiF12X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF12X>=506 and x+PosiF12X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF12X>=506 and x+PosiF12X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF12X>=507 and x+PosiF12X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF12X>=507 and x+PosiF12X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF12X>=508 and x+PosiF12X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF12X>=508 and x+PosiF12X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF12X>=509 and x+PosiF12X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF12X>=509 and x+PosiF12X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF12X>=510 and x+PosiF12X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF12X>=510 and x+PosiF12X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF12X>=511 and x+PosiF12X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF12X>=511 and x+PosiF12X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF12X>=512 and x+PosiF12X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF12X>=512 and x+PosiF12X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF12X>=513 and x+PosiF12X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF12X>=513 and x+PosiF12X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF12X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(5)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-3eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF13X>=501 and x+PosiF13X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF13X>=501 and x+PosiF13X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF13X>=502 and x+PosiF13X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF13X>=502 and x+PosiF13X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF13X>=503 and x+PosiF13X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF13X>=503 and x+PosiF13X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF13X>=504 and x+PosiF13X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF13X>=504 and x+PosiF13X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF13X>=505 and x+PosiF13X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF13X>=505 and x+PosiF13X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF13X>=506 and x+PosiF13X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF13X>=506 and x+PosiF13X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF13X>=507 and x+PosiF13X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF13X>=507 and x+PosiF13X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF13X>=508 and x+PosiF13X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF13X>=508 and x+PosiF13X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF13X>=509 and x+PosiF13X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF13X>=509 and x+PosiF13X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF13X>=510 and x+PosiF13X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF13X>=510 and x+PosiF13X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF13X>=511 and x+PosiF13X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF13X>=511 and x+PosiF13X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF13X>=512 and x+PosiF13X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF13X>=512 and x+PosiF13X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF13X>=513 and x+PosiF13X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF13X>=513 and x+PosiF13X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF13X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(4)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-2eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF14X>=501 and x+PosiF14X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF14X>=501 and x+PosiF14X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF14X>=502 and x+PosiF14X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF14X>=502 and x+PosiF14X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF14X>=503 and x+PosiF14X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF14X>=503 and x+PosiF14X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF14X>=504 and x+PosiF14X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF14X>=504 and x+PosiF14X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF14X>=505 and x+PosiF14X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF14X>=505 and x+PosiF14X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF14X>=506 and x+PosiF14X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF14X>=506 and x+PosiF14X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF14X>=507 and x+PosiF14X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF14X>=507 and x+PosiF14X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF14X>=508 and x+PosiF14X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF14X>=508 and x+PosiF14X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF14X>=509 and x+PosiF14X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF14X>=509 and x+PosiF14X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF14X>=510 and x+PosiF14X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF14X>=510 and x+PosiF14X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF14X>=511 and x+PosiF14X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF14X>=511 and x+PosiF14X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF14X>=512 and x+PosiF14X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF14X>=512 and x+PosiF14X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF14X>=513 and x+PosiF14X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF14X>=513 and x+PosiF14X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF14X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(3)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-1ere position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF15X>=500 and x+PosiF15x<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF15X>=500 and x+PosiF15X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF15X>=501 and x+PosiF15X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF15X>=501 and x+PosiF15X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF15X>=502 and x+PosiF15X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF15X>=502 and x+PosiF15X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF15X>=503 and x+PosiF15X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF15X>=503 and x+PosiF15X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF15X>=504 and x+PosiF15X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF15X>=504 and x+PosiF15X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF15X>=505 and x+PosiF15X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF15X>=505 and x+PosiF15X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF15X>=506 and x+PosiF15X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF15X>=506 and x+PosiF15X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF15X>=507 and x+PosiF15X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF15X>=507 and x+PosiF15X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF15X>=508 and x+PosiF15X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF15X>=508 and x+PosiF15X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF15X>=509 and x+PosiF15X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF15X>=509 and x+PosiF15X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF15X>=510 and x+PosiF15X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF15X>=510 and x+PosiF15X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF15X>=511 and x+PosiF15X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF15X>=511 and x+PosiF15X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF15X>=512 and x+PosiF15X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF15X>=512 and x+PosiF15X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF15X>=513 and x+PosiF15X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF15X>=513 and x+PosiF15X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF15X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(2)='1')) or
--	---------------------------------------------------------------------
--	-----------------------------------------------------------------------------------------
--	-----------------------------------HAUT-0eme position------------------------------------
--	-----------------------------------------------------------------------------------------
--	------------------------------------------------------------------------------------------
--	((((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF4Y=128 ))or
--	((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF4Y=127 ))or
--	((x+PosiF16X>=501 and x+PosiF16X<=527) and (y+PosiF4Y=126 ))or
--	((x+PosiF16X>=501 and x+PosiF16X<=527) and (y+PosiF4Y=125 ))or
--	((x+PosiF16X>=502 and x+PosiF16X<=526) and (y+PosiF4Y=124 ))or
--	((x+PosiF16X>=502 and x+PosiF16X<=526) and (y+PosiF4Y=123))or
--	((x+PosiF16X>=503 and x+PosiF16X<=525) and (y+PosiF4Y=122))or
--	((x+PosiF16X>=503 and x+PosiF16X<=525) and (y+PosiF4Y=121))or
--	((x+PosiF16X>=504 and x+PosiF16X<=524) and (y+PosiF4Y=120 ))or
--	((x+PosiF16X>=504 and x+PosiF16X<=524) and (y+PosiF4Y=119)) or
--	((x+PosiF16X>=505 and x+PosiF16X<=523) and (y+PosiF4Y=118)) or
--	((x+PosiF16X>=505 and x+PosiF16X<=523) and (y+PosiF4Y=117)) or
--	((x+PosiF16X>=506 and x+PosiF16X<=522) and (y+PosiF4Y=116)) or
--	((x+PosiF16X>=506 and x+PosiF16X<=522) and (y+PosiF4Y=115)) or
--	((x+PosiF16X>=507 and x+PosiF16X<=521) and (y+PosiF4Y=114)) or
--	((x+PosiF16X>=507 and x+PosiF16X<=521) and (y+PosiF4Y=113)) or
--	((x+PosiF16X>=508 and x+PosiF16X<=520) and (y+PosiF4Y=112)) or
--	((x+PosiF16X>=508 and x+PosiF16X<=520) and (y+PosiF4Y=111)) or
--	((x+PosiF16X>=509 and x+PosiF16X<=519) and (y+PosiF4Y=110)) or
--	((x+PosiF16X>=509 and x+PosiF16X<=519) and (y+PosiF4Y=109)) or
--	((x+PosiF16X>=510 and x+PosiF16X<=518) and (y+PosiF4Y=108 ))or
--	((x+PosiF16X>=510 and x+PosiF16X<=518) and (y+PosiF4Y=107 ))or
--	((x+PosiF16X>=511 and x+PosiF16X<=517) and (y+PosiF4Y=106 ))or
--	((x+PosiF16X>=511 and x+PosiF16X<=517) and (y+PosiF4Y=105 ))or
--	((x+PosiF16X>=512 and x+PosiF16X<=516) and (y+PosiF4Y=104 ))or
--	((x+PosiF16X>=512 and x+PosiF16X<=516) and (y+PosiF4Y=103 ))or
--	((x+PosiF16X>=513 and x+PosiF16X<=515) and (y+PosiF4Y=102 ))or
--	((x+PosiF16X>=513 and x+PosiF16X<=515) and (y+PosiF4Y=101 ))or
--	((x+PosiF16X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(1)='1')) ) and (start='1'))or
--	---------------------------------------------------------------------------------------
--	--------------------------------------SIQLETON-DEBUT------------------------------------
--	---------------------------------------------------------------------------------------
--	--------------------------------------S------------------------------------------------
--	---------------------------------------------------------------------------------------
--	 ((
--	((x>=5 and x<=85) and (y=50 or y=51 or y=52))or
--((x>=5 and x<=85) and (y=160 or y=161 or y=159))or
--     ((x>=5 and x<=85) and (y=268 or y=269 or y=270))or
--     ((x=85 or x=84 or x=83) and (y>=161 and y<=270))or
--     ((x=5 or x=6 or x=7) and (y>=50 and y<=160))or
--      -------------------------------------------------------------------------------
--     -----------------------I--------------------------------------------------------
--	  ----------------------------------------------------------------------------------
--
--     ((x>=90 and x<=120) and (y=50 or y=51 or y=52 or y=268 or y=269 or y=270 ))or
--     ((x=105 or x=104 or x=106 or x=107 or x=103) and (y>=50 and y<=270 )) or
--	  ----------------------------------------------------------------------------------
--     -----------------------Q----------------------------------------------------------
--	  ---------------------------------------------------------------------------------
--     ((x>=125 and x<=200) and (y=50 or y=51 or y=52 or y=268 or y=269 or y=270 ))or
--     ((x=125 or x=126 or x=127 or x=198 or x=199 or x=200  ) and( y>=50 and y<=270)) or
--     ((x>=173 and x<=175)and (y=261 or y=262))or
--     ((x>=174 and x<=176)and (y=264 or y=263))or
--     ((x>=175 and x<=177)and (y=265 or y=266))or
--     ((x>=176 and x<=178)and (y=268 or y=267))or
--     ((x>=181 and x<=183)and (y=271 or y=272))or
--     ((x>=182 and x<=184)and (y=273 or y=274))or
--     ((x>=183 and x<=185)and (y=275 or y=276))or
--     ((x>=184 and x<=186)and (y=277 or y=278))or
--     ((x>=185 and x<=187)and (y=279 or y=280))or
--     ((x>=186 and x<=188)and (y=281 or y=282))or
--     ((x>=187 and x<=189)and (y=283 or y=284))or
--	  -------------------------------------------------------------------------------
--     -----------------------L-------------------------------------------------------
--	  -------------------------------------------------------------------------------
--
--    ((x=205 or x=206 or x=207) and (y>=50 and y<=270))or
--    ((x>=205 and x<=285) and (y=268 or y=269 or y=270))or
--	 -------------------------------------------------------------------------------
--    ------------------------E------------------------------------------------------
--	 -------------------------------------------------------------------------------
--    ((x=292 or x=291 or x=290) and (y>=50 and y<=270))or
--    ((x>=290 and x<=370) and (y=170 or y=171 or y=172 or y=50 or y=51 or y=52 or y=270 or y=271 or y=272))or
--    -------------------------------------------------------------------------------
--	 ------------------------t----------------------------------------------------------
--	 -------------------------------------------------------------------------------
--    ((x=415 or x=416 or x=414) and (y>=50 and y<=270))or
--    ((x>=375 and x<=455) and (y=50 or y=51 or y=52 ))or
--	 -------------------------------------------------------------------------------------
--    -----------------------o-la tete-----------------------------------------------------------
--	 -------------------------------------------------------------------------------
--((x=265 and x=345) and (y-50=50 or y-50=51 or y-50=52))or
--  ((x=305 or x=306 or x=304) and (y-50<=50 and y-50>=270))or
--  ((x-450>=32 and x-450<=67) and (y-100=4)) or 
--	 ((x-450>=30 and x-450<=69) and (y-100=5)) or
--	 ((x-450>=28 and x-450<=71) and (y-100=6)) or
--	 ((x-450>=26 and x-450<=73) and (y-100=7)) or
--	 ((x-450>=24 and x-450<=75) and (y-100=8)) or 
--	 ((x-450>=23 and x-450<=76) and (y-100=9)) or
--	 ((x-450>=22 and x-450<=77) and (y-100=10)) or
--	 ((x-450>=20 and x-450<=79) and (y-100=11))or
--	 ((x-450>=19 and x-450<=80) and (y-100=12)) or 
--	 ((x-450>=18 and x-450<=81) and (y-100=13)) or
--	 ((x-450>=17 and x-450<=82) and (y-100=14)) or
--	 ((x-450>=16 and x-450<=83) and (y-100=15))or
--	 ((x-450>=15 and x-450<=84) and (y-100=16)) or 
--	 ((x-450>=14 and x-450<=85) and (y-100=17)) or
--	 ((x-450>=13 and x-450<=86) and (y-100=18)) or
--	 ((x-450>=12 and x-450<=87) and (y-100=19))or
--	 ((x-450>=11 and x-450<=88) and (y-100=20)) or 
--	 ((x-450>=11 and x-450<=88) and (y-100=21)) or
--	 ((x-450>=10 and x-450<=89) and (y-100=22)) or
--	 ((x-450>=9 and x-450<=90) and (y-100=23))or
--	 ((x-450>=9 and x-450<=90) and (y-100=24))or
--	 ((x-450>=8 and x-450<=91) and (y-100=25))or
--	 ((x-450>=7 and x-450<=92) and (y-100=26))or
--	 ((x-450>=7 and x-450<=92) and (y-100=27))or
--	 ((x-450>=6 and x-450<=93) and (y-100=28))or
--	 ((x-450>=6 and x-450<=93) and (y-100=29))or
--	 ((x-450>=5 and x-450<=94) and (y-100=30))or
--	 ((x-450>=5 and x-450<=94) and (y-100=31))or
--	 ((x-450>=4 and x-450<=95) and (y-100=32))or
--	 ((x-450>=4 and x-450<=96) and (y-100=33))or
--	 ((x-450>=4 and x-450<=97) and (y-100=34))or
--	 ((x-450>=3 and x-450<=98) and (y-100=35))or
--	 ((x-450>=3 and x-450<=98) and (y-100=36))or
--	 ((x-450>=3 and x-450<=98) and (y-100=37))or
--	 ((x-450>=3 and x-450<=98) and (y-100=38))or
--	 ((x-450>=2 and x-450<=99) and (y-100=39))or
--	 ((x-450>=2  and x-450<=99) and (y-100=40))or
--	  
--	 (((x-450>=1 and x-450<=28)or (x-450>=39 and x-450<=99)) and (y-100=41))or
--	 (((x-450>=1 and x-450<=25) or (x-450>=42 and x-450<=70)or (x-450>=78 and x-450<=99)) and (y-100=42))or
--	 (((x-450>=0 and x-450<=23) or (x-450>=44 and x-450<=67)or (x-450>=81 and x-450<=99)) and (y-100=43))or
--	 (((x-450>=0 and x-450<=22) or (x-450>=45 and x-450<=65)or (x-450>=83 and x-450<=99)) and (y-100=44))or
--	 (((x-450>=0 and x-450<=21) or (x-450>=46 and x-450<=64) or (x-450>=85 and x-450<=99)) and (y-100=45))or 
--	 (((x-450>=0 and x-450<=20) or (x-450>=47 and x-450<=63) or (x-450>=86 and x-450<=99)) and (y-100=46))or 
--	 (((x-450>=0 and x-450<=19) or (x-450>=48 and x-450<=62) or (x-450>=87 and x-450<=99)) and (y-100=47))or 
--	 (((x-450>=0 and x-450<=18) or (x-450>=49 and x-450<=61) or (x-450>=88 and x-450<=99)) and (y-100=48))or 
--	 (((x-450>=0 and x-450<=17) or (x-450>=50 and x-450<=60)or (x-450>=89 and x-450<=99)) and (y-100=49))or 
--	 (((x-450>=0 and x-450<=17) or (x-450>=50 and x-450<=59) or (x-450>=89 and x-450<=99)) and (y-100=50))or 
--	 (((x-450>=0 and x-450<=16) or (x-450>=51 and x-450<=58) or (x-450>=90 and x-450<=99)) and (y-100=51))or 
--	 (((x-450>=0 and x-450<=16) or (x-450>=51 and x-450<=58) or (x-450>=90 and x-450<=99)) and (y-100=52))or 
--	 (((x-450>=0 and x-450<=16) or (x-450>=51 and x-450<=58) or (x-450>=90 and x-450<=99)) and (y-100=53))or 
--	 (((x-450>=0 and x-450<=15) or (x-450>=52 and x-450<=58) or (x-450>=91 and x-450<=99)) and (y-100=54))or 
--	 (((x-450>=0 and x-450<=15)or (x-450>=52 and x-450<=57)or (x-450>=91 and x-450<=99)) and (y-100>=55 and y-100<=62))or
--	 (((x-450>=0 and x-450<=16)or (x-450>=51 and x-450<=57)or (x-450>=91 and x-450<=99)) and (y-100=63))or 
--	 (((x-450>=0 and x-450<=16)or (x-450>=51 and x-450<=57)or (x-450>=90 and x-450<=99)) and (y-100=64))or 
--	 (((x-450>=0 and x-450<=16)or (x-450>=51 and x-450<=57)or (x-450>=90 and x-450<=99)) and (y-100=65))or 
--	 (((x-450>=1 and x-450<=17)or (x-450>=50 and x-450<=57) or (x-450>=90 and x-450<=98)) and (y-100=66))or 
--	 (((x-450>=2 and x-450<=18)or (x-450>=49 and x-450<=57)or (x-450>=89 and x-450<=98)) and (y-100=67))or 
--	 (((x-450>=3 and x-450<=18)or (x-450>=49 and x-450<=58) or (x-450>=89 and x-450<=97)) and (y-100=68))or 
--	 (((x-450>=4 and x-450<=19)or (x-450>=48 and x-450<=58)or (x-450>=88 and x-450<=97)) and (y-100=69))or 
--	 (((x-450>=5 and x-450<=20)or (x-450>=48 and x-450<=59) or (x-450>=87 and x-450<=97)) and (y-100=70))or 
--	 (((x-450>=5 and x-450<=21)or (x-450>=47 and x-450<=50) or (x-450>=86 and x-450<=96)or (x-450>=55 and x-450<=60)) and (y-100=71))or 
--	 (((x-450>=5 and x-450<=23)or (x-450>=45 and x-450<=50) or (x-450>=85 and x-450<=96)or (x-450>=55 and x-450<=61)) and (y-100=72))or  	 
--	 (((x-450>=5 and x-450<=24)or (x-450>=44 and x-450<=49)or (x-450>=84 and x-450<=96)or (x-450>=55 and x-450<=62)) and (y-100=73))or  	 
--	 (((x-450>=4 and x-450<=26)or (x-450>=42 and x-450<=48) or (x-450>=83 and x-450<=96)or (x-450>=56 and x-450<=63)) and (y-100=74))or  	 
--	 (((x-450>=3 and x-450<=29)or (x-450>=39 and x-450<=47)or (x-450>=82 and x-450<=96)or (x-450>=57 and x-450<=65)) and (y-100=75))or  	 
--	 (((x-450>=3 and x-450<=46)or (x-450>=57 and x-450<=68)or (x-450>=78 and x-450<=97)) and (y-100=76))or  	 
--	 (((x-450>=3 and x-450<=45)or (x-450>=58 and x-450<=98)) and (y-100=77))or  	 
--	 (((x-450>=3 and x-450<=45)or (x-450>=58 and x-450<=98)) and (y-100=78))or  	 
--	 (((x-450>=3 and x-450<=45)or (x-450>=59 and x-450<=98)) and (y-100=79))or  	 
--	 (((x-450>=3 and x-450<=45)or (x-450>=59 and x-450<=98)) and (y-100=80))or  	 
--	 (((x-450>=3 and x-450<=98)) and (y-100=81))or  	 
--	 (((x-450>=3 and x-450<=98)) and (y-100=82))or  	 
--	 (((x-450>=3 and x-450<=98)) and (y-100=83))or	-- 
--	 (((x-450>=3 and x-450<=21)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=78 and x-450<=98)) and (y-100=84))or	 
--	 (((x-450>=4 and x-450<=19)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=79 and x-450<=97)) and (y-100=85))or	 
--	 (((x-450>=5 and x-450<=19)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=80 and x-450<=97)) and (y-100=86))or	 
--	 (((x-450>=6 and x-450<=18)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=82 and x-450<=96)) and (y-100=87))or	 
--	 (((x-450>=6 and x-450<=17)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=84 and x-450<=95)) and (y-100=88))or	 
--	 (((x-450>=7 and x-450<=16)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=92 and x-450<=94)) and (y-100=89))or	 
--	 (((x-450>=8 and x-450<=15)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=90))or	 
--	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=91))or	 
--	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=92))or	 
--	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=93))or	 
--	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=94))or	 
--	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=95))or	 
--	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=96))or	 
--	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=97))or	 
--	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=98))or	 
--	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=99))	 
--   ------------------------------------------------------------------------------------------------------------------
--  ------------------------N ---------------------------------------------------------------
--   ------------------------------------------------------------------------------------------ 
--
--  or
--  ((x-50=525 or  x-50=524 or x-50=523 or x-50=580 or x-50=579 or x-50=578  ) and( y+20>=50 and y+20<=270)) or
--((x-50=527 )and (y+20=122 or y+20=123 ))or
-- ((x-50=528 )and (y+20=124 or y+20=125 or y+20=126 or y+20=127))or
-- ((x-50=529 )and (y+20=128 or y+20=129 or y+20=130))or
-- ((x-50=530 )and (y+20=131 or y+20=132 or y+20=133))or
-- ((x-50=531 )and (y+20=134 or y+20=135 ))or
-- ((x-50=532 )and (y+20=136 or y+20=137 or y+20=138 or y+20=139 or y+20=140 ))or
-- ((x-50=533 )and (y+20=141 or y+20=142 or y+20=143))or
-- ((x-50=534 )and (y+20=144 or y+20=145 ))or
-- ((x-50=535 )and (y+20=146 or y+20=147 or y+20=148))or
-- ((x-50=536 )and (y+20=149 or y+20=150 or y+20=151))or
-- ((x-50=537 )and (y+20=152 or y+20=153 ))or
-- ((x-50=538 )and (y+20=154 or y+20=155 or y+20=156))or
-- ((x-50=539 )and (y+20=157 or y+20=158 or y+20=9159))or
-- ((x-50=540 )and (y+20=160 or y+20=161 or y+20=162))or
-- ((x-50=541 )and (y+20=163 or y+20=164 or y+20=165 or y+20=166 ))or
-- ((x-50=542 )and (y+20=167 or y+20=168 or y+20=169))or
-- ((x-50=543 )and (y+20=170 or y+20=171 or y+20=172))or
-- ((x-50=544 )and (y+20=173 or y+20=174 ))or
-- ((x-50=545 )and (y+20=175 or y+20=176 or y+20=177 or y+20=178))or
-- ((x-50=546 )and (y+20=179 or y+20=180 or y+20=181))or
-- ((x-50=547 )and (y+20=182 or y+20=183 or y+20=184 ))or
-- ((x-50=548 )and (y+20=185 or y+20=186 or y+20=187))or
-- ((x-50=549 )and (y+20=188 or y+20=189 or y+20=190 or y+20=191))or
-- ((x-50=550 )and (y+20=192 or y+20=193 or y+20=194))or
-- ((x-50=551 )and (y+20=195 or y+20=196 ))or
-- ((x-50=552 )and (y+20=197 or y+20=198 or y+20=199 or y+20=200))or
-- ((x-50=553 )and (y+20=201 or y+20=202 or y+20=203))or
-- ((x-50=554 )and (y+20=204 or y+20=205 ))or
-- ((x-50=555 )and (y+20=206 or y+20=207 or y+20=208 or y+20=209))or
-- ((x-50=556 )and (y+20=210 or y+20=211 or y+20=212))or
-- ((x-50=557 )and (y+20=213 or y+20=214 ))or
-- ((x-50=558 )and (y+20=215 or y+20=216 or y+20=217 or y+20=218 or y+20=219))or
-- ((x-50=559 )and (y+20=220 or y+20=221 or y+20=222))or
-- ((x-50=560 )and (y+20=223 or y+20=224 or y+20=225))or
-- ((x-50=561 )and (y+20=226 or y+20=227 or y+20=228 or  y+20=229 or y+20=230 ))or
-- ((x-50=562 )and (y+20=231 or y+20=232 or y+20=233)) or
-- ((x-50=563 )and (y+20=234 or y+20=235 or y+20=236 or y+20=237 ))or
-- ((x-50=564 )and (y+20=238 or y+20=239 or y+20=240  ))or
-- ((x-50=565 )and (y+20=241 or y+20=242 ))or
-- ((x-50=566 )and (y+20=243 or y+20=244 or y+20=245 or y+20=246))or
-- ((x-50=567 )and (y+20=247 or y+20=248 or y+20=249  ))or
-- ((x-50=568 )and (y+20=250 or y+20=251 or y+20=252 ))or
-- ((x-50=569 )and (y+20=253 or y+20=254 ))or
-- ((x-50=570 )and (y+20=255 or y+20=256 or y+20=257))or
-- ((x-50=571 )and (y+20=258 or y+20=259 ))or
-- ((x-50=572 )and (y+20=260 or y+20=261 or y+20=262))or
-- ((x-50=573 )and (y+20=263 or y+20=264 ))or
-- ((x-50=574 )and (y+20=265 or y+20=266 ))or
-- ((x-50=575 )and (y+20=267 or y+20=268 ))or
-- ((x-50=576 )and (y+20=269 or y+20=270 ))or
-- ((x-50=577 )and (y+20=271  ))
-- ------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------
--  
--  ) and (start='0'))) and life/=0)
--  
--  or (
--  life = 0
--  )
--	---------------------------------------------------------------------
--	)
--	else '0';
--
--
--color_selector <= draw_blue & draw_red & draw_white;
--with color_selector select
--   rgb <= "11100000" when "010",
--   "00011111" when "100",
--	"11111111" when "001",
--	--player should turn red when lose_state achieved.
--	"11100000" when "101",
--	"11100000" when "111",
--	"11100000" when "011",
--	--the rest of the screen should be black.
--	"00000000" when others;
----end process;	
----rgb <= "11111111";	 
--end Behavioral;
----------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity graphics is
    Port ( pixel_clk   : in STD_LOGIC;
			  dead        : in STD_LOGIC;
			  hcount      : in STD_LOGIC_VECTOR (10 downto 0);
			  vcount      : in STD_LOGIC_VECTOR (10 downto 0);
			  --the rgb signal is 8 bits: 3 for red, 3 for green, and 2 for blue (See Nexys 3 Reference Manual for more information about VGA Port.)
			  rgb         : out  STD_LOGIC_VECTOR (7 downto 0);
			  ----------------------------------------------------------
              VecteurScore       : in  STD_LOGIC_VECTOR (7 downto 0);
              VecteurUP       : in  STD_LOGIC_VECTOR (16 downto 0);
              VecteurDOWN       : in  STD_LOGIC_VECTOR (16 downto 0);
              VecteurRIGHT       : in  STD_LOGIC_VECTOR (16 downto 0);
              VecteurLEFT       : in  STD_LOGIC_VECTOR (16 downto 0);
				  start        : in STD_LOGIC;
				  life        : in STD_LOGIC_VECTOR (1 downto 0);
				-----------------------------------------------------------  
			   counter: in std_logic_vector(4 downto 0));
end graphics;

architecture Behavioral of graphics is
--constant start : integer := 1; 
--constant VecteurScore : std_logic_vector (6 downto 0)  :="1011011";
--constant VecteurUP : std_logic_vector (15 downto 0)  :="1000100010001000";
--constant VecteurDOWN : std_logic_vector (15 downto 0):="0100010001000100";
--constant VecteurRIGHT :std_logic_vector (15 downto 0):="0010001000100010";
--constant VecteurLEFT : std_logic_vector (15 downto 0):="0001000100010001";
constant lane1_t : integer := 100; --distance between the top lane and top of the screen
constant by : integer := -150; --distance between the top lane and top of the screen

constant bx : integer := -250; --distance between the top lane and top of the screen

constant fx : integer := -20; --distance between the top lane and top of the screen

constant fy : integer := -200; --distance between the top lane and top of the screen

constant p11 : integer := 30; --distance between the top lane and top of the screen

constant p12 : integer := 60; --distance between the top lane and top of the screen

constant p13 : integer := 90; --distance between the top lane and top of the screen

constant p01 : integer := -30; --distance between the top lane and top of the screen

constant p02 : integer := -60; --distance between the top lane and top of the screen
constant p03 : integer := -90; --distance between the top lane and top of the screen
constant posi : integer := -32;
constant posi2 : integer := -64;
constant chiffre1 : integer := 200;
constant posilifesX : integer := 279;
constant posilifesY : integer := -75; 

constant PosiF1Y : integer := 40;
constant PosiF2Y : integer := 40;
constant PosiF3Y : integer := 40;
constant PosiF4Y : integer := 40;
constant PosiF1X : integer := -56-52;
constant PosiF2X : integer := -28-52+1;
constant PosiF3X : integer :=0 -52+2;
constant PosiF4X : integer :=28-52+3;
constant PosiF5X : integer :=56-52+4;
constant PosiF6X : integer :=84-52+5;
constant PosiF7X : integer :=112-52+6;
constant PosiF8X : integer :=140-52+7;
constant PosiF9X : integer :=168-52+8;
constant PosiF10X : integer := 196+9 -52;
constant PosiF11X : integer :=224-52+10;
constant PosiF12X : integer :=252-52+11;
constant PosiF13X : integer :=280-52+12;
constant PosiF14X : integer :=308-52+13;
constant PosiF15X : integer :=336-52+14;
constant PosiF16X : integer :=364-52+15;

signal x,y: integer range 0 to 650;
signal mscore: integer range 0 to 99;
signal lifes : integer range 0 to 3;

--These signals will...
signal draw_blue,
       draw_red,
			draw_black,
			draw_beige,
			draw_white: std_logic;
		 
signal color_selector : std_logic_vector (2 downto 0);		 

begin


--Convert our 11-bit inputs, hcount and vcount, into integers,
--which will be easier to use to designate locations on the screen.
x <= conv_integer(hcount);
y <= conv_integer(vcount);
mscore <= conv_integer(VecteurScore);
lifes <= conv_integer(life);

draw_red <= '1' when(
------------------------------------------lIFES-------------------------------------------------------------------------------------------
 (	
	(((((x+posilifesX>=289 and x+posilifesX<=292)or (x+posilifesX>=302 and x+posilifesX<=305) ) and (y+posilifesY=32 )) or
(((x+posilifesX>=288 and x+posilifesX<=293)or (x+posilifesX>=301 and x+posilifesX<=307) ) and (y+posilifesY=33 )) or
(((x+posilifesX>=287 and x+posilifesX<=294)or (x+posilifesX>=300 and x+posilifesX<=308) ) and (y+posilifesY=34 )) or
(((x+posilifesX>=286 and x+posilifesX<=295)or (x+posilifesX>=299 and x+posilifesX<=309) ) and (y+posilifesY=35 )) or
(((x+posilifesX>=285 and x+posilifesX<=296)or (x+posilifesX>=298 and x+posilifesX<=310) ) and (y+posilifesY=36 )) or
((x+posilifesX>=284 and x+posilifesX<=311) and (y+posilifesY=37 )) or
((x+posilifesX>=284 and x+posilifesX<=311)   and (y+posilifesY=38 )) or
((x+posilifesX>=283 and x+posilifesX<=312)  and (y+posilifesY=39 )) or
((x+posilifesX>=283 and x+posilifesX<=312)  and (y+posilifesY=40 )) or
((x+posilifesX>=283 and x+posilifesX<=312)  and (y+posilifesY=41 )) or
((x+posilifesX>=284 and x+posilifesX<=311)  and (y+posilifesY=42 )) or
((x+posilifesX>=285 and x+posilifesX<=310)  and (y+posilifesY=43 )) or
((x+posilifesX>=285 and x+posilifesX<=310)  and (y+posilifesY=44 )) or
((x+posilifesX>=286 and x+posilifesX<=309)  and (   y+posilifesY=45 )) or
((x+posilifesX>=287 and x+posilifesX<=308)  and (y+posilifesY=46 )) or
((x+posilifesX>=288 and x+posilifesX<=307)  and (y+posilifesY=47 )) or
((x+posilifesX>=288 and x+posilifesX<=306)  and (y+posilifesY=48 )) or
((x+posilifesX>=289 and x+posilifesX<=305)  and (y+posilifesY=49 )) or
((x+posilifesX>=290 and x+posilifesX<=305)  and (y+posilifesY=50 )) or
((x+posilifesX>=291 and x+posilifesX<=304)  and (y+posilifesY=51 )) or
((x+posilifesX>=291 and x+posilifesX<=303)  and (y+posilifesY=52 )) or
((x+posilifesX>=292 and x+posilifesX<=302)  and (y+posilifesY=53 )) or
((x+posilifesX>=293 and x+posilifesX<=301)  and (y+posilifesY=54 )) or
((x+posilifesX>=294 and x+posilifesX<=300)  and (y+posilifesY=55 )) or
((x+posilifesX>=294 and x+posilifesX<=300)  and (y+posilifesY=56 )) or
((x+posilifesX>=295 and x+posilifesX<=299)  and (y+posilifesY=57 )) or
((x+posilifesX>=296 and x+posilifesX<=298)  and (y+posilifesY=58 )) or
((x+posilifesX=297) and (y+posilifesY=59 )) 
) and (lifes>=1))or
	 (((((x+posilifesX+posi>=289 and x+posilifesX+posi<=292)or (x+posilifesX+posi>=302 and x+posilifesX+posi<=305) ) and (y+posilifesY=32 )) or
(((x+posilifesX+posi>=288 and x+posilifesX+posi<=293)or (x+posilifesX+posi>=301 and x+posilifesX+posi<=307) ) and (y+posilifesY=33 )) or
(((x+posilifesX+posi>=287 and x+posilifesX+posi<=294)or (x+posilifesX+posi>=300 and x+posilifesX+posi<=308) ) and (y+posilifesY=34 )) or
(((x+posilifesX+posi>=286 and x+posilifesX+posi<=295)or (x+posilifesX+posi>=299 and x+posilifesX+posi<=309) ) and (y+posilifesY=35 )) or
(((x+posilifesX+posi>=285 and x+posilifesX+posi<=296)or (x+posilifesX+posi>=298 and x+posilifesX+posi<=310) ) and (y+posilifesY=36 )) or
((x+posilifesX+posi>=284 and x+posilifesX+posi<=311) and (y+posilifesY=37 )) or
((x+posilifesX+posi>=284 and x+posilifesX+posi<=311)   and (y+posilifesY=38 )) or
((x+posilifesX+posi>=283 and x+posilifesX+posi<=312)  and (y+posilifesY=39 )) or
((x+posilifesX+posi>=283 and x+posilifesX+posi<=312)  and (y+posilifesY=40 )) or
((x+posilifesX+posi>=283 and x+posilifesX+posi<=312)  and (y+posilifesY=41 )) or
((x+posilifesX+posi>=284 and x+posilifesX+posi<=311)  and (y+posilifesY=42 )) or
((x+posilifesX+posi>=285 and x+posilifesX+posi<=310)  and (y+posilifesY=43 )) or
((x+posilifesX+posi>=285 and x+posilifesX+posi<=310)  and (y+posilifesY=44 )) or
((x+posilifesX+posi>=286 and x+posilifesX+posi<=309)  and (y+posilifesY=45 )) or
((x+posilifesX+posi>=287 and x+posilifesX+posi<=308)  and (y+posilifesY=46 )) or
((x+posilifesX+posi>=288 and x+posilifesX+posi<=307)  and (y+posilifesY=47 )) or
((x+posilifesX+posi>=288 and x+posilifesX+posi<=306)  and (y+posilifesY=48 )) or
((x+posilifesX+posi>=289 and x+posilifesX+posi<=305)  and (y+posilifesY=49 )) or
((x+posilifesX+posi>=290 and x+posilifesX+posi<=305)  and (y+posilifesY=50 )) or
((x+posilifesX+posi>=291 and x+posilifesX+posi<=304)  and (y+posilifesY=51 )) or
((x+posilifesX+posi>=291 and x+posilifesX+posi<=303)  and (y+posilifesY=52 )) or
((x+posilifesX+posi>=292 and x+posilifesX+posi<=302)  and (y+posilifesY=53 )) or
((x+posilifesX+posi>=293 and x+posilifesX+posi<=301)  and (y+posilifesY=54 )) or
((x+posilifesX+posi>=294 and x+posilifesX+posi<=300)  and (y+posilifesY=55 )) or
((x+posilifesX+posi>=294 and x+posilifesX+posi<=300)  and (y+posilifesY=56 )) or
((x+posilifesX+posi>=295 and x+posilifesX+posi<=299)  and (y+posilifesY=57 )) or
((x+posilifesX+posi>=296 and x+posilifesX+posi<=298)  and (y+posilifesY=58 )) or
((x+posilifesX+posi=297) and (y+posilifesY=59 )) 
) and (lifes>=2))or
	 (((((x+posilifesX+posi2>=289 and x+posilifesX+posi2<=292)or (x+posilifesX+posi2>=302 and x+posilifesX+posi2<=305) ) and (y+posilifesY=32 )) or
(((x+posilifesX+posi2>=288 and x+posilifesX+posi2<=293)or (x+posilifesX+posi2>=301 and x+posilifesX+posi2<=307) ) and (y+posilifesY=33 )) or
(((x+posilifesX+posi2>=287 and x+posilifesX+posi2<=294)or (x+posilifesX+posi2>=300 and x+posilifesX+posi2<=308) ) and (y+posilifesY=34 )) or
(((x+posilifesX+posi2>=286 and x+posilifesX+posi2<=295)or (x+posilifesX+posi2>=299 and x+posilifesX+posi2<=309) ) and (y+posilifesY=35 )) or
(((x+posilifesX+posi2>=285 and x+posilifesX+posi2<=296)or (x+posilifesX+posi2>=298 and x+posilifesX+posi2<=310) ) and (y+posilifesY=36 )) or
((x+posilifesX+posi2>=284 and x+posilifesX+posi2<=311) and (y+posilifesY=37 )) or
((x+posilifesX+posi2>=284 and x+posilifesX+posi2<=311)   and (y+posilifesY=38 )) or
((x+posilifesX+posi2>=283 and x+posilifesX+posi2<=312)  and (y+posilifesY=39 )) or
((x+posilifesX+posi2>=283 and x+posilifesX+posi2<=312)  and (y+posilifesY=40 )) or
((x+posilifesX+posi2>=283 and x+posilifesX+posi2<=312)  and (y+posilifesY=41 )) or
((x+posilifesX+posi2>=284 and x+posilifesX+posi2<=311)  and (y+posilifesY=42 )) or
((x+posilifesX+posi2>=285 and x+posilifesX+posi2<=310)  and (y+posilifesY=43 )) or
((x+posilifesX+posi2>=285 and x+posilifesX+posi2<=310)  and (y+posilifesY=44 )) or
((x+posilifesX+posi2>=286 and x+posilifesX+posi2<=309)  and (y+posilifesY=45 )) or
((x+posilifesX+posi2>=287 and x+posilifesX+posi2<=308)  and (y+posilifesY=46 )) or
((x+posilifesX+posi2>=288 and x+posilifesX+posi2<=307)  and (y+posilifesY=47 )) or
((x+posilifesX+posi2>=288 and x+posilifesX+posi2<=306)  and (y+posilifesY=48 )) or
((x+posilifesX+posi2>=289 and x+posilifesX+posi2<=305)  and (y+posilifesY=49 )) or
((x+posilifesX+posi2>=290 and x+posilifesX+posi2<=305)  and (y+posilifesY=50 )) or
((x+posilifesX+posi2>=291 and x+posilifesX+posi2<=304)  and (y+posilifesY=51 )) or
((x+posilifesX+posi2>=291 and x+posilifesX+posi2<=303)  and (y+posilifesY=52 )) or
((x+posilifesX+posi2>=292 and x+posilifesX+posi2<=302)  and (y+posilifesY=53 )) or
((x+posilifesX+posi2>=293 and x+posilifesX+posi2<=301)  and (y+posilifesY=54 )) or
((x+posilifesX+posi2>=294 and x+posilifesX+posi2<=300)  and (y+posilifesY=55 )) or
((x+posilifesX+posi2>=294 and x+posilifesX+posi2<=300)  and (y+posilifesY=56 )) or
((x+posilifesX+posi2>=295 and x+posilifesX+posi2<=299)  and (y+posilifesY=57 )) or
((x+posilifesX+posi2>=296 and x+posilifesX+posi2<=298)  and (y+posilifesY=58 )) or
((x+posilifesX+posi2=297) and (y+posilifesY=59 )) ) and (lifes=3)))  and (start='0'))



	else '0';

--
draw_blue <= '1' when (((
(x>=290-150 and x<=320-150) and (y+chiffre1>=245 and y+chiffre1<=305 ))or
((x>=323-150 and x<=640) and (y+chiffre1=250 or y+chiffre1=249 or y+chiffre1=248 or y+chiffre1=247))or
((x>=323-150 and x<=640) and (y+chiffre1=300 or y+chiffre1=301 or y+chiffre1=302 or y+chiffre1=303))or


------------------------------------CHIFFRES POUR SCore--------------------------------------------
---------------------------------le 0
((((x-60>=10 and x-60<=17) and (y-6=39 or y-6=66 )) or
((x-60=7 or x-60=8 or x-60=9 or x-60=18 or x-60=19 or x-60=20 ) and ( y-6=40 or y-6=65 )) or
((x-60=6 or x-60=21) and (y-6=41 or y-6=64 )) or
((x-60=5 or x-60=22 ) and (y-6=42 or y-6=63 )) or
((x-60=4 or x-60=23 ) and (y-6=43 or y-6=62 )) or
((x-60=3 or x-60=24 ) and (y-6=44 or y-6=61 )) or
((x-60=2 or x-60=25 ) and (y-6=45 or y-6=60 )) or
((x-60=1 or x-60=26 ) and (y-6=46 or y-6=28 or y-6=29 or y-6=59 or y-6=58 or y-6=57)) or
((x-60=0 or x-60=27 ) and (y-6>=47 and  y-6<=56)))and (mscore mod 10=0)) or
------------------------------------le 1
((((x-60=14 or x-60=15) and (y-6>=41 and y-6<=66 )))and (mscore mod 10 = 1)) or
------------------------------------le 2
 ((((x-60>=5 and x-60<=25) and (y-6=42 or y-6=41 )) or
((x-60>=5 and x-60<=25) and (y-6=66 or y-6=65)) or
((x-60>=5 and x-60<=25) and (y-6=53 or y-6=52  )) or
((x-60=25 or  x-60=24) and (y>=41 and y-6<=53 )) or
((x-60=5 or x-60=6) and (y-6>=53 and y-6<=66)))and (mscore mod 10=2)) or
-----------------------------------le 3
((((x-60=25 or x-60=24) and (y-6>=41 and y-6<=66 )) or
((x-60>=4 and x-60<=25) and (y-6=41 or y-6=42 )) or
((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52)) or
((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65))) and (mscore mod 10=3))or
-----------------------------------------le 4
((((x-60=25 or x-60=24) and (y-6>=41 and y-6<=66 )) or
((x-60=4 or x-60=5) and (y-6>=41 and y-6<=53 )) or
((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52 ))) and (mscore mod 10=4)) or

-------------------------------------------le5

((((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40 )) or
((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65)) or
((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52)) or
((x-60=4 or x-60=5) and (y-6>=41 and y-6<=53 )) or
((x-60=25 or x-60=24) and (y-6>=53 and y-6<=66 ))) and (mscore mod 10=5)) or
----------------------------------------------------le 6
((((x-60=4 or x-60=5) and (y-6>=41 and y-6<=66 )) or
((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40  )) or
((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65)) or
((x-60=25 or x-60=24) and (y-6>=53 and y-6<=66 )) or
((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52 ))) and (mscore mod 10=6)) or
---------------------------------------------------le 7
((((x-60=25 or x-60=24) and (y-6>=41 and y-6<=66 )) or
((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40 )) )and (mscore mod 10=7))or
--------------------------------------------------le 8

((((x-60=4 or x-60=5) and (y-6>=41 and y-6<=66 )) or
((x-60=25 or x-60=24 ) and (y-6>=41 and y-6<=66 )) or
((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40 )) or
((x-60>=4 and x-60<=25) and (y-6=53  or y-6=52)) or
((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65 )) ) and (mscore mod 10=8))or
------------------------------------------------le 9

((((x-60=25 or x-60=24) and (y-6>=41 and y-6<=66 )) or
((x-60=4 or x-60=5) and (y-6>=41 and y-6<=53 )) or
((x-60>=4 and x-60<=25) and (y-6=41 or y-6=40 )) or
((x-60>=4 and x-60<=25) and (y-6=66 or y-6=65 )) or
((x-60>=4 and x-60<=25) and (y-6=53 or y-6=52 ))) and (mscore mod 10=9)) or
-----------------------------------------------------------------------------------------------
 ---------------------------------le 0
((((x-20>=10 and x-20<=17) and (y-6=39 or y-6=66 )) or
((x-20=7 or x-20=8 or x-20=9 or x-20=18 or x-20=19 or x-20=20 ) and ( y-6=40 or y-6=65 )) or
((x-20=6 or x-20=21) and (y-6=41 or y-6=64 )) or
((x-20=5 or x-20=22 ) and (y-6=42 or y-6=63 )) or
((x-20=4 or x-20=23 ) and (y-6=43 or y-6=62 )) or
((x-20=3 or x-20=24 ) and (y-6=44 or y-6=61 )) or
((x-20=2 or x-20=25 ) and (y-6=45 or y-6=60 )) or
((x-20=1 or x-20=26 ) and (y-6=46 or y-6=28 or y-6=29 or y-6=59 or y-6=58 or y-6=57)) or
((x-20=0 or x-20=27 ) and (y-6>=47 and  y-6<=56)))and (mscore >=0 and mscore<10)) or
------------------------------------le 1
((((x-20=14 or x-20=15) and (y-6>=39 and y-6<=66 )))and (mscore >=10 and mscore<20)) or
------------------------------------le 2
 ((((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40  )) or
((x-20>=3 and x-20<=25) and (y-6=66 or y-6=65)) or
((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52 )) or
((x-20=25 or x-20=24) and (y-6>=40 and y-6<=53 )) or
((x-20=3 or x-20=4) and (y-6>=53 and y-6<=66)))and (mscore >=20 and mscore<30)) or
-----------------------------------le 3
((((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40  )) or
((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52)) or
((x-20>=3 and x-20<=25) and (y-6=66 or y-6=65))) and (mscore >=30 and mscore<40))or
-----------------------------------------le 4
((((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
((x-20=3 or x-20=4) and (y-6>=39 and y-6<=53 )) or
((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52))) and (mscore >=40 and mscore<50)) or

-------------------------------------------le5

((((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40 )) or
((x-20>=3 and x-20<=25) and (y-6=66 or y-6=65 )) or
((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52)) or
((x-20=3 or x-20=4) and (y-6>=39 and y-6<=53 )) or
((x-20=25 or x-20=24 ) and (y-6>=53 and y-6<=66 ))) and (mscore >=50 and mscore<60)) or
----------------------------------------------------le 6
((((x-20=4 or x-20=5) and (y-6>=39 and y-6<=66 )) or
((x-20>=4 and x-20<=25) and (y-6=39 or y-6=40 )) or
((x-20>=0 and x-20<=25) and (y-6=66 or y-6=65 )) or
((x-20=25 or x-20=24) and (y-6>=53 and y-6<=66 )) or
((x-20>=4 and x-20<=25) and (y-6=53 or y-6=52))) and (mscore >=60 and mscore<70)) or
---------------------------------------------------le 7
((((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40  )) )and (mscore >=70 and mscore<80))or
--------------------------------------------------le 8

((((x-20=3 or x-20=4) and (y-6>=39 and y-6<=66 )) or
((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40 )) or
((x-20>=3 and x-20<=25) and (y-6=53  or y-6=52)) or
((x-20>=3 and x-20<=25) and (y-6=66  or y-6=65)) ) and (mscore >=80 and mscore<90))or
------------------------------------------------le 9

((((x-20=25 or x-20=24) and (y-6>=39 and y-6<=66 )) or
((x-20=3 or x-20=4) and (y-6>=39 and y-6<=53 )) or
((x-20>=3 and x-20<=25) and (y-6=39 or y-6=40 )) or
((x-20>=3 and x-20<=25) and (y-6=66 or y-6=65 )) or
((x-20>=3 and x-20<=25) and (y-6=53 or y-6=52  ))) and (mscore >=90 and mscore<100)))and (start='0') and (lifes/=0))
--------------------------------------------------------------------------------------------------------------

	else '0';
   
----------------------------------------------------------------------------------------------
-----------------------------------DESSINER EN BLANC------------------------------------------
draw_white <= '1' when ( 
(

--------------------------------------Le danceur-----------------------------------------------
--visage
(
   	(( 
    (((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or

	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or

	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or

	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or

	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or

	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or

	

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or

((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or

((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or

((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or



	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or

	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or

	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or

	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or

	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or

	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or

	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or

	-----------------dbut 9afas

	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or

	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or

	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or

	-----------------7awd

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or

	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or

	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or

	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or

	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or

	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or

	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or

	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or

	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or

	------------------Mains normal

	

	((y +by >= 60 and y+by <= 64) and (x+bx = 67 or x+bx = 90)) or

	((y +by >= 60 and y+by <= 64) and (x+bx = 66 or x+bx = 91)) or

	((y +by >= 60 and y+by <= 66) and (x+bx = 65 or x+bx = 92)) or

	((y +by >= 61 and y+by <= 67) and (x+bx = 64 or x+bx = 93)) or

	((y +by >= 63 and y+by <= 69) and (x+bx = 63 or x+bx = 94)) or

	((y +by >= 65 and y+by <= 83) and (x+bx = 62 or x+bx = 95)) or

	((y +by >= 66 and y+by <= 83) and (x+bx = 61 or x+bx = 96)) or

	((y +by >= 68 and y+by <= 84) and (x+bx = 60 or x+bx = 97)) or

	((y +by >= 83 and y+by <= 88) and (x+bx = 59 or x+bx = 98)) or

	((y +by >= 83 and y+by <= 88) and (x+bx = 58 or x+bx = 99)) or

	

	

	------------------pieds normal

	((y +by >= 92 and y+by <= 118) and ((x+bx >= 72 and x+bx <= 74) or (x+bx >= 83 and x+bx <= 85))) or

	((y +by >= 116 and y+by <= 118) and ((x+bx >= 86 and x+bx <= 90) or (x+bx >= 67 and x+bx <= 71))) 



	) and (counter="00000")

	) or

	

	(

	--**********************************************************************1*******************************************************************

		--**********************************************************************11*******************************************************************
		(((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or
	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or
	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or
	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or
	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or
	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or
	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or
	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or
	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or
	
((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or
((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or
((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or
((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or
((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or
((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or
((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or
((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or
((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or
((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or

	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or
	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or
	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or
	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or
	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or
	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or
	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or
	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or
	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or
	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or
	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or
	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or
	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or
	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or
	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or
	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or
	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or
	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or
	--droite tal3a
		((x +bx >= 43 and x+bx <= 47) and (y+by = 43)) or
	((x +bx >= 43 and x+bx <= 48) and (y+by = 44)) or
	((x +bx >= 44 and x+bx <= 49) and (y+by = 45)) or
	((x +bx >= 46 and x+bx <= 51) and (y+by = 46)) or
	((x +bx >= 47 and x+bx <= 52) and (y+by = 47)) or
	((x +bx >= 48 and x+bx <= 54) and (y+by = 48)) or
	((x +bx >= 49 and x+bx <= 55) and (y+by = 49)) or
	((x +bx >= 49 and x+bx <= 56) and (y+by = 50)) or
	((x +bx >= 50 and x+bx <= 58) and (y+by = 51 ))or
	((x +bx >= 51 and x+bx <= 59) and (y+by = 52 ))or
	((x +bx >= 53 and x+bx <= 61) and (y+by = 53)) or
	((x +bx >= 53 and x+bx <= 62) and (y+by = 54)) or
	((x +bx >= 54 and x+bx <= 63) and (y+by = 55)) or
	((x +bx >= 55 and x+bx <= 68) and (y+by = 56)) or
	((x +bx >= 57 and x+bx <= 68) and (y+by = 57))or
	((x +bx >= 58 and x+bx <= 68) and (y+by = 58)) or
	((x +bx >= 60 and x+bx <= 68) and (y+by = 59)) or
	((x +bx >= 61 and x+bx <= 67) and (y+by = 60)) or
	((x +bx >= 62 and x+bx <= 66) and (y+by = 61)) or
	((x +bx >= 64 and x+bx <= 66) and (y+by = 62)) or
	((x +bx >= 65 and x+bx <= 66 ) and (y+by = 63)) or
		--gauche metwiya
	((x +bx >= 89 and x+bx <= 89) and (y+by = 57)) or
	((x +bx >= 89 and x+bx <= 89) and (y+by = 58)) or
	((x +bx >= 89 and x+bx <= 90) and (y+by = 59)) or
	((x +bx >= 89 and x+bx <= 91) and (y+by = 60)) or
	((x +bx >= 89 and x+bx <= 92) and (y+by = 61)) or
	((x +bx >= 89 and x+bx <= 93) and (y+by = 62)) or
	((x +bx >= 89 and x+bx <= 94) and (y+by = 63)) or
	((x +bx >= 93 and x+bx <= 95) and (y+by = 64)) or
	((x +bx >= 94 and x+bx <= 96) and (y+by = 65 ))or
	((x +bx >= 95 and x+bx <= 97) and (y+by = 66 ))or
	((x +bx >= 96 and x+bx <= 98) and (y+by = 67)) or
	((x +bx >= 97 and x+bx <= 99) and (y+by = 68)) or
	((x +bx >= 98 and x+bx <= 100) and (y+by = 69)) or
	((x +bx >= 97 and x+bx <= 101) and (y+by = 70)) or
	((x +bx >= 96 and x+bx <= 101) and (y+by = 71)) or
	((x +bx >= 94 and x+bx <= 100) and (y+by = 72)) or
	((x +bx >= 93 and x+bx <= 99) and (y+by = 73)) or
	((x +bx >= 92 and x+bx <= 98) and (y+by = 74)) or
	((x +bx >= 91 and x+bx <= 97) and (y+by = 75)) or
	((x +bx >= 90 and x+bx <= 95) and (y+by = 76)) or
	((x +bx >= 90 and x+bx <= 94 ) and (y+by = 77)) or
	((x +bx >= 90 and x+bx <= 93 ) and (y+by = 78)) or
	((x +bx >= 91 and x+bx <= 93 ) and (y+by = 79)) or
	((x +bx >= 91 and x+bx <= 94 ) and (y+by = 80)) or
	((x +bx >= 92 and x+bx <= 95 ) and (y+by = 81)) or
	((x +bx >= 93 and x+bx <= 95 ) and (y+by = 82)) or
	((x +bx >= 93 and x+bx <= 96 ) and (y+by = 83)) or
	((x +bx >= 94 and x+bx <= 96 ) and (y+by = 84)) or
		---droite mefto7in
	((x +bx >= 69 and x+bx <= 71) and (y+by = 92)) or
	((x +bx >= 69 and x+bx <= 71) and (y+by = 93)) or
	((x +bx >= 67 and x+bx <= 71) and (y+by = 94)) or
	((x +bx >= 66 and x+bx <= 71) and (y+by = 95)) or
	((x +bx >= 65 and x+bx <= 70) and (y+by = 96)) or
	((x +bx >= 64 and x+bx <= 69) and (y+by = 97)) or
	((x +bx >= 63 and x+bx <= 66) and (y+by = 98)) or
	((x +bx >= 62 and x+bx <= 66) and (y+by = 99)) or
	((x +bx >= 61 and x+bx <= 65) and (y+by = 100)) or
	((x +bx >= 60 and x+bx <= 64) and (y+by = 101)) or
	((x +bx >= 61 and x+bx <= 63) and (y+by = 102)) or
	((x +bx >= 61 and x+bx <= 63) and (y+by = 103)) or
	((x +bx >= 62 and x+bx <= 63) and (y+by = 104)) or
	((x +bx >= 62 and x+bx <= 64) and (y+by = 105)) or
	((x +bx >= 63 and x+bx <= 64) and (y+by = 106)) or
	((x +bx >= 63 and x+bx <= 65) and (y+by = 107)) or
	((x +bx >= 64 and x+bx <= 65) and (y+by = 108)) or
	((x +bx >= 64 and x+bx <= 66) and (y+by = 109)) or
	((x +bx >= 65 and x+bx <= 66) and (y+by = 110)) or
	((x +bx >= 65 and x+bx <= 67) and (y+by = 111)) or
	((x +bx >= 66 and x+bx <= 68) and (y+by = 112)) or
	((x +bx >= 66 and x+bx <= 69) and (y+by = 113)) or
	((x +bx >= 66 and x+bx <= 70) and (y+by = 114)) or
	((x +bx >= 67 and x+bx <= 70) and (y+by = 115)) or
((x +bx >= 60 and x+bx <= 70) and (y +by >= 115 and y+by <= 119)) or
----gauche mkesla
	((x +bx >= 83 and x+bx <= 87) and (y+by = 92)) or
	((x +bx >= 83 and x+bx <= 87) and (y+by = 93)) or
	((x +bx >= 83 and x+bx <= 87) and (y+by = 94)) or
	((x +bx >= 84 and x+bx <= 87) and (y+by = 95)) or
	((x +bx >= 84 and x+bx <= 87) and (y+by = 96)) or
	((x +bx >= 85 and x+bx <= 87) and (y+by = 97)) or
	((x +bx >= 85 and x+bx <= 88) and (y+by = 98)) or
	((x +bx >= 85 and x+bx <= 89) and (y+by = 99)) or
	((x +bx >= 86 and x+bx <= 89) and (y+by = 100))or
	((x +bx >= 86 and x+bx <= 89) and (y+by = 101)) or
	((x +bx >= 87 and x+bx <= 90) and (y+by = 102)) or
	((x +bx >= 87 and x+bx <= 90) and (y+by = 103)) or
	((x +bx >= 87 and x+bx <= 91) and (y+by = 104)) or
	((x +bx >= 88 and x+bx <= 91) and (y+by = 105)) or
	((x +bx >= 88 and x+bx <= 91) and (y+by = 106)) or
	((x +bx >= 89 and x+bx <= 92) and (y+by = 107)) or
	((x +bx >= 89 and x+bx <= 92) and (y+by = 108)) or
	((x +bx >= 90 and x+bx <= 93) and (y+by = 109)) or
	((x +bx >= 91 and x+bx <= 94) and (y+by = 110)) or
	((x +bx >= 91 and x+bx <= 95) and (y+by = 111)) or
	((x +bx >= 92 and x+bx <= 95) and (y+by = 112)) or
	((x +bx >= 92 and x+bx <= 96) and (y+by = 113)) or
	((x +bx >= 93 and x+bx <= 97) and (y+by = 114)) or
	((x +bx >= 94 and x+bx <= 97) and (y+by = 115)) or
	((x +bx >= 94 and x+bx <= 104) and (y +by >= 115 and y+by <= 119))

	) and (counter="00001")

	) 

	

	--********************************

	 or

	

	(

	--**********************************************************************11*******************************************************************
		(((x + bx + p11 >= 75) and (x + bx + p11 <= 82) and (y + by = 29)) or
	((x + bx + p11 >= 72) and (x + bx + p11 <= 85) and (y + by = 30)) or
	((x + bx + p11 >= 70) and (x + bx + p11 <= 87) and (y + by = 31)) or
	((x + bx + p11 >= 70) and (x + bx + p11 <= 89) and (y + by = 32)) or
	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 33)) or
	((x + bx + p11 >= 68) and (x + bx + p11 <= 90) and (y + by = 34)) or
	((x + bx + p11 >= 66) and (x + bx + p11 <= 90) and (y + by = 35)) or
	((x + bx + p11 >= 66) and (x + bx + p11 <= 90) and (y + by = 36)) or
	((x + bx + p11 >= 66) and (x + bx + p11 <= 91) and (y + by = 37)) or
	
((((x + bx + p11 >= 65) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 38)) or
((((x + bx + p11 >= 65) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 39)) or
((((x + bx + p11 >= 65) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 40)) or
((((x + bx + p11 >= 65) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 41)) or
((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 90))) and (y + by = 42)) or
((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 90))) and (y + by = 43)) or
((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 86) and (x + bx + p11 <= 89))) and (y + by = 44)) or
((((x + bx + p11 >= 68) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 86) and (x + bx + p11 <= 89))) and (y + by = 45)) or
((((x + bx + p11 >= 69) and (x + bx + p11 <= 76)) or (x + bx + p11 = 78) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 87))) and (y + by = 46)) or
((((x + bx + p11 >= 71) and (x + bx + p11 <= 76)) or (x + bx + p11 = 78) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 87))) and (y + by = 47)) or

	((x + bx + p11 >= 74) and (x + bx + p11 <= 83) and (y + by = 48)) or
	((x + bx + p11 >= 77) and (x + bx + p11 <= 79) and (y + by = 49)) or
	((((x + bx + p11 >= 71) and (x + bx + p11 <= 72)) or ((x + bx + p11 >= 85) and (x + bx + p11 <= 85))) and (y + by = 50)) or
	((((x + bx + p11 >= 72) and (x + bx + p11 <= 75)) or ((x + bx + p11 >= 81) and (x + bx + p11 <= 85))) and (y + by = 51)) or
	((x + bx + p11 >= 73) and (x + bx + p11 <= 84) and (y + by = 52)) or
	((x + bx + p11 >= 74) and (x + bx + p11 <= 83) and (y + by = 53)) or
	((x + bx + p11 >= 75) and (x + bx + p11 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p11 >= 66 and x+bx + p11 <= 67) or (x +bx + p11 >= 89 and x+bx + p11 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p11 >= 68 and x+bx + p11 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p11 >= 77 and x+bx + p11 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p11 >= 68) and (x + bx + p11 <= 76)) or ((x + bx + p11 >= 82) and (x + bx + p11 <= 89))) and (y + by = 81)) or
	((((x + bx + p11 >= 68) and (x + bx + p11 <= 76)) or ((x + bx + p11 >= 82) and (x + bx + p11 <= 89))) and (y + by = 82)) or
	((((x + bx + p11 >= 68) and (x + bx + p11 <= 78)) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 89))) and (y + by = 83)) or
	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 84)) or
	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 85)) or
	((x + bx + p11 >= 69) and (x + bx + p11 <= 88) and (y + by = 86)) or
	((x + bx + p11 >= 70) and (x + bx + p11 <= 88) and (y + by = 87)) or
	((x + bx + p11 >= 72) and (x + bx + p11 <= 86) and (y + by = 88)) or
	((x + bx + p11 >= 74) and (x + bx + p11 <= 84) and (y + by = 89)) or
	((x + bx + p11 >= 75) and (x + bx + p11 <= 82) and (y + by = 90)) or
	((x + bx + p11 >= 77) and (x + bx + p11 <= 80) and (y + by = 91)) or
	((x + bx + p11 >= 78) and (x + bx + p11 <= 78) and (y + by = 92)) or
	--droite tal3a
		((x +bx + p11 >= 43 and x+bx + p11 <= 47) and (y+by = 43)) or
	((x +bx + p11 >= 43 and x+bx + p11 <= 48) and (y+by = 44)) or
	((x +bx + p11 >= 44 and x+bx + p11 <= 49) and (y+by = 45)) or
	((x +bx + p11 >= 46 and x+bx + p11 <= 51) and (y+by = 46)) or
	((x +bx + p11 >= 47 and x+bx + p11 <= 52) and (y+by = 47)) or
	((x +bx + p11 >= 48 and x+bx + p11 <= 54) and (y+by = 48)) or
	((x +bx + p11 >= 49 and x+bx + p11 <= 55) and (y+by = 49)) or
	((x +bx + p11 >= 49 and x+bx + p11 <= 56) and (y+by = 50)) or
	((x +bx + p11 >= 50 and x+bx + p11 <= 58) and (y+by = 51 ))or
	((x +bx + p11 >= 51 and x+bx + p11 <= 59) and (y+by = 52 ))or
	((x +bx + p11 >= 53 and x+bx + p11 <= 61) and (y+by = 53)) or
	((x +bx + p11 >= 53 and x+bx + p11 <= 62) and (y+by = 54)) or
	((x +bx + p11 >= 54 and x+bx + p11 <= 63) and (y+by = 55)) or
	((x +bx + p11 >= 55 and x+bx + p11 <= 68) and (y+by = 56)) or
	((x +bx + p11 >= 57 and x+bx + p11 <= 68) and (y+by = 57))or
	((x +bx + p11 >= 58 and x+bx + p11 <= 68) and (y+by = 58)) or
	((x +bx + p11 >= 60 and x+bx + p11 <= 68) and (y+by = 59)) or
	((x +bx + p11 >= 61 and x+bx + p11 <= 67) and (y+by = 60)) or
	((x +bx + p11 >= 62 and x+bx + p11 <= 66) and (y+by = 61)) or
	((x +bx + p11 >= 64 and x+bx + p11 <= 66) and (y+by = 62)) or
	((x +bx + p11 >= 65 and x+bx + p11 <= 66 ) and (y+by = 63)) or
		--gauche metwiya
	((x +bx + p11 >= 89 and x+bx + p11 <= 89) and (y+by = 57)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 89) and (y+by = 58)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 90) and (y+by = 59)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 91) and (y+by = 60)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 92) and (y+by = 61)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 93) and (y+by = 62)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 94) and (y+by = 63)) or
	((x +bx + p11 >= 93 and x+bx + p11 <= 95) and (y+by = 64)) or
	((x +bx + p11 >= 94 and x+bx + p11 <= 96) and (y+by = 65 ))or
	((x +bx + p11 >= 95 and x+bx + p11 <= 97) and (y+by = 66 ))or
	((x +bx + p11 >= 96 and x+bx + p11 <= 98) and (y+by = 67)) or
	((x +bx + p11 >= 97 and x+bx + p11 <= 99) and (y+by = 68)) or
	((x +bx + p11 >= 98 and x+bx + p11 <= 100) and (y+by = 69)) or
	((x +bx + p11 >= 97 and x+bx + p11 <= 101) and (y+by = 70)) or
	((x +bx + p11 >= 96 and x+bx + p11 <= 101) and (y+by = 71)) or
	((x +bx + p11 >= 94 and x+bx + p11 <= 100) and (y+by = 72)) or
	((x +bx + p11 >= 93 and x+bx + p11 <= 99) and (y+by = 73)) or
	((x +bx + p11 >= 92 and x+bx + p11 <= 98) and (y+by = 74)) or
	((x +bx + p11 >= 91 and x+bx + p11 <= 97) and (y+by = 75)) or
	((x +bx + p11 >= 90 and x+bx + p11 <= 95) and (y+by = 76)) or
	((x +bx + p11 >= 90 and x+bx + p11 <= 94 ) and (y+by = 77)) or
	((x +bx + p11 >= 90 and x+bx + p11 <= 93 ) and (y+by = 78)) or
	((x +bx + p11 >= 91 and x+bx + p11 <= 93 ) and (y+by = 79)) or
	((x +bx + p11 >= 91 and x+bx + p11 <= 94 ) and (y+by = 80)) or
	((x +bx + p11 >= 92 and x+bx + p11 <= 95 ) and (y+by = 81)) or
	((x +bx + p11 >= 93 and x+bx + p11 <= 95 ) and (y+by = 82)) or
	((x +bx + p11 >= 93 and x+bx + p11 <= 96 ) and (y+by = 83)) or
	((x +bx + p11 >= 94 and x+bx + p11 <= 96 ) and (y+by = 84)) or
		---droite mefto7in
	((x +bx + p11 >= 69 and x+bx + p11 <= 71) and (y+by = 92)) or
	((x +bx + p11 >= 69 and x+bx + p11 <= 71) and (y+by = 93)) or
	((x +bx + p11 >= 67 and x+bx + p11 <= 71) and (y+by = 94)) or
	((x +bx + p11 >= 66 and x+bx + p11 <= 71) and (y+by = 95)) or
	((x +bx + p11 >= 65 and x+bx + p11 <= 70) and (y+by = 96)) or
	((x +bx + p11 >= 64 and x+bx + p11 <= 69) and (y+by = 97)) or
	((x +bx + p11 >= 63 and x+bx + p11 <= 66) and (y+by = 98)) or
	((x +bx + p11 >= 62 and x+bx + p11 <= 66) and (y+by = 99)) or
	((x +bx + p11 >= 61 and x+bx + p11 <= 65) and (y+by = 100)) or
	((x +bx + p11 >= 60 and x+bx + p11 <= 64) and (y+by = 101)) or
	((x +bx + p11 >= 61 and x+bx + p11 <= 63) and (y+by = 102)) or
	((x +bx + p11 >= 61 and x+bx + p11 <= 63) and (y+by = 103)) or
	((x +bx + p11 >= 62 and x+bx + p11 <= 63) and (y+by = 104)) or
	((x +bx + p11 >= 62 and x+bx + p11 <= 64) and (y+by = 105)) or
	((x +bx + p11 >= 63 and x+bx + p11 <= 64) and (y+by = 106)) or
	((x +bx + p11 >= 63 and x+bx + p11 <= 65) and (y+by = 107)) or
	((x +bx + p11 >= 64 and x+bx + p11 <= 65) and (y+by = 108)) or
	((x +bx + p11 >= 64 and x+bx + p11 <= 66) and (y+by = 109)) or
	((x +bx + p11 >= 65 and x+bx + p11 <= 66) and (y+by = 110)) or
	((x +bx + p11 >= 65 and x+bx + p11 <= 67) and (y+by = 111)) or
	((x +bx + p11 >= 66 and x+bx + p11 <= 68) and (y+by = 112)) or
	((x +bx + p11 >= 66 and x+bx + p11 <= 69) and (y+by = 113)) or
	((x +bx + p11 >= 66 and x+bx + p11 <= 70) and (y+by = 114)) or
	((x +bx + p11 >= 67 and x+bx + p11 <= 70) and (y+by = 115)) or
((x +bx + p11 >= 60 and x+bx + p11 <= 70) and (y +by >= 115 and y+by <= 119)) or
----gauche mkesla
	((x +bx + p11 >= 83 and x+bx + p11 <= 87) and (y+by = 92)) or
	((x +bx + p11 >= 83 and x+bx + p11 <= 87) and (y+by = 93)) or
	((x +bx + p11 >= 83 and x+bx + p11 <= 87) and (y+by = 94)) or
	((x +bx + p11 >= 84 and x+bx + p11 <= 87) and (y+by = 95)) or
	((x +bx + p11 >= 84 and x+bx + p11 <= 87) and (y+by = 96)) or
	((x +bx + p11 >= 85 and x+bx + p11 <= 87) and (y+by = 97)) or
	((x +bx + p11 >= 85 and x+bx + p11 <= 88) and (y+by = 98)) or
	((x +bx + p11 >= 85 and x+bx + p11 <= 89) and (y+by = 99)) or
	((x +bx + p11 >= 86 and x+bx + p11 <= 89) and (y+by = 100))or
	((x +bx + p11 >= 86 and x+bx + p11 <= 89) and (y+by = 101)) or
	((x +bx + p11 >= 87 and x+bx + p11 <= 90) and (y+by = 102)) or
	((x +bx + p11 >= 87 and x+bx + p11 <= 90) and (y+by = 103)) or
	((x +bx + p11 >= 87 and x+bx + p11 <= 91) and (y+by = 104)) or
	((x +bx + p11 >= 88 and x+bx + p11 <= 91) and (y+by = 105)) or
	((x +bx + p11 >= 88 and x+bx + p11 <= 91) and (y+by = 106)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 92) and (y+by = 107)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 92) and (y+by = 108)) or
	((x +bx + p11 >= 90 and x+bx + p11 <= 93) and (y+by = 109)) or
	((x +bx + p11 >= 91 and x+bx + p11 <= 94) and (y+by = 110)) or
	((x +bx + p11 >= 91 and x+bx + p11 <= 95) and (y+by = 111)) or
	((x +bx + p11 >= 92 and x+bx + p11 <= 95) and (y+by = 112)) or
	((x +bx + p11 >= 92 and x+bx + p11 <= 96) and (y+by = 113)) or
	((x +bx + p11 >= 93 and x+bx + p11 <= 97) and (y+by = 114)) or
	((x +bx + p11 >= 94 and x+bx + p11 <= 97) and (y+by = 115)) or
	((x +bx + p11 >= 87 and x+bx + p11 <= 97) and (y +by >= 115 and y+by <= 119))

	) and (counter="00010")

	)

		 or

	

	(

	--**********************************************************************11*******************************************************************
		(((x + bx + p12 >= 75) and (x + bx + p12 <= 82) and (y + by = 29)) or
	((x + bx + p12 >= 72) and (x + bx + p12 <= 85) and (y + by = 30)) or
	((x + bx + p12 >= 70) and (x + bx + p12 <= 87) and (y + by = 31)) or
	((x + bx + p12 >= 70) and (x + bx + p12 <= 89) and (y + by = 32)) or
	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 33)) or
	((x + bx + p12 >= 68) and (x + bx + p12 <= 90) and (y + by = 34)) or
	((x + bx + p12 >= 66) and (x + bx + p12 <= 90) and (y + by = 35)) or
	((x + bx + p12 >= 66) and (x + bx + p12 <= 90) and (y + by = 36)) or
	((x + bx + p12 >= 66) and (x + bx + p12 <= 91) and (y + by = 37)) or
	
((((x + bx + p12 >= 65) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 38)) or
((((x + bx + p12 >= 65) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 39)) or
((((x + bx + p12 >= 65) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 40)) or
((((x + bx + p12 >= 65) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 41)) or
((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 90))) and (y + by = 42)) or
((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 90))) and (y + by = 43)) or
((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 86) and (x + bx + p12 <= 89))) and (y + by = 44)) or
((((x + bx + p12 >= 68) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 86) and (x + bx + p12 <= 89))) and (y + by = 45)) or
((((x + bx + p12 >= 69) and (x + bx + p12 <= 76)) or (x + bx + p12 = 78) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 87))) and (y + by = 46)) or
((((x + bx + p12 >= 71) and (x + bx + p12 <= 76)) or (x + bx + p12 = 78) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 87))) and (y + by = 47)) or

	((x + bx + p12 >= 74) and (x + bx + p12 <= 83) and (y + by = 48)) or
	((x + bx + p12 >= 77) and (x + bx + p12 <= 79) and (y + by = 49)) or
	((((x + bx + p12 >= 71) and (x + bx + p12 <= 72)) or ((x + bx + p12 >= 85) and (x + bx + p12 <= 85))) and (y + by = 50)) or
	((((x + bx + p12 >= 72) and (x + bx + p12 <= 75)) or ((x + bx + p12 >= 81) and (x + bx + p12 <= 85))) and (y + by = 51)) or
	((x + bx + p12 >= 73) and (x + bx + p12 <= 84) and (y + by = 52)) or
	((x + bx + p12 >= 74) and (x + bx + p12 <= 83) and (y + by = 53)) or
	((x + bx + p12 >= 75) and (x + bx + p12 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p12 >= 66 and x+bx + p12 <= 67) or (x +bx + p12 >= 89 and x+bx + p12 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p12 >= 68 and x+bx + p12 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p12 >= 77 and x+bx + p12 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p12 >= 68) and (x + bx + p12 <= 76)) or ((x + bx + p12 >= 82) and (x + bx + p12 <= 89))) and (y + by = 81)) or
	((((x + bx + p12 >= 68) and (x + bx + p12 <= 76)) or ((x + bx + p12 >= 82) and (x + bx + p12 <= 89))) and (y + by = 82)) or
	((((x + bx + p12 >= 68) and (x + bx + p12 <= 78)) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 89))) and (y + by = 83)) or
	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 84)) or
	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 85)) or
	((x + bx + p12 >= 69) and (x + bx + p12 <= 88) and (y + by = 86)) or
	((x + bx + p12 >= 70) and (x + bx + p12 <= 88) and (y + by = 87)) or
	((x + bx + p12 >= 72) and (x + bx + p12 <= 86) and (y + by = 88)) or
	((x + bx + p12 >= 74) and (x + bx + p12 <= 84) and (y + by = 89)) or
	((x + bx + p12 >= 75) and (x + bx + p12 <= 82) and (y + by = 90)) or
	((x + bx + p12 >= 77) and (x + bx + p12 <= 80) and (y + by = 91)) or
	((x + bx + p12 >= 78) and (x + bx + p12 <= 78) and (y + by = 92)) or
	--droite tal3a
		((x +bx + p12 >= 43 and x+bx + p12 <= 47) and (y+by = 43)) or
	((x +bx + p12 >= 43 and x+bx + p12 <= 48) and (y+by = 44)) or
	((x +bx + p12 >= 44 and x+bx + p12 <= 49) and (y+by = 45)) or
	((x +bx + p12 >= 46 and x+bx + p12 <= 51) and (y+by = 46)) or
	((x +bx + p12 >= 47 and x+bx + p12 <= 52) and (y+by = 47)) or
	((x +bx + p12 >= 48 and x+bx + p12 <= 54) and (y+by = 48)) or
	((x +bx + p12 >= 49 and x+bx + p12 <= 55) and (y+by = 49)) or
	((x +bx + p12 >= 49 and x+bx + p12 <= 56) and (y+by = 50)) or
	((x +bx + p12 >= 50 and x+bx + p12 <= 58) and (y+by = 51 ))or
	((x +bx + p12 >= 51 and x+bx + p12 <= 59) and (y+by = 52 ))or
	((x +bx + p12 >= 53 and x+bx + p12 <= 61) and (y+by = 53)) or
	((x +bx + p12 >= 53 and x+bx + p12 <= 62) and (y+by = 54)) or
	((x +bx + p12 >= 54 and x+bx + p12 <= 63) and (y+by = 55)) or
	((x +bx + p12 >= 55 and x+bx + p12 <= 68) and (y+by = 56)) or
	((x +bx + p12 >= 57 and x+bx + p12 <= 68) and (y+by = 57))or
	((x +bx + p12 >= 58 and x+bx + p12 <= 68) and (y+by = 58)) or
	((x +bx + p12 >= 60 and x+bx + p12 <= 68) and (y+by = 59)) or
	((x +bx + p12 >= 61 and x+bx + p12 <= 67) and (y+by = 60)) or
	((x +bx + p12 >= 62 and x+bx + p12 <= 66) and (y+by = 61)) or
	((x +bx + p12 >= 64 and x+bx + p12 <= 66) and (y+by = 62)) or
	((x +bx + p12 >= 65 and x+bx + p12 <= 66 ) and (y+by = 63)) or
		--gauche metwiya
	((x +bx + p12 >= 89 and x+bx + p12 <= 89) and (y+by = 57)) or
	((x +bx + p12 >= 89 and x+bx + p12 <= 89) and (y+by = 58)) or
	((x +bx + p12 >= 89 and x+bx + p12 <= 90) and (y+by = 59)) or
	((x +bx + p12 >= 89 and x+bx + p12 <= 91) and (y+by = 60)) or
	((x +bx + p12 >= 89 and x+bx + p12 <= 92) and (y+by = 61)) or
	((x +bx + p12 >= 89 and x+bx + p12 <= 93) and (y+by = 62)) or
	((x +bx + p12 >= 89 and x+bx + p12 <= 94) and (y+by = 63)) or
	((x +bx + p12 >= 93 and x+bx + p12 <= 95) and (y+by = 64)) or
	((x +bx + p12 >= 94 and x+bx + p12 <= 96) and (y+by = 65 ))or
	((x +bx + p12 >= 95 and x+bx + p12 <= 97) and (y+by = 66 ))or
	((x +bx + p12 >= 96 and x+bx + p12 <= 98) and (y+by = 67)) or
	((x +bx + p12 >= 97 and x+bx + p12 <= 99) and (y+by = 68)) or
	((x +bx + p12 >= 98 and x+bx + p12 <= 100) and (y+by = 69)) or
	((x +bx + p12 >= 97 and x+bx + p12 <= 101) and (y+by = 70)) or
	((x +bx + p12 >= 96 and x+bx + p12 <= 101) and (y+by = 71)) or
	((x +bx + p12 >= 94 and x+bx + p12 <= 100) and (y+by = 72)) or
	((x +bx + p12 >= 93 and x+bx + p12 <= 99) and (y+by = 73)) or
	((x +bx + p12 >= 92 and x+bx + p12 <= 98) and (y+by = 74)) or
	((x +bx + p12 >= 91 and x+bx + p12 <= 97) and (y+by = 75)) or
	((x +bx + p12 >= 90 and x+bx + p12 <= 95) and (y+by = 76)) or
	((x +bx + p12 >= 90 and x+bx + p12 <= 94 ) and (y+by = 77)) or
	((x +bx + p12 >= 90 and x+bx + p12 <= 93 ) and (y+by = 78)) or
	((x +bx + p12 >= 91 and x+bx + p12 <= 93 ) and (y+by = 79)) or
	((x +bx + p12 >= 91 and x+bx + p12 <= 94 ) and (y+by = 80)) or
	((x +bx + p12 >= 92 and x+bx + p12 <= 95 ) and (y+by = 81)) or
	((x +bx + p12 >= 93 and x+bx + p12 <= 95 ) and (y+by = 82)) or
	((x +bx + p12 >= 93 and x+bx + p12 <= 96 ) and (y+by = 83)) or
	((x +bx + p12 >= 94 and x+bx + p12 <= 96 ) and (y+by = 84)) or
		---droite mefto7in
	((x +bx + p12 >= 69 and x+bx + p12 <= 71) and (y+by = 92)) or
	((x +bx + p12 >= 69 and x+bx + p12 <= 71) and (y+by = 93)) or
	((x +bx + p12 >= 67 and x+bx + p12 <= 71) and (y+by = 94)) or
	((x +bx + p12 >= 66 and x+bx + p12 <= 71) and (y+by = 95)) or
	((x +bx + p12 >= 65 and x+bx + p12 <= 70) and (y+by = 96)) or
	((x +bx + p12 >= 64 and x+bx + p12 <= 69) and (y+by = 97)) or
	((x +bx + p12 >= 63 and x+bx + p12 <= 66) and (y+by = 98)) or
	((x +bx + p12 >= 62 and x+bx + p12 <= 66) and (y+by = 99)) or
	((x +bx + p12 >= 61 and x+bx + p12 <= 65) and (y+by = 100)) or
	((x +bx + p12 >= 60 and x+bx + p12 <= 64) and (y+by = 101)) or
	((x +bx + p12 >= 61 and x+bx + p12 <= 63) and (y+by = 102)) or
	((x +bx + p12 >= 61 and x+bx + p12 <= 63) and (y+by = 103)) or
	((x +bx + p12 >= 62 and x+bx + p12 <= 63) and (y+by = 104)) or
	((x +bx + p12 >= 62 and x+bx + p12 <= 64) and (y+by = 105)) or
	((x +bx + p12 >= 63 and x+bx + p12 <= 64) and (y+by = 106)) or
	((x +bx + p12 >= 63 and x+bx + p12 <= 65) and (y+by = 107)) or
	((x +bx + p12 >= 64 and x+bx + p12 <= 65) and (y+by = 108)) or
	((x +bx + p12 >= 64 and x+bx + p12 <= 66) and (y+by = 109)) or
	((x +bx + p12 >= 65 and x+bx + p12 <= 66) and (y+by = 110)) or
	((x +bx + p12 >= 65 and x+bx + p12 <= 67) and (y+by = 111)) or
	((x +bx + p12 >= 66 and x+bx + p12 <= 68) and (y+by = 112)) or
	((x +bx + p12 >= 66 and x+bx + p12 <= 69) and (y+by = 113)) or
	((x +bx + p12 >= 66 and x+bx + p12 <= 70) and (y+by = 114)) or
	((x +bx + p12 >= 67 and x+bx + p12 <= 70) and (y+by = 115)) or
((x +bx + p12 >= 60 and x+bx + p12 <= 70) and (y +by >= 115 and y+by <= 119)) or
----gauche mkesla
	((x +bx + p12 >= 83 and x+bx + p12 <= 87) and (y+by = 92)) or
	((x +bx + p12 >= 83 and x+bx + p12 <= 87) and (y+by = 93)) or
	((x +bx + p12 >= 83 and x+bx + p12 <= 87) and (y+by = 94)) or
	((x +bx + p12 >= 84 and x+bx + p12 <= 87) and (y+by = 95)) or
	((x +bx + p12 >= 84 and x+bx + p12 <= 87) and (y+by = 96)) or
	((x +bx + p12 >= 85 and x+bx + p12 <= 87) and (y+by = 97)) or
	((x +bx + p12 >= 85 and x+bx + p12 <= 88) and (y+by = 98)) or
	((x +bx + p12 >= 85 and x+bx + p12 <= 89) and (y+by = 99)) or
	((x +bx + p12 >= 86 and x+bx + p12 <= 89) and (y+by = 100))or
	((x +bx + p12 >= 86 and x+bx + p12 <= 89) and (y+by = 101)) or
	((x +bx + p12 >= 87 and x+bx + p12 <= 90) and (y+by = 102)) or
	((x +bx + p12 >= 87 and x+bx + p12 <= 90) and (y+by = 103)) or
	((x +bx + p12 >= 87 and x+bx + p12 <= 91) and (y+by = 104)) or
	((x +bx + p12 >= 88 and x+bx + p12 <= 91) and (y+by = 105)) or
	((x +bx + p12 >= 88 and x+bx + p12 <= 91) and (y+by = 106)) or
	((x +bx + p12 >= 89 and x+bx + p12 <= 92) and (y+by = 107)) or
	((x +bx + p12 >= 89 and x+bx + p12 <= 92) and (y+by = 108)) or
	((x +bx + p12 >= 90 and x+bx + p12 <= 93) and (y+by = 109)) or
	((x +bx + p12 >= 91 and x+bx + p12 <= 94) and (y+by = 110)) or
	((x +bx + p12 >= 91 and x+bx + p12 <= 95) and (y+by = 111)) or
	((x +bx + p12 >= 92 and x+bx + p12 <= 95) and (y+by = 112)) or
	((x +bx + p12 >= 92 and x+bx + p12 <= 96) and (y+by = 113)) or
	((x +bx + p12 >= 93 and x+bx + p12 <= 97) and (y+by = 114)) or
	((x +bx + p12 >= 94 and x+bx + p12 <= 97) and (y+by = 115)) or
	((x +bx + p12 >= 94 and x+bx + p12 <= 104) and (y +by >= 115 and y+by <= 119))
	

	) and (counter="00011"))

	

			 or

	

	(

	--**********************************************************************11*******************************************************************
		(((x + bx + p13 >= 75) and (x + bx + p13 <= 82) and (y + by = 29)) or
	((x + bx + p13 >= 72) and (x + bx + p13 <= 85) and (y + by = 30)) or
	((x + bx + p13 >= 70) and (x + bx + p13 <= 87) and (y + by = 31)) or
	((x + bx + p13 >= 70) and (x + bx + p13 <= 89) and (y + by = 32)) or
	((x + bx + p13 >= 68) and (x + bx + p13 <= 89) and (y + by = 33)) or
	((x + bx + p13 >= 68) and (x + bx + p13 <= 90) and (y + by = 34)) or
	((x + bx + p13 >= 66) and (x + bx + p13 <= 90) and (y + by = 35)) or
	((x + bx + p13 >= 66) and (x + bx + p13 <= 90) and (y + by = 36)) or
	((x + bx + p13 >= 66) and (x + bx + p13 <= 91) and (y + by = 37)) or
	
((((x + bx + p13 >= 65) and (x + bx + p13 <= 71)) or ((x + bx + p13 >= 76) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 91))) and (y + by = 38)) or
((((x + bx + p13 >= 65) and (x + bx + p13 <= 71)) or ((x + bx + p13 >= 76) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 91))) and (y + by = 39)) or
((((x + bx + p13 >= 65) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 91))) and (y + by = 40)) or
((((x + bx + p13 >= 65) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 80)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 91))) and (y + by = 41)) or
((((x + bx + p13 >= 66) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 80)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 90))) and (y + by = 42)) or
((((x + bx + p13 >= 66) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 80)) or ((x + bx + p13 >= 87) and (x + bx + p13 <= 90))) and (y + by = 43)) or
((((x + bx + p13 >= 66) and (x + bx + p13 <= 69)) or ((x + bx + p13 >= 77) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 86) and (x + bx + p13 <= 89))) and (y + by = 44)) or
((((x + bx + p13 >= 68) and (x + bx + p13 <= 71)) or ((x + bx + p13 >= 76) and (x + bx + p13 <= 81)) or ((x + bx + p13 >= 86) and (x + bx + p13 <= 89))) and (y + by = 45)) or
((((x + bx + p13 >= 69) and (x + bx + p13 <= 76)) or (x + bx + p13 = 78) or ((x + bx + p13 >= 80) and (x + bx + p13 <= 87))) and (y + by = 46)) or
((((x + bx + p13 >= 71) and (x + bx + p13 <= 76)) or (x + bx + p13 = 78) or ((x + bx + p13 >= 80) and (x + bx + p13 <= 87))) and (y + by = 47)) or

	((x + bx + p13 >= 74) and (x + bx + p13 <= 83) and (y + by = 48)) or
	((x + bx + p13 >= 77) and (x + bx + p13 <= 79) and (y + by = 49)) or
	((((x + bx + p13 >= 71) and (x + bx + p13 <= 72)) or ((x + bx + p13 >= 85) and (x + bx + p13 <= 85))) and (y + by = 50)) or
	((((x + bx + p13 >= 72) and (x + bx + p13 <= 75)) or ((x + bx + p13 >= 81) and (x + bx + p13 <= 85))) and (y + by = 51)) or
	((x + bx + p13 >= 73) and (x + bx + p13 <= 84) and (y + by = 52)) or
	((x + bx + p13 >= 74) and (x + bx + p13 <= 83) and (y + by = 53)) or
	((x + bx + p13 >= 75) and (x + bx + p13 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p13 >= 66 and x+bx + p13 <= 67) or (x +bx + p13 >= 89 and x+bx + p13 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p13 >= 68 and x+bx + p13 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p13 >= 77 and x+bx + p13 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p13 >= 68) and (x + bx + p13 <= 76)) or ((x + bx + p13 >= 82) and (x + bx + p13 <= 89))) and (y + by = 81)) or
	((((x + bx + p13 >= 68) and (x + bx + p13 <= 76)) or ((x + bx + p13 >= 82) and (x + bx + p13 <= 89))) and (y + by = 82)) or
	((((x + bx + p13 >= 68) and (x + bx + p13 <= 78)) or ((x + bx + p13 >= 80) and (x + bx + p13 <= 89))) and (y + by = 83)) or
	((x + bx + p13 >= 68) and (x + bx + p13 <= 89) and (y + by = 84)) or
	((x + bx + p13 >= 68) and (x + bx + p13 <= 89) and (y + by = 85)) or
	((x + bx + p13 >= 69) and (x + bx + p13 <= 88) and (y + by = 86)) or
	((x + bx + p13 >= 70) and (x + bx + p13 <= 88) and (y + by = 87)) or
	((x + bx + p13 >= 72) and (x + bx + p13 <= 86) and (y + by = 88)) or
	((x + bx + p13 >= 74) and (x + bx + p13 <= 84) and (y + by = 89)) or
	((x + bx + p13 >= 75) and (x + bx + p13 <= 82) and (y + by = 90)) or
	((x + bx + p13 >= 77) and (x + bx + p13 <= 80) and (y + by = 91)) or
	((x + bx + p13 >= 78) and (x + bx + p13 <= 78) and (y + by = 92)) or
	--droite tal3a
		((x +bx + p13 >= 43 and x+bx + p13 <= 47) and (y+by = 43)) or
	((x +bx + p13 >= 43 and x+bx + p13 <= 48) and (y+by = 44)) or
	((x +bx + p13 >= 44 and x+bx + p13 <= 49) and (y+by = 45)) or
	((x +bx + p13 >= 46 and x+bx + p13 <= 51) and (y+by = 46)) or
	((x +bx + p13 >= 47 and x+bx + p13 <= 52) and (y+by = 47)) or
	((x +bx + p13 >= 48 and x+bx + p13 <= 54) and (y+by = 48)) or
	((x +bx + p13 >= 49 and x+bx + p13 <= 55) and (y+by = 49)) or
	((x +bx + p13 >= 49 and x+bx + p13 <= 56) and (y+by = 50)) or
	((x +bx + p13 >= 50 and x+bx + p13 <= 58) and (y+by = 51 ))or
	((x +bx + p13 >= 51 and x+bx + p13 <= 59) and (y+by = 52 ))or
	((x +bx + p13 >= 53 and x+bx + p13 <= 61) and (y+by = 53)) or
	((x +bx + p13 >= 53 and x+bx + p13 <= 62) and (y+by = 54)) or
	((x +bx + p13 >= 54 and x+bx + p13 <= 63) and (y+by = 55)) or
	((x +bx + p13 >= 55 and x+bx + p13 <= 68) and (y+by = 56)) or
	((x +bx + p13 >= 57 and x+bx + p13 <= 68) and (y+by = 57))or
	((x +bx + p13 >= 58 and x+bx + p13 <= 68) and (y+by = 58)) or
	((x +bx + p13 >= 60 and x+bx + p13 <= 68) and (y+by = 59)) or
	((x +bx + p13 >= 61 and x+bx + p13 <= 67) and (y+by = 60)) or
	((x +bx + p13 >= 62 and x+bx + p13 <= 66) and (y+by = 61)) or
	((x +bx + p13 >= 64 and x+bx + p13 <= 66) and (y+by = 62)) or
	((x +bx + p13 >= 65 and x+bx + p13 <= 66 ) and (y+by = 63)) or
		--gauche metwiya
	((x +bx + p13 >= 89 and x+bx + p13 <= 89) and (y+by = 57)) or
	((x +bx + p13 >= 89 and x+bx + p13 <= 89) and (y+by = 58)) or
	((x +bx + p13 >= 89 and x+bx + p13 <= 90) and (y+by = 59)) or
	((x +bx + p13 >= 89 and x+bx + p13 <= 91) and (y+by = 60)) or
	((x +bx + p13 >= 89 and x+bx + p13 <= 92) and (y+by = 61)) or
	((x +bx + p13 >= 89 and x+bx + p13 <= 93) and (y+by = 62)) or
	((x +bx + p13 >= 89 and x+bx + p13 <= 94) and (y+by = 63)) or
	((x +bx + p13 >= 93 and x+bx + p13 <= 95) and (y+by = 64)) or
	((x +bx + p13 >= 94 and x+bx + p13 <= 96) and (y+by = 65 ))or
	((x +bx + p13 >= 95 and x+bx + p13 <= 97) and (y+by = 66 ))or
	((x +bx + p13 >= 96 and x+bx + p13 <= 98) and (y+by = 67)) or
	((x +bx + p13 >= 97 and x+bx + p13 <= 99) and (y+by = 68)) or
	((x +bx + p13 >= 98 and x+bx + p13 <= 100) and (y+by = 69)) or
	((x +bx + p13 >= 97 and x+bx + p13 <= 101) and (y+by = 70)) or
	((x +bx + p13 >= 96 and x+bx + p13 <= 101) and (y+by = 71)) or
	((x +bx + p13 >= 94 and x+bx + p13 <= 100) and (y+by = 72)) or
	((x +bx + p13 >= 93 and x+bx + p13 <= 99) and (y+by = 73)) or
	((x +bx + p13 >= 92 and x+bx + p13 <= 98) and (y+by = 74)) or
	((x +bx + p13 >= 91 and x+bx + p13 <= 97) and (y+by = 75)) or
	((x +bx + p13 >= 90 and x+bx + p13 <= 95) and (y+by = 76)) or
	((x +bx + p13 >= 90 and x+bx + p13 <= 94 ) and (y+by = 77)) or
	((x +bx + p13 >= 90 and x+bx + p13 <= 93 ) and (y+by = 78)) or
	((x +bx + p13 >= 91 and x+bx + p13 <= 93 ) and (y+by = 79)) or
	((x +bx + p13 >= 91 and x+bx + p13 <= 94 ) and (y+by = 80)) or
	((x +bx + p13 >= 92 and x+bx + p13 <= 95 ) and (y+by = 81)) or
	((x +bx + p13 >= 93 and x+bx + p13 <= 95 ) and (y+by = 82)) or
	((x +bx + p13 >= 93 and x+bx + p13 <= 96 ) and (y+by = 83)) or
	((x +bx + p13 >= 94 and x+bx + p13 <= 96 ) and (y+by = 84)) or
		---droite mefto7in
	((x +bx + p13 >= 69 and x+bx + p13 <= 71) and (y+by = 92)) or
	((x +bx + p13 >= 69 and x+bx + p13 <= 71) and (y+by = 93)) or
	((x +bx + p13 >= 67 and x+bx + p13 <= 71) and (y+by = 94)) or
	((x +bx + p13 >= 66 and x+bx + p13 <= 71) and (y+by = 95)) or
	((x +bx + p13 >= 65 and x+bx + p13 <= 70) and (y+by = 96)) or
	((x +bx + p13 >= 64 and x+bx + p13 <= 69) and (y+by = 97)) or
	((x +bx + p13 >= 63 and x+bx + p13 <= 66) and (y+by = 98)) or
	((x +bx + p13 >= 62 and x+bx + p13 <= 66) and (y+by = 99)) or
	((x +bx + p13 >= 61 and x+bx + p13 <= 65) and (y+by = 100)) or
	((x +bx + p13 >= 60 and x+bx + p13 <= 64) and (y+by = 101)) or
	((x +bx + p13 >= 61 and x+bx + p13 <= 63) and (y+by = 102)) or
	((x +bx + p13 >= 61 and x+bx + p13 <= 63) and (y+by = 103)) or
	((x +bx + p13 >= 62 and x+bx + p13 <= 63) and (y+by = 104)) or
	((x +bx + p13 >= 62 and x+bx + p13 <= 64) and (y+by = 105)) or
	((x +bx + p13 >= 63 and x+bx + p13 <= 64) and (y+by = 106)) or
	((x +bx + p13 >= 63 and x+bx + p13 <= 65) and (y+by = 107)) or
	((x +bx + p13 >= 64 and x+bx + p13 <= 65) and (y+by = 108)) or
	((x +bx + p13 >= 64 and x+bx + p13 <= 66) and (y+by = 109)) or
	((x +bx + p13 >= 65 and x+bx + p13 <= 66) and (y+by = 110)) or
	((x +bx + p13 >= 65 and x+bx + p13 <= 67) and (y+by = 111)) or
	((x +bx + p13 >= 66 and x+bx + p13 <= 68) and (y+by = 112)) or
	((x +bx + p13 >= 66 and x+bx + p13 <= 69) and (y+by = 113)) or
	((x +bx + p13 >= 66 and x+bx + p13 <= 70) and (y+by = 114)) or
	((x +bx + p13 >= 67 and x+bx + p13 <= 70) and (y+by = 115)) or
((x +bx + p13 >= 60 and x+bx + p13 <= 70) and (y +by >= 115 and y+by <= 119)) or
----gauche mkesla
	((x +bx + p13 >= 83 and x+bx + p13 <= 87) and (y+by = 92)) or
	((x +bx + p13 >= 83 and x+bx + p13 <= 87) and (y+by = 93)) or
	((x +bx + p13 >= 83 and x+bx + p13 <= 87) and (y+by = 94)) or
	((x +bx + p13 >= 84 and x+bx + p13 <= 87) and (y+by = 95)) or
	((x +bx + p13 >= 84 and x+bx + p13 <= 87) and (y+by = 96)) or
	((x +bx + p13 >= 85 and x+bx + p13 <= 87) and (y+by = 97)) or
	((x +bx + p13 >= 85 and x+bx + p13 <= 88) and (y+by = 98)) or
	((x +bx + p13 >= 85 and x+bx + p13 <= 89) and (y+by = 99)) or
	((x +bx + p13 >= 86 and x+bx + p13 <= 89) and (y+by = 100))or
	((x +bx + p13 >= 86 and x+bx + p13 <= 89) and (y+by = 101)) or
	((x +bx + p13 >= 87 and x+bx + p13 <= 90) and (y+by = 102)) or
	((x +bx + p13 >= 87 and x+bx + p13 <= 90) and (y+by = 103)) or
	((x +bx + p13 >= 87 and x+bx + p13 <= 91) and (y+by = 104)) or
	((x +bx + p13 >= 88 and x+bx + p13 <= 91) and (y+by = 105)) or
	((x +bx + p13 >= 88 and x+bx + p13 <= 91) and (y+by = 106)) or
	((x +bx + p13 >= 89 and x+bx + p13 <= 92) and (y+by = 107)) or
	((x +bx + p13 >= 89 and x+bx + p13 <= 92) and (y+by = 108)) or
	((x +bx + p13 >= 90 and x+bx + p13 <= 93) and (y+by = 109)) or
	((x +bx + p13 >= 91 and x+bx + p13 <= 94) and (y+by = 110)) or
	((x +bx + p13 >= 91 and x+bx + p13 <= 95) and (y+by = 111)) or
	((x +bx + p13 >= 92 and x+bx + p13 <= 95) and (y+by = 112)) or
	((x +bx + p13 >= 92 and x+bx + p13 <= 96) and (y+by = 113)) or
	((x +bx + p13 >= 93 and x+bx + p13 <= 97) and (y+by = 114)) or
	((x +bx + p13 >= 94 and x+bx + p13 <= 97) and (y+by = 115)) or
	((x +bx + p13 >= 87 and x+bx + p13 <= 97) and (y +by >= 115 and y+by <= 119))
	
	

	) and (counter="00100"))	

	or

	(

	--**********************************************************************11*******************************************************************
		(((x + bx + p12 >= 75) and (x + bx + p12 <= 82) and (y + by = 29)) or
	((x + bx + p12 >= 72) and (x + bx + p12 <= 85) and (y + by = 30)) or
	((x + bx + p12 >= 70) and (x + bx + p12 <= 87) and (y + by = 31)) or
	((x + bx + p12 >= 70) and (x + bx + p12 <= 89) and (y + by = 32)) or
	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 33)) or
	((x + bx + p12 >= 68) and (x + bx + p12 <= 90) and (y + by = 34)) or
	((x + bx + p12 >= 66) and (x + bx + p12 <= 90) and (y + by = 35)) or
	((x + bx + p12 >= 66) and (x + bx + p12 <= 90) and (y + by = 36)) or
	((x + bx + p12 >= 66) and (x + bx + p12 <= 91) and (y + by = 37)) or
	
((((x + bx + p12 >= 65) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 38)) or
((((x + bx + p12 >= 65) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 39)) or
((((x + bx + p12 >= 65) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 40)) or
((((x + bx + p12 >= 65) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 91))) and (y + by = 41)) or
((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 90))) and (y + by = 42)) or
((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 80)) or ((x + bx + p12 >= 87) and (x + bx + p12 <= 90))) and (y + by = 43)) or
((((x + bx + p12 >= 66) and (x + bx + p12 <= 69)) or ((x + bx + p12 >= 77) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 86) and (x + bx + p12 <= 89))) and (y + by = 44)) or
((((x + bx + p12 >= 68) and (x + bx + p12 <= 71)) or ((x + bx + p12 >= 76) and (x + bx + p12 <= 81)) or ((x + bx + p12 >= 86) and (x + bx + p12 <= 89))) and (y + by = 45)) or
((((x + bx + p12 >= 69) and (x + bx + p12 <= 76)) or (x + bx + p12 = 78) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 87))) and (y + by = 46)) or
((((x + bx + p12 >= 71) and (x + bx + p12 <= 76)) or (x + bx + p12 = 78) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 87))) and (y + by = 47)) or

	((x + bx + p12 >= 74) and (x + bx + p12 <= 83) and (y + by = 48)) or
	((x + bx + p12 >= 77) and (x + bx + p12 <= 79) and (y + by = 49)) or
	((((x + bx + p12 >= 71) and (x + bx + p12 <= 72)) or ((x + bx + p12 >= 85) and (x + bx + p12 <= 85))) and (y + by = 50)) or
	((((x + bx + p12 >= 72) and (x + bx + p12 <= 75)) or ((x + bx + p12 >= 81) and (x + bx + p12 <= 85))) and (y + by = 51)) or
	((x + bx + p12 >= 73) and (x + bx + p12 <= 84) and (y + by = 52)) or
	((x + bx + p12 >= 74) and (x + bx + p12 <= 83) and (y + by = 53)) or
	((x + bx + p12 >= 75) and (x + bx + p12 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p12 >= 66 and x+bx + p12 <= 67) or (x +bx + p12 >= 89 and x+bx + p12 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p12 >= 68 and x+bx + p12 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p12 >= 77 and x+bx + p12 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p12 >= 68) and (x + bx + p12 <= 76)) or ((x + bx + p12 >= 82) and (x + bx + p12 <= 89))) and (y + by = 81)) or
	((((x + bx + p12 >= 68) and (x + bx + p12 <= 76)) or ((x + bx + p12 >= 82) and (x + bx + p12 <= 89))) and (y + by = 82)) or
	((((x + bx + p12 >= 68) and (x + bx + p12 <= 78)) or ((x + bx + p12 >= 80) and (x + bx + p12 <= 89))) and (y + by = 83)) or
	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 84)) or
	((x + bx + p12 >= 68) and (x + bx + p12 <= 89) and (y + by = 85)) or
	((x + bx + p12 >= 69) and (x + bx + p12 <= 88) and (y + by = 86)) or
	((x + bx + p12 >= 70) and (x + bx + p12 <= 88) and (y + by = 87)) or
	((x + bx + p12 >= 72) and (x + bx + p12 <= 86) and (y + by = 88)) or
	((x + bx + p12 >= 74) and (x + bx + p12 <= 84) and (y + by = 89)) or
	((x + bx + p12 >= 75) and (x + bx + p12 <= 82) and (y + by = 90)) or
	((x + bx + p12 >= 77) and (x + bx + p12 <= 80) and (y + by = 91)) or
	((x + bx + p12 >= 78) and (x + bx + p12 <= 78) and (y + by = 92)) or
	------------------Mains normal
	
	((y +by >= 60 and y+by <= 64) and (x+bx + p12 = 67 or x+bx + p12 = 90)) or
	((y +by >= 60 and y+by <= 64) and (x+bx + p12 = 66 or x+bx + p12 = 91)) or
	((y +by >= 60 and y+by <= 66) and (x+bx + p12 = 65 or x+bx + p12 = 92)) or
	((y +by >= 61 and y+by <= 67) and (x+bx + p12 = 64 or x+bx + p12 = 93)) or
	((y +by >= 63 and y+by <= 69) and (x+bx + p12 = 63 or x+bx + p12 = 94)) or
	((y +by >= 65 and y+by <= 83) and (x+bx + p12 = 62 or x+bx + p12 = 95)) or
	((y +by >= 66 and y+by <= 83) and (x+bx + p12 = 61 or x+bx + p12 = 96)) or
	((y +by >= 68 and y+by <= 84) and (x+bx + p12 = 60 or x+bx + p12 = 97)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p12 = 59 or x+bx + p12 = 98)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p12 = 58 or x+bx + p12 = 99)) or
		---droite leldakhel
	((x +bx + p12 >= 71 and x+bx + p12 <= 6) and (y+by = 92)) or
	((x +bx + p12 >= 71 and x+bx + p12 <=77) and (y+by = 93)) or
	((x +bx + p12 >= 71 and x+bx + p12 <= 77) and (y+by = 94)) or
	((x +bx + p12 >= 72 and x+bx + p12 <= 77) and (y+by = 95)) or
	((x +bx + p12 >= 72 and x+bx + p12 <= 77) and (y+by = 96)) or
	((x +bx + p12 >= 72 and x+bx + p12 <= 77) and (y+by = 97)) or
	((x +bx + p12 >= 73 and x+bx + p12 <= 77) and (y+by = 98)) or
	((x +bx + p12 >= 73 and x+bx + p12 <= 77) and (y+by = 99)) or
	((x +bx + p12 >= 74 and x+bx + p12 <= 77) and (y+by = 100)) or
	((x +bx + p12 >= 74 and x+bx + p12 <= 77) and (y+by = 101)) or
	((x +bx + p12 >= 74 and x+bx + p12 <= 77) and (y+by = 102)) or
	((x +bx + p12 >= 74 and x+bx + p12 <= 77) and (y+by = 103)) or
	((x +bx + p12 >= 73 and x+bx + p12 <= 77) and (y+by = 104)) or
	((x +bx + p12 >= 73 and x+bx + p12 <= 77) and (y+by = 105)) or
	((x +bx + p12 >= 72 and x+bx + p12 <= 76) and (y+by = 106)) or
	((x +bx + p12 >= 71 and x+bx + p12 <= 75) and (y+by = 107)) or
	((x +bx + p12 >= 70 and x+bx + p12 <= 75) and (y+by = 108)) or
	((x +bx + p12 >= 70 and x+bx + p12 <= 74) and (y+by = 109)) or
	((x +bx + p12 >= 69 and x+bx + p12 <= 73) and (y+by = 110)) or
	((x +bx + p12 >= 68 and x+bx + p12 <= 72) and (y+by = 111)) or
	((x +bx + p12 >= 67 and x+bx + p12 <= 71) and (y+by = 112)) or
	((x +bx + p12 >= 67 and x+bx + p12 <= 70) and (y+by = 113)) or
	((x +bx + p12 >= 66 and x+bx + p12 <= 69) and (y+by = 114)) or
	((x +bx + p12 >= 66 and x+bx + p12 <= 70) and (y+by = 115)) or
	((x +bx + p12 >= 66 and x+bx + p12 <= 74) and (y+by = 116)) or
	((x +bx + p12 >= 67 and x+bx + p12 <= 76) and (y+by = 117)) or
	((x +bx + p12 >= 69 and x+bx + p12 <= 76) and (y+by = 118)) or
	((x +bx + p12 >= 69 and x+bx + p12 <= 76) and (y+by = 118)) or

		----gauche leldakhel
	((x +bx + p12 >= 80 and x+bx + p12 <= 87) and (y+by = 92)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 87) and (y+by = 93)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 86) and (y+by = 94)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 86) and (y+by = 95)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 85) and (y+by = 96)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 85) and (y+by = 97)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 84) and (y+by = 98)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 84) and (y+by = 99)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 100)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 101)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 102)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 103)) or
	((x +bx + p12 >= 80 and x+bx + p12 <= 83) and (y+by = 104)) or
	((x +bx + p12 >= 81 and x+bx + p12 <= 84) and (y+by = 105)) or
	((x +bx + p12 >= 81 and x+bx + p12 <= 84) and (y+by = 106)) or
	((x +bx + p12 >= 82 and x+bx + p12 <= 85) and (y+by = 107)) or
	((x +bx + p12 >= 83 and x+bx + p12 <= 86) and (y+by = 108)) or
	((x +bx + p12 >= 83 and x+bx + p12 <= 87) and (y+by = 109)) or
	((x +bx + p12 >= 84 and x+bx + p12 <= 87) and (y+by = 110)) or
	((x +bx + p12 >= 85 and x+bx + p12 <= 88) and (y+by = 111)) or
	((x +bx + p12 >= 86 and x+bx + p12 <= 89) and (y+by = 112)) or
	((x +bx + p12 >= 87 and x+bx + p12 <= 91) and (y+by = 113)) or
	((x +bx + p12 >= 88 and x+bx + p12 <= 92) and (y+by = 114)) or
	((x +bx + p12 >= 88 and x+bx + p12 <= 92) and (y+by = 115)) or
	((x +bx + p12 >= 86 and x+bx + p12 <= 92) and (y+by = 116)) or
	((x +bx + p12 >= 85 and x+bx + p12 <= 92) and (y+by = 117)) or
	((x +bx + p12 >= 83 and x+bx + p12 <= 90) and (y+by = 118)) 

	

	) and (counter="00101"))		 or

	

	(

	--**********************************************************************11*******************************************************************
		(((x + bx + p11 >= 75) and (x + bx + p11 <= 82) and (y + by = 29)) or
	((x + bx + p11 >= 72) and (x + bx + p11 <= 85) and (y + by = 30)) or
	((x + bx + p11 >= 70) and (x + bx + p11 <= 87) and (y + by = 31)) or
	((x + bx + p11 >= 70) and (x + bx + p11 <= 89) and (y + by = 32)) or
	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 33)) or
	((x + bx + p11 >= 68) and (x + bx + p11 <= 90) and (y + by = 34)) or
	((x + bx + p11 >= 66) and (x + bx + p11 <= 90) and (y + by = 35)) or
	((x + bx + p11 >= 66) and (x + bx + p11 <= 90) and (y + by = 36)) or
	((x + bx + p11 >= 66) and (x + bx + p11 <= 91) and (y + by = 37)) or
	
((((x + bx + p11 >= 65) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 38)) or
((((x + bx + p11 >= 65) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 39)) or
((((x + bx + p11 >= 65) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 40)) or
((((x + bx + p11 >= 65) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 91))) and (y + by = 41)) or
((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 90))) and (y + by = 42)) or
((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 80)) or ((x + bx + p11 >= 87) and (x + bx + p11 <= 90))) and (y + by = 43)) or
((((x + bx + p11 >= 66) and (x + bx + p11 <= 69)) or ((x + bx + p11 >= 77) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 86) and (x + bx + p11 <= 89))) and (y + by = 44)) or
((((x + bx + p11 >= 68) and (x + bx + p11 <= 71)) or ((x + bx + p11 >= 76) and (x + bx + p11 <= 81)) or ((x + bx + p11 >= 86) and (x + bx + p11 <= 89))) and (y + by = 45)) or
((((x + bx + p11 >= 69) and (x + bx + p11 <= 76)) or (x + bx + p11 = 78) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 87))) and (y + by = 46)) or
((((x + bx + p11 >= 71) and (x + bx + p11 <= 76)) or (x + bx + p11 = 78) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 87))) and (y + by = 47)) or

	((x + bx + p11 >= 74) and (x + bx + p11 <= 83) and (y + by = 48)) or
	((x + bx + p11 >= 77) and (x + bx + p11 <= 79) and (y + by = 49)) or
	((((x + bx + p11 >= 71) and (x + bx + p11 <= 72)) or ((x + bx + p11 >= 85) and (x + bx + p11 <= 85))) and (y + by = 50)) or
	((((x + bx + p11 >= 72) and (x + bx + p11 <= 75)) or ((x + bx + p11 >= 81) and (x + bx + p11 <= 85))) and (y + by = 51)) or
	((x + bx + p11 >= 73) and (x + bx + p11 <= 84) and (y + by = 52)) or
	((x + bx + p11 >= 74) and (x + bx + p11 <= 83) and (y + by = 53)) or
	((x + bx + p11 >= 75) and (x + bx + p11 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p11 >= 66 and x+bx + p11 <= 67) or (x +bx + p11 >= 89 and x+bx + p11 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p11 >= 68 and x+bx + p11 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p11 >= 77 and x+bx + p11 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p11 >= 68) and (x + bx + p11 <= 76)) or ((x + bx + p11 >= 82) and (x + bx + p11 <= 89))) and (y + by = 81)) or
	((((x + bx + p11 >= 68) and (x + bx + p11 <= 76)) or ((x + bx + p11 >= 82) and (x + bx + p11 <= 89))) and (y + by = 82)) or
	((((x + bx + p11 >= 68) and (x + bx + p11 <= 78)) or ((x + bx + p11 >= 80) and (x + bx + p11 <= 89))) and (y + by = 83)) or
	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 84)) or
	((x + bx + p11 >= 68) and (x + bx + p11 <= 89) and (y + by = 85)) or
	((x + bx + p11 >= 69) and (x + bx + p11 <= 88) and (y + by = 86)) or
	((x + bx + p11 >= 70) and (x + bx + p11 <= 88) and (y + by = 87)) or
	((x + bx + p11 >= 72) and (x + bx + p11 <= 86) and (y + by = 88)) or
	((x + bx + p11 >= 74) and (x + bx + p11 <= 84) and (y + by = 89)) or
	((x + bx + p11 >= 75) and (x + bx + p11 <= 82) and (y + by = 90)) or
	((x + bx + p11 >= 77) and (x + bx + p11 <= 80) and (y + by = 91)) or
	((x + bx + p11 >= 78) and (x + bx + p11 <= 78) and (y + by = 92)) or
	------------------Mains normal
	
	((y +by >= 60 and y+by <= 64) and (x+bx + p11 = 67 or x+bx + p11 = 90)) or
	((y +by >= 60 and y+by <= 64) and (x+bx + p11 = 66 or x+bx + p11 = 91)) or
	((y +by >= 60 and y+by <= 66) and (x+bx + p11 = 65 or x+bx + p11 = 92)) or
	((y +by >= 61 and y+by <= 67) and (x+bx + p11 = 64 or x+bx + p11 = 93)) or
	((y +by >= 63 and y+by <= 69) and (x+bx + p11 = 63 or x+bx + p11 = 94)) or
	((y +by >= 65 and y+by <= 83) and (x+bx + p11 = 62 or x+bx + p11 = 95)) or
	((y +by >= 66 and y+by <= 83) and (x+bx + p11 = 61 or x+bx + p11 = 96)) or
	((y +by >= 68 and y+by <= 84) and (x+bx + p11 = 60 or x+bx + p11 = 97)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p11 = 59 or x+bx + p11 = 98)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p11 = 58 or x+bx + p11 = 99)) or
	---droite layer 7
	((x +bx + p11 >= 71 and x+bx + p11 <= 74) and (y+by = 92)) or
	((x +bx + p11 >= 70 and x+bx + p11 <=74 )and (y+by = 93)) or
	((x +bx + p11 >= 69 and x+bx + p11 <= 74) and (y+by = 94)) or
	((x +bx + p11 >= 68 and x+bx + p11 <= 74) and (y+by = 95)) or
	((x +bx + p11 >= 66 and x+bx + p11 <= 72) and (y+by = 96)) or
	((x +bx + p11 >= 65 and x+bx + p11 <= 70) and (y+by = 97)) or
	((x +bx + p11 >= 65 and x+bx + p11 <= 69) and (y+by = 98)) or
	((x +bx + p11 >= 64 and x+bx + p11 <= 67) and (y+by = 99)) or
	((x +bx + p11 >= 63 and x+bx + p11 <= 66) and (y+by = 100)) or
	((x +bx + p11 >= 62 and x+bx + p11 <= 65) and (y+by = 101)) or
	((x +bx + p11 >= 62 and x+bx + p11 <= 65) and (y+by = 102)) or
	((x +bx + p11 >= 62 and x+bx + p11 <= 66) and (y+by = 103)) or
	((x +bx + p11 >= 63 and x+bx + p11 <= 67) and (y+by = 104)) or
	((x +bx + p11 >= 63 and x+bx + p11 <= 68) and (y+by = 105)) or
	((x +bx + p11 >= 64 and x+bx + p11 <= 69) and (y+by = 106)) or
	((x +bx + p11 >= 65 and x+bx + p11 <= 70) and (y+by = 107)) or
	((x +bx + p11 >= 66 and x+bx + p11 <= 71) and (y+by = 108)) or
	((x +bx + p11 >= 66 and x+bx + p11 <= 72) and (y+by = 109)) or
	((x +bx + p11 >= 67 and x+bx + p11 <= 73) and (y+by = 110)) or
	((x +bx + p11 >= 68 and x+bx + p11 <= 74) and (y+by = 111)) or
	((x +bx + p11 >= 68 and x+bx + p11 <= 75) and (y+by = 112)) or
	((x +bx + p11 >= 69 and x+bx + p11 <= 75) and (y+by = 113)) or
	((x +bx + p11 >= 70 and x+bx + p11 <= 75) and (y+by = 114)) or
	--((x +bx + p11 >= 66 and x+bx + p11 <= 70) and (y+by = 115)) or
((x +bx + p11 >= 65 and x+bx + p11 <= 75) and (y +by >= 115 and y+by <= 119)) or
----gauche layer7
	((x +bx + p11 >= 83 and x+bx + p11 <= 86) and (y+by = 92)) or
	((x +bx + p11 >= 83 and x+bx + p11 <=87 )and (y+by = 93)) or
	((x +bx + p11 >= 83 and x+bx + p11 <= 88) and (y+by = 94)) or
	((x +bx + p11 >= 83 and x+bx + p11 <= 90) and (y+by = 95)) or
	((x +bx + p11 >= 84 and x+bx + p11 <= 91) and (y+by = 96)) or
	((x +bx + p11 >= 85 and x+bx + p11 <= 93) and (y+by = 97)) or
	((x +bx + p11 >= 87 and x+bx + p11 <= 94) and (y+by = 98)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 94) and (y+by = 99)) or
	((x +bx + p11 >= 90 and x+bx + p11 <= 93) and (y+by = 100)) or
	((x +bx + p11 >= 91 and x+bx + p11 <= 93) and (y+by = 101)) or
	((x +bx + p11 >= 90 and x+bx + p11 <= 92) and (y+by = 102)) or
	((x +bx + p11 >= 89 and x+bx + p11 <= 92) and (y+by = 103)) or
	((x +bx + p11 >= 88 and x+bx + p11 <= 91) and (y+by = 104)) or
	((x +bx + p11 >= 87 and x+bx + p11 <= 91) and (y+by = 105)) or
	((x +bx + p11 >= 86 and x+bx + p11 <= 90) and (y+by = 106)) or
	((x +bx + p11 >= 85 and x+bx + p11 <= 90) and (y+by = 107)) or
	((x +bx + p11 >= 84 and x+bx + p11 <= 89) and (y+by = 108)) or
	((x +bx + p11 >= 84 and x+bx + p11 <= 89) and (y+by = 109)) or
	((x +bx + p11 >= 84 and x+bx + p11 <= 89) and (y+by = 110)) or
	((x +bx + p11 >= 83 and x+bx + p11 <= 88) and (y+by = 111)) or
	((x +bx + p11 >= 83 and x+bx + p11 <= 86) and (y+by = 112)) or
	((x +bx + p11 >= 83 and x+bx + p11 <= 86) and (y+by = 113)) or
	((x +bx + p11 >= 83 and x+bx + p11 <= 89) and (y+by = 114)) or
	--((x +bx + p11 >= 66 and x+bx + p11 <= 70) and (y+by = 115)) or
((x +bx + p11 >= 83 and x+bx + p11 <= 93) and (y +by >= 115 and y+by <= 119))

	) and (counter="00110"))

		

		or

	

	(

--**********************************************************************11*******************************************************************
		(((x + bx  >= 75) and (x + bx  <= 82) and (y + by = 29)) or
	((x + bx  >= 72) and (x + bx  <= 85) and (y + by = 30)) or
	((x + bx  >= 70) and (x + bx  <= 87) and (y + by = 31)) or
	((x + bx  >= 70) and (x + bx  <= 89) and (y + by = 32)) or
	((x + bx  >= 68) and (x + bx  <= 89) and (y + by = 33)) or
	((x + bx  >= 68) and (x + bx  <= 90) and (y + by = 34)) or
	((x + bx  >= 66) and (x + bx  <= 90) and (y + by = 35)) or
	((x + bx  >= 66) and (x + bx  <= 90) and (y + by = 36)) or
	((x + bx  >= 66) and (x + bx  <= 91) and (y + by = 37)) or
	
((((x + bx  >= 65) and (x + bx  <= 71)) or ((x + bx  >= 76) and (x + bx  <= 81)) or ((x + bx  >= 87) and (x + bx  <= 91))) and (y + by = 38)) or
((((x + bx  >= 65) and (x + bx  <= 71)) or ((x + bx  >= 76) and (x + bx  <= 81)) or ((x + bx  >= 87) and (x + bx  <= 91))) and (y + by = 39)) or
((((x + bx  >= 65) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 81)) or ((x + bx  >= 87) and (x + bx  <= 91))) and (y + by = 40)) or
((((x + bx  >= 65) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 80)) or ((x + bx  >= 87) and (x + bx  <= 91))) and (y + by = 41)) or
((((x + bx  >= 66) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 80)) or ((x + bx  >= 87) and (x + bx  <= 90))) and (y + by = 42)) or
((((x + bx  >= 66) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 80)) or ((x + bx  >= 87) and (x + bx  <= 90))) and (y + by = 43)) or
((((x + bx  >= 66) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 81)) or ((x + bx  >= 86) and (x + bx  <= 89))) and (y + by = 44)) or
((((x + bx  >= 68) and (x + bx  <= 71)) or ((x + bx  >= 76) and (x + bx  <= 81)) or ((x + bx  >= 86) and (x + bx  <= 89))) and (y + by = 45)) or
((((x + bx  >= 69) and (x + bx  <= 76)) or (x + bx  = 78) or ((x + bx  >= 80) and (x + bx  <= 87))) and (y + by = 46)) or
((((x + bx  >= 71) and (x + bx  <= 76)) or (x + bx  = 78) or ((x + bx  >= 80) and (x + bx  <= 87))) and (y + by = 47)) or

	((x + bx  >= 74) and (x + bx  <= 83) and (y + by = 48)) or
	((x + bx  >= 77) and (x + bx  <= 79) and (y + by = 49)) or
	((((x + bx  >= 71) and (x + bx  <= 72)) or ((x + bx  >= 85) and (x + bx  <= 85))) and (y + by = 50)) or
	((((x + bx  >= 72) and (x + bx  <= 75)) or ((x + bx  >= 81) and (x + bx  <= 85))) and (y + by = 51)) or
	((x + bx  >= 73) and (x + bx  <= 84) and (y + by = 52)) or
	((x + bx  >= 74) and (x + bx  <= 83) and (y + by = 53)) or
	((x + bx  >= 75) and (x + bx  <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx  >= 66 and x+bx  <= 67) or (x +bx  >= 89 and x+bx  <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx  >= 68 and x+bx  <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx  >= 77 and x+bx  <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx  >= 68) and (x + bx  <= 76)) or ((x + bx  >= 82) and (x + bx  <= 89))) and (y + by = 81)) or
	((((x + bx  >= 68) and (x + bx  <= 76)) or ((x + bx  >= 82) and (x + bx  <= 89))) and (y + by = 82)) or
	((((x + bx  >= 68) and (x + bx  <= 78)) or ((x + bx  >= 80) and (x + bx  <= 89))) and (y + by = 83)) or
	((x + bx  >= 68) and (x + bx  <= 89) and (y + by = 84)) or
	((x + bx  >= 68) and (x + bx  <= 89) and (y + by = 85)) or
	((x + bx  >= 69) and (x + bx  <= 88) and (y + by = 86)) or
	((x + bx  >= 70) and (x + bx  <= 88) and (y + by = 87)) or
	((x + bx  >= 72) and (x + bx  <= 86) and (y + by = 88)) or
	((x + bx  >= 74) and (x + bx  <= 84) and (y + by = 89)) or
	((x + bx  >= 75) and (x + bx  <= 82) and (y + by = 90)) or
	((x + bx  >= 77) and (x + bx  <= 80) and (y + by = 91)) or
	((x + bx  >= 78) and (x + bx  <= 78) and (y + by = 92)) or
	------------------Mains normal
	
	((y +by >= 60 and y+by <= 64) and (x+bx  = 67 or x+bx  = 90)) or
	((y +by >= 60 and y+by <= 64) and (x+bx  = 66 or x+bx  = 91)) or
	((y +by >= 60 and y+by <= 66) and (x+bx  = 65 or x+bx  = 92)) or
	((y +by >= 61 and y+by <= 67) and (x+bx  = 64 or x+bx  = 93)) or
	((y +by >= 63 and y+by <= 69) and (x+bx  = 63 or x+bx  = 94)) or
	((y +by >= 65 and y+by <= 83) and (x+bx  = 62 or x+bx  = 95)) or
	((y +by >= 66 and y+by <= 83) and (x+bx  = 61 or x+bx  = 96)) or
	((y +by >= 68 and y+by <= 84) and (x+bx  = 60 or x+bx  = 97)) or
	((y +by >= 83 and y+by <= 88) and (x+bx  = 59 or x+bx  = 98)) or
	((y +by >= 83 and y+by <= 88) and (x+bx  = 58 or x+bx  = 99)) or
		---droite leldakhel
	((x +bx  >= 71 and x+bx  <= 6) and (y+by = 92)) or
	((x +bx  >= 71 and x+bx  <=77) and (y+by = 93)) or
	((x +bx  >= 71 and x+bx  <= 77) and (y+by = 94)) or
	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 95)) or
	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 96)) or
	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 97)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 98)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 99)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 100)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 101)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 102)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 103)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 104)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 105)) or
	((x +bx  >= 72 and x+bx  <= 76) and (y+by = 106)) or
	((x +bx  >= 71 and x+bx  <= 75) and (y+by = 107)) or
	((x +bx  >= 70 and x+bx  <= 75) and (y+by = 108)) or
	((x +bx  >= 70 and x+bx  <= 74) and (y+by = 109)) or
	((x +bx  >= 69 and x+bx  <= 73) and (y+by = 110)) or
	((x +bx  >= 68 and x+bx  <= 72) and (y+by = 111)) or
	((x +bx  >= 67 and x+bx  <= 71) and (y+by = 112)) or
	((x +bx  >= 67 and x+bx  <= 70) and (y+by = 113)) or
	((x +bx  >= 66 and x+bx  <= 69) and (y+by = 114)) or
	((x +bx  >= 66 and x+bx  <= 70) and (y+by = 115)) or
	((x +bx  >= 66 and x+bx  <= 74) and (y+by = 116)) or
	((x +bx  >= 67 and x+bx  <= 76) and (y+by = 117)) or
	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or
	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or

		----gauche leldakhel
	((x +bx  >= 80 and x+bx  <= 87) and (y+by = 92)) or
	((x +bx  >= 80 and x+bx  <= 87) and (y+by = 93)) or
	((x +bx  >= 80 and x+bx  <= 86) and (y+by = 94)) or
	((x +bx  >= 80 and x+bx  <= 86) and (y+by = 95)) or
	((x +bx  >= 80 and x+bx  <= 85) and (y+by = 96)) or
	((x +bx  >= 80 and x+bx  <= 85) and (y+by = 97)) or
	((x +bx  >= 80 and x+bx  <= 84) and (y+by = 98)) or
	((x +bx  >= 80 and x+bx  <= 84) and (y+by = 99)) or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 100))or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 101)) or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 102)) or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 103)) or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 104)) or
	((x +bx  >= 81 and x+bx  <= 84) and (y+by = 105)) or
	((x +bx  >= 81 and x+bx  <= 84) and (y+by = 106)) or
	((x +bx  >= 82 and x+bx  <= 85) and (y+by = 107)) or
	((x +bx  >= 83 and x+bx  <= 86) and (y+by = 108)) or
	((x +bx  >= 83 and x+bx  <= 87) and (y+by = 109)) or
	((x +bx  >= 84 and x+bx  <= 87) and (y+by = 110)) or
	((x +bx  >= 85 and x+bx  <= 88) and (y+by = 111)) or
	((x +bx  >= 86 and x+bx  <= 89) and (y+by = 112)) or
	((x +bx  >= 87 and x+bx  <= 91) and (y+by = 113)) or
	((x +bx  >= 88 and x+bx  <= 92) and (y+by = 114)) or
	((x +bx  >= 88 and x+bx  <= 92) and (y+by = 115)) or
	((x +bx  >= 86 and x+bx  <= 92) and (y+by = 116)) or
	((x +bx  >= 85 and x+bx  <= 92) and (y+by = 117)) or
	((x +bx  >= 83 and x+bx  <= 90) and (y+by = 118)) 


	) and (counter="00111"))

	

	or 

	

		(

--**********************************************************************11*******************************************************************
		(((x + bx + p01 >= 75) and (x + bx + p01 <= 82) and (y + by = 29)) or
	((x + bx + p01 >= 72) and (x + bx + p01 <= 85) and (y + by = 30)) or
	((x + bx + p01 >= 70) and (x + bx + p01 <= 87) and (y + by = 31)) or
	((x + bx + p01 >= 70) and (x + bx + p01 <= 89) and (y + by = 32)) or
	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 33)) or
	((x + bx + p01 >= 68) and (x + bx + p01 <= 90) and (y + by = 34)) or
	((x + bx + p01 >= 66) and (x + bx + p01 <= 90) and (y + by = 35)) or
	((x + bx + p01 >= 66) and (x + bx + p01 <= 90) and (y + by = 36)) or
	((x + bx + p01 >= 66) and (x + bx + p01 <= 91) and (y + by = 37)) or
	
((((x + bx + p01 >= 65) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 38)) or
((((x + bx + p01 >= 65) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 39)) or
((((x + bx + p01 >= 65) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 40)) or
((((x + bx + p01 >= 65) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 41)) or
((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 90))) and (y + by = 42)) or
((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 90))) and (y + by = 43)) or
((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 86) and (x + bx + p01 <= 89))) and (y + by = 44)) or
((((x + bx + p01 >= 68) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 86) and (x + bx + p01 <= 89))) and (y + by = 45)) or
((((x + bx + p01 >= 69) and (x + bx + p01 <= 76)) or (x + bx + p01 = 78) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 87))) and (y + by = 46)) or
((((x + bx + p01 >= 71) and (x + bx + p01 <= 76)) or (x + bx + p01 = 78) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 87))) and (y + by = 47)) or

	((x + bx + p01 >= 74) and (x + bx + p01 <= 83) and (y + by = 48)) or
	((x + bx + p01 >= 77) and (x + bx + p01 <= 79) and (y + by = 49)) or
	((((x + bx + p01 >= 71) and (x + bx + p01 <= 72)) or ((x + bx + p01 >= 85) and (x + bx + p01 <= 85))) and (y + by = 50)) or
	((((x + bx + p01 >= 72) and (x + bx + p01 <= 75)) or ((x + bx + p01 >= 81) and (x + bx + p01 <= 85))) and (y + by = 51)) or
	((x + bx + p01 >= 73) and (x + bx + p01 <= 84) and (y + by = 52)) or
	((x + bx + p01 >= 74) and (x + bx + p01 <= 83) and (y + by = 53)) or
	((x + bx + p01 >= 75) and (x + bx + p01 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p01 >= 66 and x+bx + p01 <= 67) or (x +bx + p01 >= 89 and x+bx + p01 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p01 >= 68 and x+bx + p01 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p01 >= 77 and x+bx + p01 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p01 >= 68) and (x + bx + p01 <= 76)) or ((x + bx + p01 >= 82) and (x + bx + p01 <= 89))) and (y + by = 81)) or
	((((x + bx + p01 >= 68) and (x + bx + p01 <= 76)) or ((x + bx + p01 >= 82) and (x + bx + p01 <= 89))) and (y + by = 82)) or
	((((x + bx + p01 >= 68) and (x + bx + p01 <= 78)) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 89))) and (y + by = 83)) or
	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 84)) or
	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 85)) or
	((x + bx + p01 >= 69) and (x + bx + p01 <= 88) and (y + by = 86)) or
	((x + bx + p01 >= 70) and (x + bx + p01 <= 88) and (y + by = 87)) or
	((x + bx + p01 >= 72) and (x + bx + p01 <= 86) and (y + by = 88)) or
	((x + bx + p01 >= 74) and (x + bx + p01 <= 84) and (y + by = 89)) or
	((x + bx + p01 >= 75) and (x + bx + p01 <= 82) and (y + by = 90)) or
	((x + bx + p01 >= 77) and (x + bx + p01 <= 80) and (y + by = 91)) or
	((x + bx + p01 >= 78) and (x + bx + p01 <= 78) and (y + by = 92)) or
	------------------Mains normal
	
	((y +by >= 60 and y+by <= 64) and (x+bx + p01 = 67 or x+bx + p01 = 90)) or
	((y +by >= 60 and y+by <= 64) and (x+bx + p01 = 66 or x+bx + p01 = 91)) or
	((y +by >= 60 and y+by <= 66) and (x+bx + p01 = 65 or x+bx + p01 = 92)) or
	((y +by >= 61 and y+by <= 67) and (x+bx + p01 = 64 or x+bx + p01 = 93)) or
	((y +by >= 63 and y+by <= 69) and (x+bx + p01 = 63 or x+bx + p01 = 94)) or
	((y +by >= 65 and y+by <= 83) and (x+bx + p01 = 62 or x+bx + p01 = 95)) or
	((y +by >= 66 and y+by <= 83) and (x+bx + p01 = 61 or x+bx + p01 = 96)) or
	((y +by >= 68 and y+by <= 84) and (x+bx + p01 = 60 or x+bx + p01 = 97)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p01 = 59 or x+bx + p01 = 98)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p01 = 58 or x+bx + p01 = 99)) or
	---droite layer 7
	((x +bx + p01 >= 71 and x+bx + p01 <= 74) and (y+by = 92)) or
	((x +bx + p01 >= 70 and x+bx + p01 <=74 )and (y+by = 93)) or
	((x +bx + p01 >= 69 and x+bx + p01 <= 74) and (y+by = 94)) or
	((x +bx + p01 >= 68 and x+bx + p01 <= 74) and (y+by = 95)) or
	((x +bx + p01 >= 66 and x+bx + p01 <= 72) and (y+by = 96)) or
	((x +bx + p01 >= 65 and x+bx + p01 <= 70) and (y+by = 97)) or
	((x +bx + p01 >= 65 and x+bx + p01 <= 69) and (y+by = 98)) or
	((x +bx + p01 >= 64 and x+bx + p01 <= 67) and (y+by = 99)) or
	((x +bx + p01 >= 63 and x+bx + p01 <= 66) and (y+by = 100)) or
	((x +bx + p01 >= 62 and x+bx + p01 <= 65) and (y+by = 101)) or
	((x +bx + p01 >= 62 and x+bx + p01 <= 65) and (y+by = 102)) or
	((x +bx + p01 >= 62 and x+bx + p01 <= 66) and (y+by = 103)) or
	((x +bx + p01 >= 63 and x+bx + p01 <= 67) and (y+by = 104)) or
	((x +bx + p01 >= 63 and x+bx + p01 <= 68) and (y+by = 105)) or
	((x +bx + p01 >= 64 and x+bx + p01 <= 69) and (y+by = 106)) or
	((x +bx + p01 >= 65 and x+bx + p01 <= 70) and (y+by = 107)) or
	((x +bx + p01 >= 66 and x+bx + p01 <= 71) and (y+by = 108)) or
	((x +bx + p01 >= 66 and x+bx + p01 <= 72) and (y+by = 109)) or
	((x +bx + p01 >= 67 and x+bx + p01 <= 73) and (y+by = 110)) or
	((x +bx + p01 >= 68 and x+bx + p01 <= 74) and (y+by = 111)) or
	((x +bx + p01 >= 68 and x+bx + p01 <= 75) and (y+by = 112)) or
	((x +bx + p01 >= 69 and x+bx + p01 <= 75) and (y+by = 113)) or
	((x +bx + p01 >= 70 and x+bx + p01 <= 75) and (y+by = 114)) or
	--((x +bx + p01 >= 66 and x+bx + p01 <= 70) and (y+by = 115)) or
((x +bx + p01 >= 65 and x+bx + p01 <= 75) and (y +by >= 115 and y+by <= 119)) or
----gauche layer7
	((x +bx + p01 >= 83 and x+bx + p01 <= 86) and (y+by = 92)) or
	((x +bx + p01 >= 83 and x+bx + p01 <=87 )and (y+by = 93)) or
	((x +bx + p01 >= 83 and x+bx + p01 <= 88) and (y+by = 94)) or
	((x +bx + p01 >= 83 and x+bx + p01 <= 90) and (y+by = 95)) or
	((x +bx + p01 >= 84 and x+bx + p01 <= 91) and (y+by = 96)) or
	((x +bx + p01 >= 85 and x+bx + p01 <= 93) and (y+by = 97)) or
	((x +bx + p01 >= 87 and x+bx + p01 <= 94) and (y+by = 98)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 94) and (y+by = 99)) or
	((x +bx + p01 >= 90 and x+bx + p01 <= 93) and (y+by = 100)) or
	((x +bx + p01 >= 91 and x+bx + p01 <= 93) and (y+by = 101)) or
	((x +bx + p01 >= 90 and x+bx + p01 <= 92) and (y+by = 102)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 92) and (y+by = 103)) or
	((x +bx + p01 >= 88 and x+bx + p01 <= 91) and (y+by = 104)) or
	((x +bx + p01 >= 87 and x+bx + p01 <= 91) and (y+by = 105)) or
	((x +bx + p01 >= 86 and x+bx + p01 <= 90) and (y+by = 106)) or
	((x +bx + p01 >= 85 and x+bx + p01 <= 90) and (y+by = 107)) or
	((x +bx + p01 >= 84 and x+bx + p01 <= 89) and (y+by = 108)) or
	((x +bx + p01 >= 84 and x+bx + p01 <= 89) and (y+by = 109)) or
	((x +bx + p01 >= 84 and x+bx + p01 <= 89) and (y+by = 110)) or
	((x +bx + p01 >= 83 and x+bx + p01 <= 88) and (y+by = 111)) or
	((x +bx + p01 >= 83 and x+bx + p01 <= 86) and (y+by = 112)) or
	((x +bx + p01 >= 83 and x+bx + p01 <= 86) and (y+by = 113)) or
	((x +bx + p01 >= 83 and x+bx + p01 <= 89) and (y+by = 114)) or
	--((x +bx + p01 >= 66 and x+bx + p01 <= 70) and (y+by = 115)) or
((x +bx + p01 >= 83 and x+bx + p01 <= 93) and (y +by >= 115 and y+by <= 119))



	) and (counter="01000"))

	

	or

	

	(

	--**********************************************************************11*******************************************************************
		(((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 29)) or
	((x + bx + p02 >= 72) and (x + bx + p02 <= 85) and (y + by = 30)) or
	((x + bx + p02 >= 70) and (x + bx + p02 <= 87) and (y + by = 31)) or
	((x + bx + p02 >= 70) and (x + bx + p02 <= 89) and (y + by = 32)) or
	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 33)) or
	((x + bx + p02 >= 68) and (x + bx + p02 <= 90) and (y + by = 34)) or
	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 35)) or
	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 36)) or
	((x + bx + p02 >= 66) and (x + bx + p02 <= 91) and (y + by = 37)) or
	
((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 38)) or
((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 39)) or
((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 40)) or
((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 41)) or
((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 42)) or
((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 43)) or
((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 44)) or
((((x + bx + p02 >= 68) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 45)) or
((((x + bx + p02 >= 69) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 46)) or
((((x + bx + p02 >= 71) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 47)) or

	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 48)) or
	((x + bx + p02 >= 77) and (x + bx + p02 <= 79) and (y + by = 49)) or
	((((x + bx + p02 >= 71) and (x + bx + p02 <= 72)) or ((x + bx + p02 >= 85) and (x + bx + p02 <= 85))) and (y + by = 50)) or
	((((x + bx + p02 >= 72) and (x + bx + p02 <= 75)) or ((x + bx + p02 >= 81) and (x + bx + p02 <= 85))) and (y + by = 51)) or
	((x + bx + p02 >= 73) and (x + bx + p02 <= 84) and (y + by = 52)) or
	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 53)) or
	((x + bx + p02 >= 75) and (x + bx + p02 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p02 >= 66 and x+bx + p02 <= 67) or (x +bx + p02 >= 89 and x+bx + p02 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p02 >= 68 and x+bx + p02 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p02 >= 77 and x+bx + p02 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 81)) or
	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 82)) or
	((((x + bx + p02 >= 68) and (x + bx + p02 <= 78)) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 89))) and (y + by = 83)) or
	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 84)) or
	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 85)) or
	((x + bx + p02 >= 69) and (x + bx + p02 <= 88) and (y + by = 86)) or
	((x + bx + p02 >= 70) and (x + bx + p02 <= 88) and (y + by = 87)) or
	((x + bx + p02 >= 72) and (x + bx + p02 <= 86) and (y + by = 88)) or
	((x + bx + p02 >= 74) and (x + bx + p02 <= 84) and (y + by = 89)) or
	((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 90)) or
	((x + bx + p02 >= 77) and (x + bx + p02 <= 80) and (y + by = 91)) or
	((x + bx + p02 >= 78) and (x + bx + p02 <= 78) and (y + by = 92)) or
	------------------Mains normal
	
	((y +by >= 60 and y+by <= 64) and (x+bx + p02 = 67 or x+bx + p02 = 90)) or
	((y +by >= 60 and y+by <= 64) and (x+bx + p02 = 66 or x+bx + p02 = 91)) or
	((y +by >= 60 and y+by <= 66) and (x+bx + p02 = 65 or x+bx + p02 = 92)) or
	((y +by >= 61 and y+by <= 67) and (x+bx + p02 = 64 or x+bx + p02 = 93)) or
	((y +by >= 63 and y+by <= 69) and (x+bx + p02 = 63 or x+bx + p02 = 94)) or
	((y +by >= 65 and y+by <= 83) and (x+bx + p02 = 62 or x+bx + p02 = 95)) or
	((y +by >= 66 and y+by <= 83) and (x+bx + p02 = 61 or x+bx + p02 = 96)) or
	((y +by >= 68 and y+by <= 84) and (x+bx + p02 = 60 or x+bx + p02 = 97)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p02 = 59 or x+bx + p02 = 98)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p02 = 58 or x+bx + p02 = 99)) or
		---droite leldakhel
	((x +bx + p02 >= 71 and x+bx + p02 <= 6) and (y+by = 92)) or
	((x +bx + p02 >= 71 and x+bx + p02 <=77) and (y+by = 93)) or
	((x +bx + p02 >= 71 and x+bx + p02 <= 77) and (y+by = 94)) or
	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 95)) or
	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 96)) or
	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 97)) or
	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 98)) or
	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 99)) or
	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 100)) or
	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 101)) or
	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 102)) or
	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 103)) or
	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 104)) or
	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 105)) or
	((x +bx + p02 >= 72 and x+bx + p02 <= 76) and (y+by = 106)) or
	((x +bx + p02 >= 71 and x+bx + p02 <= 75) and (y+by = 107)) or
	((x +bx + p02 >= 70 and x+bx + p02 <= 75) and (y+by = 108)) or
	((x +bx + p02 >= 70 and x+bx + p02 <= 74) and (y+by = 109)) or
	((x +bx + p02 >= 69 and x+bx + p02 <= 73) and (y+by = 110)) or
	((x +bx + p02 >= 68 and x+bx + p02 <= 72) and (y+by = 111)) or
	((x +bx + p02 >= 67 and x+bx + p02 <= 71) and (y+by = 112)) or
	((x +bx + p02 >= 67 and x+bx + p02 <= 70) and (y+by = 113)) or
	((x +bx + p02 >= 66 and x+bx + p02 <= 69) and (y+by = 114)) or
	((x +bx + p02 >= 66 and x+bx + p02 <= 70) and (y+by = 115)) or
	((x +bx + p02 >= 66 and x+bx + p02 <= 74) and (y+by = 116)) or
	((x +bx + p02 >= 67 and x+bx + p02 <= 76) and (y+by = 117)) or
	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or

		----gauche leldakhel
	((x +bx + p02 >= 80 and x+bx + p02 <= 87) and (y+by = 92)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 87) and (y+by = 93)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 86) and (y+by = 94)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 86) and (y+by = 95)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 85) and (y+by = 96)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 85) and (y+by = 97)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 84) and (y+by = 98)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 84) and (y+by = 99)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 100))or
	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 101)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 102)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 103)) or
	((x +bx + p02 >= 80 and x+bx + p02 <= 83) and (y+by = 104)) or
	((x +bx + p02 >= 81 and x+bx + p02 <= 84) and (y+by = 105)) or
	((x +bx + p02 >= 81 and x+bx + p02 <= 84) and (y+by = 106)) or
	((x +bx + p02 >= 82 and x+bx + p02 <= 85) and (y+by = 107)) or
	((x +bx + p02 >= 83 and x+bx + p02 <= 86) and (y+by = 108)) or
	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 109)) or
	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 110)) or
	((x +bx + p02 >= 85 and x+bx + p02 <= 88) and (y+by = 111)) or
	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 112)) or
	((x +bx + p02 >= 87 and x+bx + p02 <= 91) and (y+by = 113)) or
	((x +bx + p02 >= 88 and x+bx + p02 <= 92) and (y+by = 114)) or
	((x +bx + p02 >= 88 and x+bx + p02 <= 92) and (y+by = 115)) or
	((x +bx + p02 >= 86 and x+bx + p02 <= 92) and (y+by = 116)) or
	((x +bx + p02 >= 85 and x+bx + p02 <= 92) and (y+by = 117)) or
	((x +bx + p02 >= 83 and x+bx + p02 <= 90) and (y+by = 118)) 


	) and (counter="01001"))

	

	or

	

		(

	--**********************************************************************11*******************************************************************
		(((x + bx + p03 >= 75) and (x + bx + p03 <= 82) and (y + by = 29)) or
	((x + bx + p03 >= 72) and (x + bx + p03 <= 85) and (y + by = 30)) or
	((x + bx + p03 >= 70) and (x + bx + p03 <= 87) and (y + by = 31)) or
	((x + bx + p03 >= 70) and (x + bx + p03 <= 89) and (y + by = 32)) or
	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 33)) or
	((x + bx + p03 >= 68) and (x + bx + p03 <= 90) and (y + by = 34)) or
	((x + bx + p03 >= 66) and (x + bx + p03 <= 90) and (y + by = 35)) or
	((x + bx + p03 >= 66) and (x + bx + p03 <= 90) and (y + by = 36)) or
	((x + bx + p03 >= 66) and (x + bx + p03 <= 91) and (y + by = 37)) or
	
((((x + bx + p03 >= 65) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 38)) or
((((x + bx + p03 >= 65) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 39)) or
((((x + bx + p03 >= 65) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 40)) or
((((x + bx + p03 >= 65) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 41)) or
((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 90))) and (y + by = 42)) or
((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 90))) and (y + by = 43)) or
((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 86) and (x + bx + p03 <= 89))) and (y + by = 44)) or
((((x + bx + p03 >= 68) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 86) and (x + bx + p03 <= 89))) and (y + by = 45)) or
((((x + bx + p03 >= 69) and (x + bx + p03 <= 76)) or (x + bx + p03 = 78) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 87))) and (y + by = 46)) or
((((x + bx + p03 >= 71) and (x + bx + p03 <= 76)) or (x + bx + p03 = 78) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 87))) and (y + by = 47)) or

	((x + bx + p03 >= 74) and (x + bx + p03 <= 83) and (y + by = 48)) or
	((x + bx + p03 >= 77) and (x + bx + p03 <= 79) and (y + by = 49)) or
	((((x + bx + p03 >= 71) and (x + bx + p03 <= 72)) or ((x + bx + p03 >= 85) and (x + bx + p03 <= 85))) and (y + by = 50)) or
	((((x + bx + p03 >= 72) and (x + bx + p03 <= 75)) or ((x + bx + p03 >= 81) and (x + bx + p03 <= 85))) and (y + by = 51)) or
	((x + bx + p03 >= 73) and (x + bx + p03 <= 84) and (y + by = 52)) or
	((x + bx + p03 >= 74) and (x + bx + p03 <= 83) and (y + by = 53)) or
	((x + bx + p03 >= 75) and (x + bx + p03 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p03 >= 66 and x+bx + p03 <= 67) or (x +bx + p03 >= 89 and x+bx + p03 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p03 >= 68 and x+bx + p03 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p03 >= 77 and x+bx + p03 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p03 >= 68) and (x + bx + p03 <= 76)) or ((x + bx + p03 >= 82) and (x + bx + p03 <= 89))) and (y + by = 81)) or
	((((x + bx + p03 >= 68) and (x + bx + p03 <= 76)) or ((x + bx + p03 >= 82) and (x + bx + p03 <= 89))) and (y + by = 82)) or
	((((x + bx + p03 >= 68) and (x + bx + p03 <= 78)) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 89))) and (y + by = 83)) or
	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 84)) or
	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 85)) or
	((x + bx + p03 >= 69) and (x + bx + p03 <= 88) and (y + by = 86)) or
	((x + bx + p03 >= 70) and (x + bx + p03 <= 88) and (y + by = 87)) or
	((x + bx + p03 >= 72) and (x + bx + p03 <= 86) and (y + by = 88)) or
	((x + bx + p03 >= 74) and (x + bx + p03 <= 84) and (y + by = 89)) or
	((x + bx + p03 >= 75) and (x + bx + p03 <= 82) and (y + by = 90)) or
	((x + bx + p03 >= 77) and (x + bx + p03 <= 80) and (y + by = 91)) or
	((x + bx + p03 >= 78) and (x + bx + p03 <= 78) and (y + by = 92)) or
	------------------Mains normal
	
	((y +by >= 60 and y+by <= 64) and (x+bx + p03 = 67 or x+bx + p03 = 90)) or
	((y +by >= 60 and y+by <= 64) and (x+bx + p03 = 66 or x+bx + p03 = 91)) or
	((y +by >= 60 and y+by <= 66) and (x+bx + p03 = 65 or x+bx + p03 = 92)) or
	((y +by >= 61 and y+by <= 67) and (x+bx + p03 = 64 or x+bx + p03 = 93)) or
	((y +by >= 63 and y+by <= 69) and (x+bx + p03 = 63 or x+bx + p03 = 94)) or
	((y +by >= 65 and y+by <= 83) and (x+bx + p03 = 62 or x+bx + p03 = 95)) or
	((y +by >= 66 and y+by <= 83) and (x+bx + p03 = 61 or x+bx + p03 = 96)) or
	((y +by >= 68 and y+by <= 84) and (x+bx + p03 = 60 or x+bx + p03 = 97)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p03 = 59 or x+bx + p03 = 98)) or
	((y +by >= 83 and y+by <= 88) and (x+bx + p03 = 58 or x+bx + p03 = 99)) or
	---droite layer 7
	((x +bx + p03 >= 71 and x+bx + p03 <= 74) and (y+by = 92)) or
	((x +bx + p03 >= 70 and x+bx + p03 <=74 )and (y+by = 93)) or
	((x +bx + p03 >= 69 and x+bx + p03 <= 74) and (y+by = 94)) or
	((x +bx + p03 >= 68 and x+bx + p03 <= 74) and (y+by = 95)) or
	((x +bx + p03 >= 66 and x+bx + p03 <= 72) and (y+by = 96)) or
	((x +bx + p03 >= 65 and x+bx + p03 <= 70) and (y+by = 97)) or
	((x +bx + p03 >= 65 and x+bx + p03 <= 69) and (y+by = 98)) or
	((x +bx + p03 >= 64 and x+bx + p03 <= 67) and (y+by = 99)) or
	((x +bx + p03 >= 63 and x+bx + p03 <= 66) and (y+by = 100)) or
	((x +bx + p03 >= 62 and x+bx + p03 <= 65) and (y+by = 101)) or
	((x +bx + p03 >= 62 and x+bx + p03 <= 65) and (y+by = 102)) or
	((x +bx + p03 >= 62 and x+bx + p03 <= 66) and (y+by = 103)) or
	((x +bx + p03 >= 63 and x+bx + p03 <= 67) and (y+by = 104)) or
	((x +bx + p03 >= 63 and x+bx + p03 <= 68) and (y+by = 105)) or
	((x +bx + p03 >= 64 and x+bx + p03 <= 69) and (y+by = 106)) or
	((x +bx + p03 >= 65 and x+bx + p03 <= 70) and (y+by = 107)) or
	((x +bx + p03 >= 66 and x+bx + p03 <= 71) and (y+by = 108)) or
	((x +bx + p03 >= 66 and x+bx + p03 <= 72) and (y+by = 109)) or
	((x +bx + p03 >= 67 and x+bx + p03 <= 73) and (y+by = 110)) or
	((x +bx + p03 >= 68 and x+bx + p03 <= 74) and (y+by = 111)) or
	((x +bx + p03 >= 68 and x+bx + p03 <= 75) and (y+by = 112)) or
	((x +bx + p03 >= 69 and x+bx + p03 <= 75) and (y+by = 113)) or
	((x +bx + p03 >= 70 and x+bx + p03 <= 75) and (y+by = 114)) or
	--((x +bx + p03 >= 66 and x+bx + p03 <= 70) and (y+by = 115)) or
((x +bx + p03 >= 65 and x+bx + p03 <= 75) and (y +by >= 115 and y+by <= 119)) or
----gauche layer7
	((x +bx + p03 >= 83 and x+bx + p03 <= 86) and (y+by = 92)) or
	((x +bx + p03 >= 83 and x+bx + p03 <=87 )and (y+by = 93)) or
	((x +bx + p03 >= 83 and x+bx + p03 <= 88) and (y+by = 94)) or
	((x +bx + p03 >= 83 and x+bx + p03 <= 90) and (y+by = 95)) or
	((x +bx + p03 >= 84 and x+bx + p03 <= 91) and (y+by = 96)) or
	((x +bx + p03 >= 85 and x+bx + p03 <= 93) and (y+by = 97)) or
	((x +bx + p03 >= 87 and x+bx + p03 <= 94) and (y+by = 98)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 94) and (y+by = 99)) or
	((x +bx + p03 >= 90 and x+bx + p03 <= 93) and (y+by = 100)) or
	((x +bx + p03 >= 91 and x+bx + p03 <= 93) and (y+by = 101)) or
	((x +bx + p03 >= 90 and x+bx + p03 <= 92) and (y+by = 102)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 92) and (y+by = 103)) or
	((x +bx + p03 >= 88 and x+bx + p03 <= 91) and (y+by = 104)) or
	((x +bx + p03 >= 87 and x+bx + p03 <= 91) and (y+by = 105)) or
	((x +bx + p03 >= 86 and x+bx + p03 <= 90) and (y+by = 106)) or
	((x +bx + p03 >= 85 and x+bx + p03 <= 90) and (y+by = 107)) or
	((x +bx + p03 >= 84 and x+bx + p03 <= 89) and (y+by = 108)) or
	((x +bx + p03 >= 84 and x+bx + p03 <= 89) and (y+by = 109)) or
	((x +bx + p03 >= 84 and x+bx + p03 <= 89) and (y+by = 110)) or
	((x +bx + p03 >= 83 and x+bx + p03 <= 88) and (y+by = 111)) or
	((x +bx + p03 >= 83 and x+bx + p03 <= 86) and (y+by = 112)) or
	((x +bx + p03 >= 83 and x+bx + p03 <= 86) and (y+by = 113)) or
	((x +bx + p03 >= 83 and x+bx + p03 <= 89) and (y+by = 114)) or
	--((x +bx + p03 >= 66 and x+bx + p03 <= 70) and (y+by = 115)) or
((x +bx + p03 >= 83 and x+bx + p03 <= 93) and (y +by >= 115 and y+by <= 119))


	) and (counter="01010"))

	

--	
--		or 	(
--	--**********************************************************************11*******************************************************************
--		(((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 29)) or
--	((x + bx + p02 >= 72) and (x + bx + p02 <= 85) and (y + by = 30)) or
--	((x + bx + p02 >= 70) and (x + bx + p02 <= 87) and (y + by = 31)) or
--	((x + bx + p02 >= 70) and (x + bx + p02 <= 89) and (y + by = 32)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 33)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 90) and (y + by = 34)) or
--	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 35)) or
--	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 36)) or
--	((x + bx + p02 >= 66) and (x + bx + p02 <= 91) and (y + by = 37)) or
--	
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 38)) or
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 39)) or
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 40)) or
--((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 41)) or
--((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 42)) or
--((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 43)) or
--((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 44)) or
--((((x + bx + p02 >= 68) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 45)) or
--((((x + bx + p02 >= 69) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 46)) or
--((((x + bx + p02 >= 71) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 47)) or
--
--	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 48)) or
--	((x + bx + p02 >= 77) and (x + bx + p02 <= 79) and (y + by = 49)) or
--	((((x + bx + p02 >= 71) and (x + bx + p02 <= 72)) or ((x + bx + p02 >= 85) and (x + bx + p02 <= 85))) and (y + by = 50)) or
--	((((x + bx + p02 >= 72) and (x + bx + p02 <= 75)) or ((x + bx + p02 >= 81) and (x + bx + p02 <= 85))) and (y + by = 51)) or
--	((x + bx + p02 >= 73) and (x + bx + p02 <= 84) and (y + by = 52)) or
--	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 53)) or
--	((x + bx + p02 >= 75) and (x + bx + p02 <= 81) and (y + by = 54)) or
--	-----------------dbut 9afas
--	(((x +bx + p02 >= 66 and x+bx + p02 <= 67) or (x +bx + p02 >= 89 and x+bx + p02 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
--	(((x +bx + p02 >= 68 and x+bx + p02 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
--	((x +bx + p02 >= 77 and x+bx + p02 <= 79) and  (y +by >= 56 and y+by <= 79)) or
--	-----------------7awd
--	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 81)) or
--	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 82)) or
--	((((x + bx + p02 >= 68) and (x + bx + p02 <= 78)) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 89))) and (y + by = 83)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 84)) or
--	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 85)) or
--	((x + bx + p02 >= 69) and (x + bx + p02 <= 88) and (y + by = 86)) or
--	((x + bx + p02 >= 70) and (x + bx + p02 <= 88) and (y + by = 87)) or
--	((x + bx + p02 >= 72) and (x + bx + p02 <= 86) and (y + by = 88)) or
--	((x + bx + p02 >= 74) and (x + bx + p02 <= 84) and (y + by = 89)) or
--	((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 90)) or
--	((x + bx + p02 >= 77) and (x + bx + p02 <= 80) and (y + by = 91)) or
--	((x + bx + p02 >= 78) and (x + bx + p02 <= 78) and (y + by = 92)) or
--		--gauche metwiya
--	((x +bx + p02 >= 89 and x+bx + p02 <= 89) and (y+by = 57)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 89) and (y+by = 58)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 90) and (y+by = 59)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 91) and (y+by = 60)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 61)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 93) and (y+by = 62)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 94) and (y+by = 63)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 95) and (y+by = 64)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 96) and (y+by = 65 ))or
--	((x +bx + p02 >= 95 and x+bx + p02 <= 97) and (y+by = 66 ))or
--	((x +bx + p02 >= 96 and x+bx + p02 <= 98) and (y+by = 67)) or
--	((x +bx + p02 >= 97 and x+bx + p02 <= 99) and (y+by = 68)) or
--	((x +bx + p02 >= 98 and x+bx + p02 <= 100) and (y+by = 69)) or
--	((x +bx + p02 >= 97 and x+bx + p02 <= 101) and (y+by = 70)) or
--	((x +bx + p02 >= 96 and x+bx + p02 <= 101) and (y+by = 71)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 100) and (y+by = 72)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 99) and (y+by = 73)) or
--	((x +bx + p02 >= 92 and x+bx + p02 <= 98) and (y+by = 74)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 97) and (y+by = 75)) or
--	((x +bx + p02 >= 90 and x+bx + p02 <= 95) and (y+by = 76)) or
--	((x +bx + p02 >= 90 and x+bx + p02 <= 94 ) and (y+by = 77)) or
--	((x +bx + p02 >= 90 and x+bx + p02 <= 93 ) and (y+by = 78)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 93 ) and (y+by = 79)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 94 ) and (y+by = 80)) or
--	((x +bx + p02 >= 92 and x+bx + p02 <= 95 ) and (y+by = 81)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 95 ) and (y+by = 82)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 96 ) and (y+by = 83)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 96 ) and (y+by = 84)) or
--		--droite tal3a
--		((x +bx + p02 >= 43 and x+bx + p02 <= 47) and (y+by = 43)) or
--	((x +bx + p02 >= 43 and x+bx + p02 <= 48) and (y+by = 44)) or
--	((x +bx + p02 >= 44 and x+bx + p02 <= 49) and (y+by = 45)) or
--	((x +bx + p02 >= 46 and x+bx + p02 <= 51) and (y+by = 46)) or
--	((x +bx + p02 >= 47 and x+bx + p02 <= 52) and (y+by = 47)) or
--	((x +bx + p02 >= 48 and x+bx + p02 <= 54) and (y+by = 48)) or
--	((x +bx + p02 >= 49 and x+bx + p02 <= 55) and (y+by = 49)) or
--	((x +bx + p02 >= 49 and x+bx + p02 <= 56) and (y+by = 50)) or
--	((x +bx + p02 >= 50 and x+bx + p02 <= 58) and (y+by = 51 ))or
--	((x +bx + p02 >= 51 and x+bx + p02 <= 59) and (y+by = 52 ))or
--	((x +bx + p02 >= 53 and x+bx + p02 <= 61) and (y+by = 53)) or
--	((x +bx + p02 >= 53 and x+bx + p02 <= 62) and (y+by = 54)) or
--	((x +bx + p02 >= 54 and x+bx + p02 <= 63) and (y+by = 55)) or
--	((x +bx + p02 >= 55 and x+bx + p02 <= 68) and (y+by = 56)) or
--	((x +bx + p02 >= 57 and x+bx + p02 <= 68) and (y+by = 57))or
--	((x +bx + p02 >= 58 and x+bx + p02 <= 68) and (y+by = 58)) or
--	((x +bx + p02 >= 60 and x+bx + p02 <= 68) and (y+by = 59)) or
--	((x +bx + p02 >= 61 and x+bx + p02 <= 67) and (y+by = 60)) or
--	((x +bx + p02 >= 62 and x+bx + p02 <= 66) and (y+by = 61)) or
--	((x +bx + p02 >= 64 and x+bx + p02 <= 66) and (y+by = 62)) or
--	((x +bx + p02 >= 65 and x+bx + p02 <= 66 ) and (y+by = 63)) or
----pied
--	---droite leldakhel
--	((x +bx + p02 >= 71 and x+bx + p02 <= 6) and (y+by = 92)) or
--	((x +bx + p02 >= 71 and x+bx + p02 <=77) and (y+by = 93)) or
--	((x +bx + p02 >= 71 and x+bx + p02 <= 77) and (y+by = 94)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 95)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 96)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 97)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 98)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 99)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 100)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 101)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 102)) or
--	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 103)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 104)) or
--	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 105)) or
--	((x +bx + p02 >= 72 and x+bx + p02 <= 76) and (y+by = 106)) or
--	((x +bx + p02 >= 71 and x+bx + p02 <= 75) and (y+by = 107)) or
--	((x +bx + p02 >= 70 and x+bx + p02 <= 75) and (y+by = 108)) or
--	((x +bx + p02 >= 70 and x+bx + p02 <= 74) and (y+by = 109)) or
--	((x +bx + p02 >= 69 and x+bx + p02 <= 73) and (y+by = 110)) or
--	((x +bx + p02 >= 68 and x+bx + p02 <= 72) and (y+by = 111)) or
--	((x +bx + p02 >= 67 and x+bx + p02 <= 71) and (y+by = 112)) or
--	((x +bx + p02 >= 67 and x+bx + p02 <= 70) and (y+by = 113)) or
--	((x +bx + p02 >= 66 and x+bx + p02 <= 69) and (y+by = 114)) or
--	((x +bx + p02 >= 66 and x+bx + p02 <= 70) and (y+by = 115)) or
--	((x +bx + p02 >= 66 and x+bx + p02 <= 74) and (y+by = 116)) or
--	((x +bx + p02 >= 67 and x+bx + p02 <= 76) and (y+by = 117)) or
--	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
--	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
--
--	----gauche mkesla
--	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 92)) or
--	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 93)) or
--	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 94)) or
--	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 95)) or
--	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 96)) or
--	((x +bx + p02 >= 85 and x+bx + p02 <= 87) and (y+by = 97)) or
--	((x +bx + p02 >= 85 and x+bx + p02 <= 88) and (y+by = 98)) or
--	((x +bx + p02 >= 85 and x+bx + p02 <= 89) and (y+by = 99)) or
--	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 100))or
--	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 101)) or
--	((x +bx + p02 >= 87 and x+bx + p02 <= 90) and (y+by = 102)) or
--	((x +bx + p02 >= 87 and x+bx + p02 <= 90) and (y+by = 103)) or
--	((x +bx + p02 >= 87 and x+bx + p02 <= 91) and (y+by = 104)) or
--	((x +bx + p02 >= 88 and x+bx + p02 <= 91) and (y+by = 105)) or
--	((x +bx + p02 >= 88 and x+bx + p02 <= 91) and (y+by = 106)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 107)) or
--	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 108)) or
--	((x +bx + p02 >= 90 and x+bx + p02 <= 93) and (y+by = 109)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 94) and (y+by = 110)) or
--	((x +bx + p02 >= 91 and x+bx + p02 <= 95) and (y+by = 111)) or
--	((x +bx + p02 >= 92 and x+bx + p02 <= 95) and (y+by = 112)) or
--	((x +bx + p02 >= 92 and x+bx + p02 <= 96) and (y+by = 113)) or
--	((x +bx + p02 >= 93 and x+bx + p02 <= 97) and (y+by = 114)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 97) and (y+by = 115)) or
--	((x +bx + p02 >= 94 and x+bx + p02 <= 104) and (y +by >= 115 and y+by <= 119))
--
--	) and (counter="01011"))

	

	or
		(

	--**********************************************************************11*******************************************************************
		(((x + bx + p03 >= 75) and (x + bx + p03 <= 82) and (y + by = 29)) or
	((x + bx + p03 >= 72) and (x + bx + p03 <= 85) and (y + by = 30)) or
	((x + bx + p03 >= 70) and (x + bx + p03 <= 87) and (y + by = 31)) or
	((x + bx + p03 >= 70) and (x + bx + p03 <= 89) and (y + by = 32)) or
	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 33)) or
	((x + bx + p03 >= 68) and (x + bx + p03 <= 90) and (y + by = 34)) or
	((x + bx + p03 >= 66) and (x + bx + p03 <= 90) and (y + by = 35)) or
	((x + bx + p03 >= 66) and (x + bx + p03 <= 90) and (y + by = 36)) or
	((x + bx + p03 >= 66) and (x + bx + p03 <= 91) and (y + by = 37)) or
	
((((x + bx + p03 >= 65) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 38)) or
((((x + bx + p03 >= 65) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 39)) or
((((x + bx + p03 >= 65) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 40)) or
((((x + bx + p03 >= 65) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 91))) and (y + by = 41)) or
((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 90))) and (y + by = 42)) or
((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 80)) or ((x + bx + p03 >= 87) and (x + bx + p03 <= 90))) and (y + by = 43)) or
((((x + bx + p03 >= 66) and (x + bx + p03 <= 69)) or ((x + bx + p03 >= 77) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 86) and (x + bx + p03 <= 89))) and (y + by = 44)) or
((((x + bx + p03 >= 68) and (x + bx + p03 <= 71)) or ((x + bx + p03 >= 76) and (x + bx + p03 <= 81)) or ((x + bx + p03 >= 86) and (x + bx + p03 <= 89))) and (y + by = 45)) or
((((x + bx + p03 >= 69) and (x + bx + p03 <= 76)) or (x + bx + p03 = 78) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 87))) and (y + by = 46)) or
((((x + bx + p03 >= 71) and (x + bx + p03 <= 76)) or (x + bx + p03 = 78) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 87))) and (y + by = 47)) or

	((x + bx + p03 >= 74) and (x + bx + p03 <= 83) and (y + by = 48)) or
	((x + bx + p03 >= 77) and (x + bx + p03 <= 79) and (y + by = 49)) or
	((((x + bx + p03 >= 71) and (x + bx + p03 <= 72)) or ((x + bx + p03 >= 85) and (x + bx + p03 <= 85))) and (y + by = 50)) or
	((((x + bx + p03 >= 72) and (x + bx + p03 <= 75)) or ((x + bx + p03 >= 81) and (x + bx + p03 <= 85))) and (y + by = 51)) or
	((x + bx + p03 >= 73) and (x + bx + p03 <= 84) and (y + by = 52)) or
	((x + bx + p03 >= 74) and (x + bx + p03 <= 83) and (y + by = 53)) or
	((x + bx + p03 >= 75) and (x + bx + p03 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p03 >= 66 and x+bx + p03 <= 67) or (x +bx + p03 >= 89 and x+bx + p03 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p03 >= 68 and x+bx + p03 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p03 >= 77 and x+bx + p03 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p03 >= 68) and (x + bx + p03 <= 76)) or ((x + bx + p03 >= 82) and (x + bx + p03 <= 89))) and (y + by = 81)) or
	((((x + bx + p03 >= 68) and (x + bx + p03 <= 76)) or ((x + bx + p03 >= 82) and (x + bx + p03 <= 89))) and (y + by = 82)) or
	((((x + bx + p03 >= 68) and (x + bx + p03 <= 78)) or ((x + bx + p03 >= 80) and (x + bx + p03 <= 89))) and (y + by = 83)) or
	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 84)) or
	((x + bx + p03 >= 68) and (x + bx + p03 <= 89) and (y + by = 85)) or
	((x + bx + p03 >= 69) and (x + bx + p03 <= 88) and (y + by = 86)) or
	((x + bx + p03 >= 70) and (x + bx + p03 <= 88) and (y + by = 87)) or
	((x + bx + p03 >= 72) and (x + bx + p03 <= 86) and (y + by = 88)) or
	((x + bx + p03 >= 74) and (x + bx + p03 <= 84) and (y + by = 89)) or
	((x + bx + p03 >= 75) and (x + bx + p03 <= 82) and (y + by = 90)) or
	((x + bx + p03 >= 77) and (x + bx + p03 <= 80) and (y + by = 91)) or
	((x + bx + p03 >= 78) and (x + bx + p03 <= 78) and (y + by = 92)) or

	---main
	((x +bx + p03 >= 89 and x+bx + p03 <= 89) and (y+by = 57)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 89) and (y+by = 58)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 90) and (y+by = 59)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 91) and (y+by = 60)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 92) and (y+by = 61)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 93) and (y+by = 62)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 94) and (y+by = 63)) or
	((x +bx + p03 >= 93 and x+bx + p03 <= 95) and (y+by = 64)) or
	((x +bx + p03 >= 94 and x+bx + p03 <= 96) and (y+by = 65 ))or
	((x +bx + p03 >= 95 and x+bx + p03 <= 97) and (y+by = 66 ))or
	((x +bx + p03 >= 96 and x+bx + p03 <= 98) and (y+by = 67)) or
	((x +bx + p03 >= 97 and x+bx + p03 <= 99) and (y+by = 68)) or
	((x +bx + p03 >= 98 and x+bx + p03 <= 100) and (y+by = 69)) or
	((x +bx + p03 >= 97 and x+bx + p03 <= 101) and (y+by = 70)) or
	((x +bx + p03 >= 96 and x+bx + p03 <= 101) and (y+by = 71)) or
	((x +bx + p03 >= 94 and x+bx + p03 <= 100) and (y+by = 72)) or
	((x +bx + p03 >= 93 and x+bx + p03 <= 99) and (y+by = 73)) or
	((x +bx + p03 >= 92 and x+bx + p03 <= 98) and (y+by = 74)) or
	((x +bx + p03 >= 91 and x+bx + p03 <= 97) and (y+by = 75)) or
	((x +bx + p03 >= 90 and x+bx + p03 <= 95) and (y+by = 76)) or
	((x +bx + p03 >= 90 and x+bx + p03 <= 94 ) and (y+by = 77)) or
	((x +bx + p03 >= 90 and x+bx + p03 <= 93 ) and (y+by = 78)) or
	((x +bx + p03 >= 91 and x+bx + p03 <= 93 ) and (y+by = 79)) or
	((x +bx + p03 >= 91 and x+bx + p03 <= 94 ) and (y+by = 80)) or
	((x +bx + p03 >= 92 and x+bx + p03 <= 95 ) and (y+by = 81)) or
	((x +bx + p03 >= 93 and x+bx + p03 <= 95 ) and (y+by = 82)) or
	((x +bx + p03 >= 93 and x+bx + p03 <= 96 ) and (y+by = 83)) or
	((x +bx + p03 >= 94 and x+bx + p03 <= 96 ) and (y+by = 84)) or
		--droite tal3a
		((x +bx + p03 >= 43 and x+bx + p03 <= 47) and (y+by = 43)) or
	((x +bx + p03 >= 43 and x+bx + p03 <= 48) and (y+by = 44)) or
	((x +bx + p03 >= 44 and x+bx + p03 <= 49) and (y+by = 45)) or
	((x +bx + p03 >= 46 and x+bx + p03 <= 51) and (y+by = 46)) or
	((x +bx + p03 >= 47 and x+bx + p03 <= 52) and (y+by = 47)) or
	((x +bx + p03 >= 48 and x+bx + p03 <= 54) and (y+by = 48)) or
	((x +bx + p03 >= 49 and x+bx + p03 <= 55) and (y+by = 49)) or
	((x +bx + p03 >= 49 and x+bx + p03 <= 56) and (y+by = 50)) or
	((x +bx + p03 >= 50 and x+bx + p03 <= 58) and (y+by = 51 ))or
	((x +bx + p03 >= 51 and x+bx + p03 <= 59) and (y+by = 52 ))or
	((x +bx + p03 >= 53 and x+bx + p03 <= 61) and (y+by = 53)) or
	((x +bx + p03 >= 53 and x+bx + p03 <= 62) and (y+by = 54)) or
	((x +bx + p03 >= 54 and x+bx + p03 <= 63) and (y+by = 55)) or
	((x +bx + p03 >= 55 and x+bx + p03 <= 68) and (y+by = 56)) or
	((x +bx + p03 >= 57 and x+bx + p03 <= 68) and (y+by = 57))or
	((x +bx + p03 >= 58 and x+bx + p03 <= 68) and (y+by = 58)) or
	((x +bx + p03 >= 60 and x+bx + p03 <= 68) and (y+by = 59)) or
	((x +bx + p03 >= 61 and x+bx + p03 <= 67) and (y+by = 60)) or
	((x +bx + p03 >= 62 and x+bx + p03 <= 66) and (y+by = 61)) or
	((x +bx + p03 >= 64 and x+bx + p03 <= 66) and (y+by = 62)) or
	((x +bx + p03 >= 65 and x+bx + p03 <= 66 ) and (y+by = 63)) or
--pied
	---droite leldakhel
	((x +bx + p03 >= 71 and x+bx + p03 <= 6) and (y+by = 92)) or
	((x +bx + p03 >= 71 and x+bx + p03 <=77) and (y+by = 93)) or
	((x +bx + p03 >= 71 and x+bx + p03 <= 77) and (y+by = 94)) or
	((x +bx + p03 >= 72 and x+bx + p03 <= 77) and (y+by = 95)) or
	((x +bx + p03 >= 72 and x+bx + p03 <= 77) and (y+by = 96)) or
	((x +bx + p03 >= 72 and x+bx + p03 <= 77) and (y+by = 97)) or
	((x +bx + p03 >= 73 and x+bx + p03 <= 77) and (y+by = 98)) or
	((x +bx + p03 >= 73 and x+bx + p03 <= 77) and (y+by = 99)) or
	((x +bx + p03 >= 74 and x+bx + p03 <= 77) and (y+by = 100)) or
	((x +bx + p03 >= 74 and x+bx + p03 <= 77) and (y+by = 101)) or
	((x +bx + p03 >= 74 and x+bx + p03 <= 77) and (y+by = 102)) or
	((x +bx + p03 >= 74 and x+bx + p03 <= 77) and (y+by = 103)) or
	((x +bx + p03 >= 73 and x+bx + p03 <= 77) and (y+by = 104)) or
	((x +bx + p03 >= 73 and x+bx + p03 <= 77) and (y+by = 105)) or
	((x +bx + p03 >= 72 and x+bx + p03 <= 76) and (y+by = 106)) or
	((x +bx + p03 >= 71 and x+bx + p03 <= 75) and (y+by = 107)) or
	((x +bx + p03 >= 70 and x+bx + p03 <= 75) and (y+by = 108)) or
	((x +bx + p03 >= 70 and x+bx + p03 <= 74) and (y+by = 109)) or
	((x +bx + p03 >= 69 and x+bx + p03 <= 73) and (y+by = 110)) or
	((x +bx + p03 >= 68 and x+bx + p03 <= 72) and (y+by = 111)) or
	((x +bx + p03 >= 67 and x+bx + p03 <= 71) and (y+by = 112)) or
	((x +bx + p03 >= 67 and x+bx + p03 <= 70) and (y+by = 113)) or
	((x +bx + p03 >= 66 and x+bx + p03 <= 69) and (y+by = 114)) or
	((x +bx + p03 >= 66 and x+bx + p03 <= 70) and (y+by = 115)) or
	((x +bx + p03 >= 66 and x+bx + p03 <= 74) and (y+by = 116)) or
	((x +bx + p03 >= 67 and x+bx + p03 <= 76) and (y+by = 117)) or
	((x +bx + p03 >= 69 and x+bx + p03 <= 76) and (y+by = 118)) or
	((x +bx + p03 >= 69 and x+bx + p03 <= 76) and (y+by = 118)) or

	----gauche mkesla
	((x +bx + p03 >= 83 and x+bx + p03 <= 87) and (y+by = 92)) or
	((x +bx + p03 >= 83 and x+bx + p03 <= 87) and (y+by = 93)) or
	((x +bx + p03 >= 83 and x+bx + p03 <= 87) and (y+by = 94)) or
	((x +bx + p03 >= 84 and x+bx + p03 <= 87) and (y+by = 95)) or
	((x +bx + p03 >= 84 and x+bx + p03 <= 87) and (y+by = 96)) or
	((x +bx + p03 >= 85 and x+bx + p03 <= 87) and (y+by = 97)) or
	((x +bx + p03 >= 85 and x+bx + p03 <= 88) and (y+by = 98)) or
	((x +bx + p03 >= 85 and x+bx + p03 <= 89) and (y+by = 99)) or
	((x +bx + p03 >= 86 and x+bx + p03 <= 89) and (y+by = 100))or
	((x +bx + p03 >= 86 and x+bx + p03 <= 89) and (y+by = 101)) or
	((x +bx + p03 >= 87 and x+bx + p03 <= 90) and (y+by = 102)) or
	((x +bx + p03 >= 87 and x+bx + p03 <= 90) and (y+by = 103)) or
	((x +bx + p03 >= 87 and x+bx + p03 <= 91) and (y+by = 104)) or
	((x +bx + p03 >= 88 and x+bx + p03 <= 91) and (y+by = 105)) or
	((x +bx + p03 >= 88 and x+bx + p03 <= 91) and (y+by = 106)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 92) and (y+by = 107)) or
	((x +bx + p03 >= 89 and x+bx + p03 <= 92) and (y+by = 108)) or
	((x +bx + p03 >= 90 and x+bx + p03 <= 93) and (y+by = 109)) or
	((x +bx + p03 >= 91 and x+bx + p03 <= 94) and (y+by = 110)) or
	((x +bx + p03 >= 91 and x+bx + p03 <= 95) and (y+by = 111)) or
	((x +bx + p03 >= 92 and x+bx + p03 <= 95) and (y+by = 112)) or
	((x +bx + p03 >= 92 and x+bx + p03 <= 96) and (y+by = 113)) or
	((x +bx + p03 >= 93 and x+bx + p03 <= 97) and (y+by = 114)) or
	((x +bx + p03 >= 94 and x+bx + p03 <= 97) and (y+by = 115)) or
	((x +bx + p03 >= 94 and x+bx + p03 <= 104) and (y +by >= 115 and y+by <= 119))

	) and (counter="01011"))
		or 	(
	--**********************************************************************11*******************************************************************
		(((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 29)) or
	((x + bx + p02 >= 72) and (x + bx + p02 <= 85) and (y + by = 30)) or
	((x + bx + p02 >= 70) and (x + bx + p02 <= 87) and (y + by = 31)) or
	((x + bx + p02 >= 70) and (x + bx + p02 <= 89) and (y + by = 32)) or
	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 33)) or
	((x + bx + p02 >= 68) and (x + bx + p02 <= 90) and (y + by = 34)) or
	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 35)) or
	((x + bx + p02 >= 66) and (x + bx + p02 <= 90) and (y + by = 36)) or
	((x + bx + p02 >= 66) and (x + bx + p02 <= 91) and (y + by = 37)) or
	
((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 38)) or
((((x + bx + p02 >= 65) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 39)) or
((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 40)) or
((((x + bx + p02 >= 65) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 91))) and (y + by = 41)) or
((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 42)) or
((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 80)) or ((x + bx + p02 >= 87) and (x + bx + p02 <= 90))) and (y + by = 43)) or
((((x + bx + p02 >= 66) and (x + bx + p02 <= 69)) or ((x + bx + p02 >= 77) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 44)) or
((((x + bx + p02 >= 68) and (x + bx + p02 <= 71)) or ((x + bx + p02 >= 76) and (x + bx + p02 <= 81)) or ((x + bx + p02 >= 86) and (x + bx + p02 <= 89))) and (y + by = 45)) or
((((x + bx + p02 >= 69) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 46)) or
((((x + bx + p02 >= 71) and (x + bx + p02 <= 76)) or (x + bx + p02 = 78) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 87))) and (y + by = 47)) or

	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 48)) or
	((x + bx + p02 >= 77) and (x + bx + p02 <= 79) and (y + by = 49)) or
	((((x + bx + p02 >= 71) and (x + bx + p02 <= 72)) or ((x + bx + p02 >= 85) and (x + bx + p02 <= 85))) and (y + by = 50)) or
	((((x + bx + p02 >= 72) and (x + bx + p02 <= 75)) or ((x + bx + p02 >= 81) and (x + bx + p02 <= 85))) and (y + by = 51)) or
	((x + bx + p02 >= 73) and (x + bx + p02 <= 84) and (y + by = 52)) or
	((x + bx + p02 >= 74) and (x + bx + p02 <= 83) and (y + by = 53)) or
	((x + bx + p02 >= 75) and (x + bx + p02 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p02 >= 66 and x+bx + p02 <= 67) or (x +bx + p02 >= 89 and x+bx + p02 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p02 >= 68 and x+bx + p02 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p02 >= 77 and x+bx + p02 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 81)) or
	((((x + bx + p02 >= 68) and (x + bx + p02 <= 76)) or ((x + bx + p02 >= 82) and (x + bx + p02 <= 89))) and (y + by = 82)) or
	((((x + bx + p02 >= 68) and (x + bx + p02 <= 78)) or ((x + bx + p02 >= 80) and (x + bx + p02 <= 89))) and (y + by = 83)) or
	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 84)) or
	((x + bx + p02 >= 68) and (x + bx + p02 <= 89) and (y + by = 85)) or
	((x + bx + p02 >= 69) and (x + bx + p02 <= 88) and (y + by = 86)) or
	((x + bx + p02 >= 70) and (x + bx + p02 <= 88) and (y + by = 87)) or
	((x + bx + p02 >= 72) and (x + bx + p02 <= 86) and (y + by = 88)) or
	((x + bx + p02 >= 74) and (x + bx + p02 <= 84) and (y + by = 89)) or
	((x + bx + p02 >= 75) and (x + bx + p02 <= 82) and (y + by = 90)) or
	((x + bx + p02 >= 77) and (x + bx + p02 <= 80) and (y + by = 91)) or
	((x + bx + p02 >= 78) and (x + bx + p02 <= 78) and (y + by = 92)) or
		--gauche metwiya
	((x +bx + p02 >= 89 and x+bx + p02 <= 89) and (y+by = 57)) or
	((x +bx + p02 >= 89 and x+bx + p02 <= 89) and (y+by = 58)) or
	((x +bx + p02 >= 89 and x+bx + p02 <= 90) and (y+by = 59)) or
	((x +bx + p02 >= 89 and x+bx + p02 <= 91) and (y+by = 60)) or
	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 61)) or
	((x +bx + p02 >= 89 and x+bx + p02 <= 93) and (y+by = 62)) or
	((x +bx + p02 >= 89 and x+bx + p02 <= 94) and (y+by = 63)) or
	((x +bx + p02 >= 93 and x+bx + p02 <= 95) and (y+by = 64)) or
	((x +bx + p02 >= 94 and x+bx + p02 <= 96) and (y+by = 65 ))or
	((x +bx + p02 >= 95 and x+bx + p02 <= 97) and (y+by = 66 ))or
	((x +bx + p02 >= 96 and x+bx + p02 <= 98) and (y+by = 67)) or
	((x +bx + p02 >= 97 and x+bx + p02 <= 99) and (y+by = 68)) or
	((x +bx + p02 >= 98 and x+bx + p02 <= 100) and (y+by = 69)) or
	((x +bx + p02 >= 97 and x+bx + p02 <= 101) and (y+by = 70)) or
	((x +bx + p02 >= 96 and x+bx + p02 <= 101) and (y+by = 71)) or
	((x +bx + p02 >= 94 and x+bx + p02 <= 100) and (y+by = 72)) or
	((x +bx + p02 >= 93 and x+bx + p02 <= 99) and (y+by = 73)) or
	((x +bx + p02 >= 92 and x+bx + p02 <= 98) and (y+by = 74)) or
	((x +bx + p02 >= 91 and x+bx + p02 <= 97) and (y+by = 75)) or
	((x +bx + p02 >= 90 and x+bx + p02 <= 95) and (y+by = 76)) or
	((x +bx + p02 >= 90 and x+bx + p02 <= 94 ) and (y+by = 77)) or
	((x +bx + p02 >= 90 and x+bx + p02 <= 93 ) and (y+by = 78)) or
	((x +bx + p02 >= 91 and x+bx + p02 <= 93 ) and (y+by = 79)) or
	((x +bx + p02 >= 91 and x+bx + p02 <= 94 ) and (y+by = 80)) or
	((x +bx + p02 >= 92 and x+bx + p02 <= 95 ) and (y+by = 81)) or
	((x +bx + p02 >= 93 and x+bx + p02 <= 95 ) and (y+by = 82)) or
	((x +bx + p02 >= 93 and x+bx + p02 <= 96 ) and (y+by = 83)) or
	((x +bx + p02 >= 94 and x+bx + p02 <= 96 ) and (y+by = 84)) or
		--droite tal3a
		((x +bx + p02 >= 43 and x+bx + p02 <= 47) and (y+by = 43)) or
	((x +bx + p02 >= 43 and x+bx + p02 <= 48) and (y+by = 44)) or
	((x +bx + p02 >= 44 and x+bx + p02 <= 49) and (y+by = 45)) or
	((x +bx + p02 >= 46 and x+bx + p02 <= 51) and (y+by = 46)) or
	((x +bx + p02 >= 47 and x+bx + p02 <= 52) and (y+by = 47)) or
	((x +bx + p02 >= 48 and x+bx + p02 <= 54) and (y+by = 48)) or
	((x +bx + p02 >= 49 and x+bx + p02 <= 55) and (y+by = 49)) or
	((x +bx + p02 >= 49 and x+bx + p02 <= 56) and (y+by = 50)) or
	((x +bx + p02 >= 50 and x+bx + p02 <= 58) and (y+by = 51 ))or
	((x +bx + p02 >= 51 and x+bx + p02 <= 59) and (y+by = 52 ))or
	((x +bx + p02 >= 53 and x+bx + p02 <= 61) and (y+by = 53)) or
	((x +bx + p02 >= 53 and x+bx + p02 <= 62) and (y+by = 54)) or
	((x +bx + p02 >= 54 and x+bx + p02 <= 63) and (y+by = 55)) or
	((x +bx + p02 >= 55 and x+bx + p02 <= 68) and (y+by = 56)) or
	((x +bx + p02 >= 57 and x+bx + p02 <= 68) and (y+by = 57))or
	((x +bx + p02 >= 58 and x+bx + p02 <= 68) and (y+by = 58)) or
	((x +bx + p02 >= 60 and x+bx + p02 <= 68) and (y+by = 59)) or
	((x +bx + p02 >= 61 and x+bx + p02 <= 67) and (y+by = 60)) or
	((x +bx + p02 >= 62 and x+bx + p02 <= 66) and (y+by = 61)) or
	((x +bx + p02 >= 64 and x+bx + p02 <= 66) and (y+by = 62)) or
	((x +bx + p02 >= 65 and x+bx + p02 <= 66 ) and (y+by = 63)) or
--pied
	---droite leldakhel
	((x +bx + p02 >= 71 and x+bx + p02 <= 6) and (y+by = 92)) or
	((x +bx + p02 >= 71 and x+bx + p02 <=77) and (y+by = 93)) or
	((x +bx + p02 >= 71 and x+bx + p02 <= 77) and (y+by = 94)) or
	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 95)) or
	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 96)) or
	((x +bx + p02 >= 72 and x+bx + p02 <= 77) and (y+by = 97)) or
	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 98)) or
	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 99)) or
	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 100)) or
	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 101)) or
	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 102)) or
	((x +bx + p02 >= 74 and x+bx + p02 <= 77) and (y+by = 103)) or
	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 104)) or
	((x +bx + p02 >= 73 and x+bx + p02 <= 77) and (y+by = 105)) or
	((x +bx + p02 >= 72 and x+bx + p02 <= 76) and (y+by = 106)) or
	((x +bx + p02 >= 71 and x+bx + p02 <= 75) and (y+by = 107)) or
	((x +bx + p02 >= 70 and x+bx + p02 <= 75) and (y+by = 108)) or
	((x +bx + p02 >= 70 and x+bx + p02 <= 74) and (y+by = 109)) or
	((x +bx + p02 >= 69 and x+bx + p02 <= 73) and (y+by = 110)) or
	((x +bx + p02 >= 68 and x+bx + p02 <= 72) and (y+by = 111)) or
	((x +bx + p02 >= 67 and x+bx + p02 <= 71) and (y+by = 112)) or
	((x +bx + p02 >= 67 and x+bx + p02 <= 70) and (y+by = 113)) or
	((x +bx + p02 >= 66 and x+bx + p02 <= 69) and (y+by = 114)) or
	((x +bx + p02 >= 66 and x+bx + p02 <= 70) and (y+by = 115)) or
	((x +bx + p02 >= 66 and x+bx + p02 <= 74) and (y+by = 116)) or
	((x +bx + p02 >= 67 and x+bx + p02 <= 76) and (y+by = 117)) or
	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or
	((x +bx + p02 >= 69 and x+bx + p02 <= 76) and (y+by = 118)) or

	----gauche mkesla
	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 92)) or
	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 93)) or
	((x +bx + p02 >= 83 and x+bx + p02 <= 87) and (y+by = 94)) or
	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 95)) or
	((x +bx + p02 >= 84 and x+bx + p02 <= 87) and (y+by = 96)) or
	((x +bx + p02 >= 85 and x+bx + p02 <= 87) and (y+by = 97)) or
	((x +bx + p02 >= 85 and x+bx + p02 <= 88) and (y+by = 98)) or
	((x +bx + p02 >= 85 and x+bx + p02 <= 89) and (y+by = 99)) or
	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 100))or
	((x +bx + p02 >= 86 and x+bx + p02 <= 89) and (y+by = 101)) or
	((x +bx + p02 >= 87 and x+bx + p02 <= 90) and (y+by = 102)) or
	((x +bx + p02 >= 87 and x+bx + p02 <= 90) and (y+by = 103)) or
	((x +bx + p02 >= 87 and x+bx + p02 <= 91) and (y+by = 104)) or
	((x +bx + p02 >= 88 and x+bx + p02 <= 91) and (y+by = 105)) or
	((x +bx + p02 >= 88 and x+bx + p02 <= 91) and (y+by = 106)) or
	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 107)) or
	((x +bx + p02 >= 89 and x+bx + p02 <= 92) and (y+by = 108)) or
	((x +bx + p02 >= 90 and x+bx + p02 <= 93) and (y+by = 109)) or
	((x +bx + p02 >= 91 and x+bx + p02 <= 94) and (y+by = 110)) or
	((x +bx + p02 >= 91 and x+bx + p02 <= 95) and (y+by = 111)) or
	((x +bx + p02 >= 92 and x+bx + p02 <= 95) and (y+by = 112)) or
	((x +bx + p02 >= 92 and x+bx + p02 <= 96) and (y+by = 113)) or
	((x +bx + p02 >= 93 and x+bx + p02 <= 97) and (y+by = 114)) or
	((x +bx + p02 >= 94 and x+bx + p02 <= 97) and (y+by = 115)) or
	((x +bx + p02 >= 94 and x+bx + p02 <= 104) and (y +by >= 115 and y+by <= 119))

	) and (counter="01100"))
	
	
		or 	(
	--**********************************************************************11*******************************************************************
		(((x + bx + p01 >= 75) and (x + bx + p01 <= 82) and (y + by = 29)) or
	((x + bx + p01 >= 72) and (x + bx + p01 <= 85) and (y + by = 30)) or
	((x + bx + p01 >= 70) and (x + bx + p01 <= 87) and (y + by = 31)) or
	((x + bx + p01 >= 70) and (x + bx + p01 <= 89) and (y + by = 32)) or
	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 33)) or
	((x + bx + p01 >= 68) and (x + bx + p01 <= 90) and (y + by = 34)) or
	((x + bx + p01 >= 66) and (x + bx + p01 <= 90) and (y + by = 35)) or
	((x + bx + p01 >= 66) and (x + bx + p01 <= 90) and (y + by = 36)) or
	((x + bx + p01 >= 66) and (x + bx + p01 <= 91) and (y + by = 37)) or
	
((((x + bx + p01 >= 65) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 38)) or
((((x + bx + p01 >= 65) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 39)) or
((((x + bx + p01 >= 65) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 40)) or
((((x + bx + p01 >= 65) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 91))) and (y + by = 41)) or
((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 90))) and (y + by = 42)) or
((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 80)) or ((x + bx + p01 >= 87) and (x + bx + p01 <= 90))) and (y + by = 43)) or
((((x + bx + p01 >= 66) and (x + bx + p01 <= 69)) or ((x + bx + p01 >= 77) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 86) and (x + bx + p01 <= 89))) and (y + by = 44)) or
((((x + bx + p01 >= 68) and (x + bx + p01 <= 71)) or ((x + bx + p01 >= 76) and (x + bx + p01 <= 81)) or ((x + bx + p01 >= 86) and (x + bx + p01 <= 89))) and (y + by = 45)) or
((((x + bx + p01 >= 69) and (x + bx + p01 <= 76)) or (x + bx + p01 = 78) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 87))) and (y + by = 46)) or
((((x + bx + p01 >= 71) and (x + bx + p01 <= 76)) or (x + bx + p01 = 78) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 87))) and (y + by = 47)) or

	((x + bx + p01 >= 74) and (x + bx + p01 <= 83) and (y + by = 48)) or
	((x + bx + p01 >= 77) and (x + bx + p01 <= 79) and (y + by = 49)) or
	((((x + bx + p01 >= 71) and (x + bx + p01 <= 72)) or ((x + bx + p01 >= 85) and (x + bx + p01 <= 85))) and (y + by = 50)) or
	((((x + bx + p01 >= 72) and (x + bx + p01 <= 75)) or ((x + bx + p01 >= 81) and (x + bx + p01 <= 85))) and (y + by = 51)) or
	((x + bx + p01 >= 73) and (x + bx + p01 <= 84) and (y + by = 52)) or
	((x + bx + p01 >= 74) and (x + bx + p01 <= 83) and (y + by = 53)) or
	((x + bx + p01 >= 75) and (x + bx + p01 <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx + p01 >= 66 and x+bx + p01 <= 67) or (x +bx + p01 >= 89 and x+bx + p01 <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx + p01 >= 68 and x+bx + p01 <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx + p01 >= 77 and x+bx + p01 <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx + p01 >= 68) and (x + bx + p01 <= 76)) or ((x + bx + p01 >= 82) and (x + bx + p01 <= 89))) and (y + by = 81)) or
	((((x + bx + p01 >= 68) and (x + bx + p01 <= 76)) or ((x + bx + p01 >= 82) and (x + bx + p01 <= 89))) and (y + by = 82)) or
	((((x + bx + p01 >= 68) and (x + bx + p01 <= 78)) or ((x + bx + p01 >= 80) and (x + bx + p01 <= 89))) and (y + by = 83)) or
	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 84)) or
	((x + bx + p01 >= 68) and (x + bx + p01 <= 89) and (y + by = 85)) or
	((x + bx + p01 >= 69) and (x + bx + p01 <= 88) and (y + by = 86)) or
	((x + bx + p01 >= 70) and (x + bx + p01 <= 88) and (y + by = 87)) or
	((x + bx + p01 >= 72) and (x + bx + p01 <= 86) and (y + by = 88)) or
	((x + bx + p01 >= 74) and (x + bx + p01 <= 84) and (y + by = 89)) or
	((x + bx + p01 >= 75) and (x + bx + p01 <= 82) and (y + by = 90)) or
	((x + bx + p01 >= 77) and (x + bx + p01 <= 80) and (y + by = 91)) or
	((x + bx + p01 >= 78) and (x + bx + p01 <= 78) and (y + by = 92)) or
		--gauche metwiya
	((x +bx + p01 >= 89 and x+bx + p01 <= 89) and (y+by = 57)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 89) and (y+by = 58)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 90) and (y+by = 59)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 91) and (y+by = 60)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 92) and (y+by = 61)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 93) and (y+by = 62)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 94) and (y+by = 63)) or
	((x +bx + p01 >= 93 and x+bx + p01 <= 95) and (y+by = 64)) or
	((x +bx + p01 >= 94 and x+bx + p01 <= 96) and (y+by = 65 ))or
	((x +bx + p01 >= 95 and x+bx + p01 <= 97) and (y+by = 66 ))or
	((x +bx + p01 >= 96 and x+bx + p01 <= 98) and (y+by = 67)) or
	((x +bx + p01 >= 97 and x+bx + p01 <= 99) and (y+by = 68)) or
	((x +bx + p01 >= 98 and x+bx + p01 <= 100) and (y+by = 69)) or
	((x +bx + p01 >= 97 and x+bx + p01 <= 101) and (y+by = 70)) or
	((x +bx + p01 >= 96 and x+bx + p01 <= 101) and (y+by = 71)) or
	((x +bx + p01 >= 94 and x+bx + p01 <= 100) and (y+by = 72)) or
	((x +bx + p01 >= 93 and x+bx + p01 <= 99) and (y+by = 73)) or
	((x +bx + p01 >= 92 and x+bx + p01 <= 98) and (y+by = 74)) or
	((x +bx + p01 >= 91 and x+bx + p01 <= 97) and (y+by = 75)) or
	((x +bx + p01 >= 90 and x+bx + p01 <= 95) and (y+by = 76)) or
	((x +bx + p01 >= 90 and x+bx + p01 <= 94 ) and (y+by = 77)) or
	((x +bx + p01 >= 90 and x+bx + p01 <= 93 ) and (y+by = 78)) or
	((x +bx + p01 >= 91 and x+bx + p01 <= 93 ) and (y+by = 79)) or
	((x +bx + p01 >= 91 and x+bx + p01 <= 94 ) and (y+by = 80)) or
	((x +bx + p01 >= 92 and x+bx + p01 <= 95 ) and (y+by = 81)) or
	((x +bx + p01 >= 93 and x+bx + p01 <= 95 ) and (y+by = 82)) or
	((x +bx + p01 >= 93 and x+bx + p01 <= 96 ) and (y+by = 83)) or
	((x +bx + p01 >= 94 and x+bx + p01 <= 96 ) and (y+by = 84)) or
		--droite tal3a
		((x +bx + p01 >= 43 and x+bx + p01 <= 47) and (y+by = 43)) or
	((x +bx + p01 >= 43 and x+bx + p01 <= 48) and (y+by = 44)) or
	((x +bx + p01 >= 44 and x+bx + p01 <= 49) and (y+by = 45)) or
	((x +bx + p01 >= 46 and x+bx + p01 <= 51) and (y+by = 46)) or
	((x +bx + p01 >= 47 and x+bx + p01 <= 52) and (y+by = 47)) or
	((x +bx + p01 >= 48 and x+bx + p01 <= 54) and (y+by = 48)) or
	((x +bx + p01 >= 49 and x+bx + p01 <= 55) and (y+by = 49)) or
	((x +bx + p01 >= 49 and x+bx + p01 <= 56) and (y+by = 50)) or
	((x +bx + p01 >= 50 and x+bx + p01 <= 58) and (y+by = 51 ))or
	((x +bx + p01 >= 51 and x+bx + p01 <= 59) and (y+by = 52 ))or
	((x +bx + p01 >= 53 and x+bx + p01 <= 61) and (y+by = 53)) or
	((x +bx + p01 >= 53 and x+bx + p01 <= 62) and (y+by = 54)) or
	((x +bx + p01 >= 54 and x+bx + p01 <= 63) and (y+by = 55)) or
	((x +bx + p01 >= 55 and x+bx + p01 <= 68) and (y+by = 56)) or
	((x +bx + p01 >= 57 and x+bx + p01 <= 68) and (y+by = 57))or
	((x +bx + p01 >= 58 and x+bx + p01 <= 68) and (y+by = 58)) or
	((x +bx + p01 >= 60 and x+bx + p01 <= 68) and (y+by = 59)) or
	((x +bx + p01 >= 61 and x+bx + p01 <= 67) and (y+by = 60)) or
	((x +bx + p01 >= 62 and x+bx + p01 <= 66) and (y+by = 61)) or
	((x +bx + p01 >= 64 and x+bx + p01 <= 66) and (y+by = 62)) or
	((x +bx + p01 >= 65 and x+bx + p01 <= 66 ) and (y+by = 63)) or
--pied
	---droite leldakhel
	((x +bx + p01 >= 71 and x+bx + p01 <= 6) and (y+by = 92)) or
	((x +bx + p01 >= 71 and x+bx + p01 <=77) and (y+by = 93)) or
	((x +bx + p01 >= 71 and x+bx + p01 <= 77) and (y+by = 94)) or
	((x +bx + p01 >= 72 and x+bx + p01 <= 77) and (y+by = 95)) or
	((x +bx + p01 >= 72 and x+bx + p01 <= 77) and (y+by = 96)) or
	((x +bx + p01 >= 72 and x+bx + p01 <= 77) and (y+by = 97)) or
	((x +bx + p01 >= 73 and x+bx + p01 <= 77) and (y+by = 98)) or
	((x +bx + p01 >= 73 and x+bx + p01 <= 77) and (y+by = 99)) or
	((x +bx + p01 >= 74 and x+bx + p01 <= 77) and (y+by = 100)) or
	((x +bx + p01 >= 74 and x+bx + p01 <= 77) and (y+by = 101)) or
	((x +bx + p01 >= 74 and x+bx + p01 <= 77) and (y+by = 102)) or
	((x +bx + p01 >= 74 and x+bx + p01 <= 77) and (y+by = 103)) or
	((x +bx + p01 >= 73 and x+bx + p01 <= 77) and (y+by = 104)) or
	((x +bx + p01 >= 73 and x+bx + p01 <= 77) and (y+by = 105)) or
	((x +bx + p01 >= 72 and x+bx + p01 <= 76) and (y+by = 106)) or
	((x +bx + p01 >= 71 and x+bx + p01 <= 75) and (y+by = 107)) or
	((x +bx + p01 >= 70 and x+bx + p01 <= 75) and (y+by = 108)) or
	((x +bx + p01 >= 70 and x+bx + p01 <= 74) and (y+by = 109)) or
	((x +bx + p01 >= 69 and x+bx + p01 <= 73) and (y+by = 110)) or
	((x +bx + p01 >= 68 and x+bx + p01 <= 72) and (y+by = 111)) or
	((x +bx + p01 >= 67 and x+bx + p01 <= 71) and (y+by = 112)) or
	((x +bx + p01 >= 67 and x+bx + p01 <= 70) and (y+by = 113)) or
	((x +bx + p01 >= 66 and x+bx + p01 <= 69) and (y+by = 114)) or
	((x +bx + p01 >= 66 and x+bx + p01 <= 70) and (y+by = 115)) or
	((x +bx + p01 >= 66 and x+bx + p01 <= 74) and (y+by = 116)) or
	((x +bx + p01 >= 67 and x+bx + p01 <= 76) and (y+by = 117)) or
	((x +bx + p01 >= 69 and x+bx + p01 <= 76) and (y+by = 118)) or
	((x +bx + p01 >= 69 and x+bx + p01 <= 76) and (y+by = 118)) or

	----gauche mkesla
	((x +bx + p01 >= 83 and x+bx + p01 <= 87) and (y+by = 92)) or
	((x +bx + p01 >= 83 and x+bx + p01 <= 87) and (y+by = 93)) or
	((x +bx + p01 >= 83 and x+bx + p01 <= 87) and (y+by = 94)) or
	((x +bx + p01 >= 84 and x+bx + p01 <= 87) and (y+by = 95)) or
	((x +bx + p01 >= 84 and x+bx + p01 <= 87) and (y+by = 96)) or
	((x +bx + p01 >= 85 and x+bx + p01 <= 87) and (y+by = 97)) or
	((x +bx + p01 >= 85 and x+bx + p01 <= 88) and (y+by = 98)) or
	((x +bx + p01 >= 85 and x+bx + p01 <= 89) and (y+by = 99)) or
	((x +bx + p01 >= 86 and x+bx + p01 <= 89) and (y+by = 100))or
	((x +bx + p01 >= 86 and x+bx + p01 <= 89) and (y+by = 101)) or
	((x +bx + p01 >= 87 and x+bx + p01 <= 90) and (y+by = 102)) or
	((x +bx + p01 >= 87 and x+bx + p01 <= 90) and (y+by = 103)) or
	((x +bx + p01 >= 87 and x+bx + p01 <= 91) and (y+by = 104)) or
	((x +bx + p01 >= 88 and x+bx + p01 <= 91) and (y+by = 105)) or
	((x +bx + p01 >= 88 and x+bx + p01 <= 91) and (y+by = 106)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 92) and (y+by = 107)) or
	((x +bx + p01 >= 89 and x+bx + p01 <= 92) and (y+by = 108)) or
	((x +bx + p01 >= 90 and x+bx + p01 <= 93) and (y+by = 109)) or
	((x +bx + p01 >= 91 and x+bx + p01 <= 94) and (y+by = 110)) or
	((x +bx + p01 >= 91 and x+bx + p01 <= 95) and (y+by = 111)) or
	((x +bx + p01 >= 92 and x+bx + p01 <= 95) and (y+by = 112)) or
	((x +bx + p01 >= 92 and x+bx + p01 <= 96) and (y+by = 113)) or
	((x +bx + p01 >= 93 and x+bx + p01 <= 97) and (y+by = 114)) or
	((x +bx + p01 >= 94 and x+bx + p01 <= 97) and (y+by = 115)) or
	((x +bx + p01 >= 94 and x+bx + p01 <= 104) and (y +by >= 115 and y+by <= 119))

	) and (counter="01101"))

	

		
		or 	(
	--**********************************************************************11*******************************************************************
		(((x + bx   >= 75) and (x + bx   <= 82) and (y + by = 29)) or
	((x + bx   >= 72) and (x + bx   <= 85) and (y + by = 30)) or
	((x + bx   >= 70) and (x + bx   <= 87) and (y + by = 31)) or
	((x + bx   >= 70) and (x + bx   <= 89) and (y + by = 32)) or
	((x + bx   >= 68) and (x + bx   <= 89) and (y + by = 33)) or
	((x + bx   >= 68) and (x + bx   <= 90) and (y + by = 34)) or
	((x + bx   >= 66) and (x + bx   <= 90) and (y + by = 35)) or
	((x + bx   >= 66) and (x + bx   <= 90) and (y + by = 36)) or
	((x + bx   >= 66) and (x + bx   <= 91) and (y + by = 37)) or
	
((((x + bx   >= 65) and (x + bx   <= 71)) or ((x + bx   >= 76) and (x + bx   <= 81)) or ((x + bx   >= 87) and (x + bx   <= 91))) and (y + by = 38)) or
((((x + bx   >= 65) and (x + bx   <= 71)) or ((x + bx   >= 76) and (x + bx   <= 81)) or ((x + bx   >= 87) and (x + bx   <= 91))) and (y + by = 39)) or
((((x + bx   >= 65) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 81)) or ((x + bx   >= 87) and (x + bx   <= 91))) and (y + by = 40)) or
((((x + bx   >= 65) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 80)) or ((x + bx   >= 87) and (x + bx   <= 91))) and (y + by = 41)) or
((((x + bx   >= 66) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 80)) or ((x + bx   >= 87) and (x + bx   <= 90))) and (y + by = 42)) or
((((x + bx   >= 66) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 80)) or ((x + bx   >= 87) and (x + bx   <= 90))) and (y + by = 43)) or
((((x + bx   >= 66) and (x + bx   <= 69)) or ((x + bx   >= 77) and (x + bx   <= 81)) or ((x + bx   >= 86) and (x + bx   <= 89))) and (y + by = 44)) or
((((x + bx   >= 68) and (x + bx   <= 71)) or ((x + bx   >= 76) and (x + bx   <= 81)) or ((x + bx   >= 86) and (x + bx   <= 89))) and (y + by = 45)) or
((((x + bx   >= 69) and (x + bx   <= 76)) or (x + bx   = 78) or ((x + bx   >= 80) and (x + bx   <= 87))) and (y + by = 46)) or
((((x + bx   >= 71) and (x + bx   <= 76)) or (x + bx   = 78) or ((x + bx   >= 80) and (x + bx   <= 87))) and (y + by = 47)) or

	((x + bx   >= 74) and (x + bx   <= 83) and (y + by = 48)) or
	((x + bx   >= 77) and (x + bx   <= 79) and (y + by = 49)) or
	((((x + bx   >= 71) and (x + bx   <= 72)) or ((x + bx   >= 85) and (x + bx   <= 85))) and (y + by = 50)) or
	((((x + bx   >= 72) and (x + bx   <= 75)) or ((x + bx   >= 81) and (x + bx   <= 85))) and (y + by = 51)) or
	((x + bx   >= 73) and (x + bx   <= 84) and (y + by = 52)) or
	((x + bx   >= 74) and (x + bx   <= 83) and (y + by = 53)) or
	((x + bx   >= 75) and (x + bx   <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx   >= 66 and x+bx   <= 67) or (x +bx   >= 89 and x+bx   <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx   >= 68 and x+bx   <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx   >= 77 and x+bx   <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx   >= 68) and (x + bx   <= 76)) or ((x + bx   >= 82) and (x + bx   <= 89))) and (y + by = 81)) or
	((((x + bx   >= 68) and (x + bx   <= 76)) or ((x + bx   >= 82) and (x + bx   <= 89))) and (y + by = 82)) or
	((((x + bx   >= 68) and (x + bx   <= 78)) or ((x + bx   >= 80) and (x + bx   <= 89))) and (y + by = 83)) or
	((x + bx   >= 68) and (x + bx   <= 89) and (y + by = 84)) or
	((x + bx   >= 68) and (x + bx   <= 89) and (y + by = 85)) or
	((x + bx   >= 69) and (x + bx   <= 88) and (y + by = 86)) or
	((x + bx   >= 70) and (x + bx   <= 88) and (y + by = 87)) or
	((x + bx   >= 72) and (x + bx   <= 86) and (y + by = 88)) or
	((x + bx   >= 74) and (x + bx   <= 84) and (y + by = 89)) or
	((x + bx   >= 75) and (x + bx   <= 82) and (y + by = 90)) or
	((x + bx   >= 77) and (x + bx   <= 80) and (y + by = 91)) or
	((x + bx   >= 78) and (x + bx   <= 78) and (y + by = 92)) or
		--gauche metwiya
	((x +bx   >= 89 and x+bx   <= 89) and (y+by = 57)) or
	((x +bx   >= 89 and x+bx   <= 89) and (y+by = 58)) or
	((x +bx   >= 89 and x+bx   <= 90) and (y+by = 59)) or
	((x +bx   >= 89 and x+bx   <= 91) and (y+by = 60)) or
	((x +bx   >= 89 and x+bx   <= 92) and (y+by = 61)) or
	((x +bx   >= 89 and x+bx   <= 93) and (y+by = 62)) or
	((x +bx   >= 89 and x+bx   <= 94) and (y+by = 63)) or
	((x +bx   >= 93 and x+bx   <= 95) and (y+by = 64)) or
	((x +bx   >= 94 and x+bx   <= 96) and (y+by = 65 ))or
	((x +bx   >= 95 and x+bx   <= 97) and (y+by = 66 ))or
	((x +bx   >= 96 and x+bx   <= 98) and (y+by = 67)) or
	((x +bx   >= 97 and x+bx   <= 99) and (y+by = 68)) or
	((x +bx   >= 98 and x+bx   <= 100) and (y+by = 69)) or
	((x +bx   >= 97 and x+bx   <= 101) and (y+by = 70)) or
	((x +bx   >= 96 and x+bx   <= 101) and (y+by = 71)) or
	((x +bx   >= 94 and x+bx   <= 100) and (y+by = 72)) or
	((x +bx   >= 93 and x+bx   <= 99) and (y+by = 73)) or
	((x +bx   >= 92 and x+bx   <= 98) and (y+by = 74)) or
	((x +bx   >= 91 and x+bx   <= 97) and (y+by = 75)) or
	((x +bx   >= 90 and x+bx   <= 95) and (y+by = 76)) or
	((x +bx   >= 90 and x+bx   <= 94 ) and (y+by = 77)) or
	((x +bx   >= 90 and x+bx   <= 93 ) and (y+by = 78)) or
	((x +bx   >= 91 and x+bx   <= 93 ) and (y+by = 79)) or
	((x +bx   >= 91 and x+bx   <= 94 ) and (y+by = 80)) or
	((x +bx   >= 92 and x+bx   <= 95 ) and (y+by = 81)) or
	((x +bx   >= 93 and x+bx   <= 95 ) and (y+by = 82)) or
	((x +bx   >= 93 and x+bx   <= 96 ) and (y+by = 83)) or
	((x +bx   >= 94 and x+bx   <= 96 ) and (y+by = 84)) or
		--droite tal3a
		((x +bx   >= 43 and x+bx   <= 47) and (y+by = 43)) or
	((x +bx   >= 43 and x+bx   <= 48) and (y+by = 44)) or
	((x +bx   >= 44 and x+bx   <= 49) and (y+by = 45)) or
	((x +bx   >= 46 and x+bx   <= 51) and (y+by = 46)) or
	((x +bx   >= 47 and x+bx   <= 52) and (y+by = 47)) or
	((x +bx   >= 48 and x+bx   <= 54) and (y+by = 48)) or
	((x +bx   >= 49 and x+bx   <= 55) and (y+by = 49)) or
	((x +bx   >= 49 and x+bx   <= 56) and (y+by = 50)) or
	((x +bx   >= 50 and x+bx   <= 58) and (y+by = 51 ))or
	((x +bx   >= 51 and x+bx   <= 59) and (y+by = 52 ))or
	((x +bx   >= 53 and x+bx   <= 61) and (y+by = 53)) or
	((x +bx   >= 53 and x+bx   <= 62) and (y+by = 54)) or
	((x +bx   >= 54 and x+bx   <= 63) and (y+by = 55)) or
	((x +bx   >= 55 and x+bx   <= 68) and (y+by = 56)) or
	((x +bx   >= 57 and x+bx   <= 68) and (y+by = 57))or
	((x +bx   >= 58 and x+bx   <= 68) and (y+by = 58)) or
	((x +bx   >= 60 and x+bx   <= 68) and (y+by = 59)) or
	((x +bx   >= 61 and x+bx   <= 67) and (y+by = 60)) or
	((x +bx   >= 62 and x+bx   <= 66) and (y+by = 61)) or
	((x +bx   >= 64 and x+bx   <= 66) and (y+by = 62)) or
	((x +bx   >= 65 and x+bx   <= 66 ) and (y+by = 63)) or
--pied
	---droite leldakhel
	((x +bx   >= 71 and x+bx   <= 6) and (y+by = 92)) or
	((x +bx   >= 71 and x+bx   <=77) and (y+by = 93)) or
	((x +bx   >= 71 and x+bx   <= 77) and (y+by = 94)) or
	((x +bx   >= 72 and x+bx   <= 77) and (y+by = 95)) or
	((x +bx   >= 72 and x+bx   <= 77) and (y+by = 96)) or
	((x +bx   >= 72 and x+bx   <= 77) and (y+by = 97)) or
	((x +bx   >= 73 and x+bx   <= 77) and (y+by = 98)) or
	((x +bx   >= 73 and x+bx   <= 77) and (y+by = 99)) or
	((x +bx   >= 74 and x+bx   <= 77) and (y+by = 100)) or
	((x +bx   >= 74 and x+bx   <= 77) and (y+by = 101)) or
	((x +bx   >= 74 and x+bx   <= 77) and (y+by = 102)) or
	((x +bx   >= 74 and x+bx   <= 77) and (y+by = 103)) or
	((x +bx   >= 73 and x+bx   <= 77) and (y+by = 104)) or
	((x +bx   >= 73 and x+bx   <= 77) and (y+by = 105)) or
	((x +bx   >= 72 and x+bx   <= 76) and (y+by = 106)) or
	((x +bx   >= 71 and x+bx   <= 75) and (y+by = 107)) or
	((x +bx   >= 70 and x+bx   <= 75) and (y+by = 108)) or
	((x +bx   >= 70 and x+bx   <= 74) and (y+by = 109)) or
	((x +bx   >= 69 and x+bx   <= 73) and (y+by = 110)) or
	((x +bx   >= 68 and x+bx   <= 72) and (y+by = 111)) or
	((x +bx   >= 67 and x+bx   <= 71) and (y+by = 112)) or
	((x +bx   >= 67 and x+bx   <= 70) and (y+by = 113)) or
	((x +bx   >= 66 and x+bx   <= 69) and (y+by = 114)) or
	((x +bx   >= 66 and x+bx   <= 70) and (y+by = 115)) or
	((x +bx   >= 66 and x+bx   <= 74) and (y+by = 116)) or
	((x +bx   >= 67 and x+bx   <= 76) and (y+by = 117)) or
	((x +bx   >= 69 and x+bx   <= 76) and (y+by = 118)) or
	((x +bx   >= 69 and x+bx   <= 76) and (y+by = 118)) or

	----gauche mkesla
	((x +bx   >= 83 and x+bx   <= 87) and (y+by = 92)) or
	((x +bx   >= 83 and x+bx   <= 87) and (y+by = 93)) or
	((x +bx   >= 83 and x+bx   <= 87) and (y+by = 94)) or
	((x +bx   >= 84 and x+bx   <= 87) and (y+by = 95)) or
	((x +bx   >= 84 and x+bx   <= 87) and (y+by = 96)) or
	((x +bx   >= 85 and x+bx   <= 87) and (y+by = 97)) or
	((x +bx   >= 85 and x+bx   <= 88) and (y+by = 98)) or
	((x +bx   >= 85 and x+bx   <= 89) and (y+by = 99)) or
	((x +bx   >= 86 and x+bx   <= 89) and (y+by = 100))or
	((x +bx   >= 86 and x+bx   <= 89) and (y+by = 101)) or
	((x +bx   >= 87 and x+bx   <= 90) and (y+by = 102)) or
	((x +bx   >= 87 and x+bx   <= 90) and (y+by = 103)) or
	((x +bx   >= 87 and x+bx   <= 91) and (y+by = 104)) or
	((x +bx   >= 88 and x+bx   <= 91) and (y+by = 105)) or
	((x +bx   >= 88 and x+bx   <= 91) and (y+by = 106)) or
	((x +bx   >= 89 and x+bx   <= 92) and (y+by = 107)) or
	((x +bx   >= 89 and x+bx   <= 92) and (y+by = 108)) or
	((x +bx   >= 90 and x+bx   <= 93) and (y+by = 109)) or
	((x +bx   >= 91 and x+bx   <= 94) and (y+by = 110)) or
	((x +bx   >= 91 and x+bx   <= 95) and (y+by = 111)) or
	((x +bx   >= 92 and x+bx   <= 95) and (y+by = 112)) or
	((x +bx   >= 92 and x+bx   <= 96) and (y+by = 113)) or
	((x +bx   >= 93 and x+bx   <= 97) and (y+by = 114)) or
	((x +bx   >= 94 and x+bx   <= 97) and (y+by = 115)) or
	((x +bx   >= 94 and x+bx   <= 104) and (y +by >= 115 and y+by <= 119))

	) and (counter="01110"))

	

	or

	((((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or

	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or

	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or

	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or

	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or

	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or

	

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or

((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or

((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or

((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or



	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or

	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or

	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or

	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or

	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or

	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or

	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or

	-----------------dbut 9afas

	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or

	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or

	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or

	-----------------7awd

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or

	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or

	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or

	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or

	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or

	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or

	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or

	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or

	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or

	------------------Mains normal

	

	((y +by >= 60 and y+by <= 64) and (x+bx = 67)) or

	((y +by >= 60 and y+by <= 64) and (x+bx = 66)) or

	((y +by >= 60 and y+by <= 66) and (x+bx = 65 )) or

	((y +by >= 61 and y+by <= 67) and (x+bx = 64 )) or

	((y +by >= 63 and y+by <= 69) and (x+bx = 63 )) or

	((y +by >= 65 and y+by <= 83) and (x+bx = 62 )) or

	((y +by >= 66 and y+by <= 83) and (x+bx = 61 )) or

	((y +by >= 68 and y+by <= 84) and (x+bx = 60 )) or

	((y +by >= 83 and y+by <= 88) and (x+bx = 59 )) or

	((y +by >= 83 and y+by <= 88) and (x+bx = 58 )) or

	--gauche tal3a
	((x +bx >= 107 and x+bx <= 111) and (y+by = 43)) or
	((x +bx >= 107 and x+bx <= 111) and (y+by = 44)) or
	((x +bx >= 106 and x+bx <= 110) and (y+by = 45)) or
	((x +bx >= 105 and x+bx <= 109) and (y+by = 46)) or
	((x +bx >= 104 and x+bx <= 108) and (y+by = 47)) or
	((x +bx >= 103 and x+bx <= 107) and (y+by = 48)) or
	((x +bx >= 102 and x+bx <= 105) and (y+by = 49)) or
	((x +bx >= 102 and x+bx <= 105) and (y+by = 50)) or
	((x +bx >= 101 and x+bx <= 104) and (y+by = 51 ))or
	((x +bx >= 100 and x+bx <= 103) and (y+by = 52 ))or
	((x +bx >= 98 and x+bx <= 102) and (y+by = 53)) or
	((x +bx >= 98 and x+bx <= 101) and (y+by = 54)) or
	((x +bx >= 97 and x+bx <= 100) and (y+by = 55)) or
	((x +bx >= 96 and x+bx <= 99) and (y+by = 56)) or
	((x +bx >= 95 and x+bx <= 98) and (y+by = 57))or
	((x +bx >= 94 and x+bx <= 98) and (y+by = 58)) or
	((x +bx >= 92 and x+bx <= 97) and (y+by = 59)) or
	((x +bx >= 91 and x+bx <= 96) and (y+by = 60)) or
	((x +bx >= 90 and x+bx <= 95) and (y+by = 61)) or
	((x +bx >= 89 and x+bx <= 94) and (y+by = 62)) or
	((x +bx >= 87 and x+bx <= 93) and (y+by = 63)) or

	

	------------------pieds normal

	((y +by >= 92 and y+by <= 118) and ((x+bx >= 72 and x+bx <= 74) or (x+bx >= 83 and x+bx <= 85))) or

	((y +by >= 116 and y+by <= 118) and ((x+bx >= 86 and x+bx <= 90) or (x+bx >= 67 and x+bx <= 71))) 



	) and (counter="01111"))

	

	or

	

	((((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or

	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or

	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or

	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or

	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or

	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or

	

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or

((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or

((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or

((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or



	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or

	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or

	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or

	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or

	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or

	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or

	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or

	-----------------dbut 9afas

	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or

	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or

	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or

	-----------------7awd

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or

	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or

	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or

	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or

	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or

	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or

	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or

	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or

	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or

	------------------Mains gauche normal

	

	((y +by >= 60 and y+by <= 64) and (x +bx= 90)) or

	((y +by >= 60 and y+by <= 64) and (x+bx = 91)) or

	((y +by >= 60 and y+by <= 66) and ( x+bx = 92)) or

	((y +by >= 61 and y+by <= 67) and (x+bx = 93)) or

	((y +by >= 63 and y+by <= 69) and ( x+bx = 94)) or

	((y +by >= 65 and y+by <= 83) and (x+bx = 95)) or

	((y +by >= 66 and y+by <= 83) and (x+bx= 96)) or

	((y +by >= 68 and y+by <= 84) and (x+bx = 97)) or

	((y +by >= 83 and y+by <= 88) and ( x+bx = 98)) or

	((y +by >= 83 and y+by <= 88) and ( x+bx = 99)) or

	

		--droite tal3a
		((x +bx >= 43 and x+bx <= 47) and (y+by = 43)) or
	((x +bx >= 43 and x+bx <= 48) and (y+by = 44)) or
	((x +bx >= 44 and x+bx <= 49) and (y+by = 45)) or
	((x +bx >= 46 and x+bx <= 51) and (y+by = 46)) or
	((x +bx >= 47 and x+bx <= 52) and (y+by = 47)) or
	((x +bx >= 48 and x+bx <= 54) and (y+by = 48)) or
	((x +bx >= 49 and x+bx <= 55) and (y+by = 49)) or
	((x +bx >= 49 and x+bx <= 56) and (y+by = 50)) or
	((x +bx >= 50 and x+bx <= 58) and (y+by = 51 ))or
	((x +bx >= 51 and x+bx <= 59) and (y+by = 52 ))or
	((x +bx >= 53 and x+bx <= 61) and (y+by = 53)) or
	((x +bx >= 53 and x+bx <= 62) and (y+by = 54)) or
	((x +bx >= 54 and x+bx <= 63) and (y+by = 55)) or
	((x +bx >= 55 and x+bx <= 68) and (y+by = 56)) or
	((x +bx >= 57 and x+bx <= 68) and (y+by = 57))or
	((x +bx >= 58 and x+bx <= 68) and (y+by = 58)) or
	((x +bx >= 60 and x+bx <= 68) and (y+by = 59)) or
	((x +bx >= 61 and x+bx <= 67) and (y+by = 60)) or
	((x +bx >= 62 and x+bx <= 66) and (y+by = 61)) or
	((x +bx >= 64 and x+bx <= 66) and (y+by = 62)) or
	((x +bx >= 65 and x+bx <= 66 ) and (y+by = 63)) or

	------------------pieds normal

	((y +by >= 92 and y+by <= 118) and ((x+bx >= 72 and x+bx <= 74) or (x+bx >= 83 and x+bx <= 85))) or

	((y +by >= 116 and y+by <= 118) and ((x+bx >= 86 and x+bx <= 90) or (x+bx >= 67 and x+bx <= 71))) 



	) and (counter="10001"))

	

	or(

	(((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or

	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or

	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or

	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or

	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or

	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or

	

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or

((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or

((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or

((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or



	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or

	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or

	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or

	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or

	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or

	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or

	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or

	-----------------dbut 9afas

	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or

	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or

	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or

	-----------------7awd

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or

	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or

	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or

	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or

	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or

	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or

	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or

	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or

	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or

	------------------Mains normal

	

		--droite tal3a
		((x +bx >= 43 and x+bx <= 47) and (y+by = 43)) or
	((x +bx >= 43 and x+bx <= 48) and (y+by = 44)) or
	((x +bx >= 44 and x+bx <= 49) and (y+by = 45)) or
	((x +bx >= 46 and x+bx <= 51) and (y+by = 46)) or
	((x +bx >= 47 and x+bx <= 52) and (y+by = 47)) or
	((x +bx >= 48 and x+bx <= 54) and (y+by = 48)) or
	((x +bx >= 49 and x+bx <= 55) and (y+by = 49)) or
	((x +bx >= 49 and x+bx <= 56) and (y+by = 50)) or
	((x +bx >= 50 and x+bx <= 58) and (y+by = 51 ))or
	((x +bx >= 51 and x+bx <= 59) and (y+by = 52 ))or
	((x +bx >= 53 and x+bx <= 61) and (y+by = 53)) or
	((x +bx >= 53 and x+bx <= 62) and (y+by = 54)) or
	((x +bx >= 54 and x+bx <= 63) and (y+by = 55)) or
	((x +bx >= 55 and x+bx <= 68) and (y+by = 56)) or
	((x +bx >= 57 and x+bx <= 68) and (y+by = 57))or
	((x +bx >= 58 and x+bx <= 68) and (y+by = 58)) or
	((x +bx >= 60 and x+bx <= 68) and (y+by = 59)) or
	((x +bx >= 61 and x+bx <= 67) and (y+by = 60)) or
	((x +bx >= 62 and x+bx <= 66) and (y+by = 61)) or
	((x +bx >= 64 and x+bx <= 66) and (y+by = 62)) or
	((x +bx >= 65 and x+bx <= 66 ) and (y+by = 63)) or

	--gauche tal3a
	((x +bx >= 107 and x+bx <= 111) and (y+by = 43)) or
	((x +bx >= 107 and x+bx <= 111) and (y+by = 44)) or
	((x +bx >= 106 and x+bx <= 110) and (y+by = 45)) or
	((x +bx >= 105 and x+bx <= 109) and (y+by = 46)) or
	((x +bx >= 104 and x+bx <= 108) and (y+by = 47)) or
	((x +bx >= 103 and x+bx <= 107) and (y+by = 48)) or
	((x +bx >= 102 and x+bx <= 105) and (y+by = 49)) or
	((x +bx >= 102 and x+bx <= 105) and (y+by = 50)) or
	((x +bx >= 101 and x+bx <= 104) and (y+by = 51 ))or
	((x +bx >= 100 and x+bx <= 103) and (y+by = 52 ))or
	((x +bx >= 98 and x+bx <= 102) and (y+by = 53)) or
	((x +bx >= 98 and x+bx <= 101) and (y+by = 54)) or
	((x +bx >= 97 and x+bx <= 100) and (y+by = 55)) or
	((x +bx >= 96 and x+bx <= 99) and (y+by = 56)) or
	((x +bx >= 95 and x+bx <= 98) and (y+by = 57))or
	((x +bx >= 94 and x+bx <= 98) and (y+by = 58)) or
	((x +bx >= 92 and x+bx <= 97) and (y+by = 59)) or
	((x +bx >= 91 and x+bx <= 96) and (y+by = 60)) or
	((x +bx >= 90 and x+bx <= 95) and (y+by = 61)) or
	((x +bx >= 89 and x+bx <= 94) and (y+by = 62)) or
	((x +bx >= 87 and x+bx <= 93) and (y+by = 63)) or

	--pieds---droite layer 7
	((x +bx >= 71 and x+bx <= 74) and (y+by = 92)) or
	((x +bx >= 70 and x+bx <=74 )and (y+by = 93)) or
	((x +bx >= 69 and x+bx <= 74) and (y+by = 94)) or
	((x +bx >= 68 and x+bx <= 74) and (y+by = 95)) or
	((x +bx >= 66 and x+bx <= 72) and (y+by = 96)) or
	((x +bx >= 65 and x+bx <= 70) and (y+by = 97)) or
	((x +bx >= 65 and x+bx <= 69) and (y+by = 98)) or
	((x +bx >= 64 and x+bx <= 67) and (y+by = 99)) or
	((x +bx >= 63 and x+bx <= 66) and (y+by = 100)) or
	((x +bx >= 62 and x+bx <= 65) and (y+by = 101)) or
	((x +bx >= 62 and x+bx <= 65) and (y+by = 102)) or
	((x +bx >= 62 and x+bx <= 66) and (y+by = 103)) or
	((x +bx >= 63 and x+bx <= 67) and (y+by = 104)) or
	((x +bx >= 63 and x+bx <= 68) and (y+by = 105)) or
	((x +bx >= 64 and x+bx <= 69) and (y+by = 106)) or
	((x +bx >= 65 and x+bx <= 70) and (y+by = 107)) or
	((x +bx >= 66 and x+bx <= 71) and (y+by = 108)) or
	((x +bx >= 66 and x+bx <= 72) and (y+by = 109)) or
	((x +bx >= 67 and x+bx <= 73) and (y+by = 110)) or
	((x +bx >= 68 and x+bx <= 74) and (y+by = 111)) or
	((x +bx >= 68 and x+bx <= 75) and (y+by = 112)) or
	((x +bx >= 69 and x+bx <= 75) and (y+by = 113)) or
	((x +bx >= 70 and x+bx <= 75) and (y+by = 114)) or

	----gauche leldakhel
		----gauche leldakhel
	((x +bx >= 80 and x+bx <= 87) and (y+by = 92)) or
	((x +bx >= 80 and x+bx <= 87) and (y+by = 93)) or
	((x +bx >= 80 and x+bx <= 86) and (y+by = 94)) or
	((x +bx >= 80 and x+bx <= 86) and (y+by = 95)) or
	((x +bx >= 80 and x+bx <= 85) and (y+by = 96)) or
	((x +bx >= 80 and x+bx <= 85) and (y+by = 97)) or
	((x +bx >= 80 and x+bx <= 84) and (y+by = 98)) or
	((x +bx >= 80 and x+bx <= 84) and (y+by = 99)) or
	((x +bx >= 80 and x+bx <= 83) and (y+by = 100))or
	((x +bx >= 80 and x+bx <= 83) and (y+by = 101)) or
	((x +bx >= 80 and x+bx <= 83) and (y+by = 102)) or
	((x +bx >= 80 and x+bx <= 83) and (y+by = 103)) or
	((x +bx >= 80 and x+bx <= 83) and (y+by = 104)) or
	((x +bx >= 81 and x+bx <= 84) and (y+by = 105)) or
	((x +bx >= 81 and x+bx <= 84) and (y+by = 106)) or
	((x +bx >= 82 and x+bx <= 85) and (y+by = 107)) or
	((x +bx >= 83 and x+bx <= 86) and (y+by = 108)) or
	((x +bx >= 83 and x+bx <= 87) and (y+by = 109)) or
	((x +bx >= 84 and x+bx <= 87) and (y+by = 110)) or
	((x +bx >= 85 and x+bx <= 88) and (y+by = 111)) or
	((x +bx >= 86 and x+bx <= 89) and (y+by = 112)) or
	((x +bx >= 87 and x+bx <= 91) and (y+by = 113)) or
	((x +bx >= 88 and x+bx <= 92) and (y+by = 114)) or
	((x +bx >= 88 and x+bx <= 92) and (y+by = 115)) or
	((x +bx >= 86 and x+bx <= 92) and (y+by = 116)) or
	((x +bx >= 85 and x+bx <= 92) and (y+by = 117)) or
	((x +bx >= 83 and x+bx <= 90) and (y+by = 118)) or

	--((x +bx >= 66 and x+bx <= 70) and (y+by = 115)) or
((x +bx >= 65 and x+bx <= 75) and (y +by >= 115 and y+by <= 119))

	) and (counter="10011"))

	

	or 

	((((x + bx >= 75) and (x + bx <= 82) and (y + by = 29)) or

	((x + bx >= 72) and (x + bx <= 85) and (y + by = 30)) or

	((x + bx >= 70) and (x + bx <= 87) and (y + by = 31)) or

	((x + bx >= 70) and (x + bx <= 89) and (y + by = 32)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 33)) or

	((x + bx >= 68) and (x + bx <= 90) and (y + by = 34)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 35)) or

	((x + bx >= 66) and (x + bx <= 90) and (y + by = 36)) or

	((x + bx >= 66) and (x + bx <= 91) and (y + by = 37)) or

	

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 38)) or

((((x + bx >= 65) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 39)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 40)) or

((((x + bx >= 65) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 91))) and (y + by = 41)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 42)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 80)) or ((x + bx >= 87) and (x + bx <= 90))) and (y + by = 43)) or

((((x + bx >= 66) and (x + bx <= 69)) or ((x + bx >= 77) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 44)) or

((((x + bx >= 68) and (x + bx <= 71)) or ((x + bx >= 76) and (x + bx <= 81)) or ((x + bx >= 86) and (x + bx <= 89))) and (y + by = 45)) or

((((x + bx >= 69) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 46)) or

((((x + bx >= 71) and (x + bx <= 76)) or (x + bx = 78) or ((x + bx >= 80) and (x + bx <= 87))) and (y + by = 47)) or



	((x + bx >= 74) and (x + bx <= 83) and (y + by = 48)) or

	((x + bx >= 77) and (x + bx <= 79) and (y + by = 49)) or

	((((x + bx >= 71) and (x + bx <= 72)) or ((x + bx >= 85) and (x + bx <= 85))) and (y + by = 50)) or

	((((x + bx >= 72) and (x + bx <= 75)) or ((x + bx >= 81) and (x + bx <= 85))) and (y + by = 51)) or

	((x + bx >= 73) and (x + bx <= 84) and (y + by = 52)) or

	((x + bx >= 74) and (x + bx <= 83) and (y + by = 53)) or

	((x + bx >= 75) and (x + bx <= 81) and (y + by = 54)) or

	-----------------dbut 9afas

	(((x +bx >= 66 and x+bx <= 67) or (x +bx >= 89 and x+bx <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or

	(((x +bx >= 68 and x+bx <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or

	((x +bx >= 77 and x+bx <= 79) and  (y +by >= 56 and y+by <= 79)) or

	-----------------7awd

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 81)) or

	((((x + bx >= 68) and (x + bx <= 76)) or ((x + bx >= 82) and (x + bx <= 89))) and (y + by = 82)) or

	((((x + bx >= 68) and (x + bx <= 78)) or ((x + bx >= 80) and (x + bx <= 89))) and (y + by = 83)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 84)) or

	((x + bx >= 68) and (x + bx <= 89) and (y + by = 85)) or

	((x + bx >= 69) and (x + bx <= 88) and (y + by = 86)) or

	((x + bx >= 70) and (x + bx <= 88) and (y + by = 87)) or

	((x + bx >= 72) and (x + bx <= 86) and (y + by = 88)) or

	((x + bx >= 74) and (x + bx <= 84) and (y + by = 89)) or

	((x + bx >= 75) and (x + bx <= 82) and (y + by = 90)) or

	((x + bx >= 77) and (x + bx <= 80) and (y + by = 91)) or

	((x + bx >= 78) and (x + bx <= 78) and (y + by = 92)) or

	------------------Mains normal

		--droite tal3a
		((x +bx >= 43 and x+bx <= 47) and (y+by = 43)) or
	((x +bx >= 43 and x+bx <= 48) and (y+by = 44)) or
	((x +bx >= 44 and x+bx <= 49) and (y+by = 45)) or
	((x +bx >= 46 and x+bx <= 51) and (y+by = 46)) or
	((x +bx >= 47 and x+bx <= 52) and (y+by = 47)) or
	((x +bx >= 48 and x+bx <= 54) and (y+by = 48)) or
	((x +bx >= 49 and x+bx <= 55) and (y+by = 49)) or
	((x +bx >= 49 and x+bx <= 56) and (y+by = 50)) or
	((x +bx >= 50 and x+bx <= 58) and (y+by = 51 ))or
	((x +bx >= 51 and x+bx <= 59) and (y+by = 52 ))or
	((x +bx >= 53 and x+bx <= 61) and (y+by = 53)) or
	((x +bx >= 53 and x+bx <= 62) and (y+by = 54)) or
	((x +bx >= 54 and x+bx <= 63) and (y+by = 55)) or
	((x +bx >= 55 and x+bx <= 68) and (y+by = 56)) or
	((x +bx >= 57 and x+bx <= 68) and (y+by = 57))or
	((x +bx >= 58 and x+bx <= 68) and (y+by = 58)) or
	((x +bx >= 60 and x+bx <= 68) and (y+by = 59)) or
	((x +bx >= 61 and x+bx <= 67) and (y+by = 60)) or
	((x +bx >= 62 and x+bx <= 66) and (y+by = 61)) or
	((x +bx >= 64 and x+bx <= 66) and (y+by = 62)) or
	((x +bx >= 65 and x+bx <= 66 ) and (y+by = 63)) or

	--gauche tal3a
	((x +bx >= 107 and x+bx <= 111) and (y+by = 43)) or
	((x +bx >= 107 and x+bx <= 111) and (y+by = 44)) or
	((x +bx >= 106 and x+bx <= 110) and (y+by = 45)) or
	((x +bx >= 105 and x+bx <= 109) and (y+by = 46)) or
	((x +bx >= 104 and x+bx <= 108) and (y+by = 47)) or
	((x +bx >= 103 and x+bx <= 107) and (y+by = 48)) or
	((x +bx >= 102 and x+bx <= 105) and (y+by = 49)) or
	((x +bx >= 102 and x+bx <= 105) and (y+by = 50)) or
	((x +bx >= 101 and x+bx <= 104) and (y+by = 51 ))or
	((x +bx >= 100 and x+bx <= 103) and (y+by = 52 ))or
	((x +bx >= 98 and x+bx <= 102) and (y+by = 53)) or
	((x +bx >= 98 and x+bx <= 101) and (y+by = 54)) or
	((x +bx >= 97 and x+bx <= 100) and (y+by = 55)) or
	((x +bx >= 96 and x+bx <= 99) and (y+by = 56)) or
	((x +bx >= 95 and x+bx <= 98) and (y+by = 57))or
	((x +bx >= 94 and x+bx <= 98) and (y+by = 58)) or
	((x +bx >= 92 and x+bx <= 97) and (y+by = 59)) or
	((x +bx >= 91 and x+bx <= 96) and (y+by = 60)) or
	((x +bx >= 90 and x+bx <= 95) and (y+by = 61)) or
	((x +bx >= 89 and x+bx <= 94) and (y+by = 62)) or
	((x +bx >= 87 and x+bx <= 93) and (y+by = 63)) or

	

	

	---droite leldakhel
	((x +bx  >= 71 and x+bx  <= 6) and (y+by = 92)) or
	((x +bx  >= 71 and x+bx  <=77) and (y+by = 93)) or
	((x +bx  >= 71 and x+bx  <= 77) and (y+by = 94)) or
	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 95)) or
	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 96)) or
	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 97)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 98)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 99)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 100)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 101)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 102)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 103)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 104)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 105)) or
	((x +bx  >= 72 and x+bx  <= 76) and (y+by = 106)) or
	((x +bx  >= 71 and x+bx  <= 75) and (y+by = 107)) or
	((x +bx  >= 70 and x+bx  <= 75) and (y+by = 108)) or
	((x +bx  >= 70 and x+bx  <= 74) and (y+by = 109)) or
	((x +bx  >= 69 and x+bx  <= 73) and (y+by = 110)) or
	((x +bx  >= 68 and x+bx  <= 72) and (y+by = 111)) or
	((x +bx  >= 67 and x+bx  <= 71) and (y+by = 112)) or
	((x +bx  >= 67 and x+bx  <= 70) and (y+by = 113)) or
	((x +bx  >= 66 and x+bx  <= 69) and (y+by = 114)) or
	((x +bx  >= 66 and x+bx  <= 70) and (y+by = 115)) or
	((x +bx  >= 66 and x+bx  <= 74) and (y+by = 116)) or
	((x +bx  >= 67 and x+bx  <= 76) and (y+by = 117)) or
	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or
	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or

	----gauche layer7
	((x +bx >= 83 and x+bx <= 86) and (y+by = 92)) or
	((x +bx >= 83 and x+bx <=87 )and (y+by = 93)) or
	((x +bx >= 83 and x+bx <= 88) and (y+by = 94)) or
	((x +bx >= 83 and x+bx <= 90) and (y+by = 95)) or
	((x +bx >= 84 and x+bx <= 91) and (y+by = 96)) or
	((x +bx >= 85 and x+bx <= 93) and (y+by = 97)) or
	((x +bx >= 87 and x+bx <= 94) and (y+by = 98)) or
	((x +bx >= 89 and x+bx <= 94) and (y+by = 99)) or
	((x +bx >= 90 and x+bx <= 93) and (y+by = 100)) or
	((x +bx >= 91 and x+bx <= 93) and (y+by = 101)) or
	((x +bx >= 90 and x+bx <= 92) and (y+by = 102)) or
	((x +bx >= 89 and x+bx <= 92) and (y+by = 103)) or
	((x +bx >= 88 and x+bx <= 91) and (y+by = 104)) or
	((x +bx >= 87 and x+bx <= 91) and (y+by = 105)) or
	((x +bx >= 86 and x+bx <= 90) and (y+by = 106)) or
	((x +bx >= 85 and x+bx <= 90) and (y+by = 107)) or
	((x +bx >= 84 and x+bx <= 89) and (y+by = 108)) or
	((x +bx >= 84 and x+bx <= 89) and (y+by = 109)) or
	((x +bx >= 84 and x+bx <= 89) and (y+by = 110)) or
	((x +bx >= 83 and x+bx <= 88) and (y+by = 111)) or
	((x +bx >= 83 and x+bx <= 86) and (y+by = 112)) or
	((x +bx >= 83 and x+bx <= 86) and (y+by = 113)) or
	((x +bx >= 83 and x+bx <= 89) and (y+by = 114)) or
	--((x +bx >= 66 and x+bx <= 70) and (y+by = 115)) or
((x +bx >= 83 and x+bx <= 93) and (y +by >= 115 and y+by <= 119)) 
	) and (counter="10110"))or
	
	-----------------------------------------------------------------------------------
	----------------------ESPACE SCORE - Tete de squelette---------------------------------------
	-----------------------------------------------------------------------------------
	 ((x>=32 and x<=67) and (y=4)) or 
	 ((x>=30 and x<=69) and (y=5)) or
	 ((x>=28 and x<=71) and (y=6)) or
	 ((x>=26 and x<=73) and (y=7)) or
	 ((x>=24 and x<=75) and (y=8)) or 
	 ((x>=23 and x<=76) and (y=9)) or
	 ((x>=22 and x<=77) and (y=10)) or
	 ((x>=20 and x<=79) and (y=11))or
	 ((x>=19 and x<=80) and (y=12)) or 
	 ((x>=18 and x<=81) and (y=13)) or
	 ((x>=17 and x<=82) and (y=14)) or
	 ((x>=16 and x<=83) and (y=15))or
	 ((x>=15 and x<=84) and (y=16)) or 
	 ((x>=14 and x<=85) and (y=17)) or
	 ((x>=13 and x<=86) and (y=18)) or
	 ((x>=12 and x<=87) and (y=19))or
	 ((x>=11 and x<=88) and (y=20)) or 
	 ((x>=11 and x<=88) and (y=21)) or
	 ((x>=10 and x<=89) and (y=22)) or
	 ((x>=9 and x<=90) and (y=23))or
	 ((x>=9 and x<=90) and (y=24))or
	 ((x>=8 and x<=91) and (y=25))or
	 ((x>=7 and x<=92) and (y=26))or
	 ((x>=7 and x<=92) and (y=27))or
	 ((x>=6 and x<=93) and (y=28))or
	 ((x>=6 and x<=93) and (y=29))or
	 ((x>=5 and x<=94) and (y=30))or
	 ((x>=5 and x<=94) and (y=31))or
	 ((x>=4 and x<=95) and (y=32))or
	 ((x>=4 and x<=96) and (y=33))or
	 ((x>=4 and x<=97) and (y=34))or
	 ((x>=3 and x<=98) and (y=35))or
	 ((x>=3 and x<=98) and (y=36))or
	 ((x>=3 and x<=98) and (y=37))or
	 ((x>=3 and x<=98) and (y=38))or
	 ((x>=2 and x<=99) and (y=39))or
	 ((x>=2  and x<=99) and (y=40))or
	  
	 (((x>=1 and x<=28)or (x>=39 and x<=99)) and (y=41))or
	 (((x>=1 and x<=25) or (x>=42 and x<=70)or (x>=78 and x<=99)) and (y=42))or
	 (((x>=0 and x<=23) or (x>=44 and x<=67)or (x>=81 and x<=99)) and (y=43))or
	 (((x>=0 and x<=22) or (x>=45 and x<=65)or (x>=83 and x<=99)) and (y=44))or
	 (((x>=0 and x<=21) or (x>=46 and x<=64) or (x>=85 and x<=99)) and (y=45))or 
	 (((x>=0 and x<=20) or (x>=47 and x<=63) or (x>=86 and x<=99)) and (y=46))or 
	 (((x>=0 and x<=19) or (x>=48 and x<=62) or (x>=87 and x<=99)) and (y=47))or 
	 (((x>=0 and x<=18) or (x>=49 and x<=61) or (x>=88 and x<=99)) and (y=48))or 
	 (((x>=0 and x<=17) or (x>=50 and x<=60)or (x>=89 and x<=99)) and (y=49))or 
	 (((x>=0 and x<=17) or (x>=50 and x<=59) or (x>=89 and x<=99)) and (y=50))or 
	 (((x>=0 and x<=16) or (x>=51 and x<=58) or (x>=90 and x<=99)) and (y=51))or 
	 (((x>=0 and x<=16) or (x>=51 and x<=58) or (x>=90 and x<=99)) and (y=52))or 
	 (((x>=0 and x<=16) or (x>=51 and x<=58) or (x>=90 and x<=99)) and (y=53))or 
	 (((x>=0 and x<=15) or (x>=52 and x<=58) or (x>=91 and x<=99)) and (y=54))or 
	 (((x>=0 and x<=15)or (x>=52 and x<=57)or (x>=91 and x<=99)) and (y>=55 and y<=62))or
	 (((x>=0 and x<=16)or (x>=51 and x<=57)or (x>=91 and x<=99)) and (y=63))or 
	 (((x>=0 and x<=16)or (x>=51 and x<=57)or (x>=90 and x<=99)) and (y=64))or 
	 (((x>=0 and x<=16)or (x>=51 and x<=57)or (x>=90 and x<=99)) and (y=65))or 
	 (((x>=1 and x<=17)or (x>=50 and x<=57) or (x>=90 and x<=98)) and (y=66))or 
	 (((x>=2 and x<=18)or (x>=49 and x<=57)or (x>=89 and x<=98)) and (y=67))or 
	 (((x>=3 and x<=18)or (x>=49 and x<=58) or (x>=89 and x<=97)) and (y=68))or 
	 (((x>=4 and x<=19)or (x>=48 and x<=58)or (x>=88 and x<=97)) and (y=69))or 
	 (((x>=5 and x<=20)or (x>=48 and x<=59) or (x>=87 and x<=97)) and (y=70))or 
	 (((x>=5 and x<=21)or (x>=47 and x<=50) or (x>=86 and x<=96)or (x>=55 and x<=60)) and (y=71))or 
	 (((x>=5 and x<=23)or (x>=45 and x<=50) or (x>=85 and x<=96)or (x>=55 and x<=61)) and (y=72))or  	 
	 (((x>=5 and x<=24)or (x>=44 and x<=49)or (x>=84 and x<=96)or (x>=55 and x<=62)) and (y=73))or  	 
	 (((x>=4 and x<=26)or (x>=42 and x<=48) or (x>=83 and x<=96)or (x>=56 and x<=63)) and (y=74))or  	 
	 (((x>=3 and x<=29)or (x>=39 and x<=47)or (x>=82 and x<=96)or (x>=57 and x<=65)) and (y=75))or  	 
	 (((x>=3 and x<=46)or (x>=57 and x<=68)or (x>=78 and x<=97)) and (y=76))or  	 
	 (((x>=3 and x<=45)or (x>=58 and x<=98)) and (y=77))or  	 
	 (((x>=3 and x<=45)or (x>=58 and x<=98)) and (y=78))or  	 
	 (((x>=3 and x<=45)or (x>=59 and x<=98)) and (y=79))or  	 
	 (((x>=3 and x<=45)or (x>=59 and x<=98)) and (y=80))or  	 
	 (((x>=3 and x<=98)) and (y=81))or  	 
	 (((x>=3 and x<=98)) and (y=82))or  	 
	 (((x>=3 and x<=98)) and (y=83))or	-- 
	 (((x>=3 and x<=21)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=78 and x<=98)) and (y=84))or	 
	 (((x>=4 and x<=19)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=79 and x<=97)) and (y=85))or	 
	 (((x>=5 and x<=19)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=80 and x<=97)) and (y=86))or	 
	 (((x>=6 and x<=18)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=82 and x<=96)) and (y=87))or	 
	 (((x>=6 and x<=17)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=84 and x<=95)) and (y=88))or	 
	 (((x>=7 and x<=16)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)or (x>=92 and x<=94)) and (y=89))or	 
	 (((x>=8 and x<=15)or (x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=90))or	 
	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=91))or	 
	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=92))or	 
	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=93))or	 
	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=94))or	 
	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=95))or	 
	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=96))or	 
	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=97))or	 
	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=98))or	 
	 (((x>=23 and x<=30)or (x>=35 and x<=44)or (x>=49 and x<=58)or (x>=63 and x<=74)) and (y=99))	or 
   ------------------------------------------------------------------------------------------------------------------------------------------------
	--------------------------------les limites du rectangle--------------------------
	------------------------------------------------------------------------------------------
	
	((x>=289-150 and x<=321-150) and (y+chiffre1=306 ))or
	((x>=289-150 and x<=321-150) and (y+chiffre1=244 ))or
	((x=289-150 or x=321-150) and (y+chiffre1>=244 and y+chiffre1<=306 ))or
   ------------------------------------------------------------------------------------------	
	------------------------------------le rectangle lifes---------------------------------------
	----------------------------------------------------------------------------------------------
	((x+posilifesX>=280 and x+posilifesX<=380) and (y+posilifesY=30 or y+posilifesY=29))or
	 ((x+posilifesX>=280 and x+posilifesX<=380) and (y+posilifesY=60 or y+posilifesY= 61)) or 
	 ((x+posilifesX=280 or x+posilifesX=279) and (y+posilifesY>=30 and y+posilifesY<=60)) or
	 ((x+posilifesX=380 or x+posilifesX=381) and (y+posilifesY>=30 and y+posilifesY<=60)) or 
	-----------------------------------------------------------------------------------------
   ---------------------------------------lES FLECHES---------------------------------------	 
   -----------------------------------------------------------------------------------------
	-----------------------------------Gauche-15eme position----------------------------------
	-----------------------------------------------------------------------------------------
   ((((x+PosiF1X>=527 and x+PosiF1X<=528) and (y+PosiF1Y=100 ))or
	((x+PosiF1X>=525 and x+PosiF1X<=528) and (y+PosiF1Y=101 ))or
	((x+PosiF1X>=523 and x+PosiF1X<=528) and (y+PosiF1Y=102 ))or
	((x+PosiF1X>=521 and x+PosiF1X<=528) and (y+PosiF1Y=103 ))or
	((x+PosiF1X>=519 and x+PosiF1X<=528) and (y+PosiF1Y=104 ))or
	((x+PosiF1X>=517 and x+PosiF1X<=528) and (y+PosiF1Y=105))or
	((x+PosiF1X>=515 and x+PosiF1X<=528) and (y+PosiF1Y=106))or
	((x+PosiF1X>=513 and x+PosiF1X<=528) and (y+PosiF1Y=107))or
	((x+PosiF1X>=511 and x+PosiF1X<=528) and (y+PosiF1Y=108 ))or
	((x+PosiF1X>=509 and x+PosiF1X<=528) and (y+PosiF1Y=109)) or
	((x+PosiF1X>=507 and x+PosiF1X<=528) and (y+PosiF1Y=110)) or
	((x+PosiF1X>=505 and x+PosiF1X<=528) and (y+PosiF1Y=111)) or
	((x+PosiF1X>=503 and x+PosiF1X<=528) and (y+PosiF1Y=112)) or
	((x+PosiF1X>=501 and x+PosiF1X<=528) and (y+PosiF1Y=113)) or
	((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF1Y=114)) or
	((x+PosiF1X>=501 and x+PosiF1X<=528) and (y+PosiF1Y=115)) or
	((x+PosiF1X>=503 and x+PosiF1X<=528) and (y+PosiF1Y=116)) or
	((x+PosiF1X>=505 and x+PosiF1X<=528) and (y+PosiF1Y=117)) or
	((x+PosiF1X>=507 and x+PosiF1X<=528) and (y+PosiF1Y=118)) or
	((x+PosiF1X>=509 and x+PosiF1X<=528) and (y+PosiF1Y=119)) or
	((x+PosiF1X>=511 and x+PosiF1X<=528) and (y+PosiF1Y=120 ))or
	((x+PosiF1X>=513 and x+PosiF1X<=528) and (y+PosiF1Y=121 ))or
	((x+PosiF1X>=515 and x+PosiF1X<=528) and (y+PosiF1Y=122 ))or
	((x+PosiF1X>=517 and x+PosiF1X<=528) and (y+PosiF1Y=123 ))or
	((x+PosiF1X>=519 and x+PosiF1X<=528) and (y+PosiF1Y=124 ))or
	((x+PosiF1X>=521 and x+PosiF1X<=528) and (y+PosiF1Y=125 ))or
	((x+PosiF1X>=523 and x+PosiF1X<=528) and (y+PosiF1Y=126 ))or
	((x+PosiF1X>=525 and x+PosiF1X<=528) and (y+PosiF1Y=127 ))or
	((x+PosiF1X>=527 and x+PosiF1X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(16)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-14eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF2X>=527 and x+PosiF2X<=528) and (y+PosiF1Y=100 ))or
	((x+PosiF2X>=525 and x+PosiF2X<=528) and (y+PosiF1Y=101 ))or
	((x+PosiF2X>=523 and x+PosiF2X<=528) and (y+PosiF1Y=102 ))or
	((x+PosiF2X>=521 and x+PosiF2X<=528) and (y+PosiF1Y=103 ))or
	((x+PosiF2X>=519 and x+PosiF2X<=528) and (y+PosiF1Y=104 ))or
	((x+PosiF2X>=517 and x+PosiF2X<=528) and (y+PosiF1Y=105))or
	((x+PosiF2X>=515 and x+PosiF2X<=528) and (y+PosiF1Y=106))or
	((x+PosiF2X>=513 and x+PosiF2X<=528) and (y+PosiF1Y=107))or
	((x+PosiF2X>=511 and x+PosiF2X<=528) and (y+PosiF1Y=108 ))or
	((x+PosiF2X>=509 and x+PosiF2X<=528) and (y+PosiF1Y=109)) or
	((x+PosiF2X>=507 and x+PosiF2X<=528) and (y+PosiF1Y=110)) or
	((x+PosiF2X>=505 and x+PosiF2X<=528) and (y+PosiF1Y=111)) or
	((x+PosiF2X>=503 and x+PosiF2X<=528) and (y+PosiF1Y=112)) or
	((x+PosiF2X>=501 and x+PosiF2X<=528) and (y+PosiF1Y=113)) or
	((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF1Y=114)) or
	((x+PosiF2X>=501 and x+PosiF2X<=528) and (y+PosiF1Y=115)) or
	((x+PosiF2X>=503 and x+PosiF2X<=528) and (y+PosiF1Y=116)) or
	((x+PosiF2X>=505 and x+PosiF2X<=528) and (y+PosiF1Y=117)) or
	((x+PosiF2X>=507 and x+PosiF2X<=528) and (y+PosiF1Y=118)) or
	((x+PosiF2X>=509 and x+PosiF2X<=528) and (y+PosiF1Y=119)) or
	((x+PosiF2X>=511 and x+PosiF2X<=528) and (y+PosiF1Y=120 ))or
	((x+PosiF2X>=513 and x+PosiF2X<=528) and (y+PosiF1Y=121 ))or
	((x+PosiF2X>=515 and x+PosiF2X<=528) and (y+PosiF1Y=122 ))or
	((x+PosiF2X>=517 and x+PosiF2X<=528) and (y+PosiF1Y=123 ))or
	((x+PosiF2X>=519 and x+PosiF2X<=528) and (y+PosiF1Y=124 ))or
	((x+PosiF2X>=521 and x+PosiF2X<=528) and (y+PosiF1Y=125 ))or
	((x+PosiF2X>=523 and x+PosiF2X<=528) and (y+PosiF1Y=126 ))or
	((x+PosiF2X>=525 and x+PosiF2X<=528) and (y+PosiF1Y=127 ))or
	((x+PosiF2X>=527 and x+PosiF2X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(15)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-13eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF3X>=527 and x+PosiF3X<=528) and (y+PosiF1Y=100 ))or
	((x+PosiF3X>=525 and x+PosiF3X<=528) and (y+PosiF1Y=101 ))or
	((x+PosiF3X>=523 and x+PosiF3X<=528) and (y+PosiF1Y=102 ))or
	((x+PosiF3X>=521 and x+PosiF3X<=528) and (y+PosiF1Y=103 ))or
	((x+PosiF3X>=519 and x+PosiF3X<=528) and (y+PosiF1Y=104 ))or
	((x+PosiF3X>=517 and x+PosiF3X<=528) and (y+PosiF1Y=105))or
	((x+PosiF3X>=515 and x+PosiF3X<=528) and (y+PosiF1Y=106))or
	((x+PosiF3X>=513 and x+PosiF3X<=528) and (y+PosiF1Y=107))or
	((x+PosiF3X>=511 and x+PosiF3X<=528) and (y+PosiF1Y=108 ))or
	((x+PosiF3X>=509 and x+PosiF3X<=528) and (y+PosiF1Y=109)) or
	((x+PosiF3X>=507 and x+PosiF3X<=528) and (y+PosiF1Y=110)) or
	((x+PosiF3X>=505 and x+PosiF3X<=528) and (y+PosiF1Y=111)) or
	((x+PosiF3X>=503 and x+PosiF3X<=528) and (y+PosiF1Y=112)) or
	((x+PosiF3X>=501 and x+PosiF3X<=528) and (y+PosiF1Y=113)) or
	((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF1Y=114)) or
	((x+PosiF3X>=501 and x+PosiF3X<=528) and (y+PosiF1Y=115)) or
	((x+PosiF3X>=503 and x+PosiF3X<=528) and (y+PosiF1Y=116)) or
	((x+PosiF3X>=505 and x+PosiF3X<=528) and (y+PosiF1Y=117)) or
	((x+PosiF3X>=507 and x+PosiF3X<=528) and (y+PosiF1Y=118)) or
	((x+PosiF3X>=509 and x+PosiF3X<=528) and (y+PosiF1Y=119)) or
	((x+PosiF3X>=511 and x+PosiF3X<=528) and (y+PosiF1Y=120 ))or
	((x+PosiF3X>=513 and x+PosiF3X<=528) and (y+PosiF1Y=121 ))or
	((x+PosiF3X>=515 and x+PosiF3X<=528) and (y+PosiF1Y=122 ))or
	((x+PosiF3X>=517 and x+PosiF3X<=528) and (y+PosiF1Y=123 ))or
	((x+PosiF3X>=519 and x+PosiF3X<=528) and (y+PosiF1Y=124 ))or
	((x+PosiF3X>=521 and x+PosiF3X<=528) and (y+PosiF1Y=125 ))or
	((x+PosiF3X>=523 and x+PosiF3X<=528) and (y+PosiF1Y=126 ))or
	((x+PosiF3X>=525 and x+PosiF3X<=528) and (y+PosiF1Y=127 ))or
	((x+PosiF3X>=527 and x+PosiF3X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(14)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-12eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF4X>=527 and x+PosiF4X<=528) and (y+PosiF1Y=100 ))or
	((x+PosiF4X>=525 and x+PosiF4X<=528) and (y+PosiF1Y=101 ))or
	((x+PosiF4X>=523 and x+PosiF4X<=528) and (y+PosiF1Y=102 ))or
	((x+PosiF4X>=521 and x+PosiF4X<=528) and (y+PosiF1Y=103 ))or
	((x+PosiF4X>=519 and x+PosiF4X<=528) and (y+PosiF1Y=104 ))or
	((x+PosiF4X>=517 and x+PosiF4X<=528) and (y+PosiF1Y=105))or
	((x+PosiF4X>=515 and x+PosiF4X<=528) and (y+PosiF1Y=106))or
	((x+PosiF4X>=513 and x+PosiF4X<=528) and (y+PosiF1Y=107))or
	((x+PosiF4X>=511 and x+PosiF4X<=528) and (y+PosiF1Y=108 ))or
	((x+PosiF4X>=509 and x+PosiF4X<=528) and (y+PosiF1Y=109)) or
	((x+PosiF4X>=507 and x+PosiF4X<=528) and (y+PosiF1Y=110)) or
	((x+PosiF4X>=505 and x+PosiF4X<=528) and (y+PosiF1Y=111)) or
	((x+PosiF4X>=503 and x+PosiF4X<=528) and (y+PosiF1Y=112)) or
	((x+PosiF4X>=501 and x+PosiF4X<=528) and (y+PosiF1Y=113)) or
	((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF1Y=114)) or
	((x+PosiF4X>=501 and x+PosiF4X<=528) and (y+PosiF1Y=115)) or
	((x+PosiF4X>=503 and x+PosiF4X<=528) and (y+PosiF1Y=116)) or
	((x+PosiF4X>=505 and x+PosiF4X<=528) and (y+PosiF1Y=117)) or
	((x+PosiF4X>=507 and x+PosiF4X<=528) and (y+PosiF1Y=118)) or
	((x+PosiF4X>=509 and x+PosiF4X<=528) and (y+PosiF1Y=119)) or
	((x+PosiF4X>=511 and x+PosiF4X<=528) and (y+PosiF1Y=120 ))or
	((x+PosiF4X>=513 and x+PosiF4X<=528) and (y+PosiF1Y=121 ))or
	((x+PosiF4X>=515 and x+PosiF4X<=528) and (y+PosiF1Y=122 ))or
	((x+PosiF4X>=517 and x+PosiF4X<=528) and (y+PosiF1Y=123 ))or
	((x+PosiF4X>=519 and x+PosiF4X<=528) and (y+PosiF1Y=124 ))or
	((x+PosiF4X>=521 and x+PosiF4X<=528) and (y+PosiF1Y=125 ))or
	((x+PosiF4X>=523 and x+PosiF4X<=528) and (y+PosiF1Y=126 ))or
	((x+PosiF4X>=525 and x+PosiF4X<=528) and (y+PosiF1Y=127 ))or
	((x+PosiF4X>=527 and x+PosiF4X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(13)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-11eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF5X>=527 and x+PosiF5X<=528) and (y+PosiF1Y=100 ))or
	((x+PosiF5X>=525 and x+PosiF5X<=528) and (y+PosiF1Y=101 ))or
	((x+PosiF5X>=523 and x+PosiF5X<=528) and (y+PosiF1Y=102 ))or
	((x+PosiF5X>=521 and x+PosiF5X<=528) and (y+PosiF1Y=103 ))or
	((x+PosiF5X>=519 and x+PosiF5X<=528) and (y+PosiF1Y=104 ))or
	((x+PosiF5X>=517 and x+PosiF5X<=528) and (y+PosiF1Y=105))or
	((x+PosiF5X>=515 and x+PosiF5X<=528) and (y+PosiF1Y=106))or
	((x+PosiF5X>=513 and x+PosiF5X<=528) and (y+PosiF1Y=107))or
	((x+PosiF5X>=511 and x+PosiF5X<=528) and (y+PosiF1Y=108 ))or
	((x+PosiF5X>=509 and x+PosiF5X<=528) and (y+PosiF1Y=109)) or
	((x+PosiF5X>=507 and x+PosiF5X<=528) and (y+PosiF1Y=110)) or
	((x+PosiF5X>=505 and x+PosiF5X<=528) and (y+PosiF1Y=111)) or
	((x+PosiF5X>=503 and x+PosiF5X<=528) and (y+PosiF1Y=112)) or
	((x+PosiF5X>=501 and x+PosiF5X<=528) and (y+PosiF1Y=113)) or
	((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF1Y=114)) or
	((x+PosiF5X>=501 and x+PosiF5X<=528) and (y+PosiF1Y=115)) or
	((x+PosiF5X>=503 and x+PosiF5X<=528) and (y+PosiF1Y=116)) or
	((x+PosiF5X>=505 and x+PosiF5X<=528) and (y+PosiF1Y=117)) or
	((x+PosiF5X>=507 and x+PosiF5X<=528) and (y+PosiF1Y=118)) or
	((x+PosiF5X>=509 and x+PosiF5X<=528) and (y+PosiF1Y=119)) or
	((x+PosiF5X>=511 and x+PosiF5X<=528) and (y+PosiF1Y=120 ))or
	((x+PosiF5X>=513 and x+PosiF5X<=528) and (y+PosiF1Y=121 ))or
	((x+PosiF5X>=515 and x+PosiF5X<=528) and (y+PosiF1Y=122 ))or
	((x+PosiF5X>=517 and x+PosiF5X<=528) and (y+PosiF1Y=123 ))or
	((x+PosiF5X>=519 and x+PosiF5X<=528) and (y+PosiF1Y=124 ))or
	((x+PosiF5X>=521 and x+PosiF5X<=528) and (y+PosiF1Y=125 ))or
	((x+PosiF5X>=523 and x+PosiF5X<=528) and (y+PosiF1Y=126 ))or
	((x+PosiF5X>=525 and x+PosiF5X<=528) and (y+PosiF1Y=127 ))or
	((x+PosiF5X>=527 and x+PosiF5X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(12)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-10eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF6X>=527 and x+PosiF6X<=528) and (y+PosiF1Y=100 ))or
	((x+PosiF6X>=525 and x+PosiF6X<=528) and (y+PosiF1Y=101 ))or
	((x+PosiF6X>=523 and x+PosiF6X<=528) and (y+PosiF1Y=102 ))or
	((x+PosiF6X>=521 and x+PosiF6X<=528) and (y+PosiF1Y=103 ))or
	((x+PosiF6X>=519 and x+PosiF6X<=528) and (y+PosiF1Y=104 ))or
	((x+PosiF6X>=517 and x+PosiF6X<=528) and (y+PosiF1Y=105))or
	((x+PosiF6X>=515 and x+PosiF6X<=528) and (y+PosiF1Y=106))or
	((x+PosiF6X>=513 and x+PosiF6X<=528) and (y+PosiF1Y=107))or
	((x+PosiF6X>=511 and x+PosiF6X<=528) and (y+PosiF1Y=108 ))or
	((x+PosiF6X>=509 and x+PosiF6X<=528) and (y+PosiF1Y=109)) or
	((x+PosiF6X>=507 and x+PosiF6X<=528) and (y+PosiF1Y=110)) or
	((x+PosiF6X>=505 and x+PosiF6X<=528) and (y+PosiF1Y=111)) or
	((x+PosiF6X>=503 and x+PosiF6X<=528) and (y+PosiF1Y=112)) or
	((x+PosiF6X>=501 and x+PosiF6X<=528) and (y+PosiF1Y=113)) or
	((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF1Y=114)) or
	((x+PosiF6X>=501 and x+PosiF6X<=528) and (y+PosiF1Y=115)) or
	((x+PosiF6X>=503 and x+PosiF6X<=528) and (y+PosiF1Y=116)) or
	((x+PosiF6X>=505 and x+PosiF6X<=528) and (y+PosiF1Y=117)) or
	((x+PosiF6X>=507 and x+PosiF6X<=528) and (y+PosiF1Y=118)) or
	((x+PosiF6X>=509 and x+PosiF6X<=528) and (y+PosiF1Y=119)) or
	((x+PosiF6X>=511 and x+PosiF6X<=528) and (y+PosiF1Y=120 ))or
	((x+PosiF6X>=513 and x+PosiF6X<=528) and (y+PosiF1Y=121 ))or
	((x+PosiF6X>=515 and x+PosiF6X<=528) and (y+PosiF1Y=122 ))or
	((x+PosiF6X>=517 and x+PosiF6X<=528) and (y+PosiF1Y=123 ))or
	((x+PosiF6X>=519 and x+PosiF6X<=528) and (y+PosiF1Y=124 ))or
	((x+PosiF6X>=521 and x+PosiF6X<=528) and (y+PosiF1Y=125 ))or
	((x+PosiF6X>=523 and x+PosiF6X<=528) and (y+PosiF1Y=126 ))or
	((x+PosiF6X>=525 and x+PosiF6X<=528) and (y+PosiF1Y=127 ))or
	((x+PosiF6X>=527 and x+PosiF6X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(11)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-9eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF7X>=527 and x+PosiF7X<=528) and (y+PosiF1Y=100 ))or
	((x+PosiF7X>=525 and x+PosiF7X<=528) and (y+PosiF1Y=101 ))or
	((x+PosiF7X>=523 and x+PosiF7X<=528) and (y+PosiF1Y=102 ))or
	((x+PosiF7X>=521 and x+PosiF7X<=528) and (y+PosiF1Y=103 ))or
	((x+PosiF7X>=519 and x+PosiF7X<=528) and (y+PosiF1Y=104 ))or
	((x+PosiF7X>=517 and x+PosiF7X<=528) and (y+PosiF1Y=105))or
	((x+PosiF7X>=515 and x+PosiF7X<=528) and (y+PosiF1Y=106))or
	((x+PosiF7X>=513 and x+PosiF7X<=528) and (y+PosiF1Y=107))or
	((x+PosiF7X>=511 and x+PosiF7X<=528) and (y+PosiF1Y=108 ))or
	((x+PosiF7X>=509 and x+PosiF7X<=528) and (y+PosiF1Y=109)) or
	((x+PosiF7X>=507 and x+PosiF7X<=528) and (y+PosiF1Y=110)) or
	((x+PosiF7X>=505 and x+PosiF7X<=528) and (y+PosiF1Y=111)) or
	((x+PosiF7X>=503 and x+PosiF7X<=528) and (y+PosiF1Y=112)) or
	((x+PosiF7X>=501 and x+PosiF7X<=528) and (y+PosiF1Y=113)) or
	((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF1Y=114)) or
	((x+PosiF7X>=501 and x+PosiF7X<=528) and (y+PosiF1Y=115)) or
	((x+PosiF7X>=503 and x+PosiF7X<=528) and (y+PosiF1Y=116)) or
	((x+PosiF7X>=505 and x+PosiF7X<=528) and (y+PosiF1Y=117)) or
	((x+PosiF7X>=507 and x+PosiF7X<=528) and (y+PosiF1Y=118)) or
	((x+PosiF7X>=509 and x+PosiF7X<=528) and (y+PosiF1Y=119)) or
	((x+PosiF7X>=511 and x+PosiF7X<=528) and (y+PosiF1Y=120 ))or
	((x+PosiF7X>=513 and x+PosiF7X<=528) and (y+PosiF1Y=121 ))or
	((x+PosiF7X>=515 and x+PosiF7X<=528) and (y+PosiF1Y=122 ))or
	((x+PosiF7X>=517 and x+PosiF7X<=528) and (y+PosiF1Y=123 ))or
	((x+PosiF7X>=519 and x+PosiF7X<=528) and (y+PosiF1Y=124 ))or
	((x+PosiF7X>=521 and x+PosiF7X<=528) and (y+PosiF1Y=125 ))or
	((x+PosiF7X>=523 and x+PosiF7X<=528) and (y+PosiF1Y=126 ))or
	((x+PosiF7X>=525 and x+PosiF7X<=528) and (y+PosiF1Y=127 ))or
	((x+PosiF7X>=527 and x+PosiF7X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(10)='1' )) or
	----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-8eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF8X>=527 and x+PosiF8X<=528) and (y+PosiF1Y=100 ))or
	((x+PosiF8X>=525 and x+PosiF8X<=528) and (y+PosiF1Y=101 ))or
	((x+PosiF8X>=523 and x+PosiF8X<=528) and (y+PosiF1Y=102 ))or
	((x+PosiF8X>=521 and x+PosiF8X<=528) and (y+PosiF1Y=103 ))or
	((x+PosiF8X>=519 and x+PosiF8X<=528) and (y+PosiF1Y=104 ))or
	((x+PosiF8X>=517 and x+PosiF8X<=528) and (y+PosiF1Y=105))or
	((x+PosiF8X>=515 and x+PosiF8X<=528) and (y+PosiF1Y=106))or
	((x+PosiF8X>=513 and x+PosiF8X<=528) and (y+PosiF1Y=107))or
	((x+PosiF8X>=511 and x+PosiF8X<=528) and (y+PosiF1Y=108 ))or
	((x+PosiF8X>=509 and x+PosiF8X<=528) and (y+PosiF1Y=109)) or
	((x+PosiF8X>=507 and x+PosiF8X<=528) and (y+PosiF1Y=110)) or
	((x+PosiF8X>=505 and x+PosiF8X<=528) and (y+PosiF1Y=111)) or
	((x+PosiF8X>=503 and x+PosiF8X<=528) and (y+PosiF1Y=112)) or
	((x+PosiF8X>=501 and x+PosiF8X<=528) and (y+PosiF1Y=113)) or
	((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF1Y=114)) or
	((x+PosiF8X>=501 and x+PosiF8X<=528) and (y+PosiF1Y=115)) or
	((x+PosiF8X>=503 and x+PosiF8X<=528) and (y+PosiF1Y=116)) or
	((x+PosiF8X>=505 and x+PosiF8X<=528) and (y+PosiF1Y=117)) or
	((x+PosiF8X>=507 and x+PosiF8X<=528) and (y+PosiF1Y=118)) or
	((x+PosiF8X>=509 and x+PosiF8X<=528) and (y+PosiF1Y=119)) or
	((x+PosiF8X>=511 and x+PosiF8X<=528) and (y+PosiF1Y=120 ))or
	((x+PosiF8X>=513 and x+PosiF8X<=528) and (y+PosiF1Y=121 ))or
	((x+PosiF8X>=515 and x+PosiF8X<=528) and (y+PosiF1Y=122 ))or
	((x+PosiF8X>=517 and x+PosiF8X<=528) and (y+PosiF1Y=123 ))or
	((x+PosiF8X>=519 and x+PosiF8X<=528) and (y+PosiF1Y=124 ))or
	((x+PosiF8X>=521 and x+PosiF8X<=528) and (y+PosiF1Y=125 ))or
	((x+PosiF8X>=523 and x+PosiF8X<=528) and (y+PosiF1Y=126 ))or
	((x+PosiF8X>=525 and x+PosiF8X<=528) and (y+PosiF1Y=127 ))or
	((x+PosiF8X>=527 and x+PosiF8X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(9)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-7eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+posiF9X>=527 and x+posiF9X<=528) and (y+PosiF1Y=100 ))or
	((x+posiF9X>=525 and x+posiF9X<=528) and (y+PosiF1Y=101 ))or
	((x+posiF9X>=523 and x+posiF9X<=528) and (y+PosiF1Y=102 ))or
	((x+posiF9X>=521 and x+posiF9X<=528) and (y+PosiF1Y=103 ))or
	((x+posiF9X>=519 and x+posiF9X<=528) and (y+PosiF1Y=104 ))or
	((x+posiF9X>=517 and x+posiF9X<=528) and (y+PosiF1Y=105))or
	((x+posiF9X>=515 and x+posiF9X<=528) and (y+PosiF1Y=106))or
	((x+posiF9X>=513 and x+posiF9X<=528) and (y+PosiF1Y=107))or
	((x+posiF9X>=511 and x+posiF9X<=528) and (y+PosiF1Y=108 ))or
	((x+posiF9X>=509 and x+posiF9X<=528) and (y+PosiF1Y=109)) or
	((x+posiF9X>=507 and x+posiF9X<=528) and (y+PosiF1Y=110)) or
	((x+posiF9X>=505 and x+posiF9X<=528) and (y+PosiF1Y=111)) or
	((x+posiF9X>=503 and x+posiF9X<=528) and (y+PosiF1Y=112)) or
	((x+posiF9X>=501 and x+posiF9X<=528) and (y+PosiF1Y=113)) or
	((x+posiF9X>=500 and x+posiF9X<=528) and (y+PosiF1Y=114)) or
	((x+posiF9X>=501 and x+posiF9X<=528) and (y+PosiF1Y=115)) or
	((x+posiF9X>=503 and x+posiF9X<=528) and (y+PosiF1Y=116)) or
	((x+posiF9X>=505 and x+posiF9X<=528) and (y+PosiF1Y=117)) or
	((x+posiF9X>=507 and x+posiF9X<=528) and (y+PosiF1Y=118)) or
	((x+posiF9X>=509 and x+posiF9X<=528) and (y+PosiF1Y=119)) or
	((x+posiF9X>=511 and x+posiF9X<=528) and (y+PosiF1Y=120 ))or
	((x+posiF9X>=513 and x+posiF9X<=528) and (y+PosiF1Y=121 ))or
	((x+posiF9X>=515 and x+posiF9X<=528) and (y+PosiF1Y=122 ))or
	((x+posiF9X>=517 and x+posiF9X<=528) and (y+PosiF1Y=123 ))or
	((x+posiF9X>=519 and x+posiF9X<=528) and (y+PosiF1Y=124 ))or
	((x+posiF9X>=521 and x+posiF9X<=528) and (y+PosiF1Y=125 ))or
	((x+posiF9X>=523 and x+posiF9X<=528) and (y+PosiF1Y=126 ))or
	((x+posiF9X>=525 and x+posiF9X<=528) and (y+PosiF1Y=127 ))or
	((x+posiF9X>=527 and x+posiF9X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(8)='1' )) or
	----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-6eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF10X>=527 and x+PosiF10X<=528) and (y+PosiF1Y=100 ))or
	((x+PosiF10X>=525 and x+PosiF10X<=528) and (y+PosiF1Y=101 ))or
	((x+PosiF10X>=523 and x+PosiF10X<=528) and (y+PosiF1Y=102 ))or
	((x+PosiF10X>=521 and x+PosiF10X<=528) and (y+PosiF1Y=103 ))or
	((x+PosiF10X>=519 and x+PosiF10X<=528) and (y+PosiF1Y=104 ))or
	((x+PosiF10X>=517 and x+PosiF10X<=528) and (y+PosiF1Y=105))or
	((x+PosiF10X>=515 and x+PosiF10X<=528) and (y+PosiF1Y=106))or
	((x+PosiF10X>=513 and x+PosiF10X<=528) and (y+PosiF1Y=107))or
	((x+PosiF10X>=511 and x+PosiF10X<=528) and (y+PosiF1Y=108 ))or
	((x+PosiF10X>=509 and x+PosiF10X<=528) and (y+PosiF1Y=109)) or
	((x+PosiF10X>=507 and x+PosiF10X<=528) and (y+PosiF1Y=110)) or
	((x+PosiF10X>=505 and x+PosiF10X<=528) and (y+PosiF1Y=111)) or
	((x+PosiF10X>=503 and x+PosiF10X<=528) and (y+PosiF1Y=112)) or
	((x+PosiF10X>=501 and x+PosiF10X<=528) and (y+PosiF1Y=113)) or
	((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF1Y=114)) or
	((x+PosiF10X>=501 and x+PosiF10X<=528) and (y+PosiF1Y=115)) or
	((x+PosiF10X>=503 and x+PosiF10X<=528) and (y+PosiF1Y=116)) or
	((x+PosiF10X>=505 and x+PosiF10X<=528) and (y+PosiF1Y=117)) or
	((x+PosiF10X>=507 and x+PosiF10X<=528) and (y+PosiF1Y=118)) or
	((x+PosiF10X>=509 and x+PosiF10X<=528) and (y+PosiF1Y=119)) or
	((x+PosiF10X>=511 and x+PosiF10X<=528) and (y+PosiF1Y=120 ))or
	((x+PosiF10X>=513 and x+PosiF10X<=528) and (y+PosiF1Y=121 ))or
	((x+PosiF10X>=515 and x+PosiF10X<=528) and (y+PosiF1Y=122 ))or
	((x+PosiF10X>=517 and x+PosiF10X<=528) and (y+PosiF1Y=123 ))or
	((x+PosiF10X>=519 and x+PosiF10X<=528) and (y+PosiF1Y=124 ))or
	((x+PosiF10X>=521 and x+PosiF10X<=528) and (y+PosiF1Y=125 ))or
	((x+PosiF10X>=523 and x+PosiF10X<=528) and (y+PosiF1Y=126 ))or
	((x+PosiF10X>=525 and x+PosiF10X<=528) and (y+PosiF1Y=127 ))or
	((x+PosiF10X>=527 and x+PosiF10X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(7)='1' )) or
	----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-5eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((X+PosiF11X>=527 and X+PosiF11X<=528) and (y+PosiF1Y=100 ))or
	((X+PosiF11X>=525 and X+PosiF11X<=528) and (y+PosiF1Y=101 ))or
	((X+PosiF11X>=523 and X+PosiF11X<=528) and (y+PosiF1Y=102 ))or
	((X+PosiF11X>=521 and X+PosiF11X<=528) and (y+PosiF1Y=103 ))or
	((X+PosiF11X>=519 and X+PosiF11X<=528) and (y+PosiF1Y=104 ))or
	((X+PosiF11X>=517 and X+PosiF11X<=528) and (y+PosiF1Y=105))or
	((X+PosiF11X>=515 and X+PosiF11X<=528) and (y+PosiF1Y=106))or
	((X+PosiF11X>=513 and X+PosiF11X<=528) and (y+PosiF1Y=107))or
	((X+PosiF11X>=511 and X+PosiF11X<=528) and (y+PosiF1Y=108 ))or
	((X+PosiF11X>=509 and X+PosiF11X<=528) and (y+PosiF1Y=109)) or
	((X+PosiF11X>=507 and X+PosiF11X<=528) and (y+PosiF1Y=110)) or
	((X+PosiF11X>=505 and X+PosiF11X<=528) and (y+PosiF1Y=111)) or
	((X+PosiF11X>=503 and X+PosiF11X<=528) and (y+PosiF1Y=112)) or
	((X+PosiF11X>=501 and X+PosiF11X<=528) and (y+PosiF1Y=113)) or
	((X+PosiF11X>=500 and X+PosiF11X<=528) and (y+PosiF1Y=114)) or
	((X+PosiF11X>=501 and X+PosiF11X<=528) and (y+PosiF1Y=115)) or
	((X+PosiF11X>=503 and X+PosiF11X<=528) and (y+PosiF1Y=116)) or
	((X+PosiF11X>=505 and X+PosiF11X<=528) and (y+PosiF1Y=117)) or
	((X+PosiF11X>=507 and X+PosiF11X<=528) and (y+PosiF1Y=118)) or
	((X+PosiF11X>=509 and X+PosiF11X<=528) and (y+PosiF1Y=119)) or
	((X+PosiF11X>=511 and X+PosiF11X<=528) and (y+PosiF1Y=120 ))or
	((X+PosiF11X>=513 and X+PosiF11X<=528) and (y+PosiF1Y=121 ))or
	((X+PosiF11X>=515 and X+PosiF11X<=528) and (y+PosiF1Y=122 ))or
	((X+PosiF11X>=517 and X+PosiF11X<=528) and (y+PosiF1Y=123 ))or
	((X+PosiF11X>=519 and X+PosiF11X<=528) and (y+PosiF1Y=124 ))or
	((X+PosiF11X>=521 and X+PosiF11X<=528) and (y+PosiF1Y=125 ))or
	((X+PosiF11X>=523 and X+PosiF11X<=528) and (y+PosiF1Y=126 ))or
	((X+PosiF11X>=525 and X+PosiF11X<=528) and (y+PosiF1Y=127 ))or
	((X+PosiF11X>=527 and x+PosiF11X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(6)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-4eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((X+PosiF12X>=527 and X+PosiF12X<=528) and (y+PosiF1Y=100 ))or
	((X+PosiF12X>=525 and X+PosiF12X<=528) and (y+PosiF1Y=101 ))or
	((X+PosiF12X>=523 and X+PosiF12X<=528) and (y+PosiF1Y=102 ))or
	((X+PosiF12X>=521 and X+PosiF12X<=528) and (y+PosiF1Y=103 ))or
	((X+PosiF12X>=519 and X+PosiF12X<=528) and (y+PosiF1Y=104 ))or
	((X+PosiF12X>=517 and X+PosiF12X<=528) and (y+PosiF1Y=105))or
	((X+PosiF12X>=515 and X+PosiF12X<=528) and (y+PosiF1Y=106))or
	((X+PosiF12X>=513 and X+PosiF12X<=528) and (y+PosiF1Y=107))or
	((X+PosiF12X>=511 and X+PosiF12X<=528) and (y+PosiF1Y=108 ))or
	((X+PosiF12X>=509 and X+PosiF12X<=528) and (y+PosiF1Y=109)) or
	((X+PosiF12X>=507 and X+PosiF12X<=528) and (y+PosiF1Y=110)) or
	((X+PosiF12X>=505 and X+PosiF12X<=528) and (y+PosiF1Y=111)) or
	((X+PosiF12X>=503 and X+PosiF12X<=528) and (y+PosiF1Y=112)) or
	((X+PosiF12X>=501 and X+PosiF12X<=528) and (y+PosiF1Y=113)) or
	((X+PosiF12X>=500 and X+PosiF12X<=528) and (y+PosiF1Y=114)) or
	((X+PosiF12X>=501 and X+PosiF12X<=528) and (y+PosiF1Y=115)) or
	((X+PosiF12X>=503 and X+PosiF12X<=528) and (y+PosiF1Y=116)) or
	((X+PosiF12X>=505 and X+PosiF12X<=528) and (y+PosiF1Y=117)) or
	((X+PosiF12X>=507 and X+PosiF12X<=528) and (y+PosiF1Y=118)) or
	((X+PosiF12X>=509 and X+PosiF12X<=528) and (y+PosiF1Y=119)) or
	((X+PosiF12X>=511 and X+PosiF12X<=528) and (y+PosiF1Y=120 ))or
	((X+PosiF12X>=513 and X+PosiF12X<=528) and (y+PosiF1Y=121 ))or
	((X+PosiF12X>=515 and X+PosiF12X<=528) and (y+PosiF1Y=122 ))or
	((X+PosiF12X>=517 and X+PosiF12X<=528) and (y+PosiF1Y=123 ))or
	((X+PosiF12X>=519 and X+PosiF12X<=528) and (y+PosiF1Y=124 ))or
	((X+PosiF12X>=521 and X+PosiF12X<=528) and (y+PosiF1Y=125 ))or
	((X+PosiF12X>=523 and X+PosiF12X<=528) and (y+PosiF1Y=126 ))or
	((X+PosiF12X>=525 and X+PosiF12X<=528) and (y+PosiF1Y=127 ))or
	((X+PosiF12X>=527 and X+PosiF12X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(5)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-3eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((X+PosiF13X>=527 and X+PosiF13X<=528) and (y+PosiF1Y=100 ))or
	((X+PosiF13X>=525 and X+PosiF13X<=528) and (y+PosiF1Y=101 ))or
	((X+PosiF13X>=523 and X+PosiF13X<=528) and (y+PosiF1Y=102 ))or
	((X+PosiF13X>=521 and X+PosiF13X<=528) and (y+PosiF1Y=103 ))or
	((X+PosiF13X>=519 and X+PosiF13X<=528) and (y+PosiF1Y=104 ))or
	((X+PosiF13X>=517 and X+PosiF13X<=528) and (y+PosiF1Y=105))or
	((X+PosiF13X>=515 and X+PosiF13X<=528) and (y+PosiF1Y=106))or
	((X+PosiF13X>=513 and X+PosiF13X<=528) and (y+PosiF1Y=107))or
	((X+PosiF13X>=511 and X+PosiF13X<=528) and (y+PosiF1Y=108 ))or
	((X+PosiF13X>=509 and X+PosiF13X<=528) and (y+PosiF1Y=109)) or
	((X+PosiF13X>=507 and X+PosiF13X<=528) and (y+PosiF1Y=110)) or
	((X+PosiF13X>=505 and X+PosiF13X<=528) and (y+PosiF1Y=111)) or
	((X+PosiF13X>=503 and X+PosiF13X<=528) and (y+PosiF1Y=112)) or
	((X+PosiF13X>=501 and X+PosiF13X<=528) and (y+PosiF1Y=113)) or
	((X+PosiF13X>=500 and X+PosiF13X<=528) and (y+PosiF1Y=114)) or
	((X+PosiF13X>=501 and X+PosiF13X<=528) and (y+PosiF1Y=115)) or
	((X+PosiF13X>=503 and X+PosiF13X<=528) and (y+PosiF1Y=116)) or
	((X+PosiF13X>=505 and X+PosiF13X<=528) and (y+PosiF1Y=117)) or
	((X+PosiF13X>=507 and X+PosiF13X<=528) and (y+PosiF1Y=118)) or
	((X+PosiF13X>=509 and X+PosiF13X<=528) and (y+PosiF1Y=119)) or
	((X+PosiF13X>=511 and X+PosiF13X<=528) and (y+PosiF1Y=120 ))or
	((X+PosiF13X>=513 and X+PosiF13X<=528) and (y+PosiF1Y=121 ))or
	((X+PosiF13X>=515 and X+PosiF13X<=528) and (y+PosiF1Y=122 ))or
	((X+PosiF13X>=517 and X+PosiF13X<=528) and (y+PosiF1Y=123 ))or
	((X+PosiF13X>=519 and X+PosiF13X<=528) and (y+PosiF1Y=124 ))or
	((X+PosiF13X>=521 and X+PosiF13X<=528) and (y+PosiF1Y=125 ))or
	((X+PosiF13X>=523 and X+PosiF13X<=528) and (y+PosiF1Y=126 ))or
	((X+PosiF13X>=525 and X+PosiF13X<=528) and (y+PosiF1Y=127 ))or
	((X+PosiF13X>=527 and X+PosiF13X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(4)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-2eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((X+PosiF14X>=527 and X+PosiF14X<=528) and (y+PosiF1Y=100 ))or
	((X+PosiF14X>=525 and X+PosiF14X<=528) and (y+PosiF1Y=101 ))or
	((X+PosiF14X>=523 and X+PosiF14X<=528) and (y+PosiF1Y=102 ))or
	((X+PosiF14X>=521 and X+PosiF14X<=528) and (y+PosiF1Y=103 ))or
	((X+PosiF14X>=519 and X+PosiF14X<=528) and (y+PosiF1Y=104 ))or
	((X+PosiF14X>=517 and X+PosiF14X<=528) and (y+PosiF1Y=105))or
	((X+PosiF14X>=515 and X+PosiF14X<=528) and (y+PosiF1Y=106))or
	((X+PosiF14X>=513 and X+PosiF14X<=528) and (y+PosiF1Y=107))or
	((X+PosiF14X>=511 and X+PosiF14X<=528) and (y+PosiF1Y=108 ))or
	((X+PosiF14X>=509 and X+PosiF14X<=528) and (y+PosiF1Y=109)) or
	((X+PosiF14X>=507 and X+PosiF14X<=528) and (y+PosiF1Y=110)) or
	((X+PosiF14X>=505 and X+PosiF14X<=528) and (y+PosiF1Y=111)) or
	((X+PosiF14X>=503 and X+PosiF14X<=528) and (y+PosiF1Y=112)) or
	((X+PosiF14X>=501 and X+PosiF14X<=528) and (y+PosiF1Y=113)) or
	((X+PosiF14X>=500 and X+PosiF14X<=528) and (y+PosiF1Y=114)) or
	((X+PosiF14X>=501 and X+PosiF14X<=528) and (y+PosiF1Y=115)) or
	((X+PosiF14X>=503 and X+PosiF14X<=528) and (y+PosiF1Y=116)) or
	((X+PosiF14X>=505 and X+PosiF14X<=528) and (y+PosiF1Y=117)) or
	((X+PosiF14X>=507 and X+PosiF14X<=528) and (y+PosiF1Y=118)) or
	((X+PosiF14X>=509 and X+PosiF14X<=528) and (y+PosiF1Y=119)) or
	((X+PosiF14X>=511 and X+PosiF14X<=528) and (y+PosiF1Y=120 ))or
	((X+PosiF14X>=513 and X+PosiF14X<=528) and (y+PosiF1Y=121 ))or
	((X+PosiF14X>=515 and X+PosiF14X<=528) and (y+PosiF1Y=122 ))or
	((X+PosiF14X>=517 and X+PosiF14X<=528) and (y+PosiF1Y=123 ))or
	((X+PosiF14X>=519 and X+PosiF14X<=528) and (y+PosiF1Y=124 ))or
	((X+PosiF14X>=521 and X+PosiF14X<=528) and (y+PosiF1Y=125 ))or
	((X+PosiF14X>=523 and X+PosiF14X<=528) and (y+PosiF1Y=126 ))or
	((X+PosiF14X>=525 and X+PosiF14X<=528) and (y+PosiF1Y=127 ))or
	((X+PosiF14X>=527 and X+PosiF14X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(3)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-1ere position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((X+PosiF15X>=527 and X+PosiF15X<=528) and (y+PosiF1Y=100 ))or
	((X+PosiF15X>=525 and X+PosiF15X<=528) and (y+PosiF1Y=101 ))or
	((X+PosiF15X>=523 and X+PosiF15X<=528) and (y+PosiF1Y=102 ))or
	((X+PosiF15X>=521 and X+PosiF15X<=528) and (y+PosiF1Y=103 ))or
	((X+PosiF15X>=519 and X+PosiF15X<=528) and (y+PosiF1Y=104 ))or
	((X+PosiF15X>=517 and X+PosiF15X<=528) and (y+PosiF1Y=105))or
	((X+PosiF15X>=515 and X+PosiF15X<=528) and (y+PosiF1Y=106))or
	((X+PosiF15X>=513 and X+PosiF15X<=528) and (y+PosiF1Y=107))or
	((X+PosiF15X>=511 and X+PosiF15X<=528) and (y+PosiF1Y=108 ))or
	((X+PosiF15X>=509 and X+PosiF15X<=528) and (y+PosiF1Y=109)) or
	((X+PosiF15X>=507 and X+PosiF15X<=528) and (y+PosiF1Y=110)) or
	((X+PosiF15X>=505 and X+PosiF15X<=528) and (y+PosiF1Y=111)) or
	((X+PosiF15X>=503 and X+PosiF15X<=528) and (y+PosiF1Y=112)) or
	((X+PosiF15X>=501 and X+PosiF15X<=528) and (y+PosiF1Y=113)) or
	((X+PosiF15X>=500 and X+PosiF15X<=528) and (y+PosiF1Y=114)) or
	((X+PosiF15X>=501 and X+PosiF15X<=528) and (y+PosiF1Y=115)) or
	((X+PosiF15X>=503 and X+PosiF15X<=528) and (y+PosiF1Y=116)) or
	((X+PosiF15X>=505 and X+PosiF15X<=528) and (y+PosiF1Y=117)) or
	((X+PosiF15X>=507 and X+PosiF15X<=528) and (y+PosiF1Y=118)) or
	((X+PosiF15X>=509 and X+PosiF15X<=528) and (y+PosiF1Y=119)) or
	((X+PosiF15X>=511 and X+PosiF15X<=528) and (y+PosiF1Y=120 ))or
	((X+PosiF15X>=513 and X+PosiF15X<=528) and (y+PosiF1Y=121 ))or
	((X+PosiF15X>=515 and X+PosiF15X<=528) and (y+PosiF1Y=122 ))or
	((X+PosiF15X>=517 and X+PosiF15X<=528) and (y+PosiF1Y=123 ))or
	((X+PosiF15X>=519 and X+PosiF15X<=528) and (y+PosiF1Y=124 ))or
	((X+PosiF15X>=521 and X+PosiF15X<=528) and (y+PosiF1Y=125 ))or
	((X+PosiF15X>=523 and X+PosiF15X<=528) and (y+PosiF1Y=126 ))or
	((X+PosiF15X>=525 and X+PosiF15X<=528) and (y+PosiF1Y=127 ))or
	((X+PosiF15X>=527 and X+PosiF15X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(2)='1' )) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------Gauche-0eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((X+PosiF16X>=527 and X+PosiF16X<=528) and (y+PosiF1Y=100 ))or
	((X+PosiF16X>=525 and X+PosiF16X<=528) and (y+PosiF1Y=101 ))or
	((X+PosiF16X>=523 and X+PosiF16X<=528) and (y+PosiF1Y=102 ))or
	((X+PosiF16X>=521 and X+PosiF16X<=528) and (y+PosiF1Y=103 ))or
	((X+PosiF16X>=519 and X+PosiF16X<=528) and (y+PosiF1Y=104 ))or
	((X+PosiF16X>=517 and X+PosiF16X<=528) and (y+PosiF1Y=105))or
	((X+PosiF16X>=515 and X+PosiF16X<=528) and (y+PosiF1Y=106))or
	((X+PosiF16X>=513 and X+PosiF16X<=528) and (y+PosiF1Y=107))or
	((X+PosiF16X>=511 and X+PosiF16X<=528) and (y+PosiF1Y=108 ))or
	((X+PosiF16X>=509 and X+PosiF16X<=528) and (y+PosiF1Y=109)) or
	((X+PosiF16X>=507 and X+PosiF16X<=528) and (y+PosiF1Y=110)) or
	((X+PosiF16X>=505 and X+PosiF16X<=528) and (y+PosiF1Y=111)) or
	((X+PosiF16X>=503 and X+PosiF16X<=528) and (y+PosiF1Y=112)) or
	((X+PosiF16X>=501 and X+PosiF16X<=528) and (y+PosiF1Y=113)) or
	((X+PosiF16X>=500 and X+PosiF16X<=528) and (y+PosiF1Y=114)) or
	((X+PosiF16X>=501 and X+PosiF16X<=528) and (y+PosiF1Y=115)) or
	((X+PosiF16X>=503 and X+PosiF16X<=528) and (y+PosiF1Y=116)) or
	((X+PosiF16X>=505 and X+PosiF16X<=528) and (y+PosiF1Y=117)) or
	((X+PosiF16X>=507 and X+PosiF16X<=528) and (y+PosiF1Y=118)) or
	((X+PosiF16X>=509 and X+PosiF16X<=528) and (y+PosiF1Y=119)) or
	((X+PosiF16X>=511 and X+PosiF16X<=528) and (y+PosiF1Y=120 ))or
	((X+PosiF16X>=513 and X+PosiF16X<=528) and (y+PosiF1Y=121 ))or
	((X+PosiF16X>=515 and X+PosiF16X<=528) and (y+PosiF1Y=122 ))or
	((X+PosiF16X>=517 and X+PosiF16X<=528) and (y+PosiF1Y=123 ))or
	((X+PosiF16X>=519 and X+PosiF16X<=528) and (y+PosiF1Y=124 ))or
	((X+PosiF16X>=521 and X+PosiF16X<=528) and (y+PosiF1Y=125 ))or
	((X+PosiF16X>=523 and X+PosiF16X<=528) and (y+PosiF1Y=126 ))or
	((X+PosiF16X>=525 and X+PosiF16X<=528) and (y+PosiF1Y=127 ))or
	((X+PosiF16X>=527 and X+PosiF16X<=528) and (y+PosiF1Y=128 ))) and (VecteurLEFT(1)='1' ))or
	----------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-15eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF1X>=500 and x+PosiF1X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=511) and (y+PosiF2Y=105))or
	((x+PosiF1X>=500 and x+PosiF1X<=513) and (y+PosiF2Y=106))or
	((x+PosiF1X>=500 and x+PosiF1X<=515) and (y+PosiF2Y=107))or
	((x+PosiF1X>=500 and x+PosiF1X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF1X>=500 and x+PosiF1X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF1X>=500 and x+PosiF1X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF1X>=500 and x+PosiF1X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF1X>=500 and x+PosiF1X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF1X>=500 and x+PosiF1X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF1X>=500 and x+PosiF1X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF1X>=500 and x+PosiF1X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF1X>=500 and x+PosiF1X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF1X>=500 and x+PosiF1X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF1X>=500 and x+PosiF1X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(16)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-14eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF2X>=500 and x+PosiF2X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=511) and (y+PosiF2Y=105))or
	((x+PosiF2X>=500 and x+PosiF2X<=513) and (y+PosiF2Y=106))or
	((x+PosiF2X>=500 and x+PosiF2X<=515) and (y+PosiF2Y=107))or
	((x+PosiF2X>=500 and x+PosiF2X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF2X>=500 and x+PosiF2X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF2X>=500 and x+PosiF2X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF2X>=500 and x+PosiF2X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF2X>=500 and x+PosiF2X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF2X>=500 and x+PosiF2X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF2X>=500 and x+PosiF2X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF2X>=500 and x+PosiF2X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF2X>=500 and x+PosiF2X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF2X>=500 and x+PosiF2X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF2X>=500 and x+PosiF2X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(15)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-13eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF3X>=500 and x+PosiF3X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=511) and (y+PosiF2Y=105))or
	((x+PosiF3X>=500 and x+PosiF3X<=513) and (y+PosiF2Y=106))or
	((x+PosiF3X>=500 and x+PosiF3X<=515) and (y+PosiF2Y=107))or
	((x+PosiF3X>=500 and x+PosiF3X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF3X>=500 and x+PosiF3X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF3X>=500 and x+PosiF3X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF3X>=500 and x+PosiF3X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF3X>=500 and x+PosiF3X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF3X>=500 and x+PosiF3X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF3X>=500 and x+PosiF3X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF3X>=500 and x+PosiF3X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF3X>=500 and x+PosiF3X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF3X>=500 and x+PosiF3X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF3X>=500 and x+PosiF3X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(14)='1')) or
	----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-12eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF4X>=500 and x+PosiF4X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=511) and (y+PosiF2Y=105))or
	((x+PosiF4X>=500 and x+PosiF4X<=513) and (y+PosiF2Y=106))or
	((x+PosiF4X>=500 and x+PosiF4X<=515) and (y+PosiF2Y=107))or
	((x+PosiF4X>=500 and x+PosiF4X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF4X>=500 and x+PosiF4X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF4X>=500 and x+PosiF4X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF4X>=500 and x+PosiF4X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF4X>=500 and x+PosiF4X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF4X>=500 and x+PosiF4X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF4X>=500 and x+PosiF4X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF4X>=500 and x+PosiF4X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF4X>=500 and x+PosiF4X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF4X>=500 and x+PosiF4X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF4X>=500 and x+PosiF4X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(13)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-11eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF5X>=500 and x+PosiF5X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=511) and (y+PosiF2Y=105))or
	((x+PosiF5X>=500 and x+PosiF5X<=513) and (y+PosiF2Y=106))or
	((x+PosiF5X>=500 and x+PosiF5X<=515) and (y+PosiF2Y=107))or
	((x+PosiF5X>=500 and x+PosiF5X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF5X>=500 and x+PosiF5X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF5X>=500 and x+PosiF5X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF5X>=500 and x+PosiF5X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF5X>=500 and x+PosiF5X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF5X>=500 and x+PosiF5X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF5X>=500 and x+PosiF5X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF5X>=500 and x+PosiF5X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF5X>=500 and x+PosiF5X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF5X>=500 and x+PosiF5X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF5X>=500 and x+PosiF5X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(12)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-10eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF6X>=500 and x+PosiF6X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=511) and (y+PosiF2Y=105))or
	((x+PosiF6X>=500 and x+PosiF6X<=513) and (y+PosiF2Y=106))or
	((x+PosiF6X>=500 and x+PosiF6X<=515) and (y+PosiF2Y=107))or
	((x+PosiF6X>=500 and x+PosiF6X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF6X>=500 and x+PosiF6X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF6X>=500 and x+PosiF6X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF6X>=500 and x+PosiF6X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF6X>=500 and x+PosiF6X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF6X>=500 and x+PosiF6X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF6X>=500 and x+PosiF6X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF6X>=500 and x+PosiF6X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF6X>=500 and x+PosiF6X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF6X>=500 and x+PosiF6X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF6X>=500 and x+PosiF6X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(11)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-9eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF7X>=500 and x+PosiF7X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=511) and (y+PosiF2Y=105))or
	((x+PosiF7X>=500 and x+PosiF7X<=513) and (y+PosiF2Y=106))or
	((x+PosiF7X>=500 and x+PosiF7X<=515) and (y+PosiF2Y=107))or
	((x+PosiF7X>=500 and x+PosiF7X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF7X>=500 and x+PosiF7X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF7X>=500 and x+PosiF7X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF7X>=500 and x+PosiF7X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF7X>=500 and x+PosiF7X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF7X>=500 and x+PosiF7X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF7X>=500 and x+PosiF7X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF7X>=500 and x+PosiF7X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF7X>=500 and x+PosiF7X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF7X>=500 and x+PosiF7X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF7X>=500 and x+PosiF7X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(10)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-8eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF8X>=500 and x+PosiF8X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=511) and (y+PosiF2Y=105))or
	((x+PosiF8X>=500 and x+PosiF8X<=513) and (y+PosiF2Y=106))or
	((x+PosiF8X>=500 and x+PosiF8X<=515) and (y+PosiF2Y=107))or
	((x+PosiF8X>=500 and x+PosiF8X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF8X>=500 and x+PosiF8X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF8X>=500 and x+PosiF8X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF8X>=500 and x+PosiF8X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF8X>=500 and x+PosiF8X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF8X>=500 and x+PosiF8X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF8X>=500 and x+PosiF8X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF8X>=500 and x+PosiF8X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF8X>=500 and x+PosiF8X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF8X>=500 and x+PosiF8X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF8X>=500 and x+PosiF8X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(9)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-7eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF9X>=500 and x+PosiF9X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=511) and (y+PosiF2Y=105))or
	((x+PosiF9X>=500 and x+PosiF9X<=513) and (y+PosiF2Y=106))or
	((x+PosiF9X>=500 and x+PosiF9X<=515) and (y+PosiF2Y=107))or
	((x+PosiF9X>=500 and x+PosiF9X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF9X>=500 and x+PosiF9X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF9X>=500 and x+PosiF9X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF9X>=500 and x+PosiF9X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF9X>=500 and x+PosiF9X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF9X>=500 and x+PosiF9X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF9X>=500 and x+PosiF9X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF9X>=500 and x+PosiF9X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF9X>=500 and x+PosiF9X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF9X>=500 and x+PosiF9X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF9X>=500 and x+PosiF9X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(8)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-6eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF9X>=500 and x+PosiF9X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=511) and (y+PosiF2Y=105))or
	((x+PosiF10X>=500 and x+PosiF10X<=513) and (y+PosiF2Y=106))or
	((x+PosiF10X>=500 and x+PosiF10X<=515) and (y+PosiF2Y=107))or
	((x+PosiF10X>=500 and x+PosiF10X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF10X>=500 and x+PosiF10X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF10X>=500 and x+PosiF10X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF10X>=500 and x+PosiF10X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF10X>=500 and x+PosiF10X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF10X>=500 and x+PosiF10X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF10X>=500 and x+PosiF10X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF10X>=500 and x+PosiF10X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF10X>=500 and x+PosiF10X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF10X>=500 and x+PosiF10X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF10X>=500 and x+PosiF10X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(7)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-5eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF11X>=500 and x+PosiF11X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=511) and (y+PosiF2Y=105))or
	((x+PosiF11X>=500 and x+PosiF11X<=513) and (y+PosiF2Y=106))or
	((x+PosiF11X>=500 and x+PosiF11X<=515) and (y+PosiF2Y=107))or
	((x+PosiF11X>=500 and x+PosiF11X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF11X>=500 and x+PosiF11X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF11X>=500 and x+PosiF11X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF11X>=500 and x+PosiF11X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF11X>=500 and x+PosiF11X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF11X>=500 and x+PosiF11X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF11X>=500 and x+PosiF11X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF11X>=500 and x+PosiF11X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF11X>=500 and x+PosiF11X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF11X>=500 and x+PosiF11X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF11X>=500 and x+PosiF11X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(6)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-4eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF12X>=500 and x+PosiF12X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=511) and (y+PosiF2Y=105))or
	((x+PosiF12X>=500 and x+PosiF12X<=513) and (y+PosiF2Y=106))or
	((x+PosiF12X>=500 and x+PosiF12X<=515) and (y+PosiF2Y=107))or
	((x+PosiF12X>=500 and x+PosiF12X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF12X>=500 and x+PosiF12X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF12X>=500 and x+PosiF12X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF12X>=500 and x+PosiF12X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF12X>=500 and x+PosiF12X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF12X>=500 and x+PosiF12X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF12X>=500 and x+PosiF12X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF12X>=500 and x+PosiF12X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF12X>=500 and x+PosiF12X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF12X>=500 and x+PosiF12X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF12X>=500 and x+PosiF12X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(5)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-3eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF13X>=500 and x+PosiF13X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=511) and (y+PosiF2Y=105))or
	((x+PosiF13X>=500 and x+PosiF13X<=513) and (y+PosiF2Y=106))or
	((x+PosiF13X>=500 and x+PosiF13X<=515) and (y+PosiF2Y=107))or
	((x+PosiF13X>=500 and x+PosiF13X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF13X>=500 and x+PosiF13X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF13X>=500 and x+PosiF13X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF13X>=500 and x+PosiF13X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF13X>=500 and x+PosiF13X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF13X>=500 and x+PosiF13X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF13X>=500 and x+PosiF13X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF13X>=500 and x+PosiF13X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF13X>=500 and x+PosiF13X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF13X>=500 and x+PosiF13X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF13X>=500 and x+PosiF13X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(4)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-2eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF14X>=500 and x+PosiF14X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=511) and (y+PosiF2Y=105))or
	((x+PosiF14X>=500 and x+PosiF14X<=513) and (y+PosiF2Y=106))or
	((x+PosiF14X>=500 and x+PosiF14X<=515) and (y+PosiF2Y=107))or
	((x+PosiF14X>=500 and x+PosiF14X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF14X>=500 and x+PosiF14X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF14X>=500 and x+PosiF14X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF14X>=500 and x+PosiF14X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF14X>=500 and x+PosiF14X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF14X>=500 and x+PosiF14X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF14X>=500 and x+PosiF14X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF14X>=500 and x+PosiF14X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF14X>=500 and x+PosiF14X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF14X>=500 and x+PosiF14X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF14X>=500 and x+PosiF14X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(3)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-1ere position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF15X>=500 and x+PosiF15X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=511) and (y+PosiF2Y=105))or
	((x+PosiF15X>=500 and x+PosiF15X<=513) and (y+PosiF2Y=106))or
	((x+PosiF15X>=500 and x+PosiF15X<=515) and (y+PosiF2Y=107))or
	((x+PosiF15X>=500 and x+PosiF15X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF15X>=500 and x+PosiF15X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF15X>=500 and x+PosiF15X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF15X>=500 and x+PosiF15X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF15X>=500 and x+PosiF15X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF15X>=500 and x+PosiF15X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF15X>=500 and x+PosiF15X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF15X>=500 and x+PosiF15X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF15X>=500 and x+PosiF15X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF15X>=500 and x+PosiF15X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF15X>=500 and x+PosiF15X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF15X>=500 and x+PosiF15X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(2)='1')) or
	-----------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------DROITe-0eme position----------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	((((x+PosiF16X>=500 and x+PosiF16X<=501) and (y+PosiF2Y=100 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=503) and (y+PosiF2Y=101 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=505) and (y+PosiF2Y=102 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=507) and (y+PosiF2Y=103 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=509) and (y+PosiF2Y=104 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=511) and (y+PosiF2Y=105))or
	((x+PosiF16X>=500 and x+PosiF16X<=513) and (y+PosiF2Y=106))or
	((x+PosiF16X>=500 and x+PosiF16X<=515) and (y+PosiF2Y=107))or
	((x+PosiF16X>=500 and x+PosiF16X<=517) and (y+PosiF2Y=108 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=519) and (y+PosiF2Y=109)) or
	((x+PosiF16X>=500 and x+PosiF16X<=521) and (y+PosiF2Y=110)) or
	((x+PosiF16X>=500 and x+PosiF16X<=523) and (y+PosiF2Y=111)) or
	((x+PosiF16X>=500 and x+PosiF16X<=525) and (y+PosiF2Y=112)) or
	((x+PosiF16X>=500 and x+PosiF16X<=527) and (y+PosiF2Y=113)) or
	((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF2Y=114)) or
	((x+PosiF16X>=500 and x+PosiF16X<=527) and (y+PosiF2Y=115)) or
	((x+PosiF16X>=500 and x+PosiF16X<=525) and (y+PosiF2Y=116)) or
	((x+PosiF16X>=500 and x+PosiF16X<=523) and (y+PosiF2Y=117)) or
	((x+PosiF16X>=500 and x+PosiF16X<=521) and (y+PosiF2Y=118)) or
	((x+PosiF16X>=500 and x+PosiF16X<=519) and (y+PosiF2Y=119)) or
	((x+PosiF16X>=500 and x+PosiF16X<=517) and (y+PosiF2Y=120 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=515) and (y+PosiF2Y=121 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=513) and (y+PosiF2Y=122 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=511) and (y+PosiF2Y=123 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=509) and (y+PosiF2Y=124 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=507) and (y+PosiF2Y=125 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=505) and (y+PosiF2Y=126 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=503) and (y+PosiF2Y=127 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=501) and (y+PosiF2Y=128 ))) and (VecteurRIGHT(1)='1')) or
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-15eme position------------------------------------
	-----------------------------------------------------------------------------------------
	----------------------------------------------------------------------------------------------------------------Bqs--------------------------------------
	((((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF1X>=501 and x+PosiF1X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF1X>=501 and x+PosiF1X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF1X>=502 and x+PosiF1X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF1X>=502 and x+PosiF1X<=526) and (y+PosiF3Y=105))or
	((x+PosiF1X>=503 and x+PosiF1X<=525) and (y+PosiF3Y=106))or
	((x+PosiF1X>=503 and x+PosiF1X<=525) and (y+PosiF3Y=107))or
	((x+PosiF1X>=504 and x+PosiF1X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF1X>=504 and x+PosiF1X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF1X>=505 and x+PosiF1X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF1X>=505 and x+PosiF1X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF1X>=506 and x+PosiF1X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF1X>=506 and x+PosiF1X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF1X>=507 and x+PosiF1X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF1X>=507 and x+PosiF1X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF1X>=508 and x+PosiF1X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF1X>=508 and x+PosiF1X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF1X>=509 and x+PosiF1X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF1X>=509 and x+PosiF1X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF1X>=510 and x+PosiF1X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF1X>=510 and x+PosiF1X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF1X>=511 and x+PosiF1X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF1X>=511 and x+PosiF1X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF1X>=512 and x+PosiF1X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF1X>=512 and x+PosiF1X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF1X>=513 and x+PosiF1X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF1X>=513 and x+PosiF1X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF1X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(16)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-14eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF2X>=501 and x+PosiF2X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF2X>=501 and x+PosiF2X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF2X>=502 and x+PosiF2X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF2X>=502 and x+PosiF2X<=526) and (y+PosiF3Y=105))or
	((x+PosiF2X>=503 and x+PosiF2X<=525) and (y+PosiF3Y=106))or
	((x+PosiF2X>=503 and x+PosiF2X<=525) and (y+PosiF3Y=107))or
	((x+PosiF2X>=504 and x+PosiF2X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF2X>=504 and x+PosiF2X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF2X>=505 and x+PosiF2X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF2X>=505 and x+PosiF2X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF2X>=506 and x+PosiF2X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF2X>=506 and x+PosiF2X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF2X>=507 and x+PosiF2X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF2X>=507 and x+PosiF2X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF2X>=508 and x+PosiF2X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF2X>=508 and x+PosiF2X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF2X>=509 and x+PosiF2X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF2X>=509 and x+PosiF2X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF2X>=510 and x+PosiF2X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF2X>=510 and x+PosiF2X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF2X>=511 and x+PosiF2X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF2X>=511 and x+PosiF2X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF2X>=512 and x+PosiF2X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF2X>=512 and x+PosiF2X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF2X>=513 and x+PosiF2X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF2X>=513 and x+PosiF2X<=515) and (y+PosiF3Y=127 ))or
	((PosiF2X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(15)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-13eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF3X>=501 and x+PosiF3X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF3X>=501 and x+PosiF3X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF3X>=502 and x+PosiF3X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF3X>=502 and x+PosiF3X<=526) and (y+PosiF3Y=105))or
	((x+PosiF3X>=503 and x+PosiF3X<=525) and (y+PosiF3Y=106))or
	((x+PosiF3X>=503 and x+PosiF3X<=525) and (y+PosiF3Y=107))or
	((x+PosiF3X>=504 and x+PosiF3X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF3X>=504 and x+PosiF3X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF3X>=505 and x+PosiF3X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF3X>=505 and x+PosiF3X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF3X>=506 and x+PosiF3X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF3X>=506 and x+PosiF3X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF3X>=507 and x+PosiF3X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF3X>=507 and x+PosiF3X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF3X>=508 and x+PosiF3X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF3X>=508 and x+PosiF3X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF3X>=509 and x+PosiF3X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF3X>=509 and x+PosiF3X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF3X>=510 and x+PosiF3X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF3X>=510 and x+PosiF3X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF3X>=511 and x+PosiF3X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF3X>=511 and x+PosiF3X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF3X>=512 and x+PosiF3X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF3X>=512 and x+PosiF3X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF3X>=513 and x+PosiF3X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF3X>=513 and x+PosiF3X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF4X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(14)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-12eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF4X>=501 and x+PosiF4X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF4X>=501 and x+PosiF4X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF4X>=502 and x+PosiF4X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF4X>=502 and x+PosiF4X<=526) and (y+PosiF3Y=105))or
	((x+PosiF4X>=503 and x+PosiF4X<=525) and (y+PosiF3Y=106))or
	((x+PosiF4X>=503 and x+PosiF4X<=525) and (y+PosiF3Y=107))or
	((x+PosiF4X>=504 and x+PosiF4X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF4X>=504 and x+PosiF4X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF4X>=505 and x+PosiF4X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF4X>=505 and x+PosiF4X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF4X>=506 and x+PosiF4X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF4X>=506 and x+PosiF4X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF4X>=507 and x+PosiF4X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF4X>=507 and x+PosiF4X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF4X>=508 and x+PosiF4X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF4X>=508 and x+PosiF4X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF4X>=509 and x+PosiF4X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF4X>=509 and x+PosiF4X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF4X>=510 and x+PosiF4X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF4X>=510 and x+PosiF4X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF4X>=511 and x+PosiF4X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF4X>=511 and x+PosiF4X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF4X>=512 and x+PosiF4X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF4X>=512 and x+PosiF4X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF4X>=513 and x+PosiF4X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF4X>=513 and x+PosiF4X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF4X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(13)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-11eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF5X>=501 and x+PosiF5X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF5X>=501 and x+PosiF5X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF5X>=502 and x+PosiF5X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF5X>=502 and x+PosiF5X<=526) and (y+PosiF3Y=105))or
	((x+PosiF5X>=503 and x+PosiF5X<=525) and (y+PosiF3Y=106))or
	((x+PosiF5X>=503 and x+PosiF5X<=525) and (y+PosiF3Y=107))or
	((x+PosiF5X>=504 and x+PosiF5X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF5X>=504 and x+PosiF5X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF5X>=505 and x+PosiF5X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF5X>=505 and x+PosiF5X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF5X>=506 and x+PosiF5X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF5X>=506 and x+PosiF5X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF5X>=507 and x+PosiF5X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF5X>=507 and x+PosiF5X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF5X>=508 and x+PosiF5X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF5X>=508 and x+PosiF5X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF5X>=509 and x+PosiF5X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF5X>=509 and x+PosiF5X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF5X>=510 and x+PosiF5X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF5X>=510 and x+PosiF5X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF5X>=511 and x+PosiF5X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF5X>=511 and x+PosiF5X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF5X>=512 and x+PosiF5X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF5X>=512 and x+PosiF5X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF5X>=513 and x+PosiF5X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF5X>=513 and x+PosiF5X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF5X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(12)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-10eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF6X>=501 and x+PosiF6X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF6X>=501 and x+PosiF6X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF6X>=502 and x+PosiF6X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF6X>=502 and x+PosiF6X<=526) and (y+PosiF3Y=105))or
	((x+PosiF6X>=503 and x+PosiF6X<=525) and (y+PosiF3Y=106))or
	((x+PosiF6X>=503 and x+PosiF6X<=525) and (y+PosiF3Y=107))or
	((x+PosiF6X>=504 and x+PosiF6X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF6X>=504 and x+PosiF6X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF6X>=505 and x+PosiF6X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF6X>=505 and x+PosiF6X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF6X>=506 and x+PosiF6X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF6X>=506 and x+PosiF6X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF6X>=507 and x+PosiF6X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF6X>=507 and x+PosiF6X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF6X>=508 and x+PosiF6X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF6X>=508 and x+PosiF6X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF6X>=509 and x+PosiF6X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF6X>=509 and x+PosiF6X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF6X>=510 and x+PosiF6X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF6X>=510 and x+PosiF6X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF6X>=511 and x+PosiF6X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF6X>=511 and x+PosiF6X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF6X>=512 and x+PosiF6X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF6X>=512 and x+PosiF6X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF6X>=513 and x+PosiF6X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF6X>=513 and x+PosiF6X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF7X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(11)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-9eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF7X>=501 and x+PosiF7X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF7X>=501 and x+PosiF7X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF7X>=502 and x+PosiF7X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF7X>=502 and x+PosiF7X<=526) and (y+PosiF3Y=105))or
	((x+PosiF7X>=503 and x+PosiF7X<=525) and (y+PosiF3Y=106))or
	((x+PosiF7X>=503 and x+PosiF7X<=525) and (y+PosiF3Y=107))or
	((x+PosiF7X>=504 and x+PosiF7X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF7X>=504 and x+PosiF7X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF7X>=505 and x+PosiF7X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF7X>=505 and x+PosiF7X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF7X>=506 and x+PosiF7X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF7X>=506 and x+PosiF7X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF7X>=507 and x+PosiF7X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF7X>=507 and x+PosiF7X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF7X>=508 and x+PosiF7X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF7X>=508 and x+PosiF7X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF7X>=509 and x+PosiF7X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF7X>=509 and x+PosiF7X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF7X>=510 and x+PosiF7X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF7X>=510 and x+PosiF7X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF7X>=511 and x+PosiF7X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF7X>=511 and x+PosiF7X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF7X>=512 and x+PosiF7X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF7X>=512 and x+PosiF7X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF7X>=513 and x+PosiF7X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF7X>=513 and x+PosiF7X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF7X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(10)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-8eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF8X>=501 and x+PosiF8X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF8X>=501 and x+PosiF8X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF8X>=502 and x+PosiF8X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF8X>=502 and x+PosiF8X<=526) and (y+PosiF3Y=105))or
	((x+PosiF8X>=503 and x+PosiF8X<=525) and (y+PosiF3Y=106))or
	((x+PosiF8X>=503 and x+PosiF8X<=525) and (y+PosiF3Y=107))or
	((x+PosiF8X>=504 and x+PosiF8X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF8X>=504 and x+PosiF8X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF8X>=505 and x+PosiF8X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF8X>=505 and x+PosiF8X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF8X>=506 and x+PosiF8X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF8X>=506 and x+PosiF8X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF8X>=507 and x+PosiF8X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF8X>=507 and x+PosiF8X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF8X>=508 and x+PosiF8X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF8X>=508 and x+PosiF8X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF8X>=509 and x+PosiF8X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF8X>=509 and x+PosiF8X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF8X>=510 and x+PosiF8X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF8X>=510 and x+PosiF8X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF8X>=511 and x+PosiF8X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF8X>=511 and x+PosiF8X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF8X>=512 and x+PosiF8X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF8X>=512 and x+PosiF8X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF8X>=513 and x+PosiF8X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF8X>=513 and x+PosiF8X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF8X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(9)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-7eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF9X>=501 and x+PosiF9X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF9X>=501 and x+PosiF9X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF9X>=502 and x+PosiF9X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF9X>=502 and x+PosiF9X<=526) and (y+PosiF3Y=105))or
	((x+PosiF9X>=503 and x+PosiF9X<=525) and (y+PosiF3Y=106))or
	((x+PosiF9X>=503 and x+PosiF9X<=525) and (y+PosiF3Y=107))or
	((x+PosiF9X>=504 and x+PosiF9X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF9X>=504 and x+PosiF9X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF9X>=505 and x+PosiF9X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF9X>=505 and x+PosiF9X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF9X>=506 and x+PosiF9X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF9X>=506 and x+PosiF9X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF9X>=507 and x+PosiF9X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF9X>=507 and x+PosiF9X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF9X>=508 and x+PosiF9X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF9X>=508 and x+PosiF9X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF9X>=509 and x+PosiF9X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF9X>=509 and x+PosiF9X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF9X>=510 and x+PosiF9X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF9X>=510 and x+PosiF9X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF9X>=511 and x+PosiF9X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF9X>=511 and x+PosiF9X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF9X>=512 and x+PosiF9X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF9X>=512 and x+PosiF9X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF9X>=513 and x+PosiF9X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF9X>=513 and x+PosiF9X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF9X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(8)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-6eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF10X>=501 and x+PosiF10X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF10X>=501 and x+PosiF10X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF10X>=502 and x+PosiF10X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF10X>=502 and x+PosiF10X<=526) and (y+PosiF3Y=105))or
	((x+PosiF10X>=503 and x+PosiF10X<=525) and (y+PosiF3Y=106))or
	((x+PosiF10X>=503 and x+PosiF10X<=525) and (y+PosiF3Y=107))or
	((x+PosiF10X>=504 and x+PosiF10X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF10X>=504 and x+PosiF10X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF10X>=505 and x+PosiF10X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF10X>=505 and x+PosiF10X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF10X>=506 and x+PosiF10X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF10X>=506 and x+PosiF10X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF10X>=507 and x+PosiF10X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF10X>=507 and x+PosiF10X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF10X>=508 and x+PosiF10X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF10X>=508 and x+PosiF10X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF10X>=509 and x+PosiF10X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF10X>=509 and x+PosiF10X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF10X>=510 and x+PosiF10X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF10X>=510 and x+PosiF10X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF10X>=511 and x+PosiF10X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF10X>=511 and x+PosiF10X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF10X>=512 and x+PosiF10X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF10X>=512 and x+PosiF10X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF10X>=513 and x+PosiF10X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF10X>=513 and x+PosiF10X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF11X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(7)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-5eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF11X>=501 and x+PosiF11X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF11X>=501 and x+PosiF11X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF11X>=502 and x+PosiF11X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF11X>=502 and x+PosiF11X<=526) and (y+PosiF3Y=105))or
	((x+PosiF11X>=503 and x+PosiF11X<=525) and (y+PosiF3Y=106))or
	((x+PosiF11X>=503 and x+PosiF11X<=525) and (y+PosiF3Y=107))or
	((x+PosiF11X>=504 and x+PosiF11X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF11X>=504 and x+PosiF11X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF11X>=505 and x+PosiF11X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF11X>=505 and x+PosiF11X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF11X>=506 and x+PosiF11X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF11X>=506 and x+PosiF11X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF11X>=507 and x+PosiF11X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF11X>=507 and x+PosiF11X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF11X>=508 and x+PosiF11X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF11X>=508 and x+PosiF11X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF11X>=509 and x+PosiF11X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF11X>=509 and x+PosiF11X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF11X>=510 and x+PosiF11X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF11X>=510 and x+PosiF11X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF11X>=511 and x+PosiF11X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF11X>=511 and x+PosiF11X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF11X>=512 and x+PosiF11X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF11X>=512 and x+PosiF11X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF11X>=513 and x+PosiF11X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF11X>=513 and x+PosiF11X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF11X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(6)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-4eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF12X>=501 and x+PosiF12X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF12X>=501 and x+PosiF12X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF12X>=502 and x+PosiF12X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF12X>=502 and x+PosiF12X<=526) and (y+PosiF3Y=105))or
	((x+PosiF12X>=503 and x+PosiF12X<=525) and (y+PosiF3Y=106))or
	((x+PosiF12X>=503 and x+PosiF12X<=525) and (y+PosiF3Y=107))or
	((x+PosiF12X>=504 and x+PosiF12X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF12X>=504 and x+PosiF12X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF12X>=505 and x+PosiF12X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF12X>=505 and x+PosiF12X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF12X>=506 and x+PosiF12X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF12X>=506 and x+PosiF12X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF12X>=507 and x+PosiF12X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF12X>=507 and x+PosiF12X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF12X>=508 and x+PosiF12X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF12X>=508 and x+PosiF12X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF12X>=509 and x+PosiF12X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF12X>=509 and x+PosiF12X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF12X>=510 and x+PosiF12X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF12X>=510 and x+PosiF12X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF12X>=511 and x+PosiF12X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF12X>=511 and x+PosiF12X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF12X>=512 and x+PosiF12X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF12X>=512 and x+PosiF12X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF12X>=513 and x+PosiF12X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF12X>=513 and x+PosiF12X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF12X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(5)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-3eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF13X>=501 and x+PosiF13X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF13X>=501 and x+PosiF13X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF13X>=502 and x+PosiF13X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF13X>=502 and x+PosiF13X<=526) and (y+PosiF3Y=105))or
	((x+PosiF13X>=503 and x+PosiF13X<=525) and (y+PosiF3Y=106))or
	((x+PosiF13X>=503 and x+PosiF13X<=525) and (y+PosiF3Y=107))or
	((x+PosiF13X>=504 and x+PosiF13X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF13X>=504 and x+PosiF13X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF13X>=505 and x+PosiF13X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF13X>=505 and x+PosiF13X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF13X>=506 and x+PosiF13X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF13X>=506 and x+PosiF13X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF13X>=507 and x+PosiF13X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF13X>=507 and x+PosiF13X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF13X>=508 and x+PosiF13X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF13X>=508 and x+PosiF13X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF13X>=509 and x+PosiF13X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF13X>=509 and x+PosiF13X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF13X>=510 and x+PosiF13X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF13X>=510 and x+PosiF13X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF13X>=511 and x+PosiF13X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF13X>=511 and x+PosiF13X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF13X>=512 and x+PosiF13X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF13X>=512 and x+PosiF13X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF13X>=513 and x+PosiF13X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF13X>=513 and x+PosiF13X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF13X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(4)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-2eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF14X>=501 and x+PosiF14X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF14X>=501 and x+PosiF14X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF14X>=502 and x+PosiF14X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF14X>=502 and x+PosiF14X<=526) and (y+PosiF3Y=105))or
	((x+PosiF14X>=503 and x+PosiF14X<=525) and (y+PosiF3Y=106))or
	((x+PosiF14X>=503 and x+PosiF14X<=525) and (y+PosiF3Y=107))or
	((x+PosiF14X>=504 and x+PosiF14X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF14X>=504 and x+PosiF14X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF14X>=505 and x+PosiF14X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF14X>=505 and x+PosiF14X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF14X>=506 and x+PosiF14X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF14X>=506 and x+PosiF14X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF14X>=507 and x+PosiF14X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF14X>=507 and x+PosiF14X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF14X>=508 and x+PosiF14X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF14X>=508 and x+PosiF14X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF14X>=509 and x+PosiF14X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF14X>=509 and x+PosiF14X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF14X>=510 and x+PosiF14X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF14X>=510 and x+PosiF14X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF14X>=511 and x+PosiF14X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF14X>=511 and x+PosiF14X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF14X>=512 and x+PosiF14X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF14X>=512 and x+PosiF14X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF14X>=513 and x+PosiF14X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF14X>=513 and x+PosiF14X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF14X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(3)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-1eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF15X>=500 and x+PosiF15X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF15X>=501 and x+PosiF15X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF15X>=501 and x+PosiF15X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF15X>=502 and x+PosiF15X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF15X>=502 and x+PosiF15X<=526) and (y+PosiF3Y=105))or
	((x+PosiF15X>=503 and x+PosiF15X<=525) and (y+PosiF3Y=106))or
	((x+PosiF15X>=503 and x+PosiF15X<=525) and (y+PosiF3Y=107))or
	((x+PosiF15X>=504 and x+PosiF15X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF15X>=504 and x+PosiF15X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF15X>=505 and x+PosiF15X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF15X>=505 and x+PosiF15X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF15X>=506 and x+PosiF15X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF15X>=506 and x+PosiF15X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF15X>=507 and x+PosiF15X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF15X>=507 and x+PosiF15X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF15X>=508 and x+PosiF15X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF15X>=508 and x+PosiF15X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF15X>=509 and x+PosiF15X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF15X>=509 and x+PosiF15X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF15X>=510 and x+PosiF15X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF15X>=510 and x+PosiF15X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF15X>=511 and x+PosiF15X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF15X>=511 and x+PosiF15X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF15X>=512 and x+PosiF15X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF15X>=512 and x+PosiF15X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF15X>=513 and x+PosiF15X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF15X>=513 and x+PosiF15X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF16X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(2)='1')) or
	----------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------BAS-0eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
		((((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF3Y=100 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF3Y=101 ))or
	((x+PosiF16X>=501 and x+PosiF16X<=527) and (y+PosiF3Y=102 ))or
	((x+PosiF16X>=501 and x+PosiF16X<=527) and (y+PosiF3Y=103 ))or
	((x+PosiF16X>=502 and x+PosiF16X<=526) and (y+PosiF3Y=104 ))or
	((x+PosiF16X>=502 and x+PosiF16X<=526) and (y+PosiF3Y=105))or
	((x+PosiF16X>=503 and x+PosiF16X<=525) and (y+PosiF3Y=106))or
	((x+PosiF16X>=503 and x+PosiF16X<=525) and (y+PosiF3Y=107))or
	((x+PosiF16X>=504 and x+PosiF16X<=524) and (y+PosiF3Y=108 ))or
	((x+PosiF16X>=504 and x+PosiF16X<=524) and (y+PosiF3Y=109)) or
	((x+PosiF16X>=505 and x+PosiF16X<=523) and (y+PosiF3Y=110)) or
	((x+PosiF16X>=505 and x+PosiF16X<=523) and (y+PosiF3Y=111)) or
	((x+PosiF16X>=506 and x+PosiF16X<=522) and (y+PosiF3Y=112)) or
	((x+PosiF16X>=506 and x+PosiF16X<=522) and (y+PosiF3Y=113)) or
	((x+PosiF16X>=507 and x+PosiF16X<=521) and (y+PosiF3Y=114)) or
	((x+PosiF16X>=507 and x+PosiF16X<=521) and (y+PosiF3Y=115)) or
	((x+PosiF16X>=508 and x+PosiF16X<=520) and (y+PosiF3Y=116)) or
	((x+PosiF16X>=508 and x+PosiF16X<=520) and (y+PosiF3Y=117)) or
	((x+PosiF16X>=509 and x+PosiF16X<=519) and (y+PosiF3Y=118)) or
	((x+PosiF16X>=509 and x+PosiF16X<=519) and (y+PosiF3Y=119)) or
	((x+PosiF16X>=510 and x+PosiF16X<=518) and (y+PosiF3Y=120 ))or
	((x+PosiF16X>=510 and x+PosiF16X<=518) and (y+PosiF3Y=121 ))or
	((x+PosiF16X>=511 and x+PosiF16X<=517) and (y+PosiF3Y=122 ))or
	((x+PosiF16X>=511 and x+PosiF16X<=517) and (y+PosiF3Y=123 ))or
	((x+PosiF16X>=512 and x+PosiF16X<=516) and (y+PosiF3Y=124 ))or
	((x+PosiF16X>=512 and x+PosiF16X<=516) and (y+PosiF3Y=125 ))or
	((x+PosiF16X>=513 and x+PosiF16X<=515) and (y+PosiF3Y=126 ))or
	((x+PosiF16X>=513 and x+PosiF16X<=515) and (y+PosiF3Y=127 ))or
	((x+PosiF16X=514 ) and (y+PosiF3Y=128 ))) and (VecteurDOWN(1)='1')) or 
	-----------------------------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-15eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF1X>=500 and x+PosiF1X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF1X>=501 and x+PosiF1X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF1X>=501 and x+PosiF1X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF1X>=502 and x+PosiF1X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF1X>=502 and x+PosiF1X<=526) and (y+PosiF4Y=123))or
	((x+PosiF1X>=503 and x+PosiF1X<=525) and (y+PosiF4Y=122))or
	((x+PosiF1X>=503 and x+PosiF1X<=525) and (y+PosiF4Y=121))or
	((x+PosiF1X>=504 and x+PosiF1X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF1X>=504 and x+PosiF1X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF1X>=505 and x+PosiF1X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF1X>=505 and x+PosiF1X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF1X>=506 and x+PosiF1X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF1X>=506 and x+PosiF1X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF1X>=507 and x+PosiF1X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF1X>=507 and x+PosiF1X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF1X>=508 and x+PosiF1X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF1X>=508 and x+PosiF1X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF1X>=509 and x+PosiF1X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF1X>=509 and x+PosiF1X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF1X>=510 and x+PosiF1X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF1X>=510 and x+PosiF1X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF1X>=511 and x+PosiF1X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF1X>=511 and x+PosiF1X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF1X>=512 and x+PosiF1X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF1X>=512 and x+PosiF1X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF1X>=513 and x+PosiF1X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF1X>=513 and x+PosiF1X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF1X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(16)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-14eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF2X>=500 and x+PosiF2X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF2X>=501 and x+PosiF2X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF2X>=501 and x+PosiF2X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF2X>=502 and x+PosiF2X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF2X>=502 and x+PosiF2X<=526) and (y+PosiF4Y=123))or
	((x+PosiF2X>=503 and x+PosiF2X<=525) and (y+PosiF4Y=122))or
	((x+PosiF2X>=503 and x+PosiF2X<=525) and (y+PosiF4Y=121))or
	((x+PosiF2X>=504 and x+PosiF2X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF2X>=504 and x+PosiF2X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF2X>=505 and x+PosiF2X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF2X>=505 and x+PosiF2X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF2X>=506 and x+PosiF2X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF2X>=506 and x+PosiF2X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF2X>=507 and x+PosiF2X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF2X>=507 and x+PosiF2X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF2X>=508 and x+PosiF2X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF2X>=508 and x+PosiF2X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF2X>=509 and x+PosiF2X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF2X>=509 and x+PosiF2X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF2X>=510 and x+PosiF2X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF2X>=510 and x+PosiF2X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF2X>=511 and x+PosiF2X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF2X>=511 and x+PosiF2X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF2X>=512 and x+PosiF2X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF2X>=512 and x+PosiF2X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF2X>=513 and x+PosiF2X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF2X>=513 and x+PosiF2X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF2X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(15)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-13eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF3X>=500 and x+PosiF3X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF3X>=501 and x+PosiF3X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF3X>=501 and x+PosiF3X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF3X>=502 and x+PosiF3X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF3X>=502 and x+PosiF3X<=526) and (y+PosiF4Y=123))or
	((x+PosiF3X>=503 and x+PosiF3X<=525) and (y+PosiF4Y=122))or
	((x+PosiF3X>=503 and x+PosiF3X<=525) and (y+PosiF4Y=121))or
	((x+PosiF3X>=504 and x+PosiF3X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF3X>=504 and x+PosiF3X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF3X>=505 and x+PosiF3X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF3X>=505 and x+PosiF3X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF3X>=506 and x+PosiF3X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF3X>=506 and x+PosiF3X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF3X>=507 and x+PosiF3X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF3X>=507 and x+PosiF3X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF3X>=508 and x+PosiF3X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF3X>=508 and x+PosiF3X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF3X>=509 and x+PosiF3X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF3X>=509 and x+PosiF3X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF3X>=510 and x+PosiF3X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF3X>=510 and x+PosiF3X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF3X>=511 and x+PosiF3X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF3X>=511 and x+PosiF3X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF3X>=512 and x+PosiF3X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF3X>=512 and x+PosiF3X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF3X>=513 and x+PosiF3X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF3X>=513 and x+PosiF3X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF3X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(14)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-12eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF4X>=500 and x+PosiF4X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF4X>=501 and x+PosiF4X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF4X>=501 and x+PosiF4X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF4X>=502 and x+PosiF4X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF4X>=502 and x+PosiF4X<=526) and (y+PosiF4Y=123))or
	((x+PosiF4X>=503 and x+PosiF4X<=525) and (y+PosiF4Y=122))or
	((x+PosiF4X>=503 and x+PosiF4X<=525) and (y+PosiF4Y=121))or
	((x+PosiF4X>=504 and x+PosiF4X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF4X>=504 and x+PosiF4X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF4X>=505 and x+PosiF4X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF4X>=505 and x+PosiF4X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF4X>=506 and x+PosiF4X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF4X>=506 and x+PosiF4X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF4X>=507 and x+PosiF4X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF4X>=507 and x+PosiF4X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF4X>=508 and x+PosiF4X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF4X>=508 and x+PosiF4X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF4X>=509 and x+PosiF4X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF4X>=509 and x+PosiF4X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF4X>=510 and x+PosiF4X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF4X>=510 and x+PosiF4X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF4X>=511 and x+PosiF4X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF4X>=511 and x+PosiF4X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF4X>=512 and x+PosiF4X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF4X>=512 and x+PosiF4X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF4X>=513 and x+PosiF4X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF4X>=513 and x+PosiF4X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF4X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(13)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-11eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF5X>=500 and x+PosiF5X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF5X>=501 and x+PosiF5X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF5X>=501 and x+PosiF5X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF5X>=502 and x+PosiF5X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF5X>=502 and x+PosiF5X<=526) and (y+PosiF4Y=123))or
	((x+PosiF5X>=503 and x+PosiF5X<=525) and (y+PosiF4Y=122))or
	((x+PosiF5X>=503 and x+PosiF5X<=525) and (y+PosiF4Y=121))or
	((x+PosiF5X>=504 and x+PosiF5X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF5X>=504 and x+PosiF5X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF5X>=505 and x+PosiF5X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF5X>=505 and x+PosiF5X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF5X>=506 and x+PosiF5X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF5X>=506 and x+PosiF5X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF5X>=507 and x+PosiF5X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF5X>=507 and x+PosiF5X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF5X>=508 and x+PosiF5X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF5X>=508 and x+PosiF5X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF5X>=509 and x+PosiF5X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF5X>=509 and x+PosiF5X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF5X>=510 and x+PosiF5X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF5X>=510 and x+PosiF5X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF5X>=511 and x+PosiF5X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF5X>=511 and x+PosiF5X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF5X>=512 and x+PosiF5X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF5X>=512 and x+PosiF5X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF5X>=513 and x+PosiF5X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF5X>=513 and x+PosiF5X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF5X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(12)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-10eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF6X>=500 and x+PosiF6X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF6X>=501 and x+PosiF6X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF6X>=501 and x+PosiF6X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF6X>=502 and x+PosiF6X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF6X>=502 and x+PosiF6X<=526) and (y+PosiF4Y=123))or
	((x+PosiF6X>=503 and x+PosiF6X<=525) and (y+PosiF4Y=122))or
	((x+PosiF6X>=503 and x+PosiF6X<=525) and (y+PosiF4Y=121))or
	((x+PosiF6X>=504 and x+PosiF6X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF6X>=504 and x+PosiF6X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF6X>=505 and x+PosiF6X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF6X>=505 and x+PosiF6X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF6X>=506 and x+PosiF6X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF6X>=506 and x+PosiF6X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF6X>=507 and x+PosiF6X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF6X>=507 and x+PosiF6X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF6X>=508 and x+PosiF6X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF6X>=508 and x+PosiF6X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF6X>=509 and x+PosiF6X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF6X>=509 and x+PosiF6X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF6X>=510 and x+PosiF6X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF6X>=510 and x+PosiF6X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF6X>=511 and x+PosiF6X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF6X>=511 and x+PosiF6X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF6X>=512 and x+PosiF6X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF6X>=512 and x+PosiF6X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF6X>=513 and x+PosiF6X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF6X>=513 and x+PosiF6X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF6X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(11)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-9eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF7X>=500 and x+PosiF7X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF7X>=501 and x+PosiF7X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF7X>=501 and x+PosiF7X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF7X>=502 and x+PosiF7X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF7X>=502 and x+PosiF7X<=526) and (y+PosiF4Y=123))or
	((x+PosiF7X>=503 and x+PosiF7X<=525) and (y+PosiF4Y=122))or
	((x+PosiF7X>=503 and x+PosiF7X<=525) and (y+PosiF4Y=121))or
	((x+PosiF7X>=504 and x+PosiF7X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF7X>=504 and x+PosiF7X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF7X>=505 and x+PosiF7X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF7X>=505 and x+PosiF7X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF7X>=506 and x+PosiF7X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF7X>=506 and x+PosiF7X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF7X>=507 and x+PosiF7X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF7X>=507 and x+PosiF7X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF7X>=508 and x+PosiF7X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF7X>=508 and x+PosiF7X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF7X>=509 and x+PosiF7X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF7X>=509 and x+PosiF7X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF7X>=510 and x+PosiF7X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF7X>=510 and x+PosiF7X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF7X>=511 and x+PosiF7X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF7X>=511 and x+PosiF7X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF7X>=512 and x+PosiF7X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF7X>=512 and x+PosiF7X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF7X>=513 and x+PosiF7X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF7X>=513 and x+PosiF7X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF7X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(10)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-8eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF8X>=500 and x+PosiF8x+PosiF8X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF8X>=500 and x+PosiF8X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF8X>=501 and x+PosiF8X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF8X>=501 and x+PosiF8X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF8X>=502 and x+PosiF8X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF8X>=502 and x+PosiF8X<=526) and (y+PosiF4Y=123))or
	((x+PosiF8X>=503 and x+PosiF8X<=525) and (y+PosiF4Y=122))or
	((x+PosiF8X>=503 and x+PosiF8X<=525) and (y+PosiF4Y=121))or
	((x+PosiF8X>=504 and x+PosiF8X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF8X>=504 and x+PosiF8X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF8X>=505 and x+PosiF8X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF8X>=505 and x+PosiF8X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF8X>=506 and x+PosiF8X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF8X>=506 and x+PosiF8X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF8X>=507 and x+PosiF8X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF8X>=507 and x+PosiF8X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF8X>=508 and x+PosiF8X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF8X>=508 and x+PosiF8X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF8X>=509 and x+PosiF8X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF8X>=509 and x+PosiF8X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF8X>=510 and x+PosiF8X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF8X>=510 and x+PosiF8X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF8X>=511 and x+PosiF8X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF8X>=511 and x+PosiF8X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF8X>=512 and x+PosiF8X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF8X>=512 and x+PosiF8X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF8X>=513 and x+PosiF8X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF8X>=513 and x+PosiF8X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF8X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(9)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-7eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF9X>=500 and x+PosiF9X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF9X>=501 and x+PosiF9X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF9X>=501 and x+PosiF9X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF9X>=502 and x+PosiF9X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF9X>=502 and x+PosiF9X<=526) and (y+PosiF4Y=123))or
	((x+PosiF9X>=503 and x+PosiF9X<=525) and (y+PosiF4Y=122))or
	((x+PosiF9X>=503 and x+PosiF9X<=525) and (y+PosiF4Y=121))or
	((x+PosiF9X>=504 and x+PosiF9X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF9X>=504 and x+PosiF9X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF9X>=505 and x+PosiF9X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF9X>=505 and x+PosiF9X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF9X>=506 and x+PosiF9X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF9X>=506 and x+PosiF9X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF9X>=507 and x+PosiF9X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF9X>=507 and x+PosiF9X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF9X>=508 and x+PosiF9X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF9X>=508 and x+PosiF9X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF9X>=509 and x+PosiF9X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF9X>=509 and x+PosiF9X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF9X>=510 and x+PosiF9X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF9X>=510 and x+PosiF9X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF9X>=511 and x+PosiF9X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF9X>=511 and x+PosiF9X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF9X>=512 and x+PosiF9X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF9X>=512 and x+PosiF9X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF9X>=513 and x+PosiF9X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF9X>=513 and x+PosiF9X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF9X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(8)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-6eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF10X>=500 and x+PosiF10X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF10X>=501 and x+PosiF10X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF10X>=501 and x+PosiF10X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF10X>=502 and x+PosiF10X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF10X>=502 and x+PosiF10X<=526) and (y+PosiF4Y=123))or
	((x+PosiF10X>=503 and x+PosiF10X<=525) and (y+PosiF4Y=122))or
	((x+PosiF10X>=503 and x+PosiF10X<=525) and (y+PosiF4Y=121))or
	((x+PosiF10X>=504 and x+PosiF10X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF10X>=504 and x+PosiF10X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF10X>=505 and x+PosiF10X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF10X>=505 and x+PosiF10X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF10X>=506 and x+PosiF10X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF10X>=506 and x+PosiF10X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF10X>=507 and x+PosiF10X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF10X>=507 and x+PosiF10X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF10X>=508 and x+PosiF10X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF10X>=508 and x+PosiF10X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF10X>=509 and x+PosiF10X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF10X>=509 and x+PosiF10X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF10X>=510 and x+PosiF10X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF10X>=510 and x+PosiF10X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF10X>=511 and x+PosiF10X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF10X>=511 and x+PosiF10X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF10X>=512 and x+PosiF10X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF10X>=512 and x+PosiF10X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF10X>=513 and x+PosiF10X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF10X>=513 and x+PosiF10X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF10X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(7)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-5eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF11X>=500 and x+PosiF11X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF11X>=501 and x+PosiF11X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF11X>=501 and x+PosiF11X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF11X>=502 and x+PosiF11X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF11X>=502 and x+PosiF11X<=526) and (y+PosiF4Y=123))or
	((x+PosiF11X>=503 and x+PosiF11X<=525) and (y+PosiF4Y=122))or
	((x+PosiF11X>=503 and x+PosiF11X<=525) and (y+PosiF4Y=121))or
	((x+PosiF11X>=504 and x+PosiF11X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF11X>=504 and x+PosiF11X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF11X>=505 and x+PosiF11X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF11X>=505 and x+PosiF11X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF11X>=506 and x+PosiF11X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF11X>=506 and x+PosiF11X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF11X>=507 and x+PosiF11X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF11X>=507 and x+PosiF11X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF11X>=508 and x+PosiF11X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF11X>=508 and x+PosiF11X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF11X>=509 and x+PosiF11X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF11X>=509 and x+PosiF11X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF11X>=510 and x+PosiF11X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF11X>=510 and x+PosiF11X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF11X>=511 and x+PosiF11X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF11X>=511 and x+PosiF11X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF11X>=512 and x+PosiF11X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF11X>=512 and x+PosiF11X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF11X>=513 and x+PosiF11X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF11X>=513 and x+PosiF11X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF11X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(6)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-4eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF12X>=500 and x+PosiF12X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF12X>=501 and x+PosiF12X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF12X>=501 and x+PosiF12X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF12X>=502 and x+PosiF12X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF12X>=502 and x+PosiF12X<=526) and (y+PosiF4Y=123))or
	((x+PosiF12X>=503 and x+PosiF12X<=525) and (y+PosiF4Y=122))or
	((x+PosiF12X>=503 and x+PosiF12X<=525) and (y+PosiF4Y=121))or
	((x+PosiF12X>=504 and x+PosiF12X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF12X>=504 and x+PosiF12X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF12X>=505 and x+PosiF12X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF12X>=505 and x+PosiF12X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF12X>=506 and x+PosiF12X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF12X>=506 and x+PosiF12X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF12X>=507 and x+PosiF12X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF12X>=507 and x+PosiF12X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF12X>=508 and x+PosiF12X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF12X>=508 and x+PosiF12X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF12X>=509 and x+PosiF12X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF12X>=509 and x+PosiF12X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF12X>=510 and x+PosiF12X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF12X>=510 and x+PosiF12X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF12X>=511 and x+PosiF12X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF12X>=511 and x+PosiF12X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF12X>=512 and x+PosiF12X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF12X>=512 and x+PosiF12X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF12X>=513 and x+PosiF12X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF12X>=513 and x+PosiF12X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF12X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(5)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-3eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF13X>=500 and x+PosiF13X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF13X>=501 and x+PosiF13X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF13X>=501 and x+PosiF13X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF13X>=502 and x+PosiF13X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF13X>=502 and x+PosiF13X<=526) and (y+PosiF4Y=123))or
	((x+PosiF13X>=503 and x+PosiF13X<=525) and (y+PosiF4Y=122))or
	((x+PosiF13X>=503 and x+PosiF13X<=525) and (y+PosiF4Y=121))or
	((x+PosiF13X>=504 and x+PosiF13X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF13X>=504 and x+PosiF13X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF13X>=505 and x+PosiF13X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF13X>=505 and x+PosiF13X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF13X>=506 and x+PosiF13X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF13X>=506 and x+PosiF13X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF13X>=507 and x+PosiF13X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF13X>=507 and x+PosiF13X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF13X>=508 and x+PosiF13X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF13X>=508 and x+PosiF13X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF13X>=509 and x+PosiF13X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF13X>=509 and x+PosiF13X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF13X>=510 and x+PosiF13X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF13X>=510 and x+PosiF13X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF13X>=511 and x+PosiF13X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF13X>=511 and x+PosiF13X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF13X>=512 and x+PosiF13X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF13X>=512 and x+PosiF13X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF13X>=513 and x+PosiF13X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF13X>=513 and x+PosiF13X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF13X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(4)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-2eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF14X>=500 and x+PosiF14X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF14X>=501 and x+PosiF14X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF14X>=501 and x+PosiF14X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF14X>=502 and x+PosiF14X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF14X>=502 and x+PosiF14X<=526) and (y+PosiF4Y=123))or
	((x+PosiF14X>=503 and x+PosiF14X<=525) and (y+PosiF4Y=122))or
	((x+PosiF14X>=503 and x+PosiF14X<=525) and (y+PosiF4Y=121))or
	((x+PosiF14X>=504 and x+PosiF14X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF14X>=504 and x+PosiF14X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF14X>=505 and x+PosiF14X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF14X>=505 and x+PosiF14X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF14X>=506 and x+PosiF14X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF14X>=506 and x+PosiF14X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF14X>=507 and x+PosiF14X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF14X>=507 and x+PosiF14X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF14X>=508 and x+PosiF14X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF14X>=508 and x+PosiF14X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF14X>=509 and x+PosiF14X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF14X>=509 and x+PosiF14X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF14X>=510 and x+PosiF14X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF14X>=510 and x+PosiF14X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF14X>=511 and x+PosiF14X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF14X>=511 and x+PosiF14X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF14X>=512 and x+PosiF14X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF14X>=512 and x+PosiF14X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF14X>=513 and x+PosiF14X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF14X>=513 and x+PosiF14X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF14X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(3)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-1ere position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF15X>=500 and x+PosiF15x<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF15X>=500 and x+PosiF15X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF15X>=501 and x+PosiF15X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF15X>=501 and x+PosiF15X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF15X>=502 and x+PosiF15X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF15X>=502 and x+PosiF15X<=526) and (y+PosiF4Y=123))or
	((x+PosiF15X>=503 and x+PosiF15X<=525) and (y+PosiF4Y=122))or
	((x+PosiF15X>=503 and x+PosiF15X<=525) and (y+PosiF4Y=121))or
	((x+PosiF15X>=504 and x+PosiF15X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF15X>=504 and x+PosiF15X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF15X>=505 and x+PosiF15X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF15X>=505 and x+PosiF15X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF15X>=506 and x+PosiF15X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF15X>=506 and x+PosiF15X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF15X>=507 and x+PosiF15X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF15X>=507 and x+PosiF15X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF15X>=508 and x+PosiF15X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF15X>=508 and x+PosiF15X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF15X>=509 and x+PosiF15X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF15X>=509 and x+PosiF15X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF15X>=510 and x+PosiF15X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF15X>=510 and x+PosiF15X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF15X>=511 and x+PosiF15X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF15X>=511 and x+PosiF15X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF15X>=512 and x+PosiF15X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF15X>=512 and x+PosiF15X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF15X>=513 and x+PosiF15X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF15X>=513 and x+PosiF15X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF15X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(2)='1')) or
	---------------------------------------------------------------------
	-----------------------------------------------------------------------------------------
	-----------------------------------HAUT-0eme position------------------------------------
	-----------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------
	((((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF4Y=128 ))or
	((x+PosiF16X>=500 and x+PosiF16X<=528) and (y+PosiF4Y=127 ))or
	((x+PosiF16X>=501 and x+PosiF16X<=527) and (y+PosiF4Y=126 ))or
	((x+PosiF16X>=501 and x+PosiF16X<=527) and (y+PosiF4Y=125 ))or
	((x+PosiF16X>=502 and x+PosiF16X<=526) and (y+PosiF4Y=124 ))or
	((x+PosiF16X>=502 and x+PosiF16X<=526) and (y+PosiF4Y=123))or
	((x+PosiF16X>=503 and x+PosiF16X<=525) and (y+PosiF4Y=122))or
	((x+PosiF16X>=503 and x+PosiF16X<=525) and (y+PosiF4Y=121))or
	((x+PosiF16X>=504 and x+PosiF16X<=524) and (y+PosiF4Y=120 ))or
	((x+PosiF16X>=504 and x+PosiF16X<=524) and (y+PosiF4Y=119)) or
	((x+PosiF16X>=505 and x+PosiF16X<=523) and (y+PosiF4Y=118)) or
	((x+PosiF16X>=505 and x+PosiF16X<=523) and (y+PosiF4Y=117)) or
	((x+PosiF16X>=506 and x+PosiF16X<=522) and (y+PosiF4Y=116)) or
	((x+PosiF16X>=506 and x+PosiF16X<=522) and (y+PosiF4Y=115)) or
	((x+PosiF16X>=507 and x+PosiF16X<=521) and (y+PosiF4Y=114)) or
	((x+PosiF16X>=507 and x+PosiF16X<=521) and (y+PosiF4Y=113)) or
	((x+PosiF16X>=508 and x+PosiF16X<=520) and (y+PosiF4Y=112)) or
	((x+PosiF16X>=508 and x+PosiF16X<=520) and (y+PosiF4Y=111)) or
	((x+PosiF16X>=509 and x+PosiF16X<=519) and (y+PosiF4Y=110)) or
	((x+PosiF16X>=509 and x+PosiF16X<=519) and (y+PosiF4Y=109)) or
	((x+PosiF16X>=510 and x+PosiF16X<=518) and (y+PosiF4Y=108 ))or
	((x+PosiF16X>=510 and x+PosiF16X<=518) and (y+PosiF4Y=107 ))or
	((x+PosiF16X>=511 and x+PosiF16X<=517) and (y+PosiF4Y=106 ))or
	((x+PosiF16X>=511 and x+PosiF16X<=517) and (y+PosiF4Y=105 ))or
	((x+PosiF16X>=512 and x+PosiF16X<=516) and (y+PosiF4Y=104 ))or
	((x+PosiF16X>=512 and x+PosiF16X<=516) and (y+PosiF4Y=103 ))or
	((x+PosiF16X>=513 and x+PosiF16X<=515) and (y+PosiF4Y=102 ))or
	((x+PosiF16X>=513 and x+PosiF16X<=515) and (y+PosiF4Y=101 ))or
	((x+PosiF16X=514 ) and (y+PosiF4Y=100 )) ) and (VecteurUP(1)='1')) ) and ((start='0')and (lifes /=0)))or
	---------------------------------------------------------------------------------------
	--------------------------------------SIQLETON-DEBUT------------------------------------
	---------------------------------------------------------------------------------------
	--------------------------------------S------------------------------------------------
	---------------------------------------------------------------------------------------
	 ((
	((x>=5 and x<=85) and (y=50 or y=51 or y=52))or
((x>=5 and x<=85) and (y=160 or y=161 or y=159))or
     ((x>=5 and x<=85) and (y=268 or y=269 or y=270))or
     ((x=85 or x=84 or x=83) and (y>=161 and y<=270))or
     ((x=5 or x=6 or x=7) and (y>=50 and y<=160))or
      -------------------------------------------------------------------------------
     -----------------------I--------------------------------------------------------
	  ----------------------------------------------------------------------------------

     ((x>=90 and x<=120) and (y=50 or y=51 or y=52 or y=268 or y=269 or y=270 ))or
     ((x=105 or x=104 or x=106 or x=107 or x=103) and (y>=50 and y<=270 )) or
	  ----------------------------------------------------------------------------------
     -----------------------Q----------------------------------------------------------
	  ---------------------------------------------------------------------------------
     ((x>=125 and x<=200) and (y=50 or y=51 or y=52 or y=268 or y=269 or y=270 ))or
     ((x=125 or x=126 or x=127 or x=198 or x=199 or x=200  ) and( y>=50 and y<=270)) or
     ((x>=173 and x<=175)and (y=261 or y=262))or
     ((x>=174 and x<=176)and (y=264 or y=263))or
     ((x>=175 and x<=177)and (y=265 or y=266))or
     ((x>=176 and x<=178)and (y=268 or y=267))or
     ((x>=181 and x<=183)and (y=271 or y=272))or
     ((x>=182 and x<=184)and (y=273 or y=274))or
     ((x>=183 and x<=185)and (y=275 or y=276))or
     ((x>=184 and x<=186)and (y=277 or y=278))or
     ((x>=185 and x<=187)and (y=279 or y=280))or
     ((x>=186 and x<=188)and (y=281 or y=282))or
     ((x>=187 and x<=189)and (y=283 or y=284))or
	  -------------------------------------------------------------------------------
     -----------------------L-------------------------------------------------------
	  -------------------------------------------------------------------------------

    ((x=205 or x=206 or x=207) and (y>=50 and y<=270))or
    ((x>=205 and x<=285) and (y=268 or y=269 or y=270))or
	 -------------------------------------------------------------------------------
    ------------------------E------------------------------------------------------
	 -------------------------------------------------------------------------------
    ((x=292 or x=291 or x=290) and (y>=50 and y<=270))or
    ((x>=290 and x<=370) and (y=170 or y=171 or y=172 or y=50 or y=51 or y=52 or y=270 or y=271 or y=272))or
    -------------------------------------------------------------------------------
	 ------------------------t----------------------------------------------------------
	 -------------------------------------------------------------------------------
    ((x=415 or x=416 or x=414) and (y>=50 and y<=270))or
    ((x>=375 and x<=455) and (y=50 or y=51 or y=52 ))or
	 -------------------------------------------------------------------------------------
    -----------------------o-la tete-----------------------------------------------------------
	 -------------------------------------------------------------------------------
((x=265 and x=345) and (y-50=50 or y-50=51 or y-50=52))or
  ((x=305 or x=306 or x=304) and (y-50<=50 and y-50>=270))or
  ((x-450>=32 and x-450<=67) and (y-100=4)) or 
	 ((x-450>=30 and x-450<=69) and (y-100=5)) or
	 ((x-450>=28 and x-450<=71) and (y-100=6)) or
	 ((x-450>=26 and x-450<=73) and (y-100=7)) or
	 ((x-450>=24 and x-450<=75) and (y-100=8)) or 
	 ((x-450>=23 and x-450<=76) and (y-100=9)) or
	 ((x-450>=22 and x-450<=77) and (y-100=10)) or
	 ((x-450>=20 and x-450<=79) and (y-100=11))or
	 ((x-450>=19 and x-450<=80) and (y-100=12)) or 
	 ((x-450>=18 and x-450<=81) and (y-100=13)) or
	 ((x-450>=17 and x-450<=82) and (y-100=14)) or
	 ((x-450>=16 and x-450<=83) and (y-100=15))or
	 ((x-450>=15 and x-450<=84) and (y-100=16)) or 
	 ((x-450>=14 and x-450<=85) and (y-100=17)) or
	 ((x-450>=13 and x-450<=86) and (y-100=18)) or
	 ((x-450>=12 and x-450<=87) and (y-100=19))or
	 ((x-450>=11 and x-450<=88) and (y-100=20)) or 
	 ((x-450>=11 and x-450<=88) and (y-100=21)) or
	 ((x-450>=10 and x-450<=89) and (y-100=22)) or
	 ((x-450>=9 and x-450<=90) and (y-100=23))or
	 ((x-450>=9 and x-450<=90) and (y-100=24))or
	 ((x-450>=8 and x-450<=91) and (y-100=25))or
	 ((x-450>=7 and x-450<=92) and (y-100=26))or
	 ((x-450>=7 and x-450<=92) and (y-100=27))or
	 ((x-450>=6 and x-450<=93) and (y-100=28))or
	 ((x-450>=6 and x-450<=93) and (y-100=29))or
	 ((x-450>=5 and x-450<=94) and (y-100=30))or
	 ((x-450>=5 and x-450<=94) and (y-100=31))or
	 ((x-450>=4 and x-450<=95) and (y-100=32))or
	 ((x-450>=4 and x-450<=96) and (y-100=33))or
	 ((x-450>=4 and x-450<=97) and (y-100=34))or
	 ((x-450>=3 and x-450<=98) and (y-100=35))or
	 ((x-450>=3 and x-450<=98) and (y-100=36))or
	 ((x-450>=3 and x-450<=98) and (y-100=37))or
	 ((x-450>=3 and x-450<=98) and (y-100=38))or
	 ((x-450>=2 and x-450<=99) and (y-100=39))or
	 ((x-450>=2  and x-450<=99) and (y-100=40))or
	  
	 (((x-450>=1 and x-450<=28)or (x-450>=39 and x-450<=99)) and (y-100=41))or
	 (((x-450>=1 and x-450<=25) or (x-450>=42 and x-450<=70)or (x-450>=78 and x-450<=99)) and (y-100=42))or
	 (((x-450>=0 and x-450<=23) or (x-450>=44 and x-450<=67)or (x-450>=81 and x-450<=99)) and (y-100=43))or
	 (((x-450>=0 and x-450<=22) or (x-450>=45 and x-450<=65)or (x-450>=83 and x-450<=99)) and (y-100=44))or
	 (((x-450>=0 and x-450<=21) or (x-450>=46 and x-450<=64) or (x-450>=85 and x-450<=99)) and (y-100=45))or 
	 (((x-450>=0 and x-450<=20) or (x-450>=47 and x-450<=63) or (x-450>=86 and x-450<=99)) and (y-100=46))or 
	 (((x-450>=0 and x-450<=19) or (x-450>=48 and x-450<=62) or (x-450>=87 and x-450<=99)) and (y-100=47))or 
	 (((x-450>=0 and x-450<=18) or (x-450>=49 and x-450<=61) or (x-450>=88 and x-450<=99)) and (y-100=48))or 
	 (((x-450>=0 and x-450<=17) or (x-450>=50 and x-450<=60)or (x-450>=89 and x-450<=99)) and (y-100=49))or 
	 (((x-450>=0 and x-450<=17) or (x-450>=50 and x-450<=59) or (x-450>=89 and x-450<=99)) and (y-100=50))or 
	 (((x-450>=0 and x-450<=16) or (x-450>=51 and x-450<=58) or (x-450>=90 and x-450<=99)) and (y-100=51))or 
	 (((x-450>=0 and x-450<=16) or (x-450>=51 and x-450<=58) or (x-450>=90 and x-450<=99)) and (y-100=52))or 
	 (((x-450>=0 and x-450<=16) or (x-450>=51 and x-450<=58) or (x-450>=90 and x-450<=99)) and (y-100=53))or 
	 (((x-450>=0 and x-450<=15) or (x-450>=52 and x-450<=58) or (x-450>=91 and x-450<=99)) and (y-100=54))or 
	 (((x-450>=0 and x-450<=15)or (x-450>=52 and x-450<=57)or (x-450>=91 and x-450<=99)) and (y-100>=55 and y-100<=62))or
	 (((x-450>=0 and x-450<=16)or (x-450>=51 and x-450<=57)or (x-450>=91 and x-450<=99)) and (y-100=63))or 
	 (((x-450>=0 and x-450<=16)or (x-450>=51 and x-450<=57)or (x-450>=90 and x-450<=99)) and (y-100=64))or 
	 (((x-450>=0 and x-450<=16)or (x-450>=51 and x-450<=57)or (x-450>=90 and x-450<=99)) and (y-100=65))or 
	 (((x-450>=1 and x-450<=17)or (x-450>=50 and x-450<=57) or (x-450>=90 and x-450<=98)) and (y-100=66))or 
	 (((x-450>=2 and x-450<=18)or (x-450>=49 and x-450<=57)or (x-450>=89 and x-450<=98)) and (y-100=67))or 
	 (((x-450>=3 and x-450<=18)or (x-450>=49 and x-450<=58) or (x-450>=89 and x-450<=97)) and (y-100=68))or 
	 (((x-450>=4 and x-450<=19)or (x-450>=48 and x-450<=58)or (x-450>=88 and x-450<=97)) and (y-100=69))or 
	 (((x-450>=5 and x-450<=20)or (x-450>=48 and x-450<=59) or (x-450>=87 and x-450<=97)) and (y-100=70))or 
	 (((x-450>=5 and x-450<=21)or (x-450>=47 and x-450<=50) or (x-450>=86 and x-450<=96)or (x-450>=55 and x-450<=60)) and (y-100=71))or 
	 (((x-450>=5 and x-450<=23)or (x-450>=45 and x-450<=50) or (x-450>=85 and x-450<=96)or (x-450>=55 and x-450<=61)) and (y-100=72))or  	 
	 (((x-450>=5 and x-450<=24)or (x-450>=44 and x-450<=49)or (x-450>=84 and x-450<=96)or (x-450>=55 and x-450<=62)) and (y-100=73))or  	 
	 (((x-450>=4 and x-450<=26)or (x-450>=42 and x-450<=48) or (x-450>=83 and x-450<=96)or (x-450>=56 and x-450<=63)) and (y-100=74))or  	 
	 (((x-450>=3 and x-450<=29)or (x-450>=39 and x-450<=47)or (x-450>=82 and x-450<=96)or (x-450>=57 and x-450<=65)) and (y-100=75))or  	 
	 (((x-450>=3 and x-450<=46)or (x-450>=57 and x-450<=68)or (x-450>=78 and x-450<=97)) and (y-100=76))or  	 
	 (((x-450>=3 and x-450<=45)or (x-450>=58 and x-450<=98)) and (y-100=77))or  	 
	 (((x-450>=3 and x-450<=45)or (x-450>=58 and x-450<=98)) and (y-100=78))or  	 
	 (((x-450>=3 and x-450<=45)or (x-450>=59 and x-450<=98)) and (y-100=79))or  	 
	 (((x-450>=3 and x-450<=45)or (x-450>=59 and x-450<=98)) and (y-100=80))or  	 
	 (((x-450>=3 and x-450<=98)) and (y-100=81))or  	 
	 (((x-450>=3 and x-450<=98)) and (y-100=82))or  	 
	 (((x-450>=3 and x-450<=98)) and (y-100=83))or	-- 
	 (((x-450>=3 and x-450<=21)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=78 and x-450<=98)) and (y-100=84))or	 
	 (((x-450>=4 and x-450<=19)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=79 and x-450<=97)) and (y-100=85))or	 
	 (((x-450>=5 and x-450<=19)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=80 and x-450<=97)) and (y-100=86))or	 
	 (((x-450>=6 and x-450<=18)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=82 and x-450<=96)) and (y-100=87))or	 
	 (((x-450>=6 and x-450<=17)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=84 and x-450<=95)) and (y-100=88))or	 
	 (((x-450>=7 and x-450<=16)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)or (x-450>=92 and x-450<=94)) and (y-100=89))or	 
	 (((x-450>=8 and x-450<=15)or (x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=90))or	 
	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=91))or	 
	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=92))or	 
	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=93))or	 
	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=94))or	 
	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=95))or	 
	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=96))or	 
	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=97))or	 
	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=98))or	 
	 (((x-450>=23 and x-450<=30)or (x-450>=35 and x-450<=44)or (x-450>=49 and x-450<=58)or (x-450>=63 and x-450<=74)) and (y-100=99))	 
   ------------------------------------------------------------------------------------------------------------------
  ------------------------N ---------------------------------------------------------------
   ------------------------------------------------------------------------------------------ 

  or
  ((x-50=525 or  x-50=524 or x-50=523 or x-50=580 or x-50=579 or x-50=578  ) and( y>=50 and y<=270)) or
((x-50=527 )and (y+20=122 or y+20=123 ))or
 ((x-50=528 )and (y+20=124 or y+20=125 or y+20=126 or y+20=127))or
 ((x-50=529 )and (y+20=128 or y+20=129 or y+20=130))or
 ((x-50=530 )and (y+20=131 or y+20=132 or y+20=133))or
 ((x-50=531 )and (y+20=134 or y+20=135 ))or
 ((x-50=532 )and (y+20=136 or y+20=137 or y+20=138 or y+20=139 or y+20=140 ))or
 ((x-50=533 )and (y+20=141 or y+20=142 or y+20=143))or
 ((x-50=534 )and (y+20=144 or y+20=145 ))or
 ((x-50=535 )and (y+20=146 or y+20=147 or y+20=148))or
 ((x-50=536 )and (y+20=149 or y+20=150 or y+20=151))or
 ((x-50=537 )and (y+20=152 or y+20=153 ))or
 ((x-50=538 )and (y+20=154 or y+20=155 or y+20=156))or
 ((x-50=539 )and (y+20=157 or y+20=158 or y+20=9159))or
 ((x-50=540 )and (y+20=160 or y+20=161 or y+20=162))or
 ((x-50=541 )and (y+20=163 or y+20=164 or y+20=165 or y+20=166 ))or
 ((x-50=542 )and (y+20=167 or y+20=168 or y+20=169))or
 ((x-50=543 )and (y+20=170 or y+20=171 or y+20=172))or
 ((x-50=544 )and (y+20=173 or y+20=174 ))or
 ((x-50=545 )and (y+20=175 or y+20=176 or y+20=177 or y+20=178))or
 ((x-50=546 )and (y+20=179 or y+20=180 or y+20=181))or
 ((x-50=547 )and (y+20=182 or y+20=183 or y+20=184 ))or
 ((x-50=548 )and (y+20=185 or y+20=186 or y+20=187))or
 ((x-50=549 )and (y+20=188 or y+20=189 or y+20=190 or y+20=191))or
 ((x-50=550 )and (y+20=192 or y+20=193 or y+20=194))or
 ((x-50=551 )and (y+20=195 or y+20=196 ))or
 ((x-50=552 )and (y+20=197 or y+20=198 or y+20=199 or y+20=200))or
 ((x-50=553 )and (y+20=201 or y+20=202 or y+20=203))or
 ((x-50=554 )and (y+20=204 or y+20=205 ))or
 ((x-50=555 )and (y+20=206 or y+20=207 or y+20=208 or y+20=209))or
 ((x-50=556 )and (y+20=210 or y+20=211 or y+20=212))or
 ((x-50=557 )and (y+20=213 or y+20=214 ))or
 ((x-50=558 )and (y+20=215 or y+20=216 or y+20=217 or y+20=218 or y+20=219))or
 ((x-50=559 )and (y+20=220 or y+20=221 or y+20=222))or
 ((x-50=560 )and (y+20=223 or y+20=224 or y+20=225))or
 ((x-50=561 )and (y+20=226 or y+20=227 or y+20=228 or  y+20=229 or y+20=230 ))or
 ((x-50=562 )and (y+20=231 or y+20=232 or y+20=233)) or
 ((x-50=563 )and (y+20=234 or y+20=235 or y+20=236 or y+20=237 ))or
 ((x-50=564 )and (y+20=238 or y+20=239 or y+20=240  ))or
 ((x-50=565 )and (y+20=241 or y+20=242 ))or
 ((x-50=566 )and (y+20=243 or y+20=244 or y+20=245 or y+20=246))or
 ((x-50=567 )and (y+20=247 or y+20=248 or y+20=249  ))or
 ((x-50=568 )and (y+20=250 or y+20=251 or y+20=252 ))or
 ((x-50=569 )and (y+20=253 or y+20=254 ))or
 ((x-50=570 )and (y+20=255 or y+20=256 or y+20=257))or
 ((x-50=571 )and (y+20=258 or y+20=259 ))or
 ((x-50=572 )and (y+20=260 or y+20=261 or y+20=262))or
 ((x-50=573 )and (y+20=263 or y+20=264 ))or
 ((x-50=574 )and (y+20=265 or y+20=266 ))or
 ((x-50=575 )and (y+20=267 or y+20=268 ))or
 ((x-50=576 )and (y+20=269 or y+20=270 ))or
 ((x-50=577 )and (y+20=271  ))
 ------------------------------------------------------------------------------------------------
 ---------------------------------------------------------------------------------------------
  
  ) and (start='1')))
  
  or (
  life = 0 and(
  
  
  
  --**********************************************************************11*******************************************************************
		(((x + bx  >= 75) and (x + bx  <= 82) and (y + by = 29)) or
	((x + bx  >= 72) and (x + bx  <= 85) and (y + by = 30)) or
	((x + bx  >= 70) and (x + bx  <= 87) and (y + by = 31)) or
	((x + bx  >= 70) and (x + bx  <= 89) and (y + by = 32)) or
	((x + bx  >= 68) and (x + bx  <= 89) and (y + by = 33)) or
	((x + bx  >= 68) and (x + bx  <= 90) and (y + by = 34)) or
	((x + bx  >= 66) and (x + bx  <= 90) and (y + by = 35)) or
	((x + bx  >= 66) and (x + bx  <= 90) and (y + by = 36)) or
	((x + bx  >= 66) and (x + bx  <= 91) and (y + by = 37)) or
	
((((x + bx  >= 65) and (x + bx  <= 74)) or ((x + bx  >= 76) and (x + bx  <= 81)) or ((x + bx  >= 82) and (x + bx  <= 91))) and (y + by = 38)) or
((((x + bx  >= 65) and (x + bx  <= 73)) or ((x + bx  >= 76) and (x + bx  <= 81)) or ((x + bx  >= 83) and (x + bx  <= 91))) and (y + by = 39)) or
((((x + bx  >= 65) and (x + bx  <= 72)) or ((x + bx  >= 77) and (x + bx  <= 81)) or ((x + bx  >= 84) and (x + bx  <= 91))) and (y + by = 40)) or
((((x + bx  >= 65) and (x + bx  <= 71)) or ((x + bx  >= 77) and (x + bx  <= 80)) or ((x + bx  >= 85) and (x + bx  <= 91))) and (y + by = 41)) or
((((x + bx  >= 66) and (x + bx  <= 70)) or ((x + bx  >= 77) and (x + bx  <= 80)) or ((x + bx  >= 87) and (x + bx  <= 90))) and (y + by = 42)) or
((((x + bx  >= 66) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 80)) or ((x + bx  >= 87) and (x + bx  <= 90))) and (y + by = 43)) or
((((x + bx  >= 66) and (x + bx  <= 69)) or ((x + bx  >= 77) and (x + bx  <= 81)) or ((x + bx  >= 86) and (x + bx  <= 89))) and (y + by = 44)) or
((((x + bx  >= 68) and (x + bx  <= 71)) or ((x + bx  >= 76) and (x + bx  <= 81)) or ((x + bx  >= 86) and (x + bx  <= 89))) and (y + by = 45)) or
((((x + bx  >= 69) and (x + bx  <= 76)) or (x + bx  = 78) or ((x + bx  >= 80) and (x + bx  <= 87))) and (y + by = 46)) or
((((x + bx  >= 71) and (x + bx  <= 76)) or (x + bx  = 78) or ((x + bx  >= 80) and (x + bx  <= 87))) and (y + by = 47)) or

	((x + bx  >= 74) and (x + bx  <= 83) and (y + by = 48)) or
	((x + bx  >= 77) and (x + bx  <= 79) and (y + by = 49)) or
	((((x + bx  >= 71) and (x + bx  <= 72)) or ((x + bx  >= 85) and (x + bx  <= 85))) and (y + by = 50)) or
	((((x + bx  >= 72) and (x + bx  <= 75)) or ((x + bx  >= 81) and (x + bx  <= 85))) and (y + by = 51)) or
	((x + bx  >= 73) and (x + bx  <= 84) and (y + by = 52)) or
	((x + bx  >= 74) and (x + bx  <= 83) and (y + by = 53)) or
	((x + bx  >= 75) and (x + bx  <= 81) and (y + by = 54)) or
	-----------------dbut 9afas
	(((x +bx  >= 66 and x+bx  <= 67) or (x +bx  >= 89 and x+bx  <= 90)) and ( (y +by >= 63 and y+by <= 64) or (y +by >= 63 and y+by <= 64) or (y +by >= 67 and y+by <= 68) or (y +by >= 71 and y+by <= 72) or (y +by >= 75 and y+by <= 76))) or
	(((x +bx  >= 68 and x+bx  <= 88)) and ( (y +by >= 75 and y+by <= 58) or (y +by >= 61 and y+by <= 62) or (y +by >= 65 and y+by <= 66) or (y +by >= 69 and y+by <= 70) or (y +by >= 73 and y+by <= 74) or (y +by >= 77 and y+by <= 78))) or
	((x +bx  >= 77 and x+bx  <= 79) and  (y +by >= 56 and y+by <= 79)) or
	-----------------7awd
	((((x + bx  >= 68) and (x + bx  <= 76)) or ((x + bx  >= 82) and (x + bx  <= 89))) and (y + by = 81)) or
	((((x + bx  >= 68) and (x + bx  <= 76)) or ((x + bx  >= 82) and (x + bx  <= 89))) and (y + by = 82)) or
	((((x + bx  >= 68) and (x + bx  <= 78)) or ((x + bx  >= 80) and (x + bx  <= 89))) and (y + by = 83)) or
	((x + bx  >= 68) and (x + bx  <= 89) and (y + by = 84)) or
	((x + bx  >= 68) and (x + bx  <= 89) and (y + by = 85)) or
	((x + bx  >= 69) and (x + bx  <= 88) and (y + by = 86)) or
	((x + bx  >= 70) and (x + bx  <= 88) and (y + by = 87)) or
	((x + bx  >= 72) and (x + bx  <= 86) and (y + by = 88)) or
	((x + bx  >= 74) and (x + bx  <= 84) and (y + by = 89)) or
	((x + bx  >= 75) and (x + bx  <= 82) and (y + by = 90)) or
	((x + bx  >= 77) and (x + bx  <= 80) and (y + by = 91)) or
	((x + bx  >= 78) and (x + bx  <= 78) and (y + by = 92)) or
	------------------Mains normal
	
	((y +by >= 60 and y+by <= 64) and (x+bx  = 67 or x+bx  = 90)) or
	((y +by >= 60 and y+by <= 64) and (x+bx  = 66 or x+bx  = 91)) or
	((y +by >= 60 and y+by <= 66) and (x+bx  = 65 or x+bx  = 92)) or
	((y +by >= 61 and y+by <= 67) and (x+bx  = 64 or x+bx  = 93)) or
	((y +by >= 63 and y+by <= 69) and (x+bx  = 63 or x+bx  = 94)) or
	((y +by >= 65 and y+by <= 83) and (x+bx  = 62 or x+bx  = 95)) or
	((y +by >= 66 and y+by <= 83) and (x+bx  = 61 or x+bx  = 96)) or
	((y +by >= 68 and y+by <= 84) and (x+bx  = 60 or x+bx  = 97)) or
	((y +by >= 83 and y+by <= 88) and (x+bx  = 59 or x+bx  = 98)) or
	((y +by >= 83 and y+by <= 88) and (x+bx  = 58 or x+bx  = 99)) or
		---droite leldakhel
	((x +bx  >= 71 and x+bx  <= 6) and (y+by = 92)) or
	((x +bx  >= 71 and x+bx  <=77) and (y+by = 93)) or
	((x +bx  >= 71 and x+bx  <= 77) and (y+by = 94)) or
	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 95)) or
	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 96)) or
	((x +bx  >= 72 and x+bx  <= 77) and (y+by = 97)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 98)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 99)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 100)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 101)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 102)) or
	((x +bx  >= 74 and x+bx  <= 77) and (y+by = 103)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 104)) or
	((x +bx  >= 73 and x+bx  <= 77) and (y+by = 105)) or
	((x +bx  >= 72 and x+bx  <= 76) and (y+by = 106)) or
	((x +bx  >= 71 and x+bx  <= 75) and (y+by = 107)) or
	((x +bx  >= 70 and x+bx  <= 75) and (y+by = 108)) or
	((x +bx  >= 70 and x+bx  <= 74) and (y+by = 109)) or
	((x +bx  >= 69 and x+bx  <= 73) and (y+by = 110)) or
	((x +bx  >= 68 and x+bx  <= 72) and (y+by = 111)) or
	((x +bx  >= 67 and x+bx  <= 71) and (y+by = 112)) or
	((x +bx  >= 67 and x+bx  <= 70) and (y+by = 113)) or
	((x +bx  >= 66 and x+bx  <= 69) and (y+by = 114)) or
	((x +bx  >= 66 and x+bx  <= 70) and (y+by = 115)) or
	((x +bx  >= 66 and x+bx  <= 74) and (y+by = 116)) or
	((x +bx  >= 67 and x+bx  <= 76) and (y+by = 117)) or
	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or
	((x +bx  >= 69 and x+bx  <= 76) and (y+by = 118)) or

		----gauche leldakhel
	((x +bx  >= 80 and x+bx  <= 87) and (y+by = 92)) or
	((x +bx  >= 80 and x+bx  <= 87) and (y+by = 93)) or
	((x +bx  >= 80 and x+bx  <= 86) and (y+by = 94)) or
	((x +bx  >= 80 and x+bx  <= 86) and (y+by = 95)) or
	((x +bx  >= 80 and x+bx  <= 85) and (y+by = 96)) or
	((x +bx  >= 80 and x+bx  <= 85) and (y+by = 97)) or
	((x +bx  >= 80 and x+bx  <= 84) and (y+by = 98)) or
	((x +bx  >= 80 and x+bx  <= 84) and (y+by = 99)) or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 100)) or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 101)) or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 102)) or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 103)) or
	((x +bx  >= 80 and x+bx  <= 83) and (y+by = 104)) or
	((x +bx  >= 81 and x+bx  <= 84) and (y+by = 105)) or
	((x +bx  >= 81 and x+bx  <= 84) and (y+by = 106)) or
	((x +bx  >= 82 and x+bx  <= 85) and (y+by = 107)) or
	((x +bx  >= 83 and x+bx  <= 86) and (y+by = 108)) or
	((x +bx  >= 83 and x+bx  <= 87) and (y+by = 109)) or
	((x +bx  >= 84 and x+bx  <= 87) and (y+by = 110)) or
	((x +bx  >= 85 and x+bx  <= 88) and (y+by = 111)) or
	((x +bx  >= 86 and x+bx  <= 89) and (y+by = 112)) or
	((x +bx  >= 87 and x+bx  <= 91) and (y+by = 113)) or
	((x +bx  >= 88 and x+bx  <= 92) and (y+by = 114)) or
	((x +bx  >= 88 and x+bx  <= 92) and (y+by = 115)) or
	((x +bx  >= 86 and x+bx  <= 92) and (y+by = 116)) or
	((x +bx  >= 85 and x+bx  <= 92) and (y+by = 117)) or
	((x +bx  >= 83 and x+bx  <= 90) and (y+by = 118)) )
  
  
  
  
  
  )
  )
	---------------------------------------------------------------------
	)
	else '0';


color_selector <= draw_blue & draw_red & draw_white;
with color_selector select
   rgb <= "11100000" when "010",
   "00011111" when "100",
	"11111111" when "001",
	--player should turn red when lose_state achieved.
	"11100000" when "101",
	"11100000" when "111",
	"11100000" when "011",
	--the rest of the screen should be black.
	"00000000" when others;
--end process;	
--rgb <= "11111111";	 
end Behavioral;