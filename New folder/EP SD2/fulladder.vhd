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
