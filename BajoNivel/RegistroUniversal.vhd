library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.PackFF.all;


entity RegistroUniversal is
port(
I: in std_logic_vector(7 downto 0);
clk: in std_logic;
reset: in std_logic;
c:in std_logic_vector(1 downto 0);
Ii:in std_logic_vector(1 downto 0);
Q:out std_logic_vector(7 downto 0)
);

end RegistroUniversal;



architecture Behavioral of RegistroUniversal is

signal aux,xD,Iaux:std_logic_vector(7 downto 0);
begin
-- Para el bit 0

c1: Multiplexor port map (aux(7),aux(1),Iaux(0),Ii(0),c,xD(0));
cc1:FlipFLopTipoD port map (xD(0),clk,reset,aux(0));
-- Para los siguientes 1-6
c4: for i in 1 to 6 generate
	cc2: Multiplexor port map (aux(i-1),aux(i+1),Iaux(i),aux(i-1),c,xD(i));
	cc3: FlipFlopTipoD port map (xD(i),clk,reset,aux(i));
	end generate;
	
-- Para el bit 7
	c3: Multiplexor port map (aux(6),Ii(1),Iaux(7),aux(6),c,xD(7));
	cc4: FlipFlopTipoD port map (xD(7),clk,reset,aux(7));
	
	Q<=aux;
	Iaux<=I;

end Behavioral;

