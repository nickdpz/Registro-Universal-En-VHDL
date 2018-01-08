library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package PackFF is
component LacthTipoD
	port (
D: in std_logic;
clk: in std_logic;
reset: in std_logic;
Q:out std_logic
);
end component;

component FlipFlopTipoD
	port (
D: in std_logic;
clk: in std_logic;
reset: in std_logic;
Q:out std_logic
);
end component;

component Multiplexor
port(		a,b,c,d		: in std_logic;
			s: in std_logic_vector(1 downto 0);
			x		: out std_logic);
end component;
	
end PackFF;


