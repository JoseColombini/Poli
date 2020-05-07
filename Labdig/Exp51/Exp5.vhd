-- COntador-comparador
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity exp5 is
	port(
		--inputs
		clock, zera1, conta1, conta2, carrega2 : in std_logic;
		--data : in std_logic_vector(3 downto 0);
		--outputs
		fim1, condicao1	:	out std_logic;
		saida	: out std_logic_vector(3 downto 0);
		db_fim2	:	out std_logic;
		db_contagem1	:	out std_logic_vector(3 downto 0)
		--rco, equal : out std_logic
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
	signal s_contagem1 : std_logic_vector(3 downto 0);

begin

	CONT1: contador
		port map (clock, zera1, conta1, '0', "0000", s_contagem1, fim1);

	COMP: comparador
		port map (s_contagem1(1 downto 0), s_contagem1(3 downto 2), condicao1);
		
	CONT2: contador
		port map (clock, '0', conta2, carrega2, "0000", saida, db_fim2);
		
	db_contagem1 <= s_contagem1;


end contacompara;
