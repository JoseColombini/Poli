-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/23/2020 14:36:57"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Exp8 IS
    PORT (
	clock : IN std_logic;
	Noturno : IN std_logic;
	VeA : IN std_logic;
	VeB : IN std_logic;
	PdA : IN std_logic;
	PdB : IN std_logic;
	reset : IN std_logic;
	Q0 : BUFFER std_logic;
	Q1 : BUFFER std_logic;
	Q2 : BUFFER std_logic
	);
END Exp8;

ARCHITECTURE structure OF Exp8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Noturno : std_logic;
SIGNAL ww_VeA : std_logic;
SIGNAL ww_VeB : std_logic;
SIGNAL ww_PdA : std_logic;
SIGNAL ww_PdB : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \CT|Add0~81_sumout\ : std_logic;
SIGNAL \CT|cc1[0]~0_combout\ : std_logic;
SIGNAL \CT|Add0~82\ : std_logic;
SIGNAL \CT|Add0~113_sumout\ : std_logic;
SIGNAL \CT|Add0~114\ : std_logic;
SIGNAL \CT|Add0~117_sumout\ : std_logic;
SIGNAL \CT|Add0~118\ : std_logic;
SIGNAL \CT|Add0~121_sumout\ : std_logic;
SIGNAL \CT|Add0~122\ : std_logic;
SIGNAL \CT|Add0~125_sumout\ : std_logic;
SIGNAL \CT|Add0~126\ : std_logic;
SIGNAL \CT|Add0~57_sumout\ : std_logic;
SIGNAL \CT|Add0~58\ : std_logic;
SIGNAL \CT|Add0~61_sumout\ : std_logic;
SIGNAL \CT|Add0~62\ : std_logic;
SIGNAL \CT|Add0~65_sumout\ : std_logic;
SIGNAL \CT|Add0~66\ : std_logic;
SIGNAL \CT|Add0~69_sumout\ : std_logic;
SIGNAL \CT|Add0~70\ : std_logic;
SIGNAL \CT|Add0~73_sumout\ : std_logic;
SIGNAL \CT|Add0~74\ : std_logic;
SIGNAL \CT|Add0~77_sumout\ : std_logic;
SIGNAL \CT|Add0~78\ : std_logic;
SIGNAL \CT|Add0~33_sumout\ : std_logic;
SIGNAL \CT|Add0~34\ : std_logic;
SIGNAL \CT|Add0~37_sumout\ : std_logic;
SIGNAL \CT|Add0~38\ : std_logic;
SIGNAL \CT|Add0~85_sumout\ : std_logic;
SIGNAL \CT|Add0~86\ : std_logic;
SIGNAL \CT|Add0~45_sumout\ : std_logic;
SIGNAL \CT|Add0~46\ : std_logic;
SIGNAL \CT|Add0~49_sumout\ : std_logic;
SIGNAL \CT|Add0~50\ : std_logic;
SIGNAL \CT|Add0~53_sumout\ : std_logic;
SIGNAL \CT|Add0~54\ : std_logic;
SIGNAL \CT|Add0~9_sumout\ : std_logic;
SIGNAL \CT|Add0~10\ : std_logic;
SIGNAL \CT|Add0~13_sumout\ : std_logic;
SIGNAL \CT|Add0~14\ : std_logic;
SIGNAL \CT|Add0~17_sumout\ : std_logic;
SIGNAL \CT|Add0~18\ : std_logic;
SIGNAL \CT|Add0~21_sumout\ : std_logic;
SIGNAL \CT|Add0~22\ : std_logic;
SIGNAL \CT|Add0~25_sumout\ : std_logic;
SIGNAL \CT|Add0~26\ : std_logic;
SIGNAL \CT|Add0~29_sumout\ : std_logic;
SIGNAL \CT|Add0~30\ : std_logic;
SIGNAL \CT|Add0~1_sumout\ : std_logic;
SIGNAL \CT|Add0~2\ : std_logic;
SIGNAL \CT|Add0~5_sumout\ : std_logic;
SIGNAL \CT|Equal0~0_combout\ : std_logic;
SIGNAL \CT|Equal0~1_combout\ : std_logic;
SIGNAL \CT|Add0~6\ : std_logic;
SIGNAL \CT|Add0~89_sumout\ : std_logic;
SIGNAL \CT|Add0~90\ : std_logic;
SIGNAL \CT|Add0~93_sumout\ : std_logic;
SIGNAL \CT|Add0~94\ : std_logic;
SIGNAL \CT|Add0~97_sumout\ : std_logic;
SIGNAL \CT|Add0~98\ : std_logic;
SIGNAL \CT|Add0~101_sumout\ : std_logic;
SIGNAL \CT|Add0~102\ : std_logic;
SIGNAL \CT|Add0~105_sumout\ : std_logic;
SIGNAL \CT|Add0~106\ : std_logic;
SIGNAL \CT|Add0~109_sumout\ : std_logic;
SIGNAL \CT|Add0~110\ : std_logic;
SIGNAL \CT|Add0~41_sumout\ : std_logic;
SIGNAL \CT|Equal0~2_combout\ : std_logic;
SIGNAL \CT|Equal0~3_combout\ : std_logic;
SIGNAL \CT|Equal0~4_combout\ : std_logic;
SIGNAL \CT|Equal0~5_combout\ : std_logic;
SIGNAL \CT|Equal0~6_combout\ : std_logic;
SIGNAL \CT|temp1s~0_combout\ : std_logic;
SIGNAL \CT|temp1s~q\ : std_logic;
SIGNAL \VeB~input_o\ : std_logic;
SIGNAL \PdA~input_o\ : std_logic;
SIGNAL \VeA~input_o\ : std_logic;
SIGNAL \PdB~input_o\ : std_logic;
SIGNAL \FSM|Selector1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \FSM|E_Atual.eVdB~q\ : std_logic;
SIGNAL \FSM|E_Futuro.eAmB~0_combout\ : std_logic;
SIGNAL \FSM|E_Atual.eAmB~q\ : std_logic;
SIGNAL \FSM|c5s~combout\ : std_logic;
SIGNAL \CT|conter:0:INITC:Ci|Q~q\ : std_logic;
SIGNAL \CT|d2~combout\ : std_logic;
SIGNAL \CT|conter:2:CO2:Ci|QI~q\ : std_logic;
SIGNAL \CT|d0~combout\ : std_logic;
SIGNAL \CT|conter:0:INITC:Ci|QI~0_combout\ : std_logic;
SIGNAL \CT|conter:0:INITC:Ci|QI~q\ : std_logic;
SIGNAL \CT|conter:1:CO1:Ci|QI~0_combout\ : std_logic;
SIGNAL \CT|conter:1:CO1:Ci|QI~q\ : std_logic;
SIGNAL \CT|d1~combout\ : std_logic;
SIGNAL \CT|conter:1:CO1:Ci|Q~q\ : std_logic;
SIGNAL \CT|conter:3:CO3:Ci|Q~q\ : std_logic;
SIGNAL \CT|cout~2_combout\ : std_logic;
SIGNAL \Noturno~input_o\ : std_logic;
SIGNAL \FSM|E_Futuro.Apagado~0_combout\ : std_logic;
SIGNAL \FSM|E_Atual.Apagado~q\ : std_logic;
SIGNAL \FSM|Selector2~0_combout\ : std_logic;
SIGNAL \FSM|E_Atual.Piscante~q\ : std_logic;
SIGNAL \FSM|Selector0~0_combout\ : std_logic;
SIGNAL \FSM|E_Atual.eVdA~q\ : std_logic;
SIGNAL \CT|Add1~81_sumout\ : std_logic;
SIGNAL \CT|cc60~0_combout\ : std_logic;
SIGNAL \FSM|c1m~combout\ : std_logic;
SIGNAL \CT|Add1~82\ : std_logic;
SIGNAL \CT|Add1~77_sumout\ : std_logic;
SIGNAL \CT|Add1~78\ : std_logic;
SIGNAL \CT|Add1~101_sumout\ : std_logic;
SIGNAL \CT|Add1~102\ : std_logic;
SIGNAL \CT|Add1~97_sumout\ : std_logic;
SIGNAL \CT|Add1~98\ : std_logic;
SIGNAL \CT|Add1~93_sumout\ : std_logic;
SIGNAL \CT|Add1~94\ : std_logic;
SIGNAL \CT|Add1~89_sumout\ : std_logic;
SIGNAL \CT|Add1~90\ : std_logic;
SIGNAL \CT|Add1~5_sumout\ : std_logic;
SIGNAL \CT|Add1~6\ : std_logic;
SIGNAL \CT|Add1~1_sumout\ : std_logic;
SIGNAL \CT|Equal1~0_combout\ : std_logic;
SIGNAL \CT|Add1~2\ : std_logic;
SIGNAL \CT|Add1~29_sumout\ : std_logic;
SIGNAL \CT|Add1~30\ : std_logic;
SIGNAL \CT|Add1~25_sumout\ : std_logic;
SIGNAL \CT|Add1~26\ : std_logic;
SIGNAL \CT|Add1~21_sumout\ : std_logic;
SIGNAL \CT|Add1~22\ : std_logic;
SIGNAL \CT|Add1~17_sumout\ : std_logic;
SIGNAL \CT|Add1~18\ : std_logic;
SIGNAL \CT|Add1~13_sumout\ : std_logic;
SIGNAL \CT|Add1~14\ : std_logic;
SIGNAL \CT|Add1~9_sumout\ : std_logic;
SIGNAL \CT|Equal1~1_combout\ : std_logic;
SIGNAL \CT|Add1~10\ : std_logic;
SIGNAL \CT|Add1~53_sumout\ : std_logic;
SIGNAL \CT|Add1~54\ : std_logic;
SIGNAL \CT|Add1~49_sumout\ : std_logic;
SIGNAL \CT|Add1~50\ : std_logic;
SIGNAL \CT|Add1~45_sumout\ : std_logic;
SIGNAL \CT|Add1~46\ : std_logic;
SIGNAL \CT|Add1~41_sumout\ : std_logic;
SIGNAL \CT|Add1~42\ : std_logic;
SIGNAL \CT|Add1~37_sumout\ : std_logic;
SIGNAL \CT|Add1~38\ : std_logic;
SIGNAL \CT|Add1~33_sumout\ : std_logic;
SIGNAL \CT|Equal1~2_combout\ : std_logic;
SIGNAL \CT|Add1~34\ : std_logic;
SIGNAL \CT|Add1~117_sumout\ : std_logic;
SIGNAL \CT|Add1~118\ : std_logic;
SIGNAL \CT|Add1~73_sumout\ : std_logic;
SIGNAL \CT|Add1~74\ : std_logic;
SIGNAL \CT|Add1~69_sumout\ : std_logic;
SIGNAL \CT|Add1~70\ : std_logic;
SIGNAL \CT|Add1~65_sumout\ : std_logic;
SIGNAL \CT|Add1~66\ : std_logic;
SIGNAL \CT|Add1~61_sumout\ : std_logic;
SIGNAL \CT|Add1~62\ : std_logic;
SIGNAL \CT|Add1~57_sumout\ : std_logic;
SIGNAL \CT|Equal1~3_combout\ : std_logic;
SIGNAL \CT|Add1~58\ : std_logic;
SIGNAL \CT|Add1~125_sumout\ : std_logic;
SIGNAL \CT|Add1~126\ : std_logic;
SIGNAL \CT|Add1~121_sumout\ : std_logic;
SIGNAL \CT|Add1~122\ : std_logic;
SIGNAL \CT|Add1~85_sumout\ : std_logic;
SIGNAL \CT|Equal1~4_combout\ : std_logic;
SIGNAL \CT|Add1~86\ : std_logic;
SIGNAL \CT|Add1~113_sumout\ : std_logic;
SIGNAL \CT|Add1~114\ : std_logic;
SIGNAL \CT|Add1~109_sumout\ : std_logic;
SIGNAL \CT|Add1~110\ : std_logic;
SIGNAL \CT|Add1~105_sumout\ : std_logic;
SIGNAL \CT|Equal1~5_combout\ : std_logic;
SIGNAL \CT|Equal1~6_combout\ : std_logic;
SIGNAL \CT|temp1m~0_combout\ : std_logic;
SIGNAL \CT|temp1m~q\ : std_logic;
SIGNAL \CT|cout~3_combout\ : std_logic;
SIGNAL \CT|cout~1_combout\ : std_logic;
SIGNAL \FSM|Q2~combout\ : std_logic;
SIGNAL \CT|cout~0_combout\ : std_logic;
SIGNAL \FSM|E_Futuro.eAmA~0_combout\ : std_logic;
SIGNAL \FSM|E_Atual.eAmA~q\ : std_logic;
SIGNAL \FSM|Q0~combout\ : std_logic;
SIGNAL \FSM|Q1~combout\ : std_logic;
SIGNAL \CT|cc60\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CT|cc1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CT|ALT_INV_cc1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CT|ALT_INV_cc60\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CT|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_c1m~combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CT|ALT_INV_d1~combout\ : std_logic;
SIGNAL \CT|conter:1:CO1:Ci|ALT_INV_QI~q\ : std_logic;
SIGNAL \CT|conter:0:INITC:Ci|ALT_INV_Q~q\ : std_logic;
SIGNAL \CT|conter:0:INITC:Ci|ALT_INV_QI~q\ : std_logic;
SIGNAL \CT|ALT_INV_temp1s~q\ : std_logic;
SIGNAL \CT|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_c5s~combout\ : std_logic;
SIGNAL \CT|ALT_INV_cout~3_combout\ : std_logic;
SIGNAL \CT|ALT_INV_temp1m~q\ : std_logic;
SIGNAL \CT|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \CT|conter:3:CO3:Ci|ALT_INV_Q~q\ : std_logic;
SIGNAL \CT|conter:1:CO1:Ci|ALT_INV_Q~q\ : std_logic;
SIGNAL \FSM|ALT_INV_E_Atual.eVdA~q\ : std_logic;
SIGNAL \FSM|ALT_INV_Q2~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_E_Atual.Apagado~q\ : std_logic;
SIGNAL \FSM|ALT_INV_E_Atual.Piscante~q\ : std_logic;
SIGNAL \FSM|ALT_INV_E_Atual.eAmB~q\ : std_logic;
SIGNAL \FSM|ALT_INV_E_Atual.eVdB~q\ : std_logic;
SIGNAL \FSM|ALT_INV_E_Atual.eAmA~q\ : std_logic;
SIGNAL \CT|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \CT|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALT_INV_PdB~input_o\ : std_logic;
SIGNAL \ALT_INV_VeA~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_PdA~input_o\ : std_logic;
SIGNAL \ALT_INV_VeB~input_o\ : std_logic;
SIGNAL \ALT_INV_Noturno~input_o\ : std_logic;
SIGNAL \CT|ALT_INV_d0~combout\ : std_logic;
SIGNAL \CT|conter:2:CO2:Ci|ALT_INV_QI~q\ : std_logic;
SIGNAL \CT|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \CT|ALT_INV_Equal0~2_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_Noturno <= Noturno;
ww_VeA <= VeA;
ww_VeB <= VeB;
ww_PdA <= PdA;
ww_PdB <= PdB;
ww_reset <= reset;
Q0 <= ww_Q0;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CT|ALT_INV_cc1\(4) <= NOT \CT|cc1\(4);
\CT|ALT_INV_cc1\(3) <= NOT \CT|cc1\(3);
\CT|ALT_INV_cc1\(2) <= NOT \CT|cc1\(2);
\CT|ALT_INV_cc1\(1) <= NOT \CT|cc1\(1);
\CT|ALT_INV_cc1\(30) <= NOT \CT|cc1\(30);
\CT|ALT_INV_cc1\(29) <= NOT \CT|cc1\(29);
\CT|ALT_INV_cc1\(28) <= NOT \CT|cc1\(28);
\CT|ALT_INV_cc1\(27) <= NOT \CT|cc1\(27);
\CT|ALT_INV_cc1\(26) <= NOT \CT|cc1\(26);
\CT|ALT_INV_cc1\(25) <= NOT \CT|cc1\(25);
\CT|ALT_INV_cc1\(13) <= NOT \CT|cc1\(13);
\CT|ALT_INV_cc1\(10) <= NOT \CT|cc1\(10);
\CT|ALT_INV_cc1\(9) <= NOT \CT|cc1\(9);
\CT|ALT_INV_cc1\(8) <= NOT \CT|cc1\(8);
\CT|ALT_INV_cc1\(7) <= NOT \CT|cc1\(7);
\CT|ALT_INV_cc1\(6) <= NOT \CT|cc1\(6);
\CT|ALT_INV_cc1\(5) <= NOT \CT|cc1\(5);
\CT|ALT_INV_cc1\(16) <= NOT \CT|cc1\(16);
\CT|ALT_INV_cc1\(15) <= NOT \CT|cc1\(15);
\CT|ALT_INV_cc1\(14) <= NOT \CT|cc1\(14);
\CT|ALT_INV_cc1\(31) <= NOT \CT|cc1\(31);
\CT|ALT_INV_cc1\(12) <= NOT \CT|cc1\(12);
\CT|ALT_INV_cc1\(11) <= NOT \CT|cc1\(11);
\CT|ALT_INV_cc1\(22) <= NOT \CT|cc1\(22);
\CT|ALT_INV_cc1\(21) <= NOT \CT|cc1\(21);
\CT|ALT_INV_cc1\(20) <= NOT \CT|cc1\(20);
\CT|ALT_INV_cc1\(19) <= NOT \CT|cc1\(19);
\CT|ALT_INV_cc1\(18) <= NOT \CT|cc1\(18);
\CT|ALT_INV_cc1\(17) <= NOT \CT|cc1\(17);
\CT|ALT_INV_cc1\(24) <= NOT \CT|cc1\(24);
\CT|ALT_INV_cc1\(23) <= NOT \CT|cc1\(23);
\CT|ALT_INV_cc60\(26) <= NOT \CT|cc60\(26);
\CT|ALT_INV_cc60\(27) <= NOT \CT|cc60\(27);
\CT|ALT_INV_cc60\(20) <= NOT \CT|cc60\(20);
\CT|ALT_INV_cc60\(29) <= NOT \CT|cc60\(29);
\CT|ALT_INV_cc60\(30) <= NOT \CT|cc60\(30);
\CT|ALT_INV_cc60\(31) <= NOT \CT|cc60\(31);
\CT|ALT_INV_cc60\(2) <= NOT \CT|cc60\(2);
\CT|ALT_INV_cc60\(3) <= NOT \CT|cc60\(3);
\CT|ALT_INV_cc60\(4) <= NOT \CT|cc60\(4);
\CT|ALT_INV_cc60\(5) <= NOT \CT|cc60\(5);
\CT|ALT_INV_cc60\(28) <= NOT \CT|cc60\(28);
\CT|ALT_INV_cc60\(1) <= NOT \CT|cc60\(1);
\CT|ALT_INV_cc60\(21) <= NOT \CT|cc60\(21);
\CT|ALT_INV_cc60\(22) <= NOT \CT|cc60\(22);
\CT|ALT_INV_cc60\(23) <= NOT \CT|cc60\(23);
\CT|ALT_INV_cc60\(24) <= NOT \CT|cc60\(24);
\CT|ALT_INV_cc60\(25) <= NOT \CT|cc60\(25);
\CT|ALT_INV_cc60\(14) <= NOT \CT|cc60\(14);
\CT|ALT_INV_cc60\(15) <= NOT \CT|cc60\(15);
\CT|ALT_INV_cc60\(16) <= NOT \CT|cc60\(16);
\CT|ALT_INV_cc60\(17) <= NOT \CT|cc60\(17);
\CT|ALT_INV_cc60\(18) <= NOT \CT|cc60\(18);
\CT|ALT_INV_cc60\(19) <= NOT \CT|cc60\(19);
\CT|ALT_INV_cc60\(8) <= NOT \CT|cc60\(8);
\CT|ALT_INV_cc60\(9) <= NOT \CT|cc60\(9);
\CT|ALT_INV_cc60\(10) <= NOT \CT|cc60\(10);
\CT|ALT_INV_cc60\(11) <= NOT \CT|cc60\(11);
\CT|ALT_INV_cc60\(12) <= NOT \CT|cc60\(12);
\CT|ALT_INV_cc60\(13) <= NOT \CT|cc60\(13);
\CT|ALT_INV_cc60\(6) <= NOT \CT|cc60\(6);
\CT|ALT_INV_cc60\(7) <= NOT \CT|cc60\(7);
\CT|ALT_INV_Equal0~1_combout\ <= NOT \CT|Equal0~1_combout\;
\CT|ALT_INV_Equal0~0_combout\ <= NOT \CT|Equal0~0_combout\;
\FSM|ALT_INV_c1m~combout\ <= NOT \FSM|c1m~combout\;
\CT|ALT_INV_Equal1~6_combout\ <= NOT \CT|Equal1~6_combout\;
\CT|ALT_INV_Equal1~5_combout\ <= NOT \CT|Equal1~5_combout\;
\CT|ALT_INV_Equal1~4_combout\ <= NOT \CT|Equal1~4_combout\;
\CT|ALT_INV_cc60\(0) <= NOT \CT|cc60\(0);
\CT|ALT_INV_Equal1~3_combout\ <= NOT \CT|Equal1~3_combout\;
\CT|ALT_INV_Equal1~2_combout\ <= NOT \CT|Equal1~2_combout\;
\CT|ALT_INV_Equal1~1_combout\ <= NOT \CT|Equal1~1_combout\;
\CT|ALT_INV_Equal1~0_combout\ <= NOT \CT|Equal1~0_combout\;
\CT|ALT_INV_d1~combout\ <= NOT \CT|d1~combout\;
\CT|conter:1:CO1:Ci|ALT_INV_QI~q\ <= NOT \CT|conter:1:CO1:Ci|QI~q\;
\CT|conter:0:INITC:Ci|ALT_INV_Q~q\ <= NOT \CT|conter:0:INITC:Ci|Q~q\;
\CT|conter:0:INITC:Ci|ALT_INV_QI~q\ <= NOT \CT|conter:0:INITC:Ci|QI~q\;
\CT|ALT_INV_temp1s~q\ <= NOT \CT|temp1s~q\;
\CT|ALT_INV_cout~1_combout\ <= NOT \CT|cout~1_combout\;
\FSM|ALT_INV_c5s~combout\ <= NOT \FSM|c5s~combout\;
\CT|ALT_INV_cout~3_combout\ <= NOT \CT|cout~3_combout\;
\CT|ALT_INV_temp1m~q\ <= NOT \CT|temp1m~q\;
\CT|ALT_INV_cout~2_combout\ <= NOT \CT|cout~2_combout\;
\CT|conter:3:CO3:Ci|ALT_INV_Q~q\ <= NOT \CT|conter:3:CO3:Ci|Q~q\;
\CT|conter:1:CO1:Ci|ALT_INV_Q~q\ <= NOT \CT|conter:1:CO1:Ci|Q~q\;
\FSM|ALT_INV_E_Atual.eVdA~q\ <= NOT \FSM|E_Atual.eVdA~q\;
\FSM|ALT_INV_Q2~combout\ <= NOT \FSM|Q2~combout\;
\FSM|ALT_INV_E_Atual.Apagado~q\ <= NOT \FSM|E_Atual.Apagado~q\;
\FSM|ALT_INV_E_Atual.Piscante~q\ <= NOT \FSM|E_Atual.Piscante~q\;
\FSM|ALT_INV_E_Atual.eAmB~q\ <= NOT \FSM|E_Atual.eAmB~q\;
\FSM|ALT_INV_E_Atual.eVdB~q\ <= NOT \FSM|E_Atual.eVdB~q\;
\FSM|ALT_INV_E_Atual.eAmA~q\ <= NOT \FSM|E_Atual.eAmA~q\;
\CT|ALT_INV_Add0~81_sumout\ <= NOT \CT|Add0~81_sumout\;
\CT|ALT_INV_Add1~81_sumout\ <= NOT \CT|Add1~81_sumout\;
\ALT_INV_PdB~input_o\ <= NOT \PdB~input_o\;
\ALT_INV_VeA~input_o\ <= NOT \VeA~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_PdA~input_o\ <= NOT \PdA~input_o\;
\ALT_INV_VeB~input_o\ <= NOT \VeB~input_o\;
\ALT_INV_Noturno~input_o\ <= NOT \Noturno~input_o\;
\CT|ALT_INV_d0~combout\ <= NOT \CT|d0~combout\;
\CT|conter:2:CO2:Ci|ALT_INV_QI~q\ <= NOT \CT|conter:2:CO2:Ci|QI~q\;
\CT|ALT_INV_Equal0~6_combout\ <= NOT \CT|Equal0~6_combout\;
\CT|ALT_INV_Equal0~5_combout\ <= NOT \CT|Equal0~5_combout\;
\CT|ALT_INV_Equal0~4_combout\ <= NOT \CT|Equal0~4_combout\;
\CT|ALT_INV_cc1\(0) <= NOT \CT|cc1\(0);
\CT|ALT_INV_Equal0~3_combout\ <= NOT \CT|Equal0~3_combout\;
\CT|ALT_INV_Equal0~2_combout\ <= NOT \CT|Equal0~2_combout\;

\Q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Q0~combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

\Q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Q1~combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

\Q2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM|Q2~combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\CT|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~81_sumout\ = SUM(( !\CT|cc1\(0) ) + ( VCC ) + ( !VCC ))
-- \CT|Add0~82\ = CARRY(( !\CT|cc1\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(0),
	cin => GND,
	sumout => \CT|Add0~81_sumout\,
	cout => \CT|Add0~82\);

\CT|cc1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|cc1[0]~0_combout\ = !\CT|Add0~81_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_Add0~81_sumout\,
	combout => \CT|cc1[0]~0_combout\);

\CT|cc1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|cc1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(0));

\CT|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~113_sumout\ = SUM(( \CT|cc1\(1) ) + ( GND ) + ( \CT|Add0~82\ ))
-- \CT|Add0~114\ = CARRY(( \CT|cc1\(1) ) + ( GND ) + ( \CT|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(1),
	cin => \CT|Add0~82\,
	sumout => \CT|Add0~113_sumout\,
	cout => \CT|Add0~114\);

\CT|cc1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~113_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(1));

\CT|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~117_sumout\ = SUM(( \CT|cc1\(2) ) + ( GND ) + ( \CT|Add0~114\ ))
-- \CT|Add0~118\ = CARRY(( \CT|cc1\(2) ) + ( GND ) + ( \CT|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(2),
	cin => \CT|Add0~114\,
	sumout => \CT|Add0~117_sumout\,
	cout => \CT|Add0~118\);

\CT|cc1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~117_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(2));

\CT|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~121_sumout\ = SUM(( \CT|cc1\(3) ) + ( GND ) + ( \CT|Add0~118\ ))
-- \CT|Add0~122\ = CARRY(( \CT|cc1\(3) ) + ( GND ) + ( \CT|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(3),
	cin => \CT|Add0~118\,
	sumout => \CT|Add0~121_sumout\,
	cout => \CT|Add0~122\);

\CT|cc1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~121_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(3));

\CT|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~125_sumout\ = SUM(( \CT|cc1\(4) ) + ( GND ) + ( \CT|Add0~122\ ))
-- \CT|Add0~126\ = CARRY(( \CT|cc1\(4) ) + ( GND ) + ( \CT|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(4),
	cin => \CT|Add0~122\,
	sumout => \CT|Add0~125_sumout\,
	cout => \CT|Add0~126\);

\CT|cc1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~125_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(4));

\CT|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~57_sumout\ = SUM(( \CT|cc1\(5) ) + ( GND ) + ( \CT|Add0~126\ ))
-- \CT|Add0~58\ = CARRY(( \CT|cc1\(5) ) + ( GND ) + ( \CT|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(5),
	cin => \CT|Add0~126\,
	sumout => \CT|Add0~57_sumout\,
	cout => \CT|Add0~58\);

\CT|cc1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~57_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(5));

\CT|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~61_sumout\ = SUM(( \CT|cc1\(6) ) + ( GND ) + ( \CT|Add0~58\ ))
-- \CT|Add0~62\ = CARRY(( \CT|cc1\(6) ) + ( GND ) + ( \CT|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(6),
	cin => \CT|Add0~58\,
	sumout => \CT|Add0~61_sumout\,
	cout => \CT|Add0~62\);

\CT|cc1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~61_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(6));

\CT|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~65_sumout\ = SUM(( \CT|cc1\(7) ) + ( GND ) + ( \CT|Add0~62\ ))
-- \CT|Add0~66\ = CARRY(( \CT|cc1\(7) ) + ( GND ) + ( \CT|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(7),
	cin => \CT|Add0~62\,
	sumout => \CT|Add0~65_sumout\,
	cout => \CT|Add0~66\);

\CT|cc1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~65_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(7));

\CT|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~69_sumout\ = SUM(( \CT|cc1\(8) ) + ( GND ) + ( \CT|Add0~66\ ))
-- \CT|Add0~70\ = CARRY(( \CT|cc1\(8) ) + ( GND ) + ( \CT|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(8),
	cin => \CT|Add0~66\,
	sumout => \CT|Add0~69_sumout\,
	cout => \CT|Add0~70\);

\CT|cc1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~69_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(8));

\CT|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~73_sumout\ = SUM(( \CT|cc1\(9) ) + ( GND ) + ( \CT|Add0~70\ ))
-- \CT|Add0~74\ = CARRY(( \CT|cc1\(9) ) + ( GND ) + ( \CT|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(9),
	cin => \CT|Add0~70\,
	sumout => \CT|Add0~73_sumout\,
	cout => \CT|Add0~74\);

\CT|cc1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~73_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(9));

\CT|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~77_sumout\ = SUM(( \CT|cc1\(10) ) + ( GND ) + ( \CT|Add0~74\ ))
-- \CT|Add0~78\ = CARRY(( \CT|cc1\(10) ) + ( GND ) + ( \CT|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(10),
	cin => \CT|Add0~74\,
	sumout => \CT|Add0~77_sumout\,
	cout => \CT|Add0~78\);

\CT|cc1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~77_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(10));

\CT|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~33_sumout\ = SUM(( \CT|cc1\(11) ) + ( GND ) + ( \CT|Add0~78\ ))
-- \CT|Add0~34\ = CARRY(( \CT|cc1\(11) ) + ( GND ) + ( \CT|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(11),
	cin => \CT|Add0~78\,
	sumout => \CT|Add0~33_sumout\,
	cout => \CT|Add0~34\);

\CT|cc1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~33_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(11));

\CT|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~37_sumout\ = SUM(( \CT|cc1\(12) ) + ( GND ) + ( \CT|Add0~34\ ))
-- \CT|Add0~38\ = CARRY(( \CT|cc1\(12) ) + ( GND ) + ( \CT|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(12),
	cin => \CT|Add0~34\,
	sumout => \CT|Add0~37_sumout\,
	cout => \CT|Add0~38\);

\CT|cc1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~37_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(12));

\CT|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~85_sumout\ = SUM(( \CT|cc1\(13) ) + ( GND ) + ( \CT|Add0~38\ ))
-- \CT|Add0~86\ = CARRY(( \CT|cc1\(13) ) + ( GND ) + ( \CT|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(13),
	cin => \CT|Add0~38\,
	sumout => \CT|Add0~85_sumout\,
	cout => \CT|Add0~86\);

\CT|cc1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~85_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(13));

\CT|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~45_sumout\ = SUM(( \CT|cc1\(14) ) + ( GND ) + ( \CT|Add0~86\ ))
-- \CT|Add0~46\ = CARRY(( \CT|cc1\(14) ) + ( GND ) + ( \CT|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(14),
	cin => \CT|Add0~86\,
	sumout => \CT|Add0~45_sumout\,
	cout => \CT|Add0~46\);

\CT|cc1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~45_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(14));

\CT|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~49_sumout\ = SUM(( \CT|cc1\(15) ) + ( GND ) + ( \CT|Add0~46\ ))
-- \CT|Add0~50\ = CARRY(( \CT|cc1\(15) ) + ( GND ) + ( \CT|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(15),
	cin => \CT|Add0~46\,
	sumout => \CT|Add0~49_sumout\,
	cout => \CT|Add0~50\);

\CT|cc1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~49_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(15));

\CT|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~53_sumout\ = SUM(( \CT|cc1\(16) ) + ( GND ) + ( \CT|Add0~50\ ))
-- \CT|Add0~54\ = CARRY(( \CT|cc1\(16) ) + ( GND ) + ( \CT|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(16),
	cin => \CT|Add0~50\,
	sumout => \CT|Add0~53_sumout\,
	cout => \CT|Add0~54\);

\CT|cc1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~53_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(16));

\CT|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~9_sumout\ = SUM(( \CT|cc1\(17) ) + ( GND ) + ( \CT|Add0~54\ ))
-- \CT|Add0~10\ = CARRY(( \CT|cc1\(17) ) + ( GND ) + ( \CT|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(17),
	cin => \CT|Add0~54\,
	sumout => \CT|Add0~9_sumout\,
	cout => \CT|Add0~10\);

\CT|cc1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~9_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(17));

\CT|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~13_sumout\ = SUM(( \CT|cc1\(18) ) + ( GND ) + ( \CT|Add0~10\ ))
-- \CT|Add0~14\ = CARRY(( \CT|cc1\(18) ) + ( GND ) + ( \CT|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(18),
	cin => \CT|Add0~10\,
	sumout => \CT|Add0~13_sumout\,
	cout => \CT|Add0~14\);

\CT|cc1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~13_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(18));

\CT|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~17_sumout\ = SUM(( \CT|cc1\(19) ) + ( GND ) + ( \CT|Add0~14\ ))
-- \CT|Add0~18\ = CARRY(( \CT|cc1\(19) ) + ( GND ) + ( \CT|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(19),
	cin => \CT|Add0~14\,
	sumout => \CT|Add0~17_sumout\,
	cout => \CT|Add0~18\);

\CT|cc1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~17_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(19));

\CT|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~21_sumout\ = SUM(( \CT|cc1\(20) ) + ( GND ) + ( \CT|Add0~18\ ))
-- \CT|Add0~22\ = CARRY(( \CT|cc1\(20) ) + ( GND ) + ( \CT|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(20),
	cin => \CT|Add0~18\,
	sumout => \CT|Add0~21_sumout\,
	cout => \CT|Add0~22\);

\CT|cc1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~21_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(20));

\CT|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~25_sumout\ = SUM(( \CT|cc1\(21) ) + ( GND ) + ( \CT|Add0~22\ ))
-- \CT|Add0~26\ = CARRY(( \CT|cc1\(21) ) + ( GND ) + ( \CT|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(21),
	cin => \CT|Add0~22\,
	sumout => \CT|Add0~25_sumout\,
	cout => \CT|Add0~26\);

\CT|cc1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~25_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(21));

\CT|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~29_sumout\ = SUM(( \CT|cc1\(22) ) + ( GND ) + ( \CT|Add0~26\ ))
-- \CT|Add0~30\ = CARRY(( \CT|cc1\(22) ) + ( GND ) + ( \CT|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(22),
	cin => \CT|Add0~26\,
	sumout => \CT|Add0~29_sumout\,
	cout => \CT|Add0~30\);

\CT|cc1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~29_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(22));

\CT|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~1_sumout\ = SUM(( \CT|cc1\(23) ) + ( GND ) + ( \CT|Add0~30\ ))
-- \CT|Add0~2\ = CARRY(( \CT|cc1\(23) ) + ( GND ) + ( \CT|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(23),
	cin => \CT|Add0~30\,
	sumout => \CT|Add0~1_sumout\,
	cout => \CT|Add0~2\);

\CT|cc1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~1_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(23));

\CT|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~5_sumout\ = SUM(( \CT|cc1\(24) ) + ( GND ) + ( \CT|Add0~2\ ))
-- \CT|Add0~6\ = CARRY(( \CT|cc1\(24) ) + ( GND ) + ( \CT|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(24),
	cin => \CT|Add0~2\,
	sumout => \CT|Add0~5_sumout\,
	cout => \CT|Add0~6\);

\CT|cc1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~5_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(24));

\CT|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal0~0_combout\ = (!\CT|cc1\(23) & !\CT|cc1\(24))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc1\(23),
	datab => \CT|ALT_INV_cc1\(24),
	combout => \CT|Equal0~0_combout\);

\CT|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal0~1_combout\ = ( !\CT|cc1\(21) & ( !\CT|cc1\(22) & ( (!\CT|cc1\(17) & (!\CT|cc1\(18) & (!\CT|cc1\(19) & !\CT|cc1\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc1\(17),
	datab => \CT|ALT_INV_cc1\(18),
	datac => \CT|ALT_INV_cc1\(19),
	datad => \CT|ALT_INV_cc1\(20),
	datae => \CT|ALT_INV_cc1\(21),
	dataf => \CT|ALT_INV_cc1\(22),
	combout => \CT|Equal0~1_combout\);

\CT|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~89_sumout\ = SUM(( \CT|cc1\(25) ) + ( GND ) + ( \CT|Add0~6\ ))
-- \CT|Add0~90\ = CARRY(( \CT|cc1\(25) ) + ( GND ) + ( \CT|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(25),
	cin => \CT|Add0~6\,
	sumout => \CT|Add0~89_sumout\,
	cout => \CT|Add0~90\);

\CT|cc1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~89_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(25));

\CT|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~93_sumout\ = SUM(( \CT|cc1\(26) ) + ( GND ) + ( \CT|Add0~90\ ))
-- \CT|Add0~94\ = CARRY(( \CT|cc1\(26) ) + ( GND ) + ( \CT|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(26),
	cin => \CT|Add0~90\,
	sumout => \CT|Add0~93_sumout\,
	cout => \CT|Add0~94\);

\CT|cc1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~93_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(26));

\CT|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~97_sumout\ = SUM(( \CT|cc1\(27) ) + ( GND ) + ( \CT|Add0~94\ ))
-- \CT|Add0~98\ = CARRY(( \CT|cc1\(27) ) + ( GND ) + ( \CT|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(27),
	cin => \CT|Add0~94\,
	sumout => \CT|Add0~97_sumout\,
	cout => \CT|Add0~98\);

\CT|cc1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~97_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(27));

\CT|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~101_sumout\ = SUM(( \CT|cc1\(28) ) + ( GND ) + ( \CT|Add0~98\ ))
-- \CT|Add0~102\ = CARRY(( \CT|cc1\(28) ) + ( GND ) + ( \CT|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(28),
	cin => \CT|Add0~98\,
	sumout => \CT|Add0~101_sumout\,
	cout => \CT|Add0~102\);

\CT|cc1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~101_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(28));

\CT|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~105_sumout\ = SUM(( \CT|cc1\(29) ) + ( GND ) + ( \CT|Add0~102\ ))
-- \CT|Add0~106\ = CARRY(( \CT|cc1\(29) ) + ( GND ) + ( \CT|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(29),
	cin => \CT|Add0~102\,
	sumout => \CT|Add0~105_sumout\,
	cout => \CT|Add0~106\);

\CT|cc1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~105_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(29));

\CT|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~109_sumout\ = SUM(( \CT|cc1\(30) ) + ( GND ) + ( \CT|Add0~106\ ))
-- \CT|Add0~110\ = CARRY(( \CT|cc1\(30) ) + ( GND ) + ( \CT|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(30),
	cin => \CT|Add0~106\,
	sumout => \CT|Add0~109_sumout\,
	cout => \CT|Add0~110\);

\CT|cc1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~109_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(30));

\CT|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add0~41_sumout\ = SUM(( \CT|cc1\(31) ) + ( GND ) + ( \CT|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc1\(31),
	cin => \CT|Add0~110\,
	sumout => \CT|Add0~41_sumout\);

\CT|cc1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|Add0~41_sumout\,
	sclr => \CT|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc1\(31));

\CT|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal0~2_combout\ = ( !\CT|cc1\(15) & ( !\CT|cc1\(16) & ( (!\CT|cc1\(11) & (!\CT|cc1\(12) & (!\CT|cc1\(31) & !\CT|cc1\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc1\(11),
	datab => \CT|ALT_INV_cc1\(12),
	datac => \CT|ALT_INV_cc1\(31),
	datad => \CT|ALT_INV_cc1\(14),
	datae => \CT|ALT_INV_cc1\(15),
	dataf => \CT|ALT_INV_cc1\(16),
	combout => \CT|Equal0~2_combout\);

\CT|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal0~3_combout\ = ( !\CT|cc1\(9) & ( !\CT|cc1\(10) & ( (!\CT|cc1\(5) & (!\CT|cc1\(6) & (!\CT|cc1\(7) & !\CT|cc1\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc1\(5),
	datab => \CT|ALT_INV_cc1\(6),
	datac => \CT|ALT_INV_cc1\(7),
	datad => \CT|ALT_INV_cc1\(8),
	datae => \CT|ALT_INV_cc1\(9),
	dataf => \CT|ALT_INV_cc1\(10),
	combout => \CT|Equal0~3_combout\);

\CT|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal0~4_combout\ = ( !\CT|cc1\(27) & ( !\CT|cc1\(28) & ( (\CT|cc1\(0) & (!\CT|cc1\(13) & (!\CT|cc1\(25) & !\CT|cc1\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc1\(0),
	datab => \CT|ALT_INV_cc1\(13),
	datac => \CT|ALT_INV_cc1\(25),
	datad => \CT|ALT_INV_cc1\(26),
	datae => \CT|ALT_INV_cc1\(27),
	dataf => \CT|ALT_INV_cc1\(28),
	combout => \CT|Equal0~4_combout\);

\CT|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal0~5_combout\ = ( !\CT|cc1\(3) & ( !\CT|cc1\(4) & ( (!\CT|cc1\(29) & (!\CT|cc1\(30) & (\CT|cc1\(1) & !\CT|cc1\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc1\(29),
	datab => \CT|ALT_INV_cc1\(30),
	datac => \CT|ALT_INV_cc1\(1),
	datad => \CT|ALT_INV_cc1\(2),
	datae => \CT|ALT_INV_cc1\(3),
	dataf => \CT|ALT_INV_cc1\(4),
	combout => \CT|Equal0~5_combout\);

\CT|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal0~6_combout\ = ( \CT|Equal0~4_combout\ & ( \CT|Equal0~5_combout\ & ( (\CT|Equal0~0_combout\ & (\CT|Equal0~1_combout\ & (\CT|Equal0~2_combout\ & \CT|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_Equal0~0_combout\,
	datab => \CT|ALT_INV_Equal0~1_combout\,
	datac => \CT|ALT_INV_Equal0~2_combout\,
	datad => \CT|ALT_INV_Equal0~3_combout\,
	datae => \CT|ALT_INV_Equal0~4_combout\,
	dataf => \CT|ALT_INV_Equal0~5_combout\,
	combout => \CT|Equal0~6_combout\);

\CT|temp1s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|temp1s~0_combout\ = !\CT|temp1s~q\ $ (!\CT|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_temp1s~q\,
	datab => \CT|ALT_INV_Equal0~6_combout\,
	combout => \CT|temp1s~0_combout\);

\CT|temp1s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \CT|temp1s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|temp1s~q\);

\VeB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VeB,
	o => \VeB~input_o\);

\PdA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PdA,
	o => \PdA~input_o\);

\VeA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_VeA,
	o => \VeA~input_o\);

\PdB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PdB,
	o => \PdB~input_o\);

\FSM|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Selector1~0_combout\ = ( \VeA~input_o\ & ( \PdB~input_o\ & ( \FSM|E_Atual.eAmA~q\ ) ) ) # ( !\VeA~input_o\ & ( \PdB~input_o\ & ( \FSM|E_Atual.eAmA~q\ ) ) ) # ( \VeA~input_o\ & ( !\PdB~input_o\ & ( \FSM|E_Atual.eAmA~q\ ) ) ) # ( !\VeA~input_o\ & ( 
-- !\PdB~input_o\ & ( ((\FSM|E_Atual.eVdB~q\ & ((\PdA~input_o\) # (\VeB~input_o\)))) # (\FSM|E_Atual.eAmA~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101110111010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.eAmA~q\,
	datab => \FSM|ALT_INV_E_Atual.eVdB~q\,
	datac => \ALT_INV_VeB~input_o\,
	datad => \ALT_INV_PdA~input_o\,
	datae => \ALT_INV_VeA~input_o\,
	dataf => \ALT_INV_PdB~input_o\,
	combout => \FSM|Selector1~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\FSM|E_Atual.eVdB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|cout~0_combout\,
	d => \FSM|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|E_Atual.eVdB~q\);

\FSM|E_Futuro.eAmB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|E_Futuro.eAmB~0_combout\ = ( \PdB~input_o\ & ( \FSM|E_Atual.eVdB~q\ ) ) # ( !\PdB~input_o\ & ( (\FSM|E_Atual.eVdB~q\ & (((!\VeB~input_o\ & !\PdA~input_o\)) # (\VeA~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001010101010101010101010101000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.eVdB~q\,
	datab => \ALT_INV_VeB~input_o\,
	datac => \ALT_INV_PdA~input_o\,
	datad => \ALT_INV_VeA~input_o\,
	datae => \ALT_INV_PdB~input_o\,
	combout => \FSM|E_Futuro.eAmB~0_combout\);

\FSM|E_Atual.eAmB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|cout~0_combout\,
	d => \FSM|E_Futuro.eAmB~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|E_Atual.eAmB~q\);

\FSM|c5s\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|c5s~combout\ = (\FSM|E_Atual.eAmB~q\) # (\FSM|E_Atual.eAmA~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.eAmA~q\,
	datab => \FSM|ALT_INV_E_Atual.eAmB~q\,
	combout => \FSM|c5s~combout\);

\CT|conter:0:INITC:Ci|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|d0~combout\,
	clrn => \FSM|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|conter:0:INITC:Ci|Q~q\);

\CT|d2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|d2~combout\ = (!\CT|conter:1:CO1:Ci|Q~q\) # (!\CT|conter:0:INITC:Ci|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|conter:1:CO1:Ci|ALT_INV_Q~q\,
	datab => \CT|conter:0:INITC:Ci|ALT_INV_Q~q\,
	combout => \CT|d2~combout\);

\CT|conter:2:CO2:Ci|QI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|d2~combout\,
	ena => \FSM|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|conter:2:CO2:Ci|QI~q\);

\CT|d0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|d0~combout\ = (\CT|conter:0:INITC:Ci|QI~q\ & \CT|conter:2:CO2:Ci|QI~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|conter:0:INITC:Ci|ALT_INV_QI~q\,
	datab => \CT|conter:2:CO2:Ci|ALT_INV_QI~q\,
	combout => \CT|d0~combout\);

\CT|conter:0:INITC:Ci|QI~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|conter:0:INITC:Ci|QI~0_combout\ = !\CT|d0~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_d0~combout\,
	combout => \CT|conter:0:INITC:Ci|QI~0_combout\);

\CT|conter:0:INITC:Ci|QI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|conter:0:INITC:Ci|QI~0_combout\,
	ena => \FSM|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|conter:0:INITC:Ci|QI~q\);

\CT|conter:1:CO1:Ci|QI~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|conter:1:CO1:Ci|QI~0_combout\ = !\CT|d1~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_d1~combout\,
	combout => \CT|conter:1:CO1:Ci|QI~0_combout\);

\CT|conter:1:CO1:Ci|QI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|conter:1:CO1:Ci|QI~0_combout\,
	ena => \FSM|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|conter:1:CO1:Ci|QI~q\);

\CT|d1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|d1~combout\ = (!\CT|conter:1:CO1:Ci|Q~q\ & (((\CT|conter:0:INITC:Ci|Q~q\ & \CT|conter:1:CO1:Ci|QI~q\)))) # (\CT|conter:1:CO1:Ci|Q~q\ & (((\CT|conter:0:INITC:Ci|Q~q\ & \CT|conter:1:CO1:Ci|QI~q\)) # (\CT|conter:0:INITC:Ci|QI~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|conter:1:CO1:Ci|ALT_INV_Q~q\,
	datab => \CT|conter:0:INITC:Ci|ALT_INV_QI~q\,
	datac => \CT|conter:0:INITC:Ci|ALT_INV_Q~q\,
	datad => \CT|conter:1:CO1:Ci|ALT_INV_QI~q\,
	combout => \CT|d1~combout\);

\CT|conter:1:CO1:Ci|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|d1~combout\,
	clrn => \FSM|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|conter:1:CO1:Ci|Q~q\);

\CT|conter:3:CO3:Ci|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|conter:1:CO1:Ci|Q~q\,
	clrn => \FSM|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|conter:3:CO3:Ci|Q~q\);

\CT|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|cout~2_combout\ = (!\CT|conter:1:CO1:Ci|Q~q\ & !\CT|conter:3:CO3:Ci|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|conter:1:CO1:Ci|ALT_INV_Q~q\,
	datab => \CT|conter:3:CO3:Ci|ALT_INV_Q~q\,
	combout => \CT|cout~2_combout\);

\Noturno~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Noturno,
	o => \Noturno~input_o\);

\FSM|E_Futuro.Apagado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|E_Futuro.Apagado~0_combout\ = (\FSM|E_Atual.Piscante~q\ & \Noturno~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.Piscante~q\,
	datab => \ALT_INV_Noturno~input_o\,
	combout => \FSM|E_Futuro.Apagado~0_combout\);

\FSM|E_Atual.Apagado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|cout~0_combout\,
	d => \FSM|E_Futuro.Apagado~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|E_Atual.Apagado~q\);

\FSM|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Selector2~0_combout\ = ((\Noturno~input_o\ & !\FSM|E_Atual.eVdA~q\)) # (\FSM|E_Atual.Apagado~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.Apagado~q\,
	datab => \ALT_INV_Noturno~input_o\,
	datac => \FSM|ALT_INV_E_Atual.eVdA~q\,
	combout => \FSM|Selector2~0_combout\);

\FSM|E_Atual.Piscante\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|cout~0_combout\,
	d => \FSM|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|E_Atual.Piscante~q\);

\FSM|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Selector0~0_combout\ = ( \VeB~input_o\ & ( \PdA~input_o\ & ( (!\FSM|E_Atual.eAmB~q\ & ((!\FSM|E_Atual.Piscante~q\) # (\Noturno~input_o\))) ) ) ) # ( !\VeB~input_o\ & ( \PdA~input_o\ & ( (!\FSM|E_Atual.eAmB~q\ & ((!\FSM|E_Atual.Piscante~q\) # 
-- (\Noturno~input_o\))) ) ) ) # ( \VeB~input_o\ & ( !\PdA~input_o\ & ( (!\FSM|E_Atual.eAmB~q\ & ((!\FSM|E_Atual.Piscante~q\) # (\Noturno~input_o\))) ) ) ) # ( !\VeB~input_o\ & ( !\PdA~input_o\ & ( (!\FSM|E_Atual.eAmB~q\ & (((!\FSM|E_Atual.Piscante~q\ & 
-- \FSM|E_Atual.eVdA~q\)) # (\Noturno~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001010100010101000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.eAmB~q\,
	datab => \FSM|ALT_INV_E_Atual.Piscante~q\,
	datac => \ALT_INV_Noturno~input_o\,
	datad => \FSM|ALT_INV_E_Atual.eVdA~q\,
	datae => \ALT_INV_VeB~input_o\,
	dataf => \ALT_INV_PdA~input_o\,
	combout => \FSM|Selector0~0_combout\);

\FSM|E_Atual.eVdA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|cout~0_combout\,
	d => \FSM|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|E_Atual.eVdA~q\);

\CT|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~81_sumout\ = SUM(( !\CT|cc60\(0) ) + ( VCC ) + ( !VCC ))
-- \CT|Add1~82\ = CARRY(( !\CT|cc60\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(0),
	cin => GND,
	sumout => \CT|Add1~81_sumout\,
	cout => \CT|Add1~82\);

\CT|cc60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|cc60~0_combout\ = !\CT|Equal1~6_combout\ $ (\CT|Add1~81_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_Equal1~6_combout\,
	datab => \CT|ALT_INV_Add1~81_sumout\,
	combout => \CT|cc60~0_combout\);

\FSM|c1m\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|c1m~combout\ = (!\FSM|E_Atual.eVdB~q\ & \FSM|E_Atual.eVdA~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.eVdB~q\,
	datab => \FSM|ALT_INV_E_Atual.eVdA~q\,
	combout => \FSM|c1m~combout\);

\CT|cc60[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|cc60~0_combout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(0));

\CT|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~77_sumout\ = SUM(( \CT|cc60\(1) ) + ( GND ) + ( \CT|Add1~82\ ))
-- \CT|Add1~78\ = CARRY(( \CT|cc60\(1) ) + ( GND ) + ( \CT|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(1),
	cin => \CT|Add1~82\,
	sumout => \CT|Add1~77_sumout\,
	cout => \CT|Add1~78\);

\CT|cc60[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~77_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(1));

\CT|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~101_sumout\ = SUM(( \CT|cc60\(2) ) + ( GND ) + ( \CT|Add1~78\ ))
-- \CT|Add1~102\ = CARRY(( \CT|cc60\(2) ) + ( GND ) + ( \CT|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(2),
	cin => \CT|Add1~78\,
	sumout => \CT|Add1~101_sumout\,
	cout => \CT|Add1~102\);

\CT|cc60[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~101_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(2));

\CT|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~97_sumout\ = SUM(( \CT|cc60\(3) ) + ( GND ) + ( \CT|Add1~102\ ))
-- \CT|Add1~98\ = CARRY(( \CT|cc60\(3) ) + ( GND ) + ( \CT|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(3),
	cin => \CT|Add1~102\,
	sumout => \CT|Add1~97_sumout\,
	cout => \CT|Add1~98\);

\CT|cc60[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~97_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(3));

\CT|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~93_sumout\ = SUM(( \CT|cc60\(4) ) + ( GND ) + ( \CT|Add1~98\ ))
-- \CT|Add1~94\ = CARRY(( \CT|cc60\(4) ) + ( GND ) + ( \CT|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(4),
	cin => \CT|Add1~98\,
	sumout => \CT|Add1~93_sumout\,
	cout => \CT|Add1~94\);

\CT|cc60[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~93_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(4));

\CT|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~89_sumout\ = SUM(( \CT|cc60\(5) ) + ( GND ) + ( \CT|Add1~94\ ))
-- \CT|Add1~90\ = CARRY(( \CT|cc60\(5) ) + ( GND ) + ( \CT|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(5),
	cin => \CT|Add1~94\,
	sumout => \CT|Add1~89_sumout\,
	cout => \CT|Add1~90\);

\CT|cc60[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~89_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(5));

\CT|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~5_sumout\ = SUM(( \CT|cc60\(6) ) + ( GND ) + ( \CT|Add1~90\ ))
-- \CT|Add1~6\ = CARRY(( \CT|cc60\(6) ) + ( GND ) + ( \CT|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(6),
	cin => \CT|Add1~90\,
	sumout => \CT|Add1~5_sumout\,
	cout => \CT|Add1~6\);

\CT|cc60[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~5_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(6));

\CT|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~1_sumout\ = SUM(( \CT|cc60\(7) ) + ( GND ) + ( \CT|Add1~6\ ))
-- \CT|Add1~2\ = CARRY(( \CT|cc60\(7) ) + ( GND ) + ( \CT|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(7),
	cin => \CT|Add1~6\,
	sumout => \CT|Add1~1_sumout\,
	cout => \CT|Add1~2\);

\CT|cc60[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~1_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(7));

\CT|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal1~0_combout\ = (!\CT|cc60\(7) & !\CT|cc60\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc60\(7),
	datab => \CT|ALT_INV_cc60\(6),
	combout => \CT|Equal1~0_combout\);

\CT|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~29_sumout\ = SUM(( \CT|cc60\(8) ) + ( GND ) + ( \CT|Add1~2\ ))
-- \CT|Add1~30\ = CARRY(( \CT|cc60\(8) ) + ( GND ) + ( \CT|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(8),
	cin => \CT|Add1~2\,
	sumout => \CT|Add1~29_sumout\,
	cout => \CT|Add1~30\);

\CT|cc60[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~29_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(8));

\CT|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~25_sumout\ = SUM(( \CT|cc60\(9) ) + ( GND ) + ( \CT|Add1~30\ ))
-- \CT|Add1~26\ = CARRY(( \CT|cc60\(9) ) + ( GND ) + ( \CT|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(9),
	cin => \CT|Add1~30\,
	sumout => \CT|Add1~25_sumout\,
	cout => \CT|Add1~26\);

\CT|cc60[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~25_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(9));

\CT|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~21_sumout\ = SUM(( \CT|cc60\(10) ) + ( GND ) + ( \CT|Add1~26\ ))
-- \CT|Add1~22\ = CARRY(( \CT|cc60\(10) ) + ( GND ) + ( \CT|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(10),
	cin => \CT|Add1~26\,
	sumout => \CT|Add1~21_sumout\,
	cout => \CT|Add1~22\);

\CT|cc60[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~21_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(10));

\CT|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~17_sumout\ = SUM(( \CT|cc60\(11) ) + ( GND ) + ( \CT|Add1~22\ ))
-- \CT|Add1~18\ = CARRY(( \CT|cc60\(11) ) + ( GND ) + ( \CT|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(11),
	cin => \CT|Add1~22\,
	sumout => \CT|Add1~17_sumout\,
	cout => \CT|Add1~18\);

\CT|cc60[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~17_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(11));

\CT|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~13_sumout\ = SUM(( \CT|cc60\(12) ) + ( GND ) + ( \CT|Add1~18\ ))
-- \CT|Add1~14\ = CARRY(( \CT|cc60\(12) ) + ( GND ) + ( \CT|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(12),
	cin => \CT|Add1~18\,
	sumout => \CT|Add1~13_sumout\,
	cout => \CT|Add1~14\);

\CT|cc60[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~13_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(12));

\CT|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~9_sumout\ = SUM(( \CT|cc60\(13) ) + ( GND ) + ( \CT|Add1~14\ ))
-- \CT|Add1~10\ = CARRY(( \CT|cc60\(13) ) + ( GND ) + ( \CT|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(13),
	cin => \CT|Add1~14\,
	sumout => \CT|Add1~9_sumout\,
	cout => \CT|Add1~10\);

\CT|cc60[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~9_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(13));

\CT|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal1~1_combout\ = ( !\CT|cc60\(9) & ( !\CT|cc60\(8) & ( (!\CT|cc60\(13) & (!\CT|cc60\(12) & (!\CT|cc60\(11) & !\CT|cc60\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc60\(13),
	datab => \CT|ALT_INV_cc60\(12),
	datac => \CT|ALT_INV_cc60\(11),
	datad => \CT|ALT_INV_cc60\(10),
	datae => \CT|ALT_INV_cc60\(9),
	dataf => \CT|ALT_INV_cc60\(8),
	combout => \CT|Equal1~1_combout\);

\CT|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~53_sumout\ = SUM(( \CT|cc60\(14) ) + ( GND ) + ( \CT|Add1~10\ ))
-- \CT|Add1~54\ = CARRY(( \CT|cc60\(14) ) + ( GND ) + ( \CT|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(14),
	cin => \CT|Add1~10\,
	sumout => \CT|Add1~53_sumout\,
	cout => \CT|Add1~54\);

\CT|cc60[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~53_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(14));

\CT|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~49_sumout\ = SUM(( \CT|cc60\(15) ) + ( GND ) + ( \CT|Add1~54\ ))
-- \CT|Add1~50\ = CARRY(( \CT|cc60\(15) ) + ( GND ) + ( \CT|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(15),
	cin => \CT|Add1~54\,
	sumout => \CT|Add1~49_sumout\,
	cout => \CT|Add1~50\);

\CT|cc60[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~49_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(15));

\CT|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~45_sumout\ = SUM(( \CT|cc60\(16) ) + ( GND ) + ( \CT|Add1~50\ ))
-- \CT|Add1~46\ = CARRY(( \CT|cc60\(16) ) + ( GND ) + ( \CT|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(16),
	cin => \CT|Add1~50\,
	sumout => \CT|Add1~45_sumout\,
	cout => \CT|Add1~46\);

\CT|cc60[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~45_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(16));

\CT|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~41_sumout\ = SUM(( \CT|cc60\(17) ) + ( GND ) + ( \CT|Add1~46\ ))
-- \CT|Add1~42\ = CARRY(( \CT|cc60\(17) ) + ( GND ) + ( \CT|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(17),
	cin => \CT|Add1~46\,
	sumout => \CT|Add1~41_sumout\,
	cout => \CT|Add1~42\);

\CT|cc60[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~41_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(17));

\CT|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~37_sumout\ = SUM(( \CT|cc60\(18) ) + ( GND ) + ( \CT|Add1~42\ ))
-- \CT|Add1~38\ = CARRY(( \CT|cc60\(18) ) + ( GND ) + ( \CT|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(18),
	cin => \CT|Add1~42\,
	sumout => \CT|Add1~37_sumout\,
	cout => \CT|Add1~38\);

\CT|cc60[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~37_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(18));

\CT|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~33_sumout\ = SUM(( \CT|cc60\(19) ) + ( GND ) + ( \CT|Add1~38\ ))
-- \CT|Add1~34\ = CARRY(( \CT|cc60\(19) ) + ( GND ) + ( \CT|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(19),
	cin => \CT|Add1~38\,
	sumout => \CT|Add1~33_sumout\,
	cout => \CT|Add1~34\);

\CT|cc60[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~33_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(19));

\CT|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal1~2_combout\ = ( !\CT|cc60\(15) & ( !\CT|cc60\(14) & ( (!\CT|cc60\(19) & (!\CT|cc60\(18) & (!\CT|cc60\(17) & !\CT|cc60\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc60\(19),
	datab => \CT|ALT_INV_cc60\(18),
	datac => \CT|ALT_INV_cc60\(17),
	datad => \CT|ALT_INV_cc60\(16),
	datae => \CT|ALT_INV_cc60\(15),
	dataf => \CT|ALT_INV_cc60\(14),
	combout => \CT|Equal1~2_combout\);

\CT|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~117_sumout\ = SUM(( \CT|cc60\(20) ) + ( GND ) + ( \CT|Add1~34\ ))
-- \CT|Add1~118\ = CARRY(( \CT|cc60\(20) ) + ( GND ) + ( \CT|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(20),
	cin => \CT|Add1~34\,
	sumout => \CT|Add1~117_sumout\,
	cout => \CT|Add1~118\);

\CT|cc60[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~117_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(20));

\CT|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~73_sumout\ = SUM(( \CT|cc60\(21) ) + ( GND ) + ( \CT|Add1~118\ ))
-- \CT|Add1~74\ = CARRY(( \CT|cc60\(21) ) + ( GND ) + ( \CT|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(21),
	cin => \CT|Add1~118\,
	sumout => \CT|Add1~73_sumout\,
	cout => \CT|Add1~74\);

\CT|cc60[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~73_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(21));

\CT|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~69_sumout\ = SUM(( \CT|cc60\(22) ) + ( GND ) + ( \CT|Add1~74\ ))
-- \CT|Add1~70\ = CARRY(( \CT|cc60\(22) ) + ( GND ) + ( \CT|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(22),
	cin => \CT|Add1~74\,
	sumout => \CT|Add1~69_sumout\,
	cout => \CT|Add1~70\);

\CT|cc60[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~69_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(22));

\CT|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~65_sumout\ = SUM(( \CT|cc60\(23) ) + ( GND ) + ( \CT|Add1~70\ ))
-- \CT|Add1~66\ = CARRY(( \CT|cc60\(23) ) + ( GND ) + ( \CT|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(23),
	cin => \CT|Add1~70\,
	sumout => \CT|Add1~65_sumout\,
	cout => \CT|Add1~66\);

\CT|cc60[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~65_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(23));

\CT|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~61_sumout\ = SUM(( \CT|cc60\(24) ) + ( GND ) + ( \CT|Add1~66\ ))
-- \CT|Add1~62\ = CARRY(( \CT|cc60\(24) ) + ( GND ) + ( \CT|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(24),
	cin => \CT|Add1~66\,
	sumout => \CT|Add1~61_sumout\,
	cout => \CT|Add1~62\);

\CT|cc60[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~61_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(24));

\CT|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~57_sumout\ = SUM(( \CT|cc60\(25) ) + ( GND ) + ( \CT|Add1~62\ ))
-- \CT|Add1~58\ = CARRY(( \CT|cc60\(25) ) + ( GND ) + ( \CT|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(25),
	cin => \CT|Add1~62\,
	sumout => \CT|Add1~57_sumout\,
	cout => \CT|Add1~58\);

\CT|cc60[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~57_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(25));

\CT|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal1~3_combout\ = ( !\CT|cc60\(21) & ( !\CT|cc60\(1) & ( (!\CT|cc60\(25) & (!\CT|cc60\(24) & (!\CT|cc60\(23) & !\CT|cc60\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc60\(25),
	datab => \CT|ALT_INV_cc60\(24),
	datac => \CT|ALT_INV_cc60\(23),
	datad => \CT|ALT_INV_cc60\(22),
	datae => \CT|ALT_INV_cc60\(21),
	dataf => \CT|ALT_INV_cc60\(1),
	combout => \CT|Equal1~3_combout\);

\CT|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~125_sumout\ = SUM(( \CT|cc60\(26) ) + ( GND ) + ( \CT|Add1~58\ ))
-- \CT|Add1~126\ = CARRY(( \CT|cc60\(26) ) + ( GND ) + ( \CT|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(26),
	cin => \CT|Add1~58\,
	sumout => \CT|Add1~125_sumout\,
	cout => \CT|Add1~126\);

\CT|cc60[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~125_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(26));

\CT|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~121_sumout\ = SUM(( \CT|cc60\(27) ) + ( GND ) + ( \CT|Add1~126\ ))
-- \CT|Add1~122\ = CARRY(( \CT|cc60\(27) ) + ( GND ) + ( \CT|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(27),
	cin => \CT|Add1~126\,
	sumout => \CT|Add1~121_sumout\,
	cout => \CT|Add1~122\);

\CT|cc60[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~121_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(27));

\CT|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~85_sumout\ = SUM(( \CT|cc60\(28) ) + ( GND ) + ( \CT|Add1~122\ ))
-- \CT|Add1~86\ = CARRY(( \CT|cc60\(28) ) + ( GND ) + ( \CT|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(28),
	cin => \CT|Add1~122\,
	sumout => \CT|Add1~85_sumout\,
	cout => \CT|Add1~86\);

\CT|cc60[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~85_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(28));

\CT|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal1~4_combout\ = ( !\CT|cc60\(3) & ( \CT|cc60\(2) & ( (!\CT|cc60\(0) & (!\CT|cc60\(28) & (!\CT|cc60\(5) & !\CT|cc60\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc60\(0),
	datab => \CT|ALT_INV_cc60\(28),
	datac => \CT|ALT_INV_cc60\(5),
	datad => \CT|ALT_INV_cc60\(4),
	datae => \CT|ALT_INV_cc60\(3),
	dataf => \CT|ALT_INV_cc60\(2),
	combout => \CT|Equal1~4_combout\);

\CT|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~113_sumout\ = SUM(( \CT|cc60\(29) ) + ( GND ) + ( \CT|Add1~86\ ))
-- \CT|Add1~114\ = CARRY(( \CT|cc60\(29) ) + ( GND ) + ( \CT|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(29),
	cin => \CT|Add1~86\,
	sumout => \CT|Add1~113_sumout\,
	cout => \CT|Add1~114\);

\CT|cc60[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~113_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(29));

\CT|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~109_sumout\ = SUM(( \CT|cc60\(30) ) + ( GND ) + ( \CT|Add1~114\ ))
-- \CT|Add1~110\ = CARRY(( \CT|cc60\(30) ) + ( GND ) + ( \CT|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(30),
	cin => \CT|Add1~114\,
	sumout => \CT|Add1~109_sumout\,
	cout => \CT|Add1~110\);

\CT|cc60[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~109_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(30));

\CT|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Add1~105_sumout\ = SUM(( \CT|cc60\(31) ) + ( GND ) + ( \CT|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CT|ALT_INV_cc60\(31),
	cin => \CT|Add1~110\,
	sumout => \CT|Add1~105_sumout\);

\CT|cc60[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|Add1~105_sumout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	sclr => \CT|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|cc60\(31));

\CT|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal1~5_combout\ = ( !\CT|cc60\(27) & ( !\CT|cc60\(26) & ( (!\CT|cc60\(31) & (!\CT|cc60\(30) & (!\CT|cc60\(29) & !\CT|cc60\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cc60\(31),
	datab => \CT|ALT_INV_cc60\(30),
	datac => \CT|ALT_INV_cc60\(29),
	datad => \CT|ALT_INV_cc60\(20),
	datae => \CT|ALT_INV_cc60\(27),
	dataf => \CT|ALT_INV_cc60\(26),
	combout => \CT|Equal1~5_combout\);

\CT|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|Equal1~6_combout\ = ( \CT|Equal1~4_combout\ & ( \CT|Equal1~5_combout\ & ( (\CT|Equal1~0_combout\ & (\CT|Equal1~1_combout\ & (\CT|Equal1~2_combout\ & \CT|Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_Equal1~0_combout\,
	datab => \CT|ALT_INV_Equal1~1_combout\,
	datac => \CT|ALT_INV_Equal1~2_combout\,
	datad => \CT|ALT_INV_Equal1~3_combout\,
	datae => \CT|ALT_INV_Equal1~4_combout\,
	dataf => \CT|ALT_INV_Equal1~5_combout\,
	combout => \CT|Equal1~6_combout\);

\CT|temp1m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|temp1m~0_combout\ = !\CT|temp1m~q\ $ (!\CT|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_temp1m~q\,
	datab => \CT|ALT_INV_Equal1~6_combout\,
	combout => \CT|temp1m~0_combout\);

\CT|temp1m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|temp1s~q\,
	d => \CT|temp1m~0_combout\,
	clrn => \FSM|ALT_INV_c1m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CT|temp1m~q\);

\CT|cout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|cout~3_combout\ = (\CT|temp1m~q\ & ((!\FSM|E_Atual.eVdA~q\) # (\FSM|E_Atual.eVdB~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.eVdB~q\,
	datab => \FSM|ALT_INV_E_Atual.eVdA~q\,
	datac => \CT|ALT_INV_temp1m~q\,
	combout => \CT|cout~3_combout\);

\CT|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|cout~1_combout\ = (!\FSM|c5s~combout\ & ((!\CT|cout~3_combout\))) # (\FSM|c5s~combout\ & (\CT|cout~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000101110001011100010111000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cout~2_combout\,
	datab => \CT|ALT_INV_cout~3_combout\,
	datac => \FSM|ALT_INV_c5s~combout\,
	combout => \CT|cout~1_combout\);

\FSM|Q2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Q2~combout\ = (\FSM|E_Atual.Apagado~q\) # (\FSM|E_Atual.Piscante~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.Piscante~q\,
	datab => \FSM|ALT_INV_E_Atual.Apagado~q\,
	combout => \FSM|Q2~combout\);

\CT|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CT|cout~0_combout\ = LCELL((!\FSM|Q2~combout\ & (!\CT|cout~1_combout\)) # (\FSM|Q2~combout\ & ((\CT|temp1s~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001110100011101000111010001110100011101000111010001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CT|ALT_INV_cout~1_combout\,
	datab => \CT|ALT_INV_temp1s~q\,
	datac => \FSM|ALT_INV_Q2~combout\,
	combout => \CT|cout~0_combout\);

\FSM|E_Futuro.eAmA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|E_Futuro.eAmA~0_combout\ = (!\Noturno~input_o\ & (!\FSM|E_Atual.eVdA~q\ & ((\PdA~input_o\) # (\VeB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Noturno~input_o\,
	datab => \FSM|ALT_INV_E_Atual.eVdA~q\,
	datac => \ALT_INV_VeB~input_o\,
	datad => \ALT_INV_PdA~input_o\,
	combout => \FSM|E_Futuro.eAmA~0_combout\);

\FSM|E_Atual.eAmA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CT|cout~0_combout\,
	d => \FSM|E_Futuro.eAmA~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|E_Atual.eAmA~q\);

\FSM|Q0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Q0~combout\ = (\FSM|E_Atual.eVdB~q\) # (\FSM|E_Atual.eAmA~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.eAmA~q\,
	datab => \FSM|ALT_INV_E_Atual.eVdB~q\,
	combout => \FSM|Q0~combout\);

\FSM|Q1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|Q1~combout\ = ((\FSM|E_Atual.Piscante~q\) # (\FSM|E_Atual.eAmB~q\)) # (\FSM|E_Atual.eVdB~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_E_Atual.eVdB~q\,
	datab => \FSM|ALT_INV_E_Atual.eAmB~q\,
	datac => \FSM|ALT_INV_E_Atual.Piscante~q\,
	combout => \FSM|Q1~combout\);

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;
END structure;


