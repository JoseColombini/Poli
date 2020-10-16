--libraries used
----ieee=synopsys
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;



--types defined to make the code readable

--entity of ram
entity ram is
	generic (
		addressSize : natural := 32;
		wordSize		: natural := 32
	);
	port (
		ck, wr : in bit;
		addr	 : in bit_vector(addressSize - 1 downto 0);
		data_i : in bit_vector(wordSize - 1 downto 0);
		data_o : out bit_vector(wordSize - 1 downto 0)
	);
end ram;

--the basic architecture for ram
architecture ram of ram is
	type mem_tipo is array (0 to 2**addressSize) of bit_vector (wordSize -1 downto 0);

	signal memory : mem_tipo;

begin

	memacss: process(ck, wr, addr, data_i) is


		variable index : integer;

	begin

			index := to_integer(unsigned(addr));
			if (ck'event and ck = '1' and wr ='1') then
				memory(index) <= data_i;
			end if;

			if (wr = '0') then
				data_o <= memory(index);

			end if;
	end process memacss;
end ram;
