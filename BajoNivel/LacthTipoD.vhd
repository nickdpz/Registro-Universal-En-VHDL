library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity LacthTipoD is
port(
D: in std_logic;
clk: in std_logic;
reset: in std_logic;
Q:out std_logic
);

end LacthTipoD;

architecture Behavioral of LacthTipoD is

begin
	process(reset,clk,D)
	begin 
	if clk='1' then
		if reset='1' then 
			Q <='0';
		end if;
		Q<=D;
	end if;
	end process;

end Behavioral;

