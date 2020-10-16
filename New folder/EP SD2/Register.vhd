library ieee;
use ieee.numeric_bit.all;


entity reg is
  generic(
    wordSize : natural := 4
  );
  port (
    clock : in bit;
    reset : in bit;
    load  : in bit;
    d     : in bit_vector(wordSize - 1 downto 0);
    q     : out bit_vector(wordSize - 1 downto 0)
  );
end reg;


architecture R of reg is

begin
  process(clock, reset, load) is

    variable i : integer;

  begin
    if reset = '1' then
      for i in q'range loop
        q(i) <= '0';
      end loop;
    else
      if clock'event and clock ='1' and load = '1' then
        q <= d;
      end if;
    end if;


  end process;

end R;
