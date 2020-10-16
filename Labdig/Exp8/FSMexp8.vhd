library ieee;
use ieee.std_logic_1164.all;


entity FSMexp8 is
	port(
	--INPUTS
		clock	:	in std_logic; --clocks para o circuito de 1 segundos, 5 segundos e 1 minuto
		Noturno, VeA, VeB, PdA, PdB				:	in std_logic; --Sinais externos (sensores ou comandos)
		reset								:	in std_logic; --Sinal de reset
	--OUTPUTS
		c1s, c5s, c1m:	out std_logic;
		Q0, Q1, Q2	:	out std_logic
		-- VmA, VdA, AmA					:	out std_logic; --Sinais de saida para semáforo A
		-- VmB, VdB, AmB					:	out std_logic  --Sinais de saida para semaforo B
	);
end entity;

architecture FSMexp8 of FSMexp8 is
	type State is (eVdA, eAmA, eVdB, eAmB, Piscante, Apagado);

	signal E_Atual, E_Futuro	:	State;

begin

--sensibilidade ao clock
	sincron: process(clock, E_Atual, reset, PdB, PdA, VeA, VeB, E_Futuro)
	begin
		--Reset
		if(reset = '1') then
			E_Atual <= eVdA;
--		elsif (E_Atual = eVdA and VeA = '0' and PdB = '0' and (VeB = '1' or PdA = '1')) then
--			E_Atual <= eAmA;
--		elsif (E_Atual = eVdB and VeB = '0' and PdA = '0' and (VeA = '1' or PdB = '1')) then
--			E_Atual <= eAmB;
			--estados seníveis ao clock de 1 segundo
		elsif(clock'event AND clock = '1') then
				E_Atual <= E_Futuro;
		end if;
	end process sincron;

	transition: process(Noturno, VeA, VeB, PdA, PdB, E_Atual, clock)
	begin
		case E_Atual is
			when eVdA =>			if Noturno = '1' then E_Futuro <= Piscante;
												elsif Noturno = '0' AND (PdA = '1' or VeB = '1') then E_Futuro <= eAmA;
												else E_Futuro <= eVdA;
												end if;

			when Piscante =>	if Noturno = '1' then E_Futuro <= Apagado;
												else E_Futuro <= eVdA;
												end if;

			when Apagado => 	E_Futuro <= Piscante;

			when eAmA =>			E_Futuro <= eVdB;

			when eVdB =>			if VeA = '0' and PdB = '0' and (VeB = '1' or PdA = '1') then E_Futuro <= eVdB;
												else E_Futuro <= eAmB;
												end if;

			when eAmB =>		 E_Futuro <= eVdA;

			when others =>		E_Futuro <= eVdA;
		end case;
	end process transition;

	--saidas
	Q0 <= '1' when E_Atual = eAmA or E_Atual = eVdB else '0';

	Q1 <= '1' when E_Atual = eVdB or E_Atual = eAmB or E_Atual = Piscante else '0';

	Q2 <= '1' when E_Atual = Apagado or E_Atual = Piscante else '0';



	c1s <= '1' when E_Atual = Piscante OR E_Atual = Apagado else '0';

	c5s <= '1' when E_Atual = eAmA OR E_Atual = eAmB else '0';

	c1m <= '1' when E_Atual = eVdA OR E_Atual = eVdB else '0';


end architecture;
