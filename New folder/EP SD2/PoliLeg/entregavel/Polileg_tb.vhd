librarylibrary ieee;
use ieee.numeric_bit.all;
use ieee.math_real.all;

entity Polileg_tb is end;

architecture Polileg_tb of Polileg_tb is

  component polilegsc is
    port(
      clock, reset  : in bit;
      --Data memory
      dmem_addr : out bit_vector(63 downto 0);
      dmem_dati : out bit_vector(63 downto 0);
      dmem_dato : in  bit_vector(63 downto 0);
      dmem_we   : out bit;
      --instrucion memory
      imem_addr : out bit_vector(63 downto 0);
      imem_data : in bit_vector(31 downto 0)
    );
  end component;
