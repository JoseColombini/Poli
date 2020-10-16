library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity gerenciador is
  port(

  --  d0i1, d0i0  : out integer;
  --INPUTS
    reset      : in std_logic;
    position          : in std_logic_vector(2 downto 0);
    requestsUp        : in std_logic_vector(7 downto 0);
    requestsDown      : in std_logic_vector(7 downto 0);
    internal          : in std_logic_vector(7 downto 0);
    direction         : in std_logic_vector(1 downto 0);
  --OUTPUTS
    destiny           : out std_logic_vector(2 downto 0);
    call              : out std_logic
  );
end entity;

architecture gerenciador of gerenciador is

  type rvetor is array (0 to 7) of integer;

  signal d    : rvetor;
  signal f    : std_logic_vector(2 downto 0);

begin


  stop  :  process(position, direction, internal, requestsUp, requestsDown, d, f)

    variable i : integer := 0;
    variable p     : integer;
    variable aux  : integer;


  begin
    p := to_integer(unsigned(position));
    f <= 1;
    i := 0;
    while i < 8 loop
      d(i) <= abs((2**i) - p);
      i := i + 1;
    end loop;

    if(direction = "00") then

      if(to_integer(unsigned(internal)) /= 0) then
        f <= 0;
        aux := abs(d(f));
        i := 1;
        while i < 8 loop
          if(d(i) < aux and internal(i) = '1') then
            aux := d(i);
            f <= i;
          end if;
          i := i + 1;
        end loop;
        -- destiny <= std_logic_vector(to_unsigned(f, destiny'length));

      else
        f <= 0;
        aux := abs(d(f));
        i := 1;
        while i < 8 loop
          if(abs(d(i)) < aux and (requestsUp(i) = '1' or requestsDown(i) = '1')) then
            aux := abs(d(i));
            f <= i;
          end if;
          i := i + 1;
        end loop;
        -- destiny <= std_logic_vector(to_unsigned(f, destiny'length));
      end if;


    elsif direction = "01" then
      f <= 0;
      aux := abs(d(f));
      i := 1;
      while (i < 8) loop
        if(d(i) < 0 and abs(d(i)) < aux and (requestsDown(i) = '1' or internal(i) = '1')) then
          aux := abs(d(i));
          f <= i;
        end if;
        i := i + 1;
      end loop;
      -- destiny <= std_logic_vector(to_unsigned(f, destiny'length));


    elsif direction = "10" then
      f <= 0;
      aux := abs(d(f));
      i := 1;
      while (i < 8) loop
        if(d(i) > 0 and abs(d(i)) < aux and (requestsUp(i) = '1' or internal(i) = '1')) then
          aux := abs(d(i));
          f <= i;
        end if;
        i := i + 1;
      end loop;
      -- destiny <= std_logic_vector(to_unsigned(f, destiny'length));


    end if;
  end process;

  process(internal, requestsUp, requestsDown)
  begin
    if(to_integer(unsigned(internal)) /= 0 or to_integer(unsigned(requestsUp)) /= 0 or to_integer(unsigned(requestsDown)) /= 0) then
      call <= '1';
    else
      call <= '0';
    end if;
  end process;



      destiny <= std_logic_vector(to_unsigned(f, destiny'length));
    --  d0i0 <= f;

end architecture;