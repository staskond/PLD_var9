library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DC3to8 is
	port(EN, A, B, C: in std_logic;	   
		Y: out std_logic_vector(7 downto 0));
end DC3to8;

architecture DC3to8 of DC3to8 is
	signal not_a, not_b, not_c, not_EN, aa, bb, cc: std_logic;
	component el_not is
		port( Q: in std_logic;
			not_Q: out std_logic);
	end component;
	
	component and_not4 is
		port(input:std_logic_vector(3 downto 0);
			output: out std_logic);
	end component; 
begin
	to_not_a: el_not port map(Q => A, not_Q => not_a); 
	to_not_b: el_not port map(Q => B, not_Q => not_b);
	to_not_c: el_not port map(Q => C, not_Q => not_c);
	to_not_en: el_not port map(Q => EN, not_Q => not_EN);
	to_aa: el_not port map(Q => not_a, not_Q => aa);
	to_bb: el_not port map(Q => not_b, not_Q => bb);
	to_cc: el_not port map(Q => not_c, not_Q => cc);
	
	res0: and_not4 port map(input(3) => not_EN, input(2) => not_c, input(1) => not_b, input(0) => not_a, output => Y(0));
	res1: and_not4 port map(input(3) => not_EN, input(2) => not_c, input(1) => not_b, input(0) => aa, output => Y(1));
	res2: and_not4 port map(input(3) => not_EN, input(2) => not_c, input(1) => bb, input(0) => not_a, output => Y(2));
	res3: and_not4 port map(input(3) => not_EN, input(2) => not_c, input(1) => bb, input(0) => aa, output => Y(3));
	res4: and_not4 port map(input(3) => not_EN, input(2) => cc, input(1) => not_b, input(0) => not_a, output => Y(4));	
	res5: and_not4 port map(input(3) => not_EN, input(2) => cc, input(1) => not_b, input(0) => aa, output => Y(5));	 
	res6: and_not4 port map(input(3) => not_EN, input(2) => cc, input(1) => bb, input(0) => not_a, output => Y(6));	  
	res7: and_not4 port map(input(3) => not_EN, input(2) => cc, input(1) => bb, input(0) => aa, output => Y(7));
	
	
end DC3to8;

