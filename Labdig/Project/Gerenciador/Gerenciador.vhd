-- library IEEE;
-- use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;
-- use ieee.math_real.all;
--
--
-- entity gerenciador is
--   port(
--   --INPUTS
--     clock, reset      : in std_logic;
--     position          : in std_logic_vector(2 downto 0);
--     requestsDown      : in std_logic_vector(7 downto 0);
--     requestsUp        : in std_logic_vector(7 downto 0);
--     internal          : in std_logic_vector(7 downto 0);
--     direction         : in std_logic_vector(1 downto 0);
--   --OUTPUTS
--     destiny           : out std_logic_vector(2 downto 0);
--     call              : out std_logic
--   );
-- end entity;
--
-- architecture gerenciador of gerenciador is
--
--   type rvetor is array (0 to 7) of integer;
--
--   signal d    : rvetor;
--   signal f    : std_logic_vector(2 downto 0) := "000";
--
-- begin
--
--
--   stop  :  process(position, direction, internal, requestsUp, requestsDown, d, f)
--
--     variable i : integer := 0;
--     variable p     : integer;
--     variable aux  : integer;
--     variable fx  : std_logic_vector(2 downto 0);
--
--   begin
--     p := to_integer(unsigned(position));
--     i := 0;
--     while i < 8 loop
--       d(i) <= ((2**i) - p);
--       i := i + 1;
--     end loop;
--
--     if(direction = "00") then
--
--       if(to_integer(unsigned(internal)) /= 0) then
--       --  f <= (others => '0');
--         fx := (others => '0');
--         i := 0;
--         aux := abs(d(i));
--         i := 1;
--
--         fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
--         fx(1) := fx(1) xor (fx(0) and '1');
--         fx(0) := fx(0) xor '1';
--         while i < 8 loop
--           if(abs(d(i)) < aux and internal(i) = '1') then
--             aux := d(i);
--             f <= fx;
--           end if;
--           fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
--           fx(1) := fx(1) xor (fx(0) and '1');
--           fx(0) := fx(0) xor '1';
--           i := i + 1;
--         end loop;
--
--       else
--   --      f <= (others => '0');
--         fx := (others => '0');
--         i := 0;
--         aux := abs(d(i));
--         i := 1;
--
--         fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
--         fx(1) := fx(1) xor (fx(0) and '1');
--         fx(0) := fx(0) xor '1';
--         while i < 8 loop
--           if(abs(d(i)) < aux and (requestsUp(i) = '1' or requestsDown(i) = '1')) then
--             aux := abs(d(i));
--             f <= fx;
--           end if;
--           fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
--           fx(1) := fx(1) xor (fx(0) and '1');
--           fx(0) := fx(0) xor '1';
--           i := i + 1;
--         end loop;
--       end if;
--
--
--     elsif direction = "01" then
--     --  f <= (others => '0');
--       fx := (others => '0');
--       i := 0;
--       aux := abs(d(i));
--       i := 1;
--
--       fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
--       fx(1) := fx(1) xor (fx(0) and '1');
--       fx(0) := fx(0) xor '1';
--       while (i < 8) loop
--         if(d(i) < 0 and abs(d(i)) < aux and (requestsDown(i) = '1' or internal(i) = '1')) then
--           aux := abs(d(i));
--           f <= fx;
--         end if;
--         fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
--         fx(1) := fx(1) xor (fx(0) and '1');
--         fx(0) := fx(0) xor '1';
--         i := i + 1;
--       end loop;
--       -- destiny <= std_logic_vector(to_unsigned(f, destiny'length));
--
--
--     elsif direction = "10" then
--     --  f <= (others => '0');
--       fx := (others => '0');
--       i := 0;
--       aux := abs(d(i));
--       i := 1;
--
--       fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
--       fx(1) := fx(1) xor (fx(0) and '1');
--       fx(0) := fx(0) xor '1';
--       while (i < 8) loop
--         if(d(i) > 0 and abs(d(i)) < aux and (requestsUp(i) = '1' or internal(i) = '1')) then
--           aux := abs(d(i));
--           f <= fx;
--         end if;
--         fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
--         fx(1) := fx(1) xor (fx(0) and '1');
--         fx(0) := fx(0) xor '1';
--         i := i + 1;
--       end loop;
--       -- destiny <= std_logic_vector(to_unsigned(f, destiny'length));
--
--
--    end if;
--   end process;
--
--   process(internal)
--   begin
--     if(to_integer(unsigned(internal)) /= 0 or to_integer(unsigned(requestsUp)) /= 0 or to_integer(unsigned(requestsDown)) /= 0) then
--       call <= '1';
--     else
--       call <= '0';
--     end if;
--   end process;
--
--   destiny <= f;
--
--
--
--
-- end architecture;

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity gerenciador is
  port(
  --INPUTS
    position          : in std_logic_vector(2 downto 0);
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
  signal f    : std_logic_vector(2 downto 0) := "000";

begin


  stop  :  process(position, direction, internal, d, f)

    variable i : integer := 0;
    variable p     : integer;
    variable aux  : integer;
    variable fx  : std_logic_vector(2 downto 0);

  begin
    p := to_integer(unsigned(position));
    i := 0;
    while i < 8 loop
      d(i) <= (i - p); --distancia de cada andar até a posição
      i := i + 1;
    end loop;

    if(direction = "00") then

      if(to_integer(unsigned(internal)) /= 0) then
        f <= position;
        fx := (others => '0');
        i := 0;
        aux := abs(d(i));
        i := 1;

        fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
        fx(1) := fx(1) xor (fx(0) and '1');
        fx(0) := fx(0) xor '1';
        while i < 8 loop
          if((abs(d(i)) < aux) and internal(i) = '1') then
            aux := abs(d(i));
            f <= fx;
          end if;
          fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
          fx(1) := fx(1) xor (fx(0) and '1');
          fx(0) := fx(0) xor '1';
          i := i + 1;
        end loop;

      else

			f <= position;

      end if;


    elsif direction = "01" then

      f <= position;
      fx := (others => '0');
      i := 0;
      aux := abs(d(i));
      i := 1;

      fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
      fx(1) := fx(1) xor (fx(0) and '1');
      fx(0) := fx(0) xor '1';
      while (i <= p) loop
        if(abs(d(i)) < aux and internal(i) = '1') then
          aux := abs(d(i));
          f <= fx;
        end if;
        fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
        fx(1) := fx(1) xor (fx(0) and '1');
        fx(0) := fx(0) xor '1';
        i := i + 1;
      end loop;
      -- destiny <= std_logic_vector(to_unsigned(f, destiny'length));
    --
    elsif direction = "10" then

      f <= position;
      fx := (others => '1');
      i := 7;
      aux := abs(d(i));
      i := 6;

      fx(2) := fx(2) and (fx(1) or fx(0));
      fx(1) := fx(1) and (fx(0)) or ((fx(1) nor fx(0)) and fx(2));
      fx(0) := not(fx(0));
      while (i >= p) loop
        if((abs(d(i)) < aux) and internal(i) = '1') then
          aux := abs(d(i));
          f <= fx;
        end if;
        fx(2) := fx(2) xor (fx(1) and (fx(0) and '1'));
        fx(1) := fx(1) xor (fx(0) and '1');
        fx(0) := fx(0) xor '1';
        i := i - 1;
      end loop;
      -- destiny <= std_logic_vector(to_unsigned(f, destiny'length));
    --

   end if;
  end process;

  process(internal)
  begin
    if(to_integer(unsigned(internal)) /= 0 ) then
      call <= '1';
    else
      call <= '0';
    end if;
  end process;

  destiny <= f;




end architecture;
