----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:44 11/22/2014 
-- Design Name: 
-- Module Name:    runner_toplevel_wiring - Behavioral 
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
--
--
--
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity game_logic is
   port (        Clk_in1          : in std_logic;
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
					  S_next :in std_logic
					  );
	       
end game_logic;

architecture Behavioral of game_logic is

------Constants------
--constant clock_freq : integer := 100736000;
--constant clock_freq : integer := 10000000;
constant clock_freq : integer := 75552000;
--constant clock_freq : integer := 16;
--constant clock_freq : integer := 226656000;
constant game_freq : integer := 4;
 

------This section lists the components we need in our circuit to run the game logic.

--There will be four SR (shift register) components to handle the four arrozs (up; down; right; left).
component SR
 port (     game_clock : in STD_LOGIC;
	            obst_in : in STD_LOGIC;
		            dead : in STD_LOGIC;
	              reset : in STD_LOGIC;
             arrow_out : out  STD_LOGIC_VECTOR (16 downto 0)); 
end component;



component pick_an_arrow 
    Port (  game_clock : in  STD_LOGIC;
	            obst_in : in   STD_LOGIC;
			 -- il peut etre egal a (00,01,10,11), il indique le num de la fleche generee par rapport a la seq, il sera utilise 
			 -- par LFSR. Si la sortie de ce dernier est a 1, je l'oblige a le rester jusqua ce que les 4 fleches soient generees
			 -- pour enfin lui permettre de changer detat (de maniere alea)
			 
			   
			 --sequence generee aleatoirement 
		       sequences : out  STD_LOGIC_VECTOR(11 downto 0);
         obst_arrow_up : out  STD_LOGIC;
       obst_arrow_down : out  STD_LOGIC;
   	obst_arrow_right : out  STD_LOGIC;
       obst_arrow_left : out  STD_LOGIC);
end component;

signal sequence:std_logic_vector(11 downto 0):="001001100100";
--This LFSR (linear feedback shift register) works to handle the pseudo-random number generation
--to generate the seq of arrows in the game. obst_out from this LFSR goes to the pick_an_arrow module,
--which then decides which of the four arrows will be displayed in the sequence
component LFSR
   port (game_clock : in std_logic;
	            dead : in std_logic;
	           reset : in std_logic;
           obst_out : out std_logic);
end component;
--------Detecteur------
component Main
	  Port ( rst : in  STD_LOGIC;
           clkin : in  STD_LOGIC;
			  clk_dcm1 : in  STD_LOGIC;
           debout1 : in  STD_LOGIC;
           debout2 : in  STD_LOGIC;
           debout3 : in  STD_LOGIC;
			  debout4 : in  STD_LOGIC;
			  Bseq: in std_logic_vector(11 downto 0);--bonne séquence
			  gs: inout std_logic;
           Q_del  : out  STD_LOGIC);
end component;
------Intermediate Signals------
--This signal is effectively our "game clock", as it will only be active 8 times per second (see game_freq_gen process below).
signal enable_game_update : std_logic := '0';
 

signal lose_state : std_logic := '0';
signal lose_st : std_logic := '0';
 


--Each arrow is modeled as a shift register that has an obstacle generated at the MSB,
--which then propagates down the lane (right-to-left) until it reaches the player zone
--at the LSB of the register.
-- En d'autre termes, ces vecteurs representent les vecteurs de position de chaque arrow
signal arrowup, arrowdown, arrowright, arrowleft :  std_logic_vector (16 downto 0);

--signal qs : std_logic :='0';

--Internal signal to keep track of what sequence the LFSR is currently holding.
--Used by the four arrow SRs to determine when a new arrow must be generated.
signal current_obst : std_logic;

signal current_arrow_Lup,
       current_arrow_Ldown,
       current_arrow_Lright,
       current_arrow_Lleft : std_logic;

  
signal lives_left : std_logic_vector (1 downto 0) := "11";

signal global_reset : std_logic;

signal current_score : std_logic_vector (7 downto 0) := "00000000";

-- signal ayant la mm signification de arrow_number de "pick_an_arrow". Intermediaire entre la sortie de LFSR et le in de pick_an_arrow
--signal number_arrow_generated :STD_LOGIC_vector (1 downto 0);


-----ces signaux seront utilises pr gerer les vecteurs de sequences------

-- Pour determiner si je passe a une seq. C'est a dire si le user a fait une bonne saisie ou a ateint le cercle
--signal S_next : std_logic := '1';
--signaux intermediaires entre "pick_an_arrow" et le tableau de vecteurs de seq  
signal data : std_logic_vector (11 downto 0);
--signal current_vecteur_sequence : std_logic_vector (11 downto 0) ;
-- Tableau de vecteur de seq
--type s is array( 3 downto 0) of std_logic_vector(11 downto 0);
--signal seq :s;
--etre sure de ne pas lire une case dans le tableau de seq vide
--signal nbreTab : std_logic_vector (31 downto 0) :=  "00000000000000000000000000000000";
--signal  nbreVec : std_logic_vector (31 downto 0) := "00000000000000000000000000000000";
   signal dance_clk : std_logic;
signal cptt : std_logic_vector(4 downto 0) := "00000";
signal reset_dance : std_logic;
begin

	--Initialiser global_reset
global_reset<=start;
 
--Here we instantiate the four SRs for the four arrows.
--The arrows are decided by the pick_an_arrow module.

arrowUp_sr : SR
   port map ( game_clock => enable_game_update,
	              obst_in => current_arrow_Lup,
		              dead => '0',
	                reset => global_reset,
	             arrow_out => arrowup);

arrowDown_sr : SR
   port map  ( game_clock => enable_game_update,
	               obst_in => current_arrow_Ldown,
		               dead => '0',
	                 reset => global_reset,
	             arrow_out => arrowdown);
					 
arrowRight_sr : SR
   port map ( game_clock => enable_game_update,
	              obst_in => current_arrow_Lright,
		              dead => '0',
	                reset => global_reset,
	            arrow_out => arrowright);
					 
arrowLeft_sr : SR
   port map ( game_clock => enable_game_update,
	              obst_in => current_arrow_Lleft,
		              dead => '0',
	                reset => global_reset,
	            arrow_out => arrowleft);
					 
--Here, the outputs of the four SRs are tied to the outputs of this game_mechanics module (they'll be sent to graphics module).
 arrow_locs_up <= arrowup;
 arrow_locs_down <= arrowdown;
 arrow_locs_right <= arrowright;
 arrow_locs_left<= arrowleft;

				
--Here we instantiate one LFSR that will be used to generate
	
 			
obst_generator : LFSR
   port map ( game_clock => enable_game_update,
	                 dead => lose_state,
	                reset => global_reset,
          	    obst_out => current_obst);
			 

arrow_selector : pick_an_arrow
   port map ( game_clock => enable_game_update,
	              obst_in => current_obst,
					sequences => data,
          obst_arrow_up  => current_arrow_Lup,      
         obst_arrow_down =>  current_arrow_Ldown,
        obst_arrow_right => current_arrow_Lright,
         obst_arrow_left => current_arrow_Lleft );
	 
vecteur_seq <= data;
	           
--This process essentially generates our desired "game clock" with a frequency of 8Hz.
--The signal enable_game_update will only be high 8 times per second...	           
   game_freq_gen : process(Clk_in1)
	   variable count : integer := 0;
	begin
	   if (rising_edge(Clk_in1)) then
		   enable_game_update <= '0';
			count := (count + 1);
			--...due to this if statement.
	      if (count = (clock_freq/ game_freq)) then
			   enable_game_update <= '1';
				count := 0;
			end if;
		end if;
	end process game_freq_gen;
	 

--   --stocker les sequences generes dans un tableau de taille max 4 (car on aurait max 4 seq aff a lecran au mm temps)
--   stock_seq: process(enable_game_update)
----	 variable indice : integer :=0;
--	 begin
--		if (rising_edge(enable_game_update)) then
--			  if (number_arrow_generated = "11") then
--			      seq(indice) <= data;
--				   nbreTab <= conv_std_logic_vector( ((conv_integer(nbreTab)+ 1) ), 32);
--		         indice :=  (indice+1) mod 4;
--				end if;
--			
--	
--		end if;
--	end process stock_seq;
	


	
--Appeler le détecteur ajouter data (Bseq) au paramètre
detecteur: Main port map(
		clkin =>  Clk_in2,
		clk_dcm1 => Clk_in3,
		rst => input(4),
		debout1=> input(0),
		debout2=>input(1),
		debout3=>input(2),
		debout4=>input(3),
 		Bseq=>vecteur_seq,
		Q_del =>qs );
			 
---detecter l'echec
 
	hit_detection : process(enable_game_update)
	variable indice_suiv : integer :=0;
	variable cpt : integer :=0;
	begin
	if (rising_edge(enable_game_update)) then
	         
	        if (global_reset = '1') then
		        lives_left <= "11";
		 
				else
					if (qs='0')then
					  if (arrowup(0)='1' or arrowdown(0)='1' or arrowright(0)='1' or arrowleft(0)='1') then
							  cpt:=cpt+1;
							  if (cpt = 4) then
							  lives_left <= (lives_left - 1);
							  cpt := 0;
								--S_next<='1';
							  end if;		
					  end if;					  
					  
	--			     
	--			   else
	--				-- S_next<='1';
				 
					end if;
--			    if (S_next='1')then
--			   if(nbreTab > nbreVec) then
--				
--				 --qs<='0';--remise a 0 jusqua ce que le signal soit remis a 1 
--			    current_vecteur_sequence <= seq (indice_suiv);				
--				 nbreVec <= conv_std_logic_vector( ((conv_integer(nbreVec)+ 1) ), 32);
--				 indice_suiv := (indice_suiv + 1) mod 4;	
--				  --s_next<='0';
--			   end if;
--			 end if;
--			 vecteur_seq <= current_vecteur_sequence;
			-- vecteur_seq <= current_vecteur_sequence;
			end if;
	 
	 	end if;
	 
	end process hit_detection;	
	 

   	
---Check for game over
check_for_game_over : process (enable_game_update)
	begin
	   if (rising_edge(enable_game_update)) then
	      if (global_reset = '1') then
			   lose_state <= '0';
				graphicStart <='1';
			else
			if (lives_left="00") then
			 lose_state <= '1';
         end if;
		end if;
		end if;
	end process check_for_game_over;

	
  --The player's score should be 0 whenever the game starts or is reset,
  --and with the current system, the player receives 1 point per second.
   scoring_system : process(qs)
	variable count : integer := 0;
		variable cpt : integer := 0;
	begin
if (rising_edge(enable_game_update)) then

  if (global_reset='1') then
			   current_score <= "00000000";
  end if;
	 

				
	 if (qs='1') then
		if (arrowup(0)='1' or arrowdown(0)='1' or arrowright(0)='1' or arrowleft(0)='1') then
			
		                 cpt:=cpt+1;
							  if (cpt = 4) then
							  current_score <= current_score + 5;
							  cpt := 0;
								--S_next<='1';
							  end if;
			--This elsif statement makes sure that the players score only goes up while they
			--still have lives remaining. Their score should stop increasing while in the
			--dead/lose state.
		   --elsif (lives_left /= "00") then
--			   count := count + 1;
--				if (count = 8) then
			   
--					count := 0;
--				end if;
		end if;
		end if;
		end if;
	end process scoring_system;
		counter_dance : process (dance_clk, Reset_dance)
begin
   if Reset_dance='1' then
         cptt<= "00000";
      elsif(rising_edge(dance_clk)) then
        
            if cptt="10101" then
               cptt<="00000";
            else
               cptt <= cptt + 1;
            end if;
         end if;
     
end process counter_dance;

dance_freq_gen : process(Clk_in1)
	   variable count : integer := 0;
	begin
	   if (rising_edge(Clk_in1)) then
		   dance_clk <= '0';
			count := (count + 1);
			--...due to this if statement.
	      if (count = (clock_freq / game_freq)) then
			   dance_clk <= '1';
				count := 0;
			end if;
		end if;
	end process dance_freq_gen;
counter <= cptt;		
score <= current_score;
 lose<=lose_state;
 live<=lives_left;	

end Behavioral;