----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:07 12/28/2018 
-- Design Name: 
-- Module Name:    Top_module - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top_module is
port ( Clk  : in std_logic;
		KeyboardClock : in std_logic;
		KeyboardData : in std_logic;
     --  player_input : in std_logic_vector (4 downto 0);
		 score_a  : inout std_logic_vector (7 downto 0);
		 live_a : inout std_logic_vector (1 downto 0);
		 rgb  : out std_logic_vector (7 downto 0);
		  start : in std_logic;
		 HS   : out std_logic;
		 VS   : out std_logic;
		 counter: inout std_logic_vector(4 downto 0);
		 qs_s: inout std_logic;
		 vecteur_seq_s      :out std_logic_vector (11 downto 0);
		 s1: out std_logic;
		 s2: out std_logic;
		 s3: out std_logic;
		 s4: out std_logic;
		 s5: out std_logic;
		 s6: out std_logic;
		 s7: out std_logic;
		 next_s:in std_logic);
end Top_module;

architecture Behavioral of Top_module is

-- Dclaration des diffrents composants

component game_logic is
   port (       

					  Clk_in1          : in std_logic;
					  CLK_in2         : in std_logic;
					  CLK_in3         : in std_logic;
	              Start          : in std_logic;
                 input : in std_logic_vector (4 downto 0);
		       --External signals for locations of obstacles that will be drawn by another module.
		           arrow_locs_up  : out std_logic_vector (16 downto 0);
		           arrow_locs_down : out std_logic_vector (16 downto 0);
		           arrow_locs_right  : out std_logic_vector (16 downto 0);
		           arrow_locs_left  : out std_logic_vector (16 downto 0);
				-- vecteur de sequence de 12 bits utilise par Amel :p 
		           vecteur_seq      :inout std_logic_vector (11 downto 0);
				     score  : out std_logic_vector (7 downto 0);
		           live : out std_logic_vector (1 downto 0);
		           lose : out std_logic;
					  graphicStart : OUT  std_logic;
                 
               					  
					  
						 counter: inout std_logic_vector(4 downto 0);
						 qs: inout std_logic;
						 S_next:in std_logic
		        );
	       
end component;

-- Dclaration de l'horloge utilis qui sera utilis par le jeu (un composant IP)

component clock_jeu is
port
 (-- Clock in ports
  CLK_IN1           : in     std_logic;
  -- Clock out ports
  CLK_OUT1          : out    std_logic;  
  CLK_OUT2          : out    std_logic;
  CLK_OUT3          : out    std_logic
 );
end component;
component vga_controller_640_60 is
port(
   rst         : in std_logic;
   pixel_clk   : in std_logic;

   HS          : out std_logic;
   VS          : out std_logic;
   hcount      : out std_logic_vector(10 downto 0);
   vcount      : out std_logic_vector(10 downto 0);
   blank       : out std_logic
);
end component;
component graphics is
    Port ( pixel_clk   : in STD_LOGIC;
			
			  dead        : in STD_LOGIC;
			  hcount      : in STD_LOGIC_VECTOR (10 downto 0);
			  vcount      : in STD_LOGIC_VECTOR (10 downto 0);
			  --the rgb signal is 8 bits: 3 for red, 3 for green, and 2 for blue (See Nexys 3 Reference Manual for more information about VGA Port.)
			  rgb         : out  STD_LOGIC_VECTOR (7 downto 0);
			  ----------------------------------------------------------
              VecteurScore       : in  STD_LOGIC_VECTOR (7 downto 0) ;
             VecteurUP       : in  STD_LOGIC_VECTOR (16 downto 0);
              VecteurDOWN       : in  STD_LOGIC_VECTOR (16 downto 0);
              VecteurRIGHT       : in  STD_LOGIC_VECTOR (16 downto 0);
              VecteurLEFT       : in  STD_LOGIC_VECTOR (16 downto 0);
				  start        : in STD_LOGIC;
				  life        : in STD_LOGIC_VECTOR (1 downto 0);
				-----------------------------------------------------------  
			   counter: in std_logic_vector(4 downto 0));
end component;

component KeyboardController is
    Port ( Clock : in STD_LOGIC;
	        KeyboardClock : in  STD_LOGIC;
           KeyboardData : in  STD_LOGIC;
           Z : buffer  STD_LOGIC;
			  S : buffer  STD_LOGIC;
			  Q : buffer  STD_LOGIC;
			  D : buffer  STD_LOGIC;
			  reset : buffer  STD_LOGIC
           
	);
end component;

-- l'horloge du jeu, il sera aussi l'horloge pour le composant graphics
signal pixel_clk : std_logic;
signal detect_clk : std_logic;
signal detect_dcm1_clk : std_logic;
-- autres signaux global

signal score  : std_logic_vector (7 downto 0);
signal live : std_logic_vector (1 downto 0) := "11";
signal lose : std_logic;
-- ces signaux vont sortir de game logic pour etre des entrs en graphics afin de dessiner les flches
-- et modifier ses positions
signal arrow_locs_up_to_draw  : std_logic_vector (16 downto 0);
signal arrow_locs_down_to_draw : std_logic_vector (16 downto 0);
signal arrow_locs_right_to_draw  : std_logic_vector (16 downto 0);
signal arrow_locs_left_to_draw  : std_logic_vector (16 downto 0);

-- signal du vecteur de sequence
signal vecteur_seq      : std_logic_vector (11 downto 0):="001001100100";
signal HORIZCOUNT, VERTICOUNT : std_logic_vector (10 downto 0);
signal reset : std_logic := '0';
signal blank : std_logic := '0';
signal g : std_logic := '0';
signal player_input : std_logic_vector (4 downto 0);

signal qs_d : std_logic;


begin

game_logic_componenent: game_logic
port map (Clk_in1 => pixel_clk,
			 Clk_in2 => detect_clk,
			 Clk_in3 => detect_dcm1_clk,
	       Start => start,
          input => player_input,
		    arrow_locs_up  => arrow_locs_up_to_draw,
		    arrow_locs_down => arrow_locs_down_to_draw,
		    arrow_locs_right => arrow_locs_right_to_draw,
		    arrow_locs_left => arrow_locs_left_to_draw,
    	    vecteur_seq => vecteur_seq,
		    score => score_a,
		    live => live_a,
		    counter => counter,
			 graphicstart => g,
		    lose => lose,
          qs => qs_d	,
S_next=>next_s			 );
			 
			 qs_s <= qs_d;
sync_module : vga_controller_640_60
 port map ( rst => reset,
            pixel_clk => pixel_clk,
				HS  => HS,
				VS  => VS,
				hcount => HORIZCOUNT,
				vcount => VERTICOUNT,
				blank => blank); --tie blank to zero, because we're not using that signal in our game
				
Grapic: graphics
port map(
pixel_clk => pixel_clk,  
VecteurUP  => arrow_locs_up_to_draw,
		    VecteurDOWN => arrow_locs_down_to_draw,
		    VecteurRIGHT => arrow_locs_right_to_draw,
		    VecteurLEFT => arrow_locs_left_to_draw,
		    VecteurScore => score_a,
		    life => live_a,
		    dead => lose,
		    hcount => HORIZCOUNT,
		    vcount => VERTICOUNT,
		    rgb => rgb,
		    counter => counter,
		    start => start
         
			 
);			 

inst_Keyboard_Controller: KeyboardController port map (
		     Clock => Clk,
	        KeyboardClock => KeyboardClock,
           KeyboardData => KeyboardData,
			  Z => player_input(3),
			  D => player_input(0),
			  S => player_input(1),
			  Q=> player_input(2),
			  reset=>player_input(4)

);


Inst_clock_jeu: clock_jeu 
PORT MAP(  
		CLK_IN1 => Clk,  
		CLK_OUT1 => pixel_clk,
		CLK_OUT2 => detect_clk, 
		CLK_OUT3 => detect_dcm1_clk ); 
		
s1 <= '1' when ( vecteur_seq ="000010010010") 
else '0';

s2 <= '1' when ( vecteur_seq ="010001000010")
else '0';


s3 <= '1' when ( vecteur_seq ="001100000010") 
else '0';


s4 <= '1' when ( vecteur_seq ="000001000010")
else '0';

s5 <= '1' when ( vecteur_seq ="010001000001")
else '0';

s6 <= '1' when ( vecteur_seq ="100000010001")
else '0';

s7 <= '1' when ( vecteur_seq ="000001100100")
else '0';

 		
		--vecteur_seq_s <= vecteur_seq;

end Behavioral;

