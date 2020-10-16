library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;

entity ram is
  generic (
    adressSize : natural := 64;
    wordSize   : natural := 32
  );
  port (
    ck, wr : in  bit;
    addr   : in  bit_vector(adressSize-1 downto 0);
    data_i : in  bit_vector(wordSize - 1 downto 0);
    data_o : out bit_vector(wordSize - 1 downto 0)
  );
end ram;

architecture ram_arch of ram is

  type ram_type is array(0 to 2**adressSize - 1) of bit_vector(wordSize - 1 downto 0);
  signal ram_mem : ram_type;
  signal clock : std_logic;
  signal address: std_logic_vector(0 to adressSize-1);

begin
  with ck select
    clock <= '0' when '0',
             '1' when '1';
  RAMProc: process(clock) is
  begin

    if rising_edge(clock) then
      if wr = '1' then
        ram_mem(to_integer(unsigned(addr))) <= data_i;
      end if;
    end if;
  end process;
  data_o <= ram_mem(to_integer(unsigned(addr)));

end ram_arch;
