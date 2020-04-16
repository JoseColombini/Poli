library ieee;
use ieee.numeric_bit.all;

entity fulladder is
  port(
    a, b, cin : in bit;
    s, cout   : out bit
  );
end entity;


architecture fulladder of fulladder is
  signal s1 : bit;
  signal s2, s3, s4, s5 : bit;
begin
  s1 <= a xor b xor cin;
  s <= s1;
  s2 <= a or b or cin;
  s3 <= s2 and not(s1);
  s4 <= a and b and cin;
  cout <= s3 or s4;

end architecture;
-----------------------------------------------------
------xxxxxxxxxxxxxxxxxxxxx--------------------------
library ieee;
use ieee.numeric_bit.all;

entity alu1bit is
  port(
  a, b, less, cin : in bit;
  result, cout, set, overflow : out bit;
  ainvert, binvert : in bit;
  operation : in bit_vector (1 downto 0)
  );
end entity;

architecture alu1bit of alu1bit is

  component fulladder is
    port(
    a, b, cin : in bit;
    s, cout   : out bit
    );
  end component;

  signal a1, b1  : bit;
  signal res_add : bit;
  signal out_add : bit;

begin

  F1: fulladder port map(a1, b1, cin, res_add, out_add); -- fulladder component delcaration

  a1 <= a xor ainvert; -- invert or not a
  b1 <= b xor binvert; -- invert or not b

  -- Add operations (something happens independ of MUX)
  set <= res_add;
  overflow <= cin xor out_add;
  cout <= out_add;

  with operation select
    result <= a1 and b1 when "00", -- operation and
              a1 or b1  when "01", -- operation or
              res_add   when "10", -- operation add
              b         when "11"; -- operation SLT



end architecture;
------------------------------------------------------
--------------ALU64BITS-------------------------------
------------------------------------------------------
library ieee;
use ieee.numeric_bit.all;

entity orgasm is
  port(
    entrada, outra : in bit;
    saida   : out bit
  );
end entity;

architecture orgasm of orgasm is

begin
  saida<= entrada or outra;
end architecture;

library ieee;
use ieee.numeric_bit.all;


entity alu is
  generic(
    size : natural := 10 --bitsize
  );
  port(
    A, B : in bit_vector(size - 1 downto 0); --inputs
    F    : out bit_vector(size - 1 downto 0); --output
    S    : in bit_vector(3 downto 0); --op select
    Z    : out bit; --zeroflag
    OV   : out bit; -- overflowflag
    Co   : out bit -- carryoutflag
  );
end entity alu;

architecture alu of  alu is

  component orgasm is
    port(
      entrada, outra : in bit;
      saida : out bit
    );
  end component;

  component alu1bit is
    port(
    a, b, less, cin : in bit;
    result, cout, set, overflow : out bit;
    ainvert, binvert : in bit;
    operation : in bit_vector (1 downto 0)
    );
  end component;

  signal cns    : bit_vector (size downto 0);
  signal setvec : bit_vector (size - 1 downto 0);
  signal ovflow : bit_vector (size - 1 downto 0);
  signal op     : bit_vector (1 downto 0);
  signal partial_res : bit_vector (size - 1 downto 0);
  signal less : bit;
  signal Al : bit_vector (size - 1 downto 0);
  signal A2 : bit_vector (size - 1 downto 0);
  signal verify : bit;
  signal ora : bit_vector (size downto 0);

begin
  op <= S(1)&S(0); -- operacao que sera passada para as 1bitula

  cns(0) <=S(3) or S(2);


  less <= '1' when signed(A) < signed(B) else '0';


  bit_logic: for i in size - 1 downto 0 generate
    lest_bit: if i = size - 1 generate
      Ai : alu1bit port map (A(i), B(i), less, cns(i),
                                partial_res(i), Co, setvec(i), ovflow(i),
                                s(3), S(2),
                                op);
    end generate;
    other: if i /= size - 1 generate
      Ai : alu1bit port map (A(i), B(i), less, cns(i),
                             partial_res(i), cns(i + 1), setvec(i), ovflow(i),
                             s(3), S(2),
                             op);
    end generate;
  end generate;

  ora(size) <= '0';
  orlogic: for i in size - 1 downto 0 generate
    Oi: orgasm port map (partial_res(i), ora(i + 1), ora(i));
  end generate;
  --verify <= '0' when to_integer(unsigned(partial_res)) = 0 else '1';

  verify <= '1' when setvec(size - 1) = '1' else '0';

  with op select
    F <= B when "11",
         partial_res when others;

  Z <= '1' when op = "11" and ovflow(size - 1) = '1' else
       '1' when ora(0) = '0' else '0';
  Ov <= ovflow(size - 1);

end architecture;
