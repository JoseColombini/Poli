library ieee;
use ieee.numeric_bit.all;

entity controlunit is
  port (
  --To DATAPATH
    reg2loc       : out bit;
    uncondBranch  : out bit;
    branch        : out bit;
    memRead       : out bit;
    memToReg      : out bit;
    aluOp         : out bit_vector(1 downto 0);
    memWrite      : out bit;
    aluSrc        : out bit;
    regWrite      : out bit;
  --From DATAPATH
    opcode        : in bit_vector(10 downto 0)
  );
end entity;

architecture controlunit of controlunit is

  signal LDUR : bit_vector(10 downto 0);
  signal STUR : bit_vector(10 downto 0);
  signal CBZ  : bit_vector(7 downto 0);
  signal B    : bit_vector(5 downto 0);
  signal R    : bit_vector(10 downto 0);

begin

  LDUR <= "11111000010";
  STUR <= "11111000000";
  CBZ <= "10110100";
  B <= "000101";
  R <= "10001010000";

  reg2loc <= '0' when opcode = LDUR else
             '1' when opcode = STUR else
             '1' when (opcode and CBZ&"000") = CBZ&"000" else
             '0' when (opcode and B&"00000") = B&"00000" else
             '0' when (opcode and R) = R;

  uncondBranch <= '0' when opcode = LDUR else
                  '0' when opcode = STUR else
                  '0' when (opcode and CBZ&"000") = CBZ&"000" else
                  '1' when (opcode and B&"00000") = B&"00000" else
                  '0' when (opcode and R) = R;

  branch <= '0' when opcode = LDUR else
            '0' when opcode = STUR else
            '1' when (opcode and CBZ&"000") = CBZ&"000" else
            '0' when (opcode and B&"00000") = B&"00000" else
            '0' when (opcode and R) = R;

  memRead <= '1' when opcode = LDUR else
             '0' when opcode = STUR else
             '0' when (opcode and CBZ&"000") = CBZ&"000" else
             '0' when (opcode and B&"00000") = B&"00000" else
             '0' when (opcode and R) = R;

  memToReg <= '1' when opcode = LDUR else
              '1' when opcode = STUR else
              '1' when (opcode and CBZ&"000") = CBZ&"000" else
              '0' when (opcode and B&"00000") = B&"00000" else
              '0' when (opcode and R) = R;

  aluOp <= "00" when opcode = LDUR else
           "00" when opcode = STUR else
           "01" when (opcode and CBZ&"000") = CBZ&"000" else
           "01" when (opcode and B&"00000") = B&"00000" else
           "10" when (opcode and R) = R;

  memWrite <= '0' when opcode = LDUR else
              '1' when opcode = STUR else
              '0' when (opcode and CBZ&"000") = CBZ&"000" else
              '0' when (opcode and B&"00000") = B&"00000" else
              '0' when (opcode and R) = R;

  aluSrc <= '1' when opcode = LDUR else
            '1' when opcode = STUR else
            '0' when (opcode and CBZ&"000") = CBZ&"000" else
            '0' when (opcode and B&"00000") = B&"00000" else
            '0' when (opcode and R) = R;

  regWrite <= '1' when opcode = LDUR else
              '0' when opcode = STUR else
              '0' when (opcode and CBZ&"000") = CBZ&"000" else
              '0' when (opcode and B&"00000") = B&"00000" else
              '1' when (opcode and R) = R;


end architecture;
