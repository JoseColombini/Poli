library ieee;
use ieee.std_logic_1164.all;


entity MaquinaEstadoSemaforo is
	port(
	--INPUTS
		clock	:	in std_logic; --clocks para o circuito de 1 segundos, 5 segundos e 1 minuto
		Noturno, PvA, PvB				:	in std_logic; --Sinais externos (sensores ou comandos)
		reset								:	in std_logic; --Sinal de reset
	--OUTPUTS
		c1s, c5s, c1m:	out std_logic;
		Q0, Q1, Q2	:	out std_logic
		-- VmA, VdA, AmA					:	out std_logic; --Sinais de saida para semáforo A
		-- VmB, VdB, AmB					:	out std_logic  --Sinais de saida para semaforo B
	);
end entity;

architecture Maquina1 of MaquinaEstadoSemaforo is
	type State is (Bgn, eVdA, eAmA, eVdB, eAmB, Piscante, Apagado);

	signal E_Atual, E_Futuro	:	State;
begin

--sensibilidade ao clock
	sincron: process(clock, E_Atual)
	begin
		--Reset
		if(reset = '1') then
			E_Atual <= Bgn;
			--estados seníveis ao clock de 1 segundo
		elsif(clock'event AND clock = '1') then
				E_Atual <= E_Futuro;
		end if;
	end process sincron;

	transition: process(Noturno, PvA, PvB, E_Atual)
	begin
		case E_Atual is
			when Bgn =>				if Noturno = '1' then E_Futuro <= Piscante;
												elsif Noturno = '0' AND PvA = '1' then E_Futuro <= eVdA;
												elsif Noturno = '0' AND PvA = '0' AND PvB = '1' then E_Futuro <= eVdB;
												else E_Futuro <= Bgn;
												end if;

			when Piscante =>	if Noturno = '1' then E_Futuro <= Apagado;
												else E_Futuro <= Bgn;
												end if;

			when Apagado => 	E_Futuro <= Piscante;

			when eVdA =>			E_Futuro <= eAmA;

			when eAmA =>			if PvB = '0' then E_Futuro <= Bgn;
												else E_Futuro <= eVdB;
												end if;

			when eVdB =>			E_Futuro <= eAmB;

			when eAmB =>			if PvA = '0' then E_Futuro <= Bgn;
												else E_Futuro <= eVdA;
												end if;

			when others =>		E_Futuro <= Bgn;
		end case;
	end process transition;

	--saidas
	Q0 <= '1' when E_Atual = eAmA or E_Atual = eVdB or E_Atual = Bgn else '0';

	Q1 <= '1' when E_Atual = eVdB or E_Atual = eAmB or E_Atual = Piscante else '0';

	Q2 <= '1' when E_Atual = Apagado or E_Atual = Bgn else '0';



	c1s <= '1' when E_Atual = Piscante OR E_Atual = Apagado OR E_Atual = Bgn else '0';

	c5s <= '1' when E_Atual = eAmA OR E_Atual = eAmB else '0';

	c1m <= '1' when E_Atual = eVdA OR E_Atual = eVdB else '0';


end architecture;
