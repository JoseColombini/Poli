library ieee;
use ieee.numeric_bit.all;
use ieee.math_real.all;

entity fulladder_tb is end;

architecture fulladder_tb of fulladder_tb is

  component fulladder is
    port(
      a, b, cin : in bit;
      s, cout   : out bit
    );
    end component;

  signal a, b, cin, s, cout : bit := '0';

begin

  dut: fulladder
    port map(a, b, cin, s, cout);

  st: process is
  begin
    assert false report "BOT" severity note;

    a <= '1'; b <= '0'; cin <= '0';
    wait for 10 ns;
    assert (s = '1') report "ERRO 1" severity warning;
    -- wait for 10 ns;

    a <= '0'; b <= '1'; cin <= '0';
    wait for 10 ns;
    assert (s = '1') and (cout = '0') report "ERRO 2 " & bit'image(cout) severity warning;

    a <= '1'; b <= '1'; cin <= '0';
    wait for 10 ns;
    assert (s = '0') and (cout = '1') report "ERRO 3 " & bit'image(cout) severity warning;

    a <= '0'; b <= '0'; cin <= '1';
    wait for 10 ns;
    assert (s = '1') and (cout = '0') report "ERRO 4" severity warning;

    a <= '1'; b <= '0'; cin <= '1';
    wait for 10 ns;
    assert (s = '0') and (cout = '1') report "ERRO 5" severity warning;

    a <= '0'; b <= '1'; cin <= '1';
    wait for 10 ns;
    assert (s = '0') and (cout = '1') report "ERRO 6" severity warning;

    a <= '1'; b <= '1'; cin <= '1';
    wait for 10 ns;
    assert (s = '1') and (cout = '1') report "ERRO 7" severity warning;

    a <= '0'; b <= '1'; cin <= '0';
    wait for 10 ns;
    assert false report "ERRO 2 " & bit'image(cout) severity warning;

    a <= '1'; b <= '1'; cin <= '0';
    wait for 10 ns;
    assert false report "ERRO 3 " & bit'image(cout) severity warning;


  end process st;

end architecture;
