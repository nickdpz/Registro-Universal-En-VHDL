library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor is

port(		a,b,c,d		: in std_logic;
			s: in std_logic_vector(1 downto 0);
			x		: out std_logic);

end Multiplexor;

architecture Behavioral of Multiplexor is

begin
with s select
 x<= 	(a) when "00",
		(b) when "01",
		(c) when "10", 
		(d) when others;
end Behavioral;

