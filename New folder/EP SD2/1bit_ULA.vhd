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
              less      when "11"; -- operation SLT



end architecture;
