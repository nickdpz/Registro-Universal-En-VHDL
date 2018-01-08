library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.PackFF.all;

entity FlipFlopTipoD is
port(

D: in std_logic;
clk: in std_logic;
reset: in std_logic;
Q:out std_logic

);

end FlipFlopTipoD;


architecture Behavioral of FlipFlopTipoD is
signal qs:std_logic ;
begin
cc1: LacthTipoD port map (D,clk,reset,qs);
cc2: LacthTipoD port map (qs,not(clk),reset,Q);


end Behavioral;

