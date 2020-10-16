library ieee;
use ieee.numeric_bit.all;

entity ULA01_tb is end;

architecture ULA01_tb of ULA01_tb is

  component alu1bit is
    port(
      a, b, less, cin : in bit;
      result, cout, set, overflow : out bit;
      ainvert, binvert : in bit;
      operation : in bit_vector (1 downto 0)
    );
    end component;


  signal a, b, less, cin, result, cout, set, overflow, ainvert, binvert : bit;
  signal operation : bit_vector (1 downto 0);

begin

  dut: alu1bit
    port map (a, b, less, cin, result, cout, set, overflow, ainvert, binvert, operation);

  st: process is
    begin
      assert false report "BOT" severity note;

      --opracoes AND
      operation <= "00";
        -- ERRO 1
        less <= '0'; cin <= '1';
        a <= '0'; ainvert <= '0';
        b <= '0'; binvert <= '0';
        wait for 20 ns;
        assert set = '1' report "AND ERROR 1.1" severity warning;
        assert result = '0' report "AND ERROR 1.2" severity warning;
        assert overflow = '0' report "AND ERROR 1.3" severity warning;
        assert cout = '0' report "AND ERROR 1.4" severity warning;

  end process;

end architecture;
