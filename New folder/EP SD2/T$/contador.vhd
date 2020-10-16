library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
	port(
		clock, zera, conta, carrega: in std_logic;
		entrada: in std_logic_vector (3 downto 0);
		contagem: out std_logic_vector (3 downto 0);
		fim: out std_logic
	);
end contador;

architecture comporatamental2 of contador is

	signal IQ: integer range 0 to 15;

begin

	process (clock, zera, conta, carrega, entrada, IQ)
	begin

		if zera = '1' then IQ <= 0;
		elsif (clock'event and clock = '1') then
			if carrega = '1' then
				IQ <= to_integer(unsigned(entrada));
			elsif (conta = '1') then
				if IQ = 15 then IQ <= 0;
				else IQ <= IQ + 1;
				end if;
			else IQ <= IQ;
			end if;
		end if;
	end process;

	contagem <= std_logic_vector(to_unsigned(IQ, contagem'length));

	fim <= '1' when IQ = 15 else '0';

end comporatamental2;


-- COntador-comparador
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contacompara is
	port(
		--inputs
		clock, clear, enable, load : in std_logic;
		data : in std_logic_vector(3 downto 0);
		--outputs
		rco, equal : out std_logic
	);
end contacompara;

architecture contacompara of contacompara is
--compoents
	component contador is
		port(
			clock, zera, conta, carrega: in std_logic;
			entrada: in std_logic_vector (3 downto 0);
			contagem: out std_logic_vector (3 downto 0);
			fim: out std_logic
		);
	end component;

	component comparador is
		port(
			A, B: in std_logic_vector(1 downto 0);
			igual: out std_logic
		);
	end component;

--signals intermadiarios
	signal contagem : std_logic_vector(3 downto 0);

begin

	CONT: contador
		port map (clock, clear, enable, load, data, contagem, rco);

	COMP: comparador
		port map (contagem(1 downto 0), contagem(3 downto 2), equal);


end contacompara;
