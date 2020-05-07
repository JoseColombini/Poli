-- COntador-comparador
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity exp5 is
	port(
		--inputs
		clock, clear, enable, load : in std_logic;
		data : in std_logic_vector(3 downto 0);
		--outputs
		rco, equal : out std_logic
	);
end exp5;

architecture contacompara of exp5 is
--compoents
	component contador is
		port(
			clock, zera, conta, carrega: in std_logic;
			entrada: in std_logic_vector (3 downto 0);
			contagem: out std_logic_vector (3 downto 0);
			fim: out std_logic
		);
	end component;

	component comparador is
		port(
			A, B: in std_logic_vector(1 downto 0);
			igual: out std_logic
		);
	end component;

--signals intermadiarios
	signal contagem : std_logic_vector(3 downto 0);

begin

	CONT: contador
		port map (clock, clear, enable, load, data, contagem, rco);

	COMP: comparador
		port map (contagem(1 downto 0), contagem(3 downto 2), equal);


end contacompara;
