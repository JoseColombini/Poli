library ieee;
use ieee.std_logic_1164.all;

entity P2 is
  port(
    clock : in std_logic;

    c20k, c2k, c200, c20 : out std_logic
  );
end entity;


architecture CircuitoTemporizador of P2 is

  signal cc20k, cc2k, cc200, cc20 : integer := 1;
  signal i20k, i2k, i200, i20  : std_logic := '0';

begin

  process(clock)
  begin
    if(clock'event and clock = '1') then
        cc20k <= cc20k + 1;
        cc2k <= cc2k + 1;
        cc200 <= cc200 + 1;
        cc20 <= cc20 + 1;

      if (cc20k = 1250) then
         i20k <= not(i20k);
			   cc20k <= 1;
		  end if;

      if (cc2k = 12500) then
        i2k <= not(i2k);
        cc2k <= 1;
      end if;

      if (cc200 = 125000) then
        i200 <= not(i200);
        cc200 <= 1;
      end if;

      if (cc20 = 1250000) then
        i20 <= not(i20);
        cc20 <= 1;
      end if;

    end if;
  end process;

  c20k <= i20k;
  c2k <= i2k;
  c200 <= i200;
  c20 <= i20;

end architecture;
