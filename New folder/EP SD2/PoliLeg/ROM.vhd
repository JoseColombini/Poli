library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;
use std.textio.all;

entity rom is
  generic (
    addressSize  : natural := 64;
    wordSize     : natural := 32;
    mifFileName  : string  := "rom.dat"
  );
  port (
    addr         : in bit_vector (addressSize - 1 downto 0);
    data         : out bit_vector (wordSize - 1 downto 0)
  );
end rom;


architecture Rom of rom is
  type mem_tipo is array (0 to 2**addressSize - 1) of bit_vector (wordSize - 1 downto 0);


  impure function init_mem(mif_file_name : in string) return mem_tipo is
      file mif_file : text open read_mode is mif_file_name;
      variable mif_line : line;
      variable temp_bv : bit_vector(wordSize - 1 downto 0);
      variable temp_mem : mem_tipo;
      variable i  : integer;
  begin
      for i in mem_tipo'range loop
          readline(mif_file, mif_line);
          read(mif_line, temp_bv);
          temp_mem(i) := temp_bv;
      end loop;
    return temp_mem;
  end;

  constant memory : mem_tipo := init_mem(mifFileName);

begin

    data <= memory(to_integer(unsigned(addr)));

end Rom;
