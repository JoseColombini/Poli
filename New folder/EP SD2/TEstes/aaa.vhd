library ieee;
use ieee.numeric_bit.all;

entity entity is
  port(
    A1 : in bit;
    A0 : in bit;
    B1 : in bit;
    B0 : in bit;
    Z  : out bit
  );
end entity;

architecture entity of entity is

begin
  Z <= (not(A(0)) and B(0)) or (not(A(1)) and A(0) and not(B(0))) or (A0 and not(B1) and not(B0)) or (A1 and not(A0)) or (B1 and B0);
end architecture;

library ieee;
use ieee.numeric_bit.all;

entity enttb is end;

architecture enttb of enttb is

  component entity is
    port(
  A1 : in bit;
  A0 : in bit;
  B1 : in bit;
  B0 : in bit;
  Z  : out bit    );
  end component;

  signal a1, a0, b1, b0, z : bit;

begin

  dut: entity
  port map (a1, a0, b1, b0, z);


end architecture;
