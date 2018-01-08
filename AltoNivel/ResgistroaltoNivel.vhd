library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ResgistroaltoNivel is
port(
Ii : in std_logic_vector(7 downto 0);
Ip: in std_logic_vector(1 downto 0);
clk,reset:in std_logic;
ca: in std_logic_vector(1 downto 0);
salida:out std_logic_vector(7 downto 0)
);
end ResgistroaltoNivel;

architecture Behavioral of ResgistroaltoNivel is
signal auxo:std_logic_vector(7 downto 0);
begin
process(clk,reset,ca)

begin 
if reset='1' then
auxo<="00000000";
elsif clk'event and clk='1' then
	case ca is
		when "00" =>
		for i in 0 to 6 loop
		auxo(i+1)<=auxo(i);
		end loop;
		auxo(0)<=auxo(7);
		when "01" =>
		auxo(7)<=Ip(1);
		for i in 0 to 6 loop
		auxo(i)<=auxo(i+1);
		end loop;
		when "10" => auxo <=Ii;
		when others=>for i in 0 to 6 loop
		auxo(i+1)<=auxo(i);end loop;
		auxo(0)<=Ip(0);
	end case;
end if;

end process;
salida<=auxo;

end Behavioral;

