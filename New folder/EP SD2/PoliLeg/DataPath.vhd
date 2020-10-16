library ieee;
use ieee.numeric_bit.all;
use ieee.math_real.all;

entity datapath is
  port(
  --Commun
    clock : in bit; --feit
    reset : in bit; --feito
  --From control unit
    reg2loc   : in bit; --feito
    pcsrc     : in bit;
    memToReg  : in bit; --feito
    aluCtrl   : in bit_vector(3 downto 0); --feito
    aluSrc    : in bit; --feito
    regWrite  : in bit; --feito
  --To control unit
    opcode  : out bit_vector(10 downto 0);--ligar na entrada da controlunit
    zero    : out bit; --Saida Zero flag da Alu principal
  --IM interface
    imAddr  : out bit_vector(63 downto 0);
    imOut   : in  bit_vector(31 downto 0);
  --DM interface
    dmAddr  : out bit_vector(63 downto 0); --feito
    dmIn    : out bit_vector(63 downto 0); --feito
    dmOut   : in  bit_vector(63 downto 0) --feito
  );
end entity datapath;



architecture hereWeGo of datapath is
----------
  --ALU
----------
  component alu is
    generic(
      size : natural := 10 --bitsize
    );
    port(
      A, B : in bit_vector(size - 1 downto 0); --inputs
      F    : out bit_vector(size - 1 downto 0); --output
      S    : in bit_vector(3 downto 0); --op select
      Z    : out bit; --zeroflag
      OV   : out bit; -- overflowflag
      Co   : out bit -- carryoutflag
    );
  end component alu;

----------
  --Registradores
----------
  component regfile is
    generic(
      regn     : natural := 32; --numero de registradores
      wordSize : natural := 64  --tamanho da palavra dos registradores
    );
    port(
      clock        : in bit;
      reset        : in bit;
      regWrite     : in bit;
      rr1, rr2, wr : in bit_vector(natural(ceil(log2(real(regn)))) - 1 downto 0);
      d            : in bit_vector(wordSize - 1 downto 0);

      q1, q2       : out bit_vector(wordSize -1 downto 0)
    );
  end component;


----------
  --SignExtend
----------
  component signExtend is
    port(
      i : in bit_vector(31 downto 0); --input 32 bits
      o : out bit_vector(63 downto 0) --output 32 bits extended to 64 bits
    );
  end component;

----------
---INTERMEDIARIOS
----------
--actions
  --Register
  signal R2_Src : bit_vector(4 downto 0);
  signal D_D    : bit_vector(63 downto 0);
  signal R1_D   : bit_vector(63 downto 0);
  signal R2_D   : bit_vector(63 downto 0);
  --Alu_P
  signal B_alu  : bit_vector(63 downto 0);
  signal F_alu  : bit_vector(63 downto 0);
  signal Ov_flag, Co_flag : bit; --ignore
  --SignExtend
  signal extended : bit_vector (63 downto 0);
--PC
  signal ICounter : bit_vector(63 downto 0);
  --Branch
  signal S2 : bit_vector(63 downto 0);
  signal PC_B : bit_vector(63 downto 0);
  signal z_f, o_f, c_f : bit;

  --ADDPC
  signal four : bit_vector(63 downto 0);
  signal PC_4 : bit_vector(63 downto 0);
  signal z4_f, o4_f, c4_f : bit;


  signal NCounter : bit_vector  (63 downto 0);

begin

--Parte de baixo (actions)
  reg: regfile generic map(32, 64) port map (clock, reset, regWrite, imOut(9 downto 5), R2_Src, imOut(4 downto 0), D_D, R1_D, R2_D);

  alu_p: alu generic map(64) port map(R1_D, B_alu, F_alu, aluCtrl, zero, Ov_flag, Co_flag);

  sig_ex: signExtend port map(imOut, extended);

  dmAddr <= F_alu;

  dmIn <= R2_D;

  with aluSrc select
    B_alu <=  R2_D when '0',
              extended when others;

  with reg2loc select
    R2_Src <= imOut(20 downto 16) when '0',
              imOut(4 downto 0) when others;

  with memToReg select
    D_D <= F_alu when '0',
           dmOut when others;



--Parte de cima (PC)

  branch: alu generic map (64) port map(ICounter, S2, PC_B, "0010", z_f, o_f, c_f);

  S2 <= extended(61 downto 0) & "00";

  addpc: alu generic map(64) port map(ICounter, four, PC_4, "0010", z4_f, o4_f, c4_f);
  four <= (2 => '1', others => '0');

  with pcsrc select
    NCounter <= PC_4 when '0',
                PC_B when others;

  counter: process(clock) is
    variable i  : integer  := 0;
  begin
    if (i = 0) then
      ICounter <= (others => '0');
      i := 1;
    end if;
    if (i = 1 and clock'event and clock = '1') then
      ICounter <= NCounter;
    end if;
  end process;

  imAddr <= ICounter;

  opcode <= imOut(31 downto 21);

end architecture;
