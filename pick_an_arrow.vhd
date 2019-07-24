----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:34 12/25/2018 
-- Design Name: 
-- Module Name:    pick_an_arrow - Behavioral 
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
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pick_an_arrow is
    Port (       game_clock : in  STD_LOGIC;
	            obst_in : in   STD_LOGIC;
	                 nb: out  STD_LOGIC_VECTOR(1 downto 0);
		  sequences : out  STD_LOGIC_VECTOR(11 downto 0);
              obst_arrow_up : out  STD_LOGIC;
            obst_arrow_down : out  STD_LOGIC;
           obst_arrow_right : out  STD_LOGIC;
            obst_arrow_left : out  STD_LOGIC);
end pick_an_arrow;

architecture Behavioral of pick_an_arrow is

   signal lfsr : std_logic_vector (15 downto 0) := "0001000010000001";
   signal lfsr_next : std_logic_vector (15 downto 0) := "0001000010000001";
   signal arrow_nb : std_logic_vector (1 downto 0) := "00";
begin

 lfsr_seq : process(game_clock)

            begin  
		
		if (rising_edge(game_clock)) then
			lfsr <= lfsr_next;
		
	--this if statement chooses one of the lanes to get the obstacle based on the decimal value of lfsr
	    if (obst_in = '1') then
		   if ((conv_integer(lfsr)) > 49152) then

		      obst_arrow_up   <= '1';
		      obst_arrow_down <= '0';
		      obst_arrow_right<= '0';
	         obst_arrow_left <= '0';
            sequences (3*conv_integer(arrow_nb)) <= '0';
		      sequences (3*conv_integer(arrow_nb)+ 1) <= '0';
            sequences (3*conv_integer(arrow_nb)+2) <= '1';
				arrow_nb <= conv_std_logic_vector( (conv_integer(arrow_nb) + 1), 2 ) ;
				
		   elsif (((conv_integer(lfsr)) > 32768) and((conv_integer(lfsr)) < 49152)) then
		      obst_arrow_up   <= '0';
		      obst_arrow_down <= '1';
		      obst_arrow_right<= '0';
	         obst_arrow_left <= '0';
            sequences (3*conv_integer(arrow_nb)) <= '1';
		      sequences (3*conv_integer(arrow_nb) + 1) <= '0';
            sequences (3*conv_integer(arrow_nb) +2) <= '0';
				arrow_nb <= conv_std_logic_vector( (conv_integer(arrow_nb) + 1), 2 ) ;
		   elsif (((conv_integer(lfsr)) > 16384) and((conv_integer(lfsr)) < 32768)) then
		      obst_arrow_up   <= '0';
		      obst_arrow_down <= '0';
		      obst_arrow_right<= '1';
	              obst_arrow_left <= '0';
  		      sequences (3*conv_integer(arrow_nb)) <= '0';
		      sequences (3*conv_integer(arrow_nb) + 1) <= '0';
            sequences (3*conv_integer(arrow_nb) +2) <= '0';
				arrow_nb <= conv_std_logic_vector( (conv_integer(arrow_nb) + 1), 2 ) ;
	   	elsif ((conv_integer(lfsr)) < 16384) then
	   	      obst_arrow_up   <= '0';
		      obst_arrow_down <= '0';
		      obst_arrow_right<= '0';
	              obst_arrow_left <= '1';
		      sequences (3*conv_integer(arrow_nb)) <= '0';
		      sequences (3*conv_integer(arrow_nb) + 1) <= '1';
            sequences (3*conv_integer(arrow_nb) +2) <= '0';
				arrow_nb <= conv_std_logic_vector( (conv_integer(arrow_nb) + 1), 2 ) ;
	   	else
	   	   obst_arrow_up   <= '0';
		      obst_arrow_down <= '0';
		      obst_arrow_right<= '0';
	         obst_arrow_left <= '0';
                      
   
	   	end if;
		--if obst_in from the obst_generator LFSR is not 1, then no obstacles are generated -- peut etre a enlever
		
		else
		      obst_arrow_up   <= '0';
		      obst_arrow_down <= '0';
		      obst_arrow_right<= '0';
	         obst_arrow_left <= '0';
				arrow_nb (1 downto 0) <= "00";
	   end if;
		end if;
	end process lfsr_seq;
	
	lfsr_comb : process(lfsr)
	begin
	   lfsr_next (15 downto 1) <= lfsr (14 downto 0);
	   lfsr_next (0) <= lfsr(15) xor lfsr(5);
	end process lfsr_comb;
   nb <= arrow_nb;
end Behavioral;


