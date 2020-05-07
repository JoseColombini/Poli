-- circuito 4
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito4 is
	port( 
	
			clock, reset, iniciar  : in std_logic;
			pronto, fim :            out std_logic;
			saida :                  out std_logic_vector(3 downto 0);
			db_contagem :            out std_logic_vector(3 downto 0);
			db_zera1, db_conta1:     out std_logic;
			db_conta2, db_carrega2 : out std_logic;
			db_condicao1, db_fim2 :  out std_logic;
			db_estado :              out std_logic_vector(2 downto 0)
			);
end circuito4;

architecture v1 of circuito4 is
-- components
	component fluxo_dados is
		port (
				--inputs
			clock :           in std_logic;
			zera1, conta1 :   in std_logic;
			conta2, carrega2 :in std_logic;
					
			--outputs
			fim1, condicao1 : out std_logic;
			saida:            out std_logic_vector(3 downto 0);
			db_fim2:          out std_logic;
			db_contagem1:     out std_logic_vector(3 downto 0)
			
		);
	end component;
	
	component maquina_estados is
		port (
			-- inputs
			  clock, reset :              in std_logic;
           iniciar, condicao1, fim:    in std_logic;
			  -- outputs
           pronto:                     out std_logic;
           zera1, conta1:              out std_logic;
           conta2, carrega2:           out std_logic;
           db_estado:                  out std_logic_vector(2 downto 0)
       );
	end component;
-- sinais intermediários	
	signal s_zera1 : std_logic;
	signal s_conta1 : std_logic;
	signal s_carrega2 : std_logic;
	signal s_conta2 : std_logic;
	signal s_condicao1 : std_logic;
	signal s_fim1 : std_logic;

	
begin 
	
	MDE : maquina_estados
		port map (clock, reset, iniciar, s_condicao1, s_fim1, pronto, s_zera1, s_conta1, s_conta2, s_carrega2, db_estado);
		
	FDD : fluxo_dados
		port map (clock, s_zera1, s_conta1, s_conta2, s_carrega2, s_fim1, s_condicao1, saida, db_fim2, db_contagem);
		 
	fim <= s_fim1;	 
	
	

end v1;
		 
		 
		 