------------------------------------------------------------------
------------    REGISTER   ----------------------------------------
------------------------------------------------------------------
library ieee;
use ieee.numeric_bit.all;
use ieee.math_real.all;

entity reg is
  generic(
    wordSize : natural
  );
  port (
    clock : in bit;
    reset : in bit;
    load  : in bit;
    d     : in bit_vector(wordSize - 1 downto 0);
    q     : out bit_vector(wordSize - 1 downto 0)
  );
end reg;


architecture R of reg is

begin
  process(clock, reset) is
  begin
    if reset = '1' then
      q <= (others => '0');
    elsif clock'event and clock ='1' and load = '1' then
        q <= d;
    end if;
  end process;

end R;


------------------------------------------------------------------
------------    REGISTERBANK   ----------------------------------------
------------------------------------------------------------------

library ieee;
use ieee.numeric_bit.all;
use ieee.math_real.all;



entity regfile is
  generic(
    regn     : natural; --numero de registradores
    wordSize : natural  --tamanho da palavra dos registradores
  );
  port(
    clock        : in bit;
    reset        : in bit;
    regWrite     : in bit;
    rr1, rr2, wr : in bit_vector(natural(ceil(log2(real(regn)))) - 1 downto 0);
    d            : in bit_vector(wordSize - 1 downto 0);

    q1, q2       : out bit_vector(wordSize -1 downto 0)
  );
end regfile;


architecture regbanch of regfile is

  component reg is
    generic(
      wordSize : natural
    );
    port (
      clock : in bit;
      reset : in bit;
      load  : in bit;
      d     : in bit_vector(wordSize - 1 downto 0);
      q     : out bit_vector(wordSize - 1 downto 0)
    );
  end component;

  type bank_type is array (regn - 1 downto 0) of bit_vector (wordSize - 1 downto 0);
  signal bank_in  : bank_type;
  signal bank_out : bank_type;
  signal zero     : bit_vector (wordSize - 1 downto 0);
  signal ignore   : bit_vector (wordSize - 1 downto 0);
begin

  zero <= (others => '0');
  bank_out(regn - 1) <= zero;

  Gen_bank_register: for i in regn - 1 downto 0 generate
    generate_all :if i < regn - 1 generate
      Rx : reg generic map(wordSize)
               port map (clock, reset, regWrite, bank_in(i), bank_out(i));
    end generate;
    generate_zero: if i = regn - 1 generate
      Rl : reg generic map(wordSize => wordSize)
               port map(clock, reset, regWrite, bank_in(i), ignore);
    end generate;
  end generate Gen_bank_register;


    q1 <= bank_out(to_integer(unsigned(rr1)));

    q2 <= bank_out(to_integer(unsigned(rr2)));


    bank_in(to_integer(unsigned(wr))) <= d;

end regbanch;

------------------------------------------------------------------
------------    SIGNEXTEND   ----------------------------------------
------------------------------------------------------------------
library ieee;
use ieee.numeric_bit.all;

entity signExtend is
  port(
    i : in bit_vector(31 downto 0); --input 32 bits
    o : out bit_vector(63 downto 0) --output 32 bits extended to 64 bits
  );
end signExtend;

architecture extensor of signExtend is

  signal D  : bit_vector(1 downto 0);
  signal CB : bit_vector(1 downto 0);
  signal B  : bit;

begin

  D <= "11";
  CB <= "10";
  B <= '0';


 o <= (63 downto 9 => i(20)) & i(20 downto 12) when i(31 downto 30) = D else
      (63 downto 19 => i(23)) & i(23 downto 5) when i(31 downto 30) = CB else
      (63 downto 26 => i(25)) & i(25 downto 0) when i(31) = B;

end architecture;

------------------------------------------------------------------
------------    FULLADDER   ----------------------------------------
------------------------------------------------------------------
library ieee;
use ieee.numeric_bit.all;

entity fulladder is
  port(
    a, b, cin : in bit;
    s, cout   : out bit
  );
end entity;


architecture fulladder of fulladder is
  signal s1 : bit;
  signal s2, s3, s4, s5 : bit;
begin
  s1 <= a xor b;
  s <= s1 xor cin;
  s2 <= a and b;
  s3 <= a and cin;
  s4 <= b and cin;
  cout <= s2 or s3 or s4;

end architecture;
-----------------------------------------------------
------ALU1BIT--------------------------
-----------------------------------------------
library ieee;
use ieee.numeric_bit.all;

entity alu1bit is
  port(
  a, b, less, cin : in bit;
  result, cout, set, overflow : out bit;
  ainvert, binvert : in bit;
  operation : in bit_vector (1 downto 0)
  );
end entity;

architecture alu1bit of alu1bit is

  component fulladder is
    port(
    a, b, cin : in bit;
    s, cout   : out bit
    );
  end component;

  signal a1, b1  : bit;
  signal res_add : bit;
  signal out_add : bit;

begin

  F1: fulladder port map(a1, b1, cin, res_add, out_add); -- fulladder component delcaration

  a1 <= a xor ainvert; -- invert or not a
  b1 <= b xor binvert; -- invert or not b

  -- Add operations (something happens independ of MUX)
  set <= res_add;
  overflow <= cin xor out_add;
  cout <= out_add;

  with operation select
    result <= a1 and b1 when "00", -- operation and
              a1 or b1  when "01", -- operation or
              res_add   when "10", -- operation add
              b         when "11"; -- operation SLT



end architecture;
------------------------------------------------------
--------------OR???????-------------------------------
------------------------------------------------------
library ieee;
use ieee.numeric_bit.all;

entity orgasm is
  port(
    entrada, outra : in bit;
    saida   : out bit
  );
end entity;

architecture orgasm of orgasm is

begin
  saida<= entrada or outra;
end architecture;
------------------------------------------------------------------
------------    ALU64BITS   ----------------------------------------
------------------------------------------------------------------
library ieee;
use ieee.numeric_bit.all;


entity alu is
  generic(
    size : natural --bitsize
  );
  port(
    A, B : in bit_vector(size - 1 downto 0); --inputs
    F    : out bit_vector(size - 1 downto 0); --output
    S    : in bit_vector(3 downto 0); --op select
    Z    : out bit; --zeroflag
    OV   : out bit; -- overflowflag
    Co   : out bit -- carryoutflag
  );
end entity alu;

architecture alu of  alu is

  component orgasm is
    port(
      entrada, outra : in bit;
      saida : out bit
    );
  end component;

  component alu1bit is
    port(
    a, b, less, cin : in bit;
    result, cout, set, overflow : out bit;
    ainvert, binvert : in bit;
    operation : in bit_vector (1 downto 0)
    );
  end component;

  signal cns    : bit_vector (size downto 0);
  signal setvec : bit_vector (size - 1 downto 0);
  signal ovflow : bit_vector (size - 1 downto 0);
  signal op     : bit_vector (1 downto 0);
  signal partial_res : bit_vector (size - 1 downto 0);
  signal less : bit;
  signal verify : bit;
  signal ora : bit_vector (size downto 0);

begin
  op <= S(1)&S(0); -- operacao que sera passada para as 1bitula

  cns(0) <=S(3) or S(2);


  less <= '1' when signed(A) < signed(B) else '0';


  bit_logic: for i in size - 1 downto 0 generate
    lest_bit: if i = size - 1 generate
      Ai : alu1bit port map (A(i), B(i), less, cns(i),
                                partial_res(i), Co, setvec(i), ovflow(i),
                                s(3), S(2),
                                op);
    end generate;
    other: if i /= size - 1 generate
      Ai : alu1bit port map (A(i), B(i), less, cns(i),
                             partial_res(i), cns(i + 1), setvec(i), ovflow(i),
                             s(3), S(2),
                             op);
    end generate;
  end generate;

  ora(size) <= '0';
  orlogic: for i in size - 1 downto 0 generate
    Oi: orgasm port map (partial_res(i), ora(i + 1), ora(i));
  end generate;


  verify <= '1' when setvec(size - 1) = '1' else '0';

  with op select
    F <= B when "11",
         partial_res when others;

  Z <= '0' when op = "11" and ovflow(size - 1) = '1' else
       '1' when ora(0) = '0' else '0';
  Ov <= ovflow(size - 1);

end architecture;

------------------------------------------------------------------
------------    ALUCONTROL   ----------------------------------------
------------------------------------------------------------------
library ieee;
use ieee.numeric_bit.all;

entity alucontrol is
  port(
    aluop   : in bit_vector(1 downto 0);
    opcode  : in bit_vector(10 downto 0);
    aluCtrl : out bit_vector(3 downto 0)
  );
end entity;

architecture alucontrol of alucontrol is

  signal Rtype  : bit_vector(3 downto 0);

begin

  with opcode select
    Rtype <= "0010" when "10001011000",
             "0110" when "11001011000",
             "0000" when "10001010000",
             "0001" when OTHERS;

  with aluop select
    aluCtrl <= "0010" when "00",
              "0111" when "01",
              Rtype when OTHERS;

end architecture;

------------------------------------------------------------------
------------    DATAPATH   ----------------------------------------
------------------------------------------------------------------
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
      size : natural --bitsize
    );
    port(
      A, B : in bit_vector(size - 1 downto 0); --inputs
      F    : out bit_vector(size - 1 downto 0); --output
      S    : in bit_vector(3 downto 0); --op select
      OV   : out bit; -- overflowflag
      Z    : out bit; --zeroflag
      Co   : out bit -- carryoutflag
    );
  end component alu;

  ----------
    --Registradores
  ----------
  component regfile is
    generic(
      regn     : natural; --numero de registradores
      wordSize : natural  --tamanho da palavra dos registradores
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

  -----------
    --REG
  ----------
  component reg is
    generic(
      wordSize : natural
    );
    port (
      clock : in bit;
      reset : in bit;
      load  : in bit;
      d     : in bit_vector(wordSize - 1 downto 0);
      q     : out bit_vector(wordSize - 1 downto 0)
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

  signal zeta  : bit;

  signal ue1, ue2, uew  : bit_vector(4 downto 0);

begin
  ue1 <= imOut(9 downto 5);
  ue2 <= imOut(20 downto 16);
  uew <= imOut(4 downto 0);
  zero <= zeta;
  --Parte de baixo (actions)
  imemmm: regfile generic map(32, 64) port map (clock, reset, regWrite, ue1, R2_Src, uew, D_D, R1_D, R2_D);

  alu_p: alu generic map(64) port map(R1_D, B_alu, F_alu, aluCtrl,Ov_flag, zeta, Co_flag);

  sig_ex: signExtend port map(imOut, extended);

  dmAddr <= F_alu(60 downto 0)&"000";

  dmIn <= R2_D;

  with aluSrc select
    B_alu <=  R2_D when '0',
              extended when others;

  with reg2loc select
    R2_Src <= ue2 when '0',
              uew when others;

  with memToReg select
    D_D <= F_alu when '0',
           dmOut when others;



  --Parte de cima (PC)

  branch: alu generic map (64) port map(ICounter, S2, PC_B, "0010", z_f, o_f, c_f);

  S2 <= extended(61 downto 0) & "00";

  addpc: alu generic map(64) port map(ICounter, four, PC_4, "0010", z4_f, o4_f, c4_f);
  four <= (2 => '1', others => '0');

--  pc: reg generic map(64) port map(clock, reset, '1', NCounter, ICounter);

    process(clock, reset) is
    begin
      if reset = '1' then
        ICounter <= (others => '0');
      elsif clock'event and clock ='1' then
          ICounter <= NCounter;
      end if;
    end process;


  with pcsrc select
    NCounter <= PC_4 when '0',
                PC_B when '1';

  imAddr <= ICounter;

  opcode <= imOut(31 downto 21);

end architecture;

------------------------------------------------------------------
------------    CONTROLUNIT   ----------------------------------------
------------------------------------------------------------------
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
------------------------------------------------------------------
------------    POLILEG   ----------------------------------------
------------------------------------------------------------------
library ieee;
use ieee.numeric_bit.all;
use ieee.math_real.all;

entity polilegsc is
  port(
    clock, reset  : in bit;
    --Data memory
    dmem_addr : out bit_vector(63 downto 0);
    dmem_dati : out bit_vector(63 downto 0);
    dmem_dato : in  bit_vector(63 downto 0);
    dmem_we   : out bit;
    --instrucion memory
    imem_addr : out bit_vector(63 downto 0);
    imem_data : in bit_vector(31 downto 0)
  );
end entity;

architecture polilegsc of polilegsc is

  --------
    --controlunit
  ---------
  component controlunit is
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
  end component;

  --------
    --DATAPATH
  ---------
  component datapath is
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
  end component;

  ------------
    --aluCtrl
  ------------
  component alucontrol is
    port(
      aluop   : in bit_vector(1 downto 0);
      opcode  : in bit_vector(10 downto 0);
      aluCtrl : out bit_vector(3 downto 0)
    );
  end component;
  -------------
    --INTERMEDIARIOS
  -------------
  signal reg2loc, uncondBranch, branch, memRead, memToReg, memWrite, aluSrc, regWrite  : bit; --out control
  signal aluop  : bit_vector(1 downto 0);
  signal opcode   : bit_vector(10 downto 0); --incontrol/out datapath

  signal pcsrc : bit; -- indatapath
  signal aluc  : bit_vector(3 downto 0);
  signal zta  : bit; --out datapath

begin


  contolX: controlunit port map (reg2loc, uncondBranch, branch, memRead, memToReg, aluOp,
                                 memWrite, aluSrc, regWrite, opcode);

  path: datapath port map (clock, reset, reg2loc, pcsrc, memToReg, aluc, aluSrc,
                           regWrite, opcode, zta, imem_addr, imem_data, dmem_addr,
                           dmem_dati, dmem_dato);

  aluCtrlX: alucontrol port map (aluOp, opcode, aluc);

  pcsrc <= (zta and branch) or uncondBranch;

  dmem_we <= memWrite;

end architecture;
