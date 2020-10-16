-- ROM memory
library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.numeric_std.all;
use IEEE.numeric_bit.all;
use std.textio.all;
entity Duda is
	generic(
		addressSize   : natural := 64;
		wordSize      : natural := 32;
		mifFileName   : string  := "rom.dat"
	);
	port(
		addr          : in bit_vector(addressSize - 1 downto 0);
		data          : out bit_vector(wordSize - 1 downto 0)
	);
end Duda;

	architecture behavior of Duda is
		type mem_type is array (2**addressSize - 1 downto 0) of bit_vector(wordSize - 1 downto 0);
		impure function iniciate(fileName : in string) return mem_type is
			file arquivo : text open read_mode is fileName;
			variable linha : line;
			variable temp_bv : bit_vector(wordSize - 1 downto 0);
			variable temp_mem : mem_type;
			begin
				for i in mem_type'range loop
					readline(arquivo, linha);
					read(linha, temp_bv);
					temp_mem(i) := temp_bv;
				end loop;
			return temp_mem;
		end;
		constant mem : mem_type := iniciate(mifFileName);
		begin
		data <= mem(to_integer(unsigned(addr)));
	end behavior;
