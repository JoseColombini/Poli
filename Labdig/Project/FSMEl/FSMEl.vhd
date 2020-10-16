library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity FSMEl is
  port(
    --INPUTS
    clock     : in std_logic;
    reset     : in std_logic;

    destiny   : in std_logic_vector(2 downto 0); --para 8 andares
    position  : in std_logic_vector(2 downto 0);
    call      : in std_logic;
    --OUTPUTS
    do     : out std_logic;
    upDown   : out std_logic_vector(1 downto 0)
  );
end entity;

architecture FSMEl of FSMEl is

  type State is (Init, Gup, Gd, Door);
  signal Enow, Efut, Epast: State;

  signal equal  : integer;

begin

--Definicao de clock e reset
  process(clock, reset)
  begin
    if (reset = '1') then
      Enow <= Init;
    elsif(clock'event and clock = '1') then
      Epast <= Enow;
      Enow <= Efut;
    end if;
  end process;

--Preparando sinais que sinais internos para tratar estados
  equal <= to_integer(unsigned(destiny)) - to_integer(unsigned(position));

--Transicao de estados
  Efut <=
    Gup when ((Enow = Init or Enow = Door) and call = '1' and equal > 0) or (Enow = Gup and equal > 0) else
    Gd  when ((Enow = Init or Enow = Door) and call = '1' and equal < 0) or (Enow = Gd and equal < 0) else
    Door when equal = 0 and  call = '1' else
    Init;

-- Saida dos estados
  upDown <=
    --"00" when Enow = Init or (Enow = Door and call = '0') else
    "01" when Enow = Gd else
    "10" when Enow = Gup else
    "00";
--11 será tratado como falha do sistema nos porximos estados, enviando um sinal de Reset
--foi escolhido para identificar falha no sistema, ao inves de criar prioridade para cada bit
--o que acabaria gerando funcionamento estranhos em caso de falha;
  do <=
    '1' when Enow = Door else
    '0';

end architecture;
