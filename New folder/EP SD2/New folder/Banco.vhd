library ieee;
use ieee.numeric_bit.all;
use ieee.math_real.all;

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




library ieee;
use ieee.numeric_bit.all;
use ieee.math_real.all;



entity regfile is
  generic(
    regn     : natural := 2; --numero de registradores
    wordSize : natural := 4  --tamanho da palavra dos registradores
  );
  port(
    clock        : in bit;
    reset        : in bit;
    regWrite     : in bit;
    rr1, rr2, wr : in bit_vector(natural(ceil(log2(real(regn)))) - 1 downto 0);
    d            : in bit_vector(wordSize - 1 downto 0);

    q1, q2       : out bit_vector(wordSize -1 downto 0)
  );
end regfile;


architecture regbanch of regfile is

  component reg is
    port (
      clock : in bit;
      reset : in bit;
      load  : in bit;
      d     : in bit_vector(wordSize - 1 downto 0);
      q     : out bit_vector(wordSize - 1 downto 0)
    );
  end component;

  type bank_type is array (0 to regn - 1) of bit_vector (wordSize - 1 downto 0);
  signal bank_in  : bank_type;
  signal bank_out : bank_type;
  signal zero     : bit_vector (wordSize - 1 downto 0);
begin

  Gen_bank_registe: for i in 0 to regn - 1 generate
    Rx : reg port map (clock, reset, regWrite, bank_in(i), bank_out(i));
  end generate Gen_bank_registe;

  Operation: process (clock, reset, regWrite, rr1, rr2, wr, d) is
    variable z : natural;
  begin

    for z in (wordSize - 1) downto 0 loop
      zero(z) <= '0';
    end loop;


    if to_integer(unsigned(rr1)) < regn - 1 then
      q1 <= bank_out(to_integer(unsigned(rr1)));
    else
      q1 <= zero;
    end if;

    if to_integer(unsigned(rr2)) < regn - 1 then
      q2 <= bank_out(to_integer(unsigned(rr2)));
    else
      q2 <= zero;
    end if;

  end process Operation;

  bank_in(to_integer(unsigned(wr))) <= d;


end regbanch;
