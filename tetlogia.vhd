--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:59:50 12/30/2018
-- Design Name:   
-- Module Name:   /home/ise/SEMB/Projet_sembV1.5/generate_arrows/generate_arrows/tetlogia.vhd
-- Project Name:  generate_arrows
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: game_logic
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tetlogia IS
END tetlogia;
 
ARCHITECTURE behavior OF tetlogia IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT game_logic
    PORT(
         Clk : IN  std_logic;
         Clkd : IN  std_logic;
         Start : IN  std_logic;
         input : IN  std_logic_vector(4 downto 0);
         arrow_locs_up : OUT  std_logic_vector(16 downto 0);
         arrow_locs_down : OUT  std_logic_vector(16 downto 0);
         arrow_locs_right : OUT  std_logic_vector(16 downto 0);
         arrow_locs_left : OUT  std_logic_vector(16 downto 0);
         vecteur_seq : INOUT  std_logic_vector(11 downto 0);
         score : OUT  std_logic_vector(7 downto 0);
         live : OUT  std_logic_vector(1 downto 0);
         lose : OUT  std_logic;
         counter : INOUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Clkd : std_logic := '0';
   signal Start : std_logic := '1';
   signal input : std_logic_vector(4 downto 0) := (others => '0');

	--BiDirs
   signal vecteur_seq : std_logic_vector(11 downto 0);
   signal counter : std_logic_vector(4 downto 0);

 	--Outputs
   signal arrow_locs_up : std_logic_vector(16 downto 0);
   signal arrow_locs_down : std_logic_vector(16 downto 0);
   signal arrow_locs_right : std_logic_vector(16 downto 0);
   signal arrow_locs_left : std_logic_vector(16 downto 0);
   signal score : std_logic_vector(7 downto 0);
   signal live : std_logic_vector(1 downto 0);
   signal lose : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
   constant Clkd_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: game_logic PORT MAP (
          Clk => Clk,
          Clkd => Clkd,
          Start => Start,
          input => input,
          arrow_locs_up => arrow_locs_up,
          arrow_locs_down => arrow_locs_down,
          arrow_locs_right => arrow_locs_right,
          arrow_locs_left => arrow_locs_left,
          vecteur_seq => vecteur_seq,
          score => score,
          live => live,
          lose => lose,
          counter => counter
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
   Clkd_process :process
   begin
		Clkd <= '0';
		wait for Clkd_period/2;
		Clkd <= '1';
		wait for Clkd_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      input(4) <='1';
input(0) <= '0';
input(1) <= '0';
input(2) <= '0';
input(3) <= '0';
wait for 1000 us;
input(4) <='0';
input(0) <= '0';
input(1) <= '0';
input(2) <= '0';
input(3) <= '0';
wait for 4000 us;
input(0) <= '0';
input(1) <= '0';
input(2) <= '0';
input(3) <= '1';
wait for 4000 us;
input(0) <= '0';
input(1) <= '0';
input(2) <= '0';
input(3) <= '0';
wait for 4000 us;
input(0)<= '0';
input(1) <= '0';
input(2) <= '0';
input(3) <= '1';
wait for 4000 us;
input(0) <= '0';
input(1) <= '0';
input(2) <= '0';
input(3) <= '0';
wait for 4000 us;
input(0) <= '0';
input(1) <= '1';
input(2) <= '0';
input(3)<= '0';
wait for 4000 us;
input(0) <= '0';
input(1)<= '0';
input(2) <= '0';
input(3) <= '0';
wait for 4000 us;
input(0)<= '0';
input(1)<= '1';
input(2)<= '0';
input(3)<= '0';
 
   end process;

END;
