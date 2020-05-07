library IEEE;
use IEEE.std_logic_1164.all;

entity comparador is
	port(
		A, B: in std_logic_vector(1 downto 0);
		igual: out std_logic
		);
end comparador;

architecture comportamental1 of comparador is

begin

	igual <= '1' when A = B else '0';
end comportamental1;
