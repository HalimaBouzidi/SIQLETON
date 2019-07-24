----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:36:06 12/08/2018 
-- Design Name: 
-- Module Name:    msa_hdl - Behavioral 
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


entity msa_hdl is
	Port ( clkin : in STD_LOGIC;
			rst : in STD_LOGIC;
			b0 : in STD_LOGIC;
			b1 : in STD_LOGIC;
			b2 : in STD_LOGIC;
			gs : in STD_LOGIC;
			data:in std_logic_vector(11 downto 0);
			enable_del : out STD_LOGIC);
end msa_hdl;
architecture Behavioral of msa_hdl is

type etat is (a,b,c,d,e,f,g,h);
signal etatpres, etatsuiv : etat;
begin

--registre d'état
xreg: process(rst,clkin)
begin
		if(rst = '1')then
		etatpres <= a;
		elsif(clkin'event and clkin = '1')then
		etatpres <= etatsuiv;
		end if;
end process;
--IFL
xifl: process(etatpres, b2,b1,b0,gs,data)
begin
		case etatpres is
		when a =>
				if(gs = '1' and b2 = data(2)  and b1 = data(1) and b0 = data(0) )then
					etatsuiv <= b;
				else
					etatsuiv <= a;
				end if;
		when b =>
				if(gs = '0')then
					etatsuiv <= c;
					else
					etatsuiv <= b;
				end if;
		when c =>
				if(gs = '1') then
					if(b2 = data(5)  and b1 = data(4) and b0 = data(3)) then
						etatsuiv <= d;
					else
						etatsuiv <= a;
					end if;
				else
					etatsuiv <= c;
				end if;
		when d =>
				if(gs = '0')then
					etatsuiv <= e;
				else
					etatsuiv <= d;
				end if;
		when e =>
				if(gs = '1') then
					if(b2 = data(8)  and b1 = data(7) and b0 = data(6)) then
						etatsuiv <= f;
					else
						etatsuiv <= a;
					end if;
				else
						etatsuiv <= e;
				end if;
		when f =>
				if(gs = '0')then
					etatsuiv <= g;
				else
					etatsuiv <= f;
				end if;
		when g =>
				if(gs = '1') then
					if(b2 = data(11)  and b1 = data(10) and b0 = data(9)) then
						etatsuiv <= h;
					else
						etatsuiv <= a;
					end if;
				else
						etatsuiv <= g;
				end if;		
					
		when h =>
				etatsuiv <= h;
		when others => etatsuiv <= a;
		end case;
end process;
--OFL
enable_del <= '1' when etatpres = h else '0';
end Behavioral;