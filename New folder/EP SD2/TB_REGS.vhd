library ieee;
use ieee.numeric_bit.all;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

entity TB is
  generic(
    regn     : natural := 2;
    wordSize : natural := 4
);
end TB;

architecture RegsTb of Tb is

  signal ck                   : bit;
  signal rest                 : bit;
  signal rW                   : bit;
  signal read1, read2, writer : bit_vector(natural(ceil(log2(real(regn)))) - 1 downto 0);
  signal D_in                 : bit_vector (wordSize - 1 downto 0);
  signal Q_o1, Q_o2           : bit_vector (wordSize - 1 downto 0);

  component regfile
    port(clock, reset, regWrite : in bit;
          rr1, rr2. wr: in bit_vector (natural(ceil(log2(real(regn)))) - 1 downto 0);
          d : in bit_vector (wordSize -1 downto 0);
          q1, q2 : out bit_vector (wordSize - 1 downto 0 )
    );
  end component;

begin

end architecture;
