library ieee;
use ieee.numeric_bit.all;

entity alucontrol is
  port(
    aluop   : in bit_vector(1 downto 0);
    opcode  : in bit_vector(10 downto 0);
    aluCtrl : out bit_vector(3 downto 0)
  );
end entity;

architecture alucontrol of alucontrol is

  signal Rtype  : bit_vector(3 downto 0);

begin

  with opcode select
    Rtype <= "0010" when "10001011000",
             "0110" when "11001011000",
             "0000" when "10001010000",
             "0001" when OTHERS;

  with aluop select
    aluCtrl <= "0010" when "00",
              "0111" when "01",
              Rtype when OTHERS;

end architecture;
