library ieee;
use ieee.std_logic_1164.all;

entity CircuitoTemporizador is
  port(
    c1s, c5s, c1m : in std_logic;
    clock : in std_logic;

    cout  : out std_logic
  );
end entity;


architecture CircuitoTemporizador of CircuitoTemporizador is

  component fliflop is
  	port(
  		D	: in std_logic;
  		clock, reset	:	in std_logic;
  		Q, QI	:	out std_logic
  	);
  end component;


  signal temp1s, temp5s, temp1m  : std_logic := '0';
  signal cc1, cc5, cc60 : integer := 1;
  signal clk  : std_logic := '0';
  signal cont, Ncont : std_logic_vector(3 downto 0);

  signal d0, d1, d2, d3  : std_logic;

begin

  process(clock, c1s, c5s, c1m)
  begin
    if(clock'event and clock = '1') then
        cc1 <= cc1 + 1;
      if (cc1 = 2) then
        temp1s <= not(temp1s);
			   cc1 <= 1;
		end if;
      end if;
  end process;

  d0 <= Ncont(0) and Ncont(2);
  d1 <= (Ncont(0) and cont(1)) or (Ncont(1) and cont(0));
  d2 <= cont(1) and cont(0);
  d3 <= cont(1);

 conter : for i in 0 to 3 generate
   INITC : if  i = 0 generate
     Ci: fliflop port map(d0, temp1s, not(c5s), cont(i), Ncont(i));
   end generate;
   CO1 : if i = 1 generate
     Ci: fliflop port map(d1, temp1s, not(c5s), cont(i), Ncont(i));
   end generate;
   CO2 : if i = 2 generate
     Ci: fliflop port map(d2, temp1s, not(c5s), cont(i), Ncont(i));
   end generate;
   CO3 : if i = 3 generate
     Ci: fliflop port map(d3, temp1s, not(c5s), cont(i), Ncont(i));
   end generate;
 end generate;

--
-- process(temp1s, c5s)
-- begin
--   if(c5s = '0') then
--     cc5 <= 1;
--     temp5s <= '0';
--   elsif (temp1s'event and temp1s = '1') then
--     cc5 <= cc5 + 1;
--     if(cc5 = 5) then
--       temp5s <= not(temp5s);
--       cc5 <= 1;
--     end if;
--   end if;
-- end process;


process(temp1s, c1m)
begin
  if(c1m = '0') then
    cc60 <= 1;
    temp1m <= '0';
  elsif (temp1s'event and temp1s = '1') then
    cc60 <= cc60 + 1;
    if(cc60 = 30) then
      temp1m <= not(temp1m);
      cc60 <= 1;
    end if;
  end if;
end process;
--  cout <= temp;
  cout <= temp1s when c1s = '1' else
          cont(3) or cont(1) when c5s = '1' else
          temp1m when c1m = '1' else
          '0';

-- process(temp)
-- begin
--   if(temp = '1') then
--     Reset <= '1';
--   end if;
--   if(Reset = '1') then
--     Reset <= '0';
--   end if;
--	end process;

end architecture;
