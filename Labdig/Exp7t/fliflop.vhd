library ieee;
use ieee.std_logic_1164.all;

entity fliflop is
	port(
		D	: in std_logic;
		clock, reset	:	in std_logic;
		Q, QI	:	out std_logic
	);
end entity;

architecture fliflop of fliflop is

begin

	process(clock, reset)
	begin
		if(reset = '1') then
			Q <= '0';
		elsif (clock'event and clock = '1') then
			Q <= D;
			QI <= not(D);
		end if;
	end process;

	

end architecture;
