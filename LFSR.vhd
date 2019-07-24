----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:28 11/21/2014 
-- Design Name: 
-- Module Name:    LFSR - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LFSR is
   port ( game_clock : in std_logic;
	        dead : in std_logic;
	       reset : in std_logic;
       obst_out : out std_logic);
end LFSR;


--Output 5 bits: lfsr_out, inputs: clock and reset

architecture Behavioral of LFSR is
    signal lfsr : std_logic := '1';  
    signal cpt : std_logic_vector (4 downto 0) := "00000";
	
begin

   lfsr_seq : process(game_clock, reset)
        
	begin
	   if (dead = '1') then
		   lfsr <= '0';
		   cpt(4 downto 0) <= "00000";
			
	   elsif (reset = '1') then
		   lfsr <= '1';
		   cpt(4 downto 0) <= "00000";
		
	   else  
	     if (rising_edge(game_clock) ) then
		    --or (qs = '1')
		    if ((conv_integer(cpt) < 4) ) then 
			   lfsr <= '1';
				
			   cpt <= conv_std_logic_vector( (conv_integer(cpt) + 1), 5 ) ;
		    else
	          if (cpt = "10011") then -- Si c'est a 1, on le laisse a 1 pendant 4 top dhorloge pour generer 4 fleches successives. Des que c'est fait, on reprend
			       cpt(4 downto 0) <= "00000";
					 
		       else 
					 lfsr <= '0';
			       cpt <= conv_std_logic_vector( (conv_integer(cpt) + 1), 5 ) ;
					 
	          end if;
		    end if;
	      end if;
       end if;
	end process lfsr_seq;
	
     
	obst_out <= lfsr;
  

end Behavioral;

