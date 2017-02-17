library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity and_not4 is
	port(input:std_logic_vector(3 downto 0);
	output: out std_logic);
end and_not4;

architecture and_not4 of and_not4 is
begin
	output <= not(input(0) and input(1) and input(2) and input(3));
end  and_not4;
