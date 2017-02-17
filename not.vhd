library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity el_not is
	port( Q: in std_logic;
	not_Q: out std_logic);
end el_not;

architecture el_not of el_not is 
begin
	not_Q <= not Q;
end el_not;
