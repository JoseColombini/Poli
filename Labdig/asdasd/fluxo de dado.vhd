-- fluxo de dados
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fluxo_dados is
	port(
		--inputs
		clock :           in std_logic;
		zera1, conta1 :   in std_logic;
		conta2, carrega2 :in std_logic;
				
		--outputs
		fim1, condicao1 : out std_logic;
		saida:            out std_logic_vector(3 downto 0);
		db_fim2:          out std_logic;
		db_contagem1:      out std_logic_vector(3 downto 0)
		
	);
end entity;

architecture arquitetura of fluxo_dados is
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
	signal zero : std_logic;
	signal zero4 : std_logic_vector(3 downto 0);

begin

	zero <= '0';
	
	zero4 <= "0000";
	
	db_contagem1 <= contagem;

	CONT1: contador
		port map (clock, zera1, conta1, zero, zero4, contagem, fim1);
	
	CONT2: contador
		port map (clock, zero, conta2, carrega2, zero4, saida, db_fim2);

	COMP: comparador
		port map (contagem(1 downto 0), contagem(3 downto 2), condicao1);


end arquitetura;
