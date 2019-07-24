----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:25:03 12/02/2018 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main is
    Port ( rst : in  STD_LOGIC;
           clkin : in  STD_LOGIC;
           clk_dcm1 : in  STD_LOGIC;
           debout1 : in  STD_LOGIC;
           debout2 : in  STD_LOGIC;
           debout3 : in  STD_LOGIC;
			  debout4 : in  STD_LOGIC;
			  Bseq: in std_logic_vector(11 downto 0);
			  gs: inout std_logic;
           Q_del : out  STD_LOGIC);
end Main;


architecture Behavioral of Main is

--
--component debounce_hdl is
--    Port ( sig_in : in  STD_LOGIC;
--           clkin : in  STD_LOGIC;
--           sig_out : out  STD_LOGIC);
--end component;

component diviseur_clk is
    Port ( clkin : in  STD_LOGIC;
           clk2hz : out  STD_LOGIC;
           clk16hz : out  STD_LOGIC;
           clk2khz : out  STD_LOGIC);
end component;

component msa_hdl
		port(
				clkin : in STD_LOGIC;
				rst : in STD_LOGIC;
				b0 : in STD_LOGIC;
				b1 : in STD_LOGIC;
				b2 : in STD_LOGIC;
				gs : in STD_LOGIC;
				data:in std_logic_vector(11 downto 0);
				enable_del : out STD_LOGIC);
end component;

signal CLKIN_IBUFG_OUT : std_logic;
signal CLK0_OUT : std_logic;
signal LOCKED_OUT : std_logic;
signal b0, b2, b1, enable_del : std_logic;
signal clk2hz,clk16hz,clk2khz : std_logic;
--signal debout1,debout2,debout3,debout4 : std_logic;
signal shreg : std_logic_vector(7 downto 0);
type sequences is array(9 downto 0) of std_logic_vector(7 downto 0);
signal seq:sequences; 
 
begin 

--inst1_debounce: debounce_hdl port map(
--sig_in => bouton1,
--sig_out => debout1,
--clkin => clk2khz
--);
--
--inst2_debounce: debounce_hdl port map(
--sig_in => bouton2,
--sig_out => debout2,
--clkin => clk2khz
--);
--
--inst3_debounce: debounce_hdl port map(
--sig_in => bouton3,
--sig_out => debout3,
--clkin => clk2khz
--);
--
--inst4_debounce: debounce_hdl port map(
--sig_in => bouton4,
--sig_out => debout4,
--clkin => clk2khz
--);


inst_diviseur_clk: diviseur_clk port map(
		clkin => clkin,
		clk2hz => clk2hz,
		clk16hz => clk16hz,
		clk2khz => clk2khz
);

Inst_msa_hdl: msa_hdl port map(
		clkin => clk_dcm1,
		rst => rst,
		b0 => b0,
		b1 => b1,
		b2 => b2,
		gs => gs,
		data => Bseq,
		enable_del => enable_del
);




-- Description de l'encodeur
b0 <= '1' when ( debout4 = '0' and debout3 = '0' and debout2 = '1' and debout1 = '0') or
(debout3 = '1' and debout2 = '1' and debout1 = '0') else
'0';
b1 <= '1' when debout4 = '0' and debout3 = '1' and debout2 = '0' and debout1 = '0' else
'0';

b2 <= '1' when debout4 = '1' and debout3 = '0' and debout2 = '0' and debout1 = '0' else
'0';
-- Description du Get something
gs <= '1' when debout4 = '1' or debout3 = '1' or debout2 = '1' or debout1 = '1' else
'0';
-- Description du registre  dcalage
 
Q_del <= enable_del;
end Behavioral;

