library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TB is 
end TB;
architecture TB of TB is 

component DC3to8 is
	port(EN, A, B, C: in std_logic;	   
		Y: out std_logic_vector(7 downto 0));
end component;	

Signal EN, A, B, C:std_logic;
signal Y: std_logic_vector(7 downto 0);
begin 				   
	MainUint:DC3to8 port map(EN => EN, A=> A, B => B, C => C, Y => Y);
	
	tb1: process 
	begin EN <= '1'; wait for 10ns;
		EN <= '0'; wait for 10ns;
		A <= '0';
		B <= '0';
		C <= '0'; wait for 10ns; 
		A <= '1';
		B <= '0';
		C <= '0'; wait for 10ns;  
		A <= '0';
		B <= '1';
		C <= '0'; wait for 10ns; 
		A <= '1';
		B <= '1';
		C <= '0'; wait for 10ns;  
		A <= '0';
		B <= '0';
		C <= '1'; wait for 10ns; 
		A <= '1';
		B <= '0';
		C <= '1'; wait for 10ns;
		A <= '0';
		B <= '1';
		C <= '1'; wait for 10ns;
		A <= '1';
		B <= '1';
		C <= '1'; wait for 10ns; 
	end process;
end;
