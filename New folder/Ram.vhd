--libraries used
library ieee;
use ieee.std_logic_1164.all;

--types defined to make the code readable 
type mem_tipo is array (0 to addressSize - 1) of bit_vector (wordSize -1 downto 0);

--entity of ram
entity ram is
	generic (
		addressSize : natural := 64;
		wordSize		: natural := 32
	);
	port (
		ck, wr : in bit;
		addr	 : in bit_vector(addressSize - 1 downto 0);
		data_i : in bit_vector(wordSize - 1 downto 0);
		data_o : out bit_vector(wordSize - 1 downto 0);
	);
end ram;

--the basic architecture for ram
architecture ram of ram is

	signal memory : mem_tipo;
	
begin
		
	memacss: process(ck, wr, addr, data_i, data_o) is
		
	variable index : integer;
		
	begin
			
			index := to_integer(addr)
				
			if (rising_edge(ck) and wr ='1') then
				memory(index) <= data_i;
			end if;
			
			if (wr = '0') then
				data_o <= memory(index);
				
			end if;
	end process memacss;
end ram;
	
			