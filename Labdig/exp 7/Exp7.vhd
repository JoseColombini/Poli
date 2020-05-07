library ieee;
use ieee.std_logic_1164.all;

entity exp7 is
  port(
    clock, reset  :  in std_logic;
    Noturno, PvA, PvB	:	in std_logic; --Sinais externos (sensores ou comandos)

		Q0, Q1, Q2	:	out std_logic
  );
end entity;

architecture exp7 of exp7 is

  component MaquinaEstadoSemaforo is
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
  end component;

  component CircuitoTemporizador is
    port(
      c1s, c5s, c1m : in std_logic;
      clock : in std_logic;

      cout  : out std_logic
    );
  end component;

  signal c1s, c5s, c1m  : std_logic;
  signal semfclk  : std_logic;

begin

  TEMP: CircuitoTemporizador port map(c1s, c5s, c1m, clock, semfclk);

  FSMSEF: MaquinaEstadoSemaforo port map(semfclk, Noturno, PvA, PvB, reset, c1s, c5s, c1m, Q0, Q1, Q2);

end architecture;
