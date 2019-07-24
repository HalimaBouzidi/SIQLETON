----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:29 05/05/2018 
-- Design Name: 
-- Module Name:    KeyboardController - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity KeyboardController is
    Port ( Clock : in STD_LOGIC;
	        KeyboardClock : in  STD_LOGIC;
           KeyboardData : in  STD_LOGIC;
           Z : buffer  STD_LOGIC;
			  S : buffer  STD_LOGIC;
			  Q : buffer  STD_LOGIC;
			  D : buffer  STD_LOGIC;
			  reset : buffer  STD_LOGIC
           
	);
end KeyboardController;

architecture Behavioral of KeyboardController is

signal bitCount : integer range 0 to 100 := 0;
signal scancodeReady : STD_LOGIC := '0';
signal scancode : STD_LOGIC_VECTOR(7 downto 0);
signal breakReceived : STD_LOGIC := '0';

constant keyboardQ : STD_LOGIC_VECTOR(7 downto 0) := "00011100"; --PS/2 scancode de la touche Q en AZERTY
constant keyboardS : STD_LOGIC_VECTOR(7 downto 0) := "00011011";--PS/2 scancode de la touche S en AZERTY
constant keyboardD : STD_LOGIC_VECTOR(7 downto 0) := "00100011";--PS/2 scancode de la touche D en AZERTY
constant keyboardZ : STD_LOGIC_VECTOR(7 downto 0) := "00011101";--PS/2 scancode de la touche Z en AZERTY
constant keyboardSp : STD_LOGIC_VECTOR(7 downto 0) := "00101001";--PS/2 scancode de la touche SPACE en AZERTY
constant keyboardEnt : STD_LOGIC_VECTOR(7 downto 0) := "01011010";--PS/2 scancode de la touche Enter en AZERTY

begin

	keksfabrik : process(KeyboardClock)
	begin
		if falling_edge(KeyboardClock) then
			if bitCount = 0 and KeyboardData = '0' then --keyboard wants to send data
				scancodeReady <= '0';
				bitCount <= bitCount + 1;
			elsif bitCount > 0 and bitCount < 9 then -- shift one bit into the scancode from the left
				scancode <= KeyboardData & scancode(7 downto 1);
				bitCount <= bitCount + 1;
			elsif bitCount = 9 then -- parity bit
				bitCount <= bitCount + 1;
			elsif bitCount = 10 then -- end of message
				scancodeReady <= '1';
				bitCount <= 0;
			end if;
		end if;
	end process keksfabrik;
	
	kruemelfabrik : process(scancodeReady, scancode)
	begin
		if scancodeReady'event and scancodeReady = '1' then
			-- breakcode breaks the current scancode
			if breakReceived = '1' then 
				breakReceived <= '0';
				if scancode = keyboardQ then
					Q <= '0';
				elsif scancode = keyboardS then
					S <= '0';
					elsif scancode = keyboardD then
					D <= '0';
					elsif scancode = keyboardZ then
					Z <= '0';
					elsif scancode = keyboardEnt then
					reset <= '0';
				end if;
			elsif breakReceived = '0' then
				-- scancode processing
				if scancode = "11110000" then -- mark break for next scancode
					breakReceived <= '1';
				end if;
				
				if scancode = keyboardQ then
					Q <= '1';
				elsif scancode = keyboardS then
					S <= '1';
				elsif scancode = keyboardD then
					D<= '1';
				elsif scancode = keyboardZ then
					Z <= '1';
					elsif scancode = keyboardENt then
					reset <= '1';
				end if;
			end if;
		end if;
	end process kruemelfabrik;
end Behavioral;

