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

-- DATE "06/23/2020 14:17:03"

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

ENTITY 	exp7 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	Noturno : IN std_logic;
	PvA : IN std_logic;
	PvB : IN std_logic;
	Q0 : BUFFER std_logic;
	Q1 : BUFFER std_logic;
	Q2 : BUFFER std_logic
	);
END exp7;

ARCHITECTURE structure OF exp7 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_Noturno : std_logic;
SIGNAL ww_PvA : std_logic;
SIGNAL ww_PvB : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \TEMP|Add0~81_sumout\ : std_logic;
SIGNAL \TEMP|cc1[0]~0_combout\ : std_logic;
SIGNAL \TEMP|Add0~82\ : std_logic;
SIGNAL \TEMP|Add0~113_sumout\ : std_logic;
SIGNAL \TEMP|Add0~114\ : std_logic;
SIGNAL \TEMP|Add0~117_sumout\ : std_logic;
SIGNAL \TEMP|Add0~118\ : std_logic;
SIGNAL \TEMP|Add0~121_sumout\ : std_logic;
SIGNAL \TEMP|Add0~122\ : std_logic;
SIGNAL \TEMP|Add0~125_sumout\ : std_logic;
SIGNAL \TEMP|Add0~126\ : std_logic;
SIGNAL \TEMP|Add0~57_sumout\ : std_logic;
SIGNAL \TEMP|Add0~58\ : std_logic;
SIGNAL \TEMP|Add0~61_sumout\ : std_logic;
SIGNAL \TEMP|Add0~62\ : std_logic;
SIGNAL \TEMP|Add0~65_sumout\ : std_logic;
SIGNAL \TEMP|Add0~66\ : std_logic;
SIGNAL \TEMP|Add0~69_sumout\ : std_logic;
SIGNAL \TEMP|Add0~70\ : std_logic;
SIGNAL \TEMP|Add0~73_sumout\ : std_logic;
SIGNAL \TEMP|Add0~74\ : std_logic;
SIGNAL \TEMP|Add0~77_sumout\ : std_logic;
SIGNAL \TEMP|Add0~78\ : std_logic;
SIGNAL \TEMP|Add0~33_sumout\ : std_logic;
SIGNAL \TEMP|Add0~34\ : std_logic;
SIGNAL \TEMP|Add0~37_sumout\ : std_logic;
SIGNAL \TEMP|Add0~38\ : std_logic;
SIGNAL \TEMP|Add0~85_sumout\ : std_logic;
SIGNAL \TEMP|Add0~86\ : std_logic;
SIGNAL \TEMP|Add0~45_sumout\ : std_logic;
SIGNAL \TEMP|Add0~46\ : std_logic;
SIGNAL \TEMP|Add0~49_sumout\ : std_logic;
SIGNAL \TEMP|Add0~50\ : std_logic;
SIGNAL \TEMP|Add0~53_sumout\ : std_logic;
SIGNAL \TEMP|Add0~54\ : std_logic;
SIGNAL \TEMP|Add0~9_sumout\ : std_logic;
SIGNAL \TEMP|Add0~10\ : std_logic;
SIGNAL \TEMP|Add0~13_sumout\ : std_logic;
SIGNAL \TEMP|Add0~14\ : std_logic;
SIGNAL \TEMP|Add0~17_sumout\ : std_logic;
SIGNAL \TEMP|Add0~18\ : std_logic;
SIGNAL \TEMP|Add0~21_sumout\ : std_logic;
SIGNAL \TEMP|Add0~22\ : std_logic;
SIGNAL \TEMP|Add0~25_sumout\ : std_logic;
SIGNAL \TEMP|Add0~26\ : std_logic;
SIGNAL \TEMP|Add0~29_sumout\ : std_logic;
SIGNAL \TEMP|Add0~30\ : std_logic;
SIGNAL \TEMP|Add0~1_sumout\ : std_logic;
SIGNAL \TEMP|Add0~2\ : std_logic;
SIGNAL \TEMP|Add0~5_sumout\ : std_logic;
SIGNAL \TEMP|Equal0~0_combout\ : std_logic;
SIGNAL \TEMP|Equal0~1_combout\ : std_logic;
SIGNAL \TEMP|Add0~6\ : std_logic;
SIGNAL \TEMP|Add0~89_sumout\ : std_logic;
SIGNAL \TEMP|Add0~90\ : std_logic;
SIGNAL \TEMP|Add0~93_sumout\ : std_logic;
SIGNAL \TEMP|Add0~94\ : std_logic;
SIGNAL \TEMP|Add0~97_sumout\ : std_logic;
SIGNAL \TEMP|Add0~98\ : std_logic;
SIGNAL \TEMP|Add0~101_sumout\ : std_logic;
SIGNAL \TEMP|Add0~102\ : std_logic;
SIGNAL \TEMP|Add0~105_sumout\ : std_logic;
SIGNAL \TEMP|Add0~106\ : std_logic;
SIGNAL \TEMP|Add0~109_sumout\ : std_logic;
SIGNAL \TEMP|Add0~110\ : std_logic;
SIGNAL \TEMP|Add0~41_sumout\ : std_logic;
SIGNAL \TEMP|Equal0~2_combout\ : std_logic;
SIGNAL \TEMP|Equal0~3_combout\ : std_logic;
SIGNAL \TEMP|Equal0~4_combout\ : std_logic;
SIGNAL \TEMP|Equal0~5_combout\ : std_logic;
SIGNAL \TEMP|Equal0~6_combout\ : std_logic;
SIGNAL \TEMP|temp1s~0_combout\ : std_logic;
SIGNAL \TEMP|temp1s~q\ : std_logic;
SIGNAL \PvB~input_o\ : std_logic;
SIGNAL \Noturno~input_o\ : std_logic;
SIGNAL \PvA~input_o\ : std_logic;
SIGNAL \FSMSEF|Selector2~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \FSMSEF|E_Atual.eVdB~q\ : std_logic;
SIGNAL \FSMSEF|E_Atual.eAmB~q\ : std_logic;
SIGNAL \FSMSEF|Selector1~0_combout\ : std_logic;
SIGNAL \FSMSEF|E_Atual.eVdA~q\ : std_logic;
SIGNAL \FSMSEF|E_Atual.eAmA~q\ : std_logic;
SIGNAL \FSMSEF|c5s~combout\ : std_logic;
SIGNAL \TEMP|conter:0:INITC:Ci|Q~q\ : std_logic;
SIGNAL \TEMP|d2~combout\ : std_logic;
SIGNAL \TEMP|conter:2:CO2:Ci|QI~q\ : std_logic;
SIGNAL \TEMP|d0~combout\ : std_logic;
SIGNAL \TEMP|conter:0:INITC:Ci|QI~0_combout\ : std_logic;
SIGNAL \TEMP|conter:0:INITC:Ci|QI~q\ : std_logic;
SIGNAL \TEMP|conter:1:CO1:Ci|QI~0_combout\ : std_logic;
SIGNAL \TEMP|conter:1:CO1:Ci|QI~q\ : std_logic;
SIGNAL \TEMP|d1~combout\ : std_logic;
SIGNAL \TEMP|conter:1:CO1:Ci|Q~q\ : std_logic;
SIGNAL \TEMP|conter:3:CO3:Ci|Q~q\ : std_logic;
SIGNAL \TEMP|cout~2_combout\ : std_logic;
SIGNAL \TEMP|Add1~81_sumout\ : std_logic;
SIGNAL \TEMP|cc60[0]~0_combout\ : std_logic;
SIGNAL \FSMSEF|c1m~combout\ : std_logic;
SIGNAL \TEMP|Add1~82\ : std_logic;
SIGNAL \TEMP|Add1~77_sumout\ : std_logic;
SIGNAL \TEMP|Add1~78\ : std_logic;
SIGNAL \TEMP|Add1~101_sumout\ : std_logic;
SIGNAL \TEMP|Add1~102\ : std_logic;
SIGNAL \TEMP|Add1~97_sumout\ : std_logic;
SIGNAL \TEMP|Add1~98\ : std_logic;
SIGNAL \TEMP|Add1~93_sumout\ : std_logic;
SIGNAL \TEMP|Add1~94\ : std_logic;
SIGNAL \TEMP|Add1~89_sumout\ : std_logic;
SIGNAL \TEMP|Add1~90\ : std_logic;
SIGNAL \TEMP|Add1~5_sumout\ : std_logic;
SIGNAL \TEMP|Add1~6\ : std_logic;
SIGNAL \TEMP|Add1~1_sumout\ : std_logic;
SIGNAL \TEMP|Equal1~0_combout\ : std_logic;
SIGNAL \TEMP|Add1~2\ : std_logic;
SIGNAL \TEMP|Add1~29_sumout\ : std_logic;
SIGNAL \TEMP|Add1~30\ : std_logic;
SIGNAL \TEMP|Add1~25_sumout\ : std_logic;
SIGNAL \TEMP|Add1~26\ : std_logic;
SIGNAL \TEMP|Add1~21_sumout\ : std_logic;
SIGNAL \TEMP|Add1~22\ : std_logic;
SIGNAL \TEMP|Add1~17_sumout\ : std_logic;
SIGNAL \TEMP|Add1~18\ : std_logic;
SIGNAL \TEMP|Add1~13_sumout\ : std_logic;
SIGNAL \TEMP|Add1~14\ : std_logic;
SIGNAL \TEMP|Add1~9_sumout\ : std_logic;
SIGNAL \TEMP|Equal1~1_combout\ : std_logic;
SIGNAL \TEMP|Add1~10\ : std_logic;
SIGNAL \TEMP|Add1~53_sumout\ : std_logic;
SIGNAL \TEMP|Add1~54\ : std_logic;
SIGNAL \TEMP|Add1~49_sumout\ : std_logic;
SIGNAL \TEMP|Add1~50\ : std_logic;
SIGNAL \TEMP|Add1~45_sumout\ : std_logic;
SIGNAL \TEMP|Add1~46\ : std_logic;
SIGNAL \TEMP|Add1~41_sumout\ : std_logic;
SIGNAL \TEMP|Add1~42\ : std_logic;
SIGNAL \TEMP|Add1~37_sumout\ : std_logic;
SIGNAL \TEMP|Add1~38\ : std_logic;
SIGNAL \TEMP|Add1~33_sumout\ : std_logic;
SIGNAL \TEMP|Equal1~2_combout\ : std_logic;
SIGNAL \TEMP|Add1~34\ : std_logic;
SIGNAL \TEMP|Add1~117_sumout\ : std_logic;
SIGNAL \TEMP|Add1~118\ : std_logic;
SIGNAL \TEMP|Add1~73_sumout\ : std_logic;
SIGNAL \TEMP|Add1~74\ : std_logic;
SIGNAL \TEMP|Add1~69_sumout\ : std_logic;
SIGNAL \TEMP|Add1~70\ : std_logic;
SIGNAL \TEMP|Add1~65_sumout\ : std_logic;
SIGNAL \TEMP|Add1~66\ : std_logic;
SIGNAL \TEMP|Add1~61_sumout\ : std_logic;
SIGNAL \TEMP|Add1~62\ : std_logic;
SIGNAL \TEMP|Add1~57_sumout\ : std_logic;
SIGNAL \TEMP|Equal1~3_combout\ : std_logic;
SIGNAL \TEMP|Add1~58\ : std_logic;
SIGNAL \TEMP|Add1~125_sumout\ : std_logic;
SIGNAL \TEMP|Add1~126\ : std_logic;
SIGNAL \TEMP|Add1~121_sumout\ : std_logic;
SIGNAL \TEMP|Add1~122\ : std_logic;
SIGNAL \TEMP|Add1~85_sumout\ : std_logic;
SIGNAL \TEMP|Equal1~4_combout\ : std_logic;
SIGNAL \TEMP|Add1~86\ : std_logic;
SIGNAL \TEMP|Add1~113_sumout\ : std_logic;
SIGNAL \TEMP|Add1~114\ : std_logic;
SIGNAL \TEMP|Add1~109_sumout\ : std_logic;
SIGNAL \TEMP|Add1~110\ : std_logic;
SIGNAL \TEMP|Add1~105_sumout\ : std_logic;
SIGNAL \TEMP|Equal1~5_combout\ : std_logic;
SIGNAL \TEMP|Equal1~6_combout\ : std_logic;
SIGNAL \TEMP|temp1m~0_combout\ : std_logic;
SIGNAL \TEMP|temp1m~q\ : std_logic;
SIGNAL \TEMP|cout~3_combout\ : std_logic;
SIGNAL \TEMP|cout~1_combout\ : std_logic;
SIGNAL \FSMSEF|E_Futuro.Apagado~0_combout\ : std_logic;
SIGNAL \FSMSEF|E_Atual.Apagado~q\ : std_logic;
SIGNAL \FSMSEF|Selector3~0_combout\ : std_logic;
SIGNAL \FSMSEF|E_Atual.Piscante~q\ : std_logic;
SIGNAL \FSMSEF|Q2~combout\ : std_logic;
SIGNAL \TEMP|cout~0_combout\ : std_logic;
SIGNAL \FSMSEF|Selector0~0_combout\ : std_logic;
SIGNAL \FSMSEF|Selector0~1_combout\ : std_logic;
SIGNAL \FSMSEF|E_Atual.Bgn~q\ : std_logic;
SIGNAL \FSMSEF|Q0~combout\ : std_logic;
SIGNAL \FSMSEF|Q1~combout\ : std_logic;
SIGNAL \TEMP|cc60\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TEMP|cc1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TEMP|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_cc1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TEMP|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_c1m~combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_cc60\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TEMP|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_d1~combout\ : std_logic;
SIGNAL \TEMP|conter:1:CO1:Ci|ALT_INV_QI~q\ : std_logic;
SIGNAL \TEMP|conter:0:INITC:Ci|ALT_INV_Q~q\ : std_logic;
SIGNAL \TEMP|conter:0:INITC:Ci|ALT_INV_QI~q\ : std_logic;
SIGNAL \TEMP|ALT_INV_temp1s~q\ : std_logic;
SIGNAL \TEMP|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_c5s~combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_cout~3_combout\ : std_logic;
SIGNAL \TEMP|ALT_INV_temp1m~q\ : std_logic;
SIGNAL \TEMP|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \TEMP|conter:3:CO3:Ci|ALT_INV_Q~q\ : std_logic;
SIGNAL \TEMP|conter:1:CO1:Ci|ALT_INV_Q~q\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_E_Atual.eVdA~q\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_Q2~combout\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_E_Atual.Apagado~q\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_E_Atual.Piscante~q\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_E_Atual.eAmB~q\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_E_Atual.eVdB~q\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_E_Atual.eAmA~q\ : std_logic;
SIGNAL \FSMSEF|ALT_INV_E_Atual.Bgn~q\ : std_logic;
SIGNAL \TEMP|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_PvA~input_o\ : std_logic;
SIGNAL \ALT_INV_Noturno~input_o\ : std_logic;
SIGNAL \ALT_INV_PvB~input_o\ : std_logic;
SIGNAL \TEMP|ALT_INV_d0~combout\ : std_logic;
SIGNAL \TEMP|conter:2:CO2:Ci|ALT_INV_QI~q\ : std_logic;
SIGNAL \TEMP|ALT_INV_Add1~81_sumout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_Noturno <= Noturno;
ww_PvA <= PvA;
ww_PvB <= PvB;
Q0 <= ww_Q0;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\TEMP|ALT_INV_Equal0~6_combout\ <= NOT \TEMP|Equal0~6_combout\;
\TEMP|ALT_INV_Equal0~5_combout\ <= NOT \TEMP|Equal0~5_combout\;
\TEMP|ALT_INV_Equal0~4_combout\ <= NOT \TEMP|Equal0~4_combout\;
\TEMP|ALT_INV_cc1\(0) <= NOT \TEMP|cc1\(0);
\TEMP|ALT_INV_Equal0~3_combout\ <= NOT \TEMP|Equal0~3_combout\;
\TEMP|ALT_INV_Equal0~2_combout\ <= NOT \TEMP|Equal0~2_combout\;
\TEMP|ALT_INV_Equal0~1_combout\ <= NOT \TEMP|Equal0~1_combout\;
\TEMP|ALT_INV_Equal0~0_combout\ <= NOT \TEMP|Equal0~0_combout\;
\FSMSEF|ALT_INV_c1m~combout\ <= NOT \FSMSEF|c1m~combout\;
\TEMP|ALT_INV_Equal1~6_combout\ <= NOT \TEMP|Equal1~6_combout\;
\TEMP|ALT_INV_Equal1~5_combout\ <= NOT \TEMP|Equal1~5_combout\;
\TEMP|ALT_INV_Equal1~4_combout\ <= NOT \TEMP|Equal1~4_combout\;
\TEMP|ALT_INV_cc60\(0) <= NOT \TEMP|cc60\(0);
\TEMP|ALT_INV_Equal1~3_combout\ <= NOT \TEMP|Equal1~3_combout\;
\TEMP|ALT_INV_Equal1~2_combout\ <= NOT \TEMP|Equal1~2_combout\;
\TEMP|ALT_INV_Equal1~1_combout\ <= NOT \TEMP|Equal1~1_combout\;
\TEMP|ALT_INV_Equal1~0_combout\ <= NOT \TEMP|Equal1~0_combout\;
\TEMP|ALT_INV_d1~combout\ <= NOT \TEMP|d1~combout\;
\TEMP|conter:1:CO1:Ci|ALT_INV_QI~q\ <= NOT \TEMP|conter:1:CO1:Ci|QI~q\;
\TEMP|conter:0:INITC:Ci|ALT_INV_Q~q\ <= NOT \TEMP|conter:0:INITC:Ci|Q~q\;
\TEMP|conter:0:INITC:Ci|ALT_INV_QI~q\ <= NOT \TEMP|conter:0:INITC:Ci|QI~q\;
\TEMP|ALT_INV_temp1s~q\ <= NOT \TEMP|temp1s~q\;
\TEMP|ALT_INV_cout~1_combout\ <= NOT \TEMP|cout~1_combout\;
\FSMSEF|ALT_INV_c5s~combout\ <= NOT \FSMSEF|c5s~combout\;
\TEMP|ALT_INV_cout~3_combout\ <= NOT \TEMP|cout~3_combout\;
\TEMP|ALT_INV_temp1m~q\ <= NOT \TEMP|temp1m~q\;
\TEMP|ALT_INV_cout~2_combout\ <= NOT \TEMP|cout~2_combout\;
\TEMP|conter:3:CO3:Ci|ALT_INV_Q~q\ <= NOT \TEMP|conter:3:CO3:Ci|Q~q\;
\TEMP|conter:1:CO1:Ci|ALT_INV_Q~q\ <= NOT \TEMP|conter:1:CO1:Ci|Q~q\;
\FSMSEF|ALT_INV_E_Atual.eVdA~q\ <= NOT \FSMSEF|E_Atual.eVdA~q\;
\FSMSEF|ALT_INV_Selector0~0_combout\ <= NOT \FSMSEF|Selector0~0_combout\;
\FSMSEF|ALT_INV_Q2~combout\ <= NOT \FSMSEF|Q2~combout\;
\FSMSEF|ALT_INV_E_Atual.Apagado~q\ <= NOT \FSMSEF|E_Atual.Apagado~q\;
\FSMSEF|ALT_INV_E_Atual.Piscante~q\ <= NOT \FSMSEF|E_Atual.Piscante~q\;
\FSMSEF|ALT_INV_E_Atual.eAmB~q\ <= NOT \FSMSEF|E_Atual.eAmB~q\;
\FSMSEF|ALT_INV_E_Atual.eVdB~q\ <= NOT \FSMSEF|E_Atual.eVdB~q\;
\FSMSEF|ALT_INV_E_Atual.eAmA~q\ <= NOT \FSMSEF|E_Atual.eAmA~q\;
\FSMSEF|ALT_INV_E_Atual.Bgn~q\ <= NOT \FSMSEF|E_Atual.Bgn~q\;
\TEMP|ALT_INV_Add0~81_sumout\ <= NOT \TEMP|Add0~81_sumout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_PvA~input_o\ <= NOT \PvA~input_o\;
\ALT_INV_Noturno~input_o\ <= NOT \Noturno~input_o\;
\ALT_INV_PvB~input_o\ <= NOT \PvB~input_o\;
\TEMP|ALT_INV_d0~combout\ <= NOT \TEMP|d0~combout\;
\TEMP|conter:2:CO2:Ci|ALT_INV_QI~q\ <= NOT \TEMP|conter:2:CO2:Ci|QI~q\;
\TEMP|ALT_INV_Add1~81_sumout\ <= NOT \TEMP|Add1~81_sumout\;
\TEMP|ALT_INV_cc1\(4) <= NOT \TEMP|cc1\(4);
\TEMP|ALT_INV_cc1\(3) <= NOT \TEMP|cc1\(3);
\TEMP|ALT_INV_cc1\(2) <= NOT \TEMP|cc1\(2);
\TEMP|ALT_INV_cc1\(1) <= NOT \TEMP|cc1\(1);
\TEMP|ALT_INV_cc1\(30) <= NOT \TEMP|cc1\(30);
\TEMP|ALT_INV_cc1\(29) <= NOT \TEMP|cc1\(29);
\TEMP|ALT_INV_cc1\(28) <= NOT \TEMP|cc1\(28);
\TEMP|ALT_INV_cc1\(27) <= NOT \TEMP|cc1\(27);
\TEMP|ALT_INV_cc1\(26) <= NOT \TEMP|cc1\(26);
\TEMP|ALT_INV_cc1\(25) <= NOT \TEMP|cc1\(25);
\TEMP|ALT_INV_cc1\(13) <= NOT \TEMP|cc1\(13);
\TEMP|ALT_INV_cc1\(10) <= NOT \TEMP|cc1\(10);
\TEMP|ALT_INV_cc1\(9) <= NOT \TEMP|cc1\(9);
\TEMP|ALT_INV_cc1\(8) <= NOT \TEMP|cc1\(8);
\TEMP|ALT_INV_cc1\(7) <= NOT \TEMP|cc1\(7);
\TEMP|ALT_INV_cc1\(6) <= NOT \TEMP|cc1\(6);
\TEMP|ALT_INV_cc1\(5) <= NOT \TEMP|cc1\(5);
\TEMP|ALT_INV_cc1\(16) <= NOT \TEMP|cc1\(16);
\TEMP|ALT_INV_cc1\(15) <= NOT \TEMP|cc1\(15);
\TEMP|ALT_INV_cc1\(14) <= NOT \TEMP|cc1\(14);
\TEMP|ALT_INV_cc1\(31) <= NOT \TEMP|cc1\(31);
\TEMP|ALT_INV_cc1\(12) <= NOT \TEMP|cc1\(12);
\TEMP|ALT_INV_cc1\(11) <= NOT \TEMP|cc1\(11);
\TEMP|ALT_INV_cc1\(22) <= NOT \TEMP|cc1\(22);
\TEMP|ALT_INV_cc1\(21) <= NOT \TEMP|cc1\(21);
\TEMP|ALT_INV_cc1\(20) <= NOT \TEMP|cc1\(20);
\TEMP|ALT_INV_cc1\(19) <= NOT \TEMP|cc1\(19);
\TEMP|ALT_INV_cc1\(18) <= NOT \TEMP|cc1\(18);
\TEMP|ALT_INV_cc1\(17) <= NOT \TEMP|cc1\(17);
\TEMP|ALT_INV_cc1\(24) <= NOT \TEMP|cc1\(24);
\TEMP|ALT_INV_cc1\(23) <= NOT \TEMP|cc1\(23);
\TEMP|ALT_INV_cc60\(26) <= NOT \TEMP|cc60\(26);
\TEMP|ALT_INV_cc60\(27) <= NOT \TEMP|cc60\(27);
\TEMP|ALT_INV_cc60\(20) <= NOT \TEMP|cc60\(20);
\TEMP|ALT_INV_cc60\(29) <= NOT \TEMP|cc60\(29);
\TEMP|ALT_INV_cc60\(30) <= NOT \TEMP|cc60\(30);
\TEMP|ALT_INV_cc60\(31) <= NOT \TEMP|cc60\(31);
\TEMP|ALT_INV_cc60\(2) <= NOT \TEMP|cc60\(2);
\TEMP|ALT_INV_cc60\(3) <= NOT \TEMP|cc60\(3);
\TEMP|ALT_INV_cc60\(4) <= NOT \TEMP|cc60\(4);
\TEMP|ALT_INV_cc60\(5) <= NOT \TEMP|cc60\(5);
\TEMP|ALT_INV_cc60\(28) <= NOT \TEMP|cc60\(28);
\TEMP|ALT_INV_cc60\(1) <= NOT \TEMP|cc60\(1);
\TEMP|ALT_INV_cc60\(21) <= NOT \TEMP|cc60\(21);
\TEMP|ALT_INV_cc60\(22) <= NOT \TEMP|cc60\(22);
\TEMP|ALT_INV_cc60\(23) <= NOT \TEMP|cc60\(23);
\TEMP|ALT_INV_cc60\(24) <= NOT \TEMP|cc60\(24);
\TEMP|ALT_INV_cc60\(25) <= NOT \TEMP|cc60\(25);
\TEMP|ALT_INV_cc60\(14) <= NOT \TEMP|cc60\(14);
\TEMP|ALT_INV_cc60\(15) <= NOT \TEMP|cc60\(15);
\TEMP|ALT_INV_cc60\(16) <= NOT \TEMP|cc60\(16);
\TEMP|ALT_INV_cc60\(17) <= NOT \TEMP|cc60\(17);
\TEMP|ALT_INV_cc60\(18) <= NOT \TEMP|cc60\(18);
\TEMP|ALT_INV_cc60\(19) <= NOT \TEMP|cc60\(19);
\TEMP|ALT_INV_cc60\(8) <= NOT \TEMP|cc60\(8);
\TEMP|ALT_INV_cc60\(9) <= NOT \TEMP|cc60\(9);
\TEMP|ALT_INV_cc60\(10) <= NOT \TEMP|cc60\(10);
\TEMP|ALT_INV_cc60\(11) <= NOT \TEMP|cc60\(11);
\TEMP|ALT_INV_cc60\(12) <= NOT \TEMP|cc60\(12);
\TEMP|ALT_INV_cc60\(13) <= NOT \TEMP|cc60\(13);
\TEMP|ALT_INV_cc60\(6) <= NOT \TEMP|cc60\(6);
\TEMP|ALT_INV_cc60\(7) <= NOT \TEMP|cc60\(7);

\Q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FSMSEF|Q0~combout\,
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
	i => \FSMSEF|Q1~combout\,
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
	i => \FSMSEF|Q2~combout\,
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

\TEMP|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~81_sumout\ = SUM(( !\TEMP|cc1\(0) ) + ( VCC ) + ( !VCC ))
-- \TEMP|Add0~82\ = CARRY(( !\TEMP|cc1\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(0),
	cin => GND,
	sumout => \TEMP|Add0~81_sumout\,
	cout => \TEMP|Add0~82\);

\TEMP|cc1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|cc1[0]~0_combout\ = !\TEMP|Add0~81_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_Add0~81_sumout\,
	combout => \TEMP|cc1[0]~0_combout\);

\TEMP|cc1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|cc1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(0));

\TEMP|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~113_sumout\ = SUM(( \TEMP|cc1\(1) ) + ( GND ) + ( \TEMP|Add0~82\ ))
-- \TEMP|Add0~114\ = CARRY(( \TEMP|cc1\(1) ) + ( GND ) + ( \TEMP|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(1),
	cin => \TEMP|Add0~82\,
	sumout => \TEMP|Add0~113_sumout\,
	cout => \TEMP|Add0~114\);

\TEMP|cc1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~113_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(1));

\TEMP|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~117_sumout\ = SUM(( \TEMP|cc1\(2) ) + ( GND ) + ( \TEMP|Add0~114\ ))
-- \TEMP|Add0~118\ = CARRY(( \TEMP|cc1\(2) ) + ( GND ) + ( \TEMP|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(2),
	cin => \TEMP|Add0~114\,
	sumout => \TEMP|Add0~117_sumout\,
	cout => \TEMP|Add0~118\);

\TEMP|cc1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~117_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(2));

\TEMP|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~121_sumout\ = SUM(( \TEMP|cc1\(3) ) + ( GND ) + ( \TEMP|Add0~118\ ))
-- \TEMP|Add0~122\ = CARRY(( \TEMP|cc1\(3) ) + ( GND ) + ( \TEMP|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(3),
	cin => \TEMP|Add0~118\,
	sumout => \TEMP|Add0~121_sumout\,
	cout => \TEMP|Add0~122\);

\TEMP|cc1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~121_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(3));

\TEMP|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~125_sumout\ = SUM(( \TEMP|cc1\(4) ) + ( GND ) + ( \TEMP|Add0~122\ ))
-- \TEMP|Add0~126\ = CARRY(( \TEMP|cc1\(4) ) + ( GND ) + ( \TEMP|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(4),
	cin => \TEMP|Add0~122\,
	sumout => \TEMP|Add0~125_sumout\,
	cout => \TEMP|Add0~126\);

\TEMP|cc1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~125_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(4));

\TEMP|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~57_sumout\ = SUM(( \TEMP|cc1\(5) ) + ( GND ) + ( \TEMP|Add0~126\ ))
-- \TEMP|Add0~58\ = CARRY(( \TEMP|cc1\(5) ) + ( GND ) + ( \TEMP|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(5),
	cin => \TEMP|Add0~126\,
	sumout => \TEMP|Add0~57_sumout\,
	cout => \TEMP|Add0~58\);

\TEMP|cc1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~57_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(5));

\TEMP|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~61_sumout\ = SUM(( \TEMP|cc1\(6) ) + ( GND ) + ( \TEMP|Add0~58\ ))
-- \TEMP|Add0~62\ = CARRY(( \TEMP|cc1\(6) ) + ( GND ) + ( \TEMP|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(6),
	cin => \TEMP|Add0~58\,
	sumout => \TEMP|Add0~61_sumout\,
	cout => \TEMP|Add0~62\);

\TEMP|cc1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~61_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(6));

\TEMP|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~65_sumout\ = SUM(( \TEMP|cc1\(7) ) + ( GND ) + ( \TEMP|Add0~62\ ))
-- \TEMP|Add0~66\ = CARRY(( \TEMP|cc1\(7) ) + ( GND ) + ( \TEMP|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(7),
	cin => \TEMP|Add0~62\,
	sumout => \TEMP|Add0~65_sumout\,
	cout => \TEMP|Add0~66\);

\TEMP|cc1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~65_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(7));

\TEMP|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~69_sumout\ = SUM(( \TEMP|cc1\(8) ) + ( GND ) + ( \TEMP|Add0~66\ ))
-- \TEMP|Add0~70\ = CARRY(( \TEMP|cc1\(8) ) + ( GND ) + ( \TEMP|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(8),
	cin => \TEMP|Add0~66\,
	sumout => \TEMP|Add0~69_sumout\,
	cout => \TEMP|Add0~70\);

\TEMP|cc1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~69_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(8));

\TEMP|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~73_sumout\ = SUM(( \TEMP|cc1\(9) ) + ( GND ) + ( \TEMP|Add0~70\ ))
-- \TEMP|Add0~74\ = CARRY(( \TEMP|cc1\(9) ) + ( GND ) + ( \TEMP|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(9),
	cin => \TEMP|Add0~70\,
	sumout => \TEMP|Add0~73_sumout\,
	cout => \TEMP|Add0~74\);

\TEMP|cc1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~73_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(9));

\TEMP|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~77_sumout\ = SUM(( \TEMP|cc1\(10) ) + ( GND ) + ( \TEMP|Add0~74\ ))
-- \TEMP|Add0~78\ = CARRY(( \TEMP|cc1\(10) ) + ( GND ) + ( \TEMP|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(10),
	cin => \TEMP|Add0~74\,
	sumout => \TEMP|Add0~77_sumout\,
	cout => \TEMP|Add0~78\);

\TEMP|cc1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~77_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(10));

\TEMP|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~33_sumout\ = SUM(( \TEMP|cc1\(11) ) + ( GND ) + ( \TEMP|Add0~78\ ))
-- \TEMP|Add0~34\ = CARRY(( \TEMP|cc1\(11) ) + ( GND ) + ( \TEMP|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(11),
	cin => \TEMP|Add0~78\,
	sumout => \TEMP|Add0~33_sumout\,
	cout => \TEMP|Add0~34\);

\TEMP|cc1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~33_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(11));

\TEMP|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~37_sumout\ = SUM(( \TEMP|cc1\(12) ) + ( GND ) + ( \TEMP|Add0~34\ ))
-- \TEMP|Add0~38\ = CARRY(( \TEMP|cc1\(12) ) + ( GND ) + ( \TEMP|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(12),
	cin => \TEMP|Add0~34\,
	sumout => \TEMP|Add0~37_sumout\,
	cout => \TEMP|Add0~38\);

\TEMP|cc1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~37_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(12));

\TEMP|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~85_sumout\ = SUM(( \TEMP|cc1\(13) ) + ( GND ) + ( \TEMP|Add0~38\ ))
-- \TEMP|Add0~86\ = CARRY(( \TEMP|cc1\(13) ) + ( GND ) + ( \TEMP|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(13),
	cin => \TEMP|Add0~38\,
	sumout => \TEMP|Add0~85_sumout\,
	cout => \TEMP|Add0~86\);

\TEMP|cc1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~85_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(13));

\TEMP|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~45_sumout\ = SUM(( \TEMP|cc1\(14) ) + ( GND ) + ( \TEMP|Add0~86\ ))
-- \TEMP|Add0~46\ = CARRY(( \TEMP|cc1\(14) ) + ( GND ) + ( \TEMP|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(14),
	cin => \TEMP|Add0~86\,
	sumout => \TEMP|Add0~45_sumout\,
	cout => \TEMP|Add0~46\);

\TEMP|cc1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~45_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(14));

\TEMP|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~49_sumout\ = SUM(( \TEMP|cc1\(15) ) + ( GND ) + ( \TEMP|Add0~46\ ))
-- \TEMP|Add0~50\ = CARRY(( \TEMP|cc1\(15) ) + ( GND ) + ( \TEMP|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(15),
	cin => \TEMP|Add0~46\,
	sumout => \TEMP|Add0~49_sumout\,
	cout => \TEMP|Add0~50\);

\TEMP|cc1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~49_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(15));

\TEMP|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~53_sumout\ = SUM(( \TEMP|cc1\(16) ) + ( GND ) + ( \TEMP|Add0~50\ ))
-- \TEMP|Add0~54\ = CARRY(( \TEMP|cc1\(16) ) + ( GND ) + ( \TEMP|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(16),
	cin => \TEMP|Add0~50\,
	sumout => \TEMP|Add0~53_sumout\,
	cout => \TEMP|Add0~54\);

\TEMP|cc1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~53_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(16));

\TEMP|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~9_sumout\ = SUM(( \TEMP|cc1\(17) ) + ( GND ) + ( \TEMP|Add0~54\ ))
-- \TEMP|Add0~10\ = CARRY(( \TEMP|cc1\(17) ) + ( GND ) + ( \TEMP|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(17),
	cin => \TEMP|Add0~54\,
	sumout => \TEMP|Add0~9_sumout\,
	cout => \TEMP|Add0~10\);

\TEMP|cc1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~9_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(17));

\TEMP|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~13_sumout\ = SUM(( \TEMP|cc1\(18) ) + ( GND ) + ( \TEMP|Add0~10\ ))
-- \TEMP|Add0~14\ = CARRY(( \TEMP|cc1\(18) ) + ( GND ) + ( \TEMP|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(18),
	cin => \TEMP|Add0~10\,
	sumout => \TEMP|Add0~13_sumout\,
	cout => \TEMP|Add0~14\);

\TEMP|cc1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~13_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(18));

\TEMP|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~17_sumout\ = SUM(( \TEMP|cc1\(19) ) + ( GND ) + ( \TEMP|Add0~14\ ))
-- \TEMP|Add0~18\ = CARRY(( \TEMP|cc1\(19) ) + ( GND ) + ( \TEMP|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(19),
	cin => \TEMP|Add0~14\,
	sumout => \TEMP|Add0~17_sumout\,
	cout => \TEMP|Add0~18\);

\TEMP|cc1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~17_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(19));

\TEMP|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~21_sumout\ = SUM(( \TEMP|cc1\(20) ) + ( GND ) + ( \TEMP|Add0~18\ ))
-- \TEMP|Add0~22\ = CARRY(( \TEMP|cc1\(20) ) + ( GND ) + ( \TEMP|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(20),
	cin => \TEMP|Add0~18\,
	sumout => \TEMP|Add0~21_sumout\,
	cout => \TEMP|Add0~22\);

\TEMP|cc1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~21_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(20));

\TEMP|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~25_sumout\ = SUM(( \TEMP|cc1\(21) ) + ( GND ) + ( \TEMP|Add0~22\ ))
-- \TEMP|Add0~26\ = CARRY(( \TEMP|cc1\(21) ) + ( GND ) + ( \TEMP|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(21),
	cin => \TEMP|Add0~22\,
	sumout => \TEMP|Add0~25_sumout\,
	cout => \TEMP|Add0~26\);

\TEMP|cc1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~25_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(21));

\TEMP|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~29_sumout\ = SUM(( \TEMP|cc1\(22) ) + ( GND ) + ( \TEMP|Add0~26\ ))
-- \TEMP|Add0~30\ = CARRY(( \TEMP|cc1\(22) ) + ( GND ) + ( \TEMP|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(22),
	cin => \TEMP|Add0~26\,
	sumout => \TEMP|Add0~29_sumout\,
	cout => \TEMP|Add0~30\);

\TEMP|cc1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~29_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(22));

\TEMP|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~1_sumout\ = SUM(( \TEMP|cc1\(23) ) + ( GND ) + ( \TEMP|Add0~30\ ))
-- \TEMP|Add0~2\ = CARRY(( \TEMP|cc1\(23) ) + ( GND ) + ( \TEMP|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(23),
	cin => \TEMP|Add0~30\,
	sumout => \TEMP|Add0~1_sumout\,
	cout => \TEMP|Add0~2\);

\TEMP|cc1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~1_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(23));

\TEMP|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~5_sumout\ = SUM(( \TEMP|cc1\(24) ) + ( GND ) + ( \TEMP|Add0~2\ ))
-- \TEMP|Add0~6\ = CARRY(( \TEMP|cc1\(24) ) + ( GND ) + ( \TEMP|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(24),
	cin => \TEMP|Add0~2\,
	sumout => \TEMP|Add0~5_sumout\,
	cout => \TEMP|Add0~6\);

\TEMP|cc1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~5_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(24));

\TEMP|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal0~0_combout\ = (!\TEMP|cc1\(23) & !\TEMP|cc1\(24))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc1\(23),
	datab => \TEMP|ALT_INV_cc1\(24),
	combout => \TEMP|Equal0~0_combout\);

\TEMP|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal0~1_combout\ = ( !\TEMP|cc1\(21) & ( !\TEMP|cc1\(22) & ( (!\TEMP|cc1\(17) & (!\TEMP|cc1\(18) & (!\TEMP|cc1\(19) & !\TEMP|cc1\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc1\(17),
	datab => \TEMP|ALT_INV_cc1\(18),
	datac => \TEMP|ALT_INV_cc1\(19),
	datad => \TEMP|ALT_INV_cc1\(20),
	datae => \TEMP|ALT_INV_cc1\(21),
	dataf => \TEMP|ALT_INV_cc1\(22),
	combout => \TEMP|Equal0~1_combout\);

\TEMP|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~89_sumout\ = SUM(( \TEMP|cc1\(25) ) + ( GND ) + ( \TEMP|Add0~6\ ))
-- \TEMP|Add0~90\ = CARRY(( \TEMP|cc1\(25) ) + ( GND ) + ( \TEMP|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(25),
	cin => \TEMP|Add0~6\,
	sumout => \TEMP|Add0~89_sumout\,
	cout => \TEMP|Add0~90\);

\TEMP|cc1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~89_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(25));

\TEMP|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~93_sumout\ = SUM(( \TEMP|cc1\(26) ) + ( GND ) + ( \TEMP|Add0~90\ ))
-- \TEMP|Add0~94\ = CARRY(( \TEMP|cc1\(26) ) + ( GND ) + ( \TEMP|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(26),
	cin => \TEMP|Add0~90\,
	sumout => \TEMP|Add0~93_sumout\,
	cout => \TEMP|Add0~94\);

\TEMP|cc1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~93_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(26));

\TEMP|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~97_sumout\ = SUM(( \TEMP|cc1\(27) ) + ( GND ) + ( \TEMP|Add0~94\ ))
-- \TEMP|Add0~98\ = CARRY(( \TEMP|cc1\(27) ) + ( GND ) + ( \TEMP|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(27),
	cin => \TEMP|Add0~94\,
	sumout => \TEMP|Add0~97_sumout\,
	cout => \TEMP|Add0~98\);

\TEMP|cc1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~97_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(27));

\TEMP|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~101_sumout\ = SUM(( \TEMP|cc1\(28) ) + ( GND ) + ( \TEMP|Add0~98\ ))
-- \TEMP|Add0~102\ = CARRY(( \TEMP|cc1\(28) ) + ( GND ) + ( \TEMP|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(28),
	cin => \TEMP|Add0~98\,
	sumout => \TEMP|Add0~101_sumout\,
	cout => \TEMP|Add0~102\);

\TEMP|cc1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~101_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(28));

\TEMP|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~105_sumout\ = SUM(( \TEMP|cc1\(29) ) + ( GND ) + ( \TEMP|Add0~102\ ))
-- \TEMP|Add0~106\ = CARRY(( \TEMP|cc1\(29) ) + ( GND ) + ( \TEMP|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(29),
	cin => \TEMP|Add0~102\,
	sumout => \TEMP|Add0~105_sumout\,
	cout => \TEMP|Add0~106\);

\TEMP|cc1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~105_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(29));

\TEMP|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~109_sumout\ = SUM(( \TEMP|cc1\(30) ) + ( GND ) + ( \TEMP|Add0~106\ ))
-- \TEMP|Add0~110\ = CARRY(( \TEMP|cc1\(30) ) + ( GND ) + ( \TEMP|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(30),
	cin => \TEMP|Add0~106\,
	sumout => \TEMP|Add0~109_sumout\,
	cout => \TEMP|Add0~110\);

\TEMP|cc1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~109_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(30));

\TEMP|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add0~41_sumout\ = SUM(( \TEMP|cc1\(31) ) + ( GND ) + ( \TEMP|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc1\(31),
	cin => \TEMP|Add0~110\,
	sumout => \TEMP|Add0~41_sumout\);

\TEMP|cc1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|Add0~41_sumout\,
	sclr => \TEMP|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc1\(31));

\TEMP|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal0~2_combout\ = ( !\TEMP|cc1\(15) & ( !\TEMP|cc1\(16) & ( (!\TEMP|cc1\(11) & (!\TEMP|cc1\(12) & (!\TEMP|cc1\(31) & !\TEMP|cc1\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc1\(11),
	datab => \TEMP|ALT_INV_cc1\(12),
	datac => \TEMP|ALT_INV_cc1\(31),
	datad => \TEMP|ALT_INV_cc1\(14),
	datae => \TEMP|ALT_INV_cc1\(15),
	dataf => \TEMP|ALT_INV_cc1\(16),
	combout => \TEMP|Equal0~2_combout\);

\TEMP|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal0~3_combout\ = ( !\TEMP|cc1\(9) & ( !\TEMP|cc1\(10) & ( (!\TEMP|cc1\(5) & (!\TEMP|cc1\(6) & (!\TEMP|cc1\(7) & !\TEMP|cc1\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc1\(5),
	datab => \TEMP|ALT_INV_cc1\(6),
	datac => \TEMP|ALT_INV_cc1\(7),
	datad => \TEMP|ALT_INV_cc1\(8),
	datae => \TEMP|ALT_INV_cc1\(9),
	dataf => \TEMP|ALT_INV_cc1\(10),
	combout => \TEMP|Equal0~3_combout\);

\TEMP|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal0~4_combout\ = ( !\TEMP|cc1\(27) & ( !\TEMP|cc1\(28) & ( (\TEMP|cc1\(0) & (!\TEMP|cc1\(13) & (!\TEMP|cc1\(25) & !\TEMP|cc1\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc1\(0),
	datab => \TEMP|ALT_INV_cc1\(13),
	datac => \TEMP|ALT_INV_cc1\(25),
	datad => \TEMP|ALT_INV_cc1\(26),
	datae => \TEMP|ALT_INV_cc1\(27),
	dataf => \TEMP|ALT_INV_cc1\(28),
	combout => \TEMP|Equal0~4_combout\);

\TEMP|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal0~5_combout\ = ( !\TEMP|cc1\(3) & ( !\TEMP|cc1\(4) & ( (!\TEMP|cc1\(29) & (!\TEMP|cc1\(30) & (\TEMP|cc1\(1) & !\TEMP|cc1\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc1\(29),
	datab => \TEMP|ALT_INV_cc1\(30),
	datac => \TEMP|ALT_INV_cc1\(1),
	datad => \TEMP|ALT_INV_cc1\(2),
	datae => \TEMP|ALT_INV_cc1\(3),
	dataf => \TEMP|ALT_INV_cc1\(4),
	combout => \TEMP|Equal0~5_combout\);

\TEMP|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal0~6_combout\ = ( \TEMP|Equal0~4_combout\ & ( \TEMP|Equal0~5_combout\ & ( (\TEMP|Equal0~0_combout\ & (\TEMP|Equal0~1_combout\ & (\TEMP|Equal0~2_combout\ & \TEMP|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_Equal0~0_combout\,
	datab => \TEMP|ALT_INV_Equal0~1_combout\,
	datac => \TEMP|ALT_INV_Equal0~2_combout\,
	datad => \TEMP|ALT_INV_Equal0~3_combout\,
	datae => \TEMP|ALT_INV_Equal0~4_combout\,
	dataf => \TEMP|ALT_INV_Equal0~5_combout\,
	combout => \TEMP|Equal0~6_combout\);

\TEMP|temp1s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|temp1s~0_combout\ = !\TEMP|temp1s~q\ $ (!\TEMP|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_temp1s~q\,
	datab => \TEMP|ALT_INV_Equal0~6_combout\,
	combout => \TEMP|temp1s~0_combout\);

\TEMP|temp1s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \TEMP|temp1s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|temp1s~q\);

\PvB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PvB,
	o => \PvB~input_o\);

\Noturno~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Noturno,
	o => \Noturno~input_o\);

\PvA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PvA,
	o => \PvA~input_o\);

\FSMSEF|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|Selector2~0_combout\ = ( \PvA~input_o\ & ( (\FSMSEF|E_Atual.eAmA~q\ & \PvB~input_o\) ) ) # ( !\PvA~input_o\ & ( (\PvB~input_o\ & (((!\FSMSEF|E_Atual.Bgn~q\ & !\Noturno~input_o\)) # (\FSMSEF|E_Atual.eAmA~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000011000000110000001100001011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.Bgn~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.eAmA~q\,
	datac => \ALT_INV_PvB~input_o\,
	datad => \ALT_INV_Noturno~input_o\,
	datae => \ALT_INV_PvA~input_o\,
	combout => \FSMSEF|Selector2~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\FSMSEF|E_Atual.eVdB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|cout~0_combout\,
	d => \FSMSEF|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMSEF|E_Atual.eVdB~q\);

\FSMSEF|E_Atual.eAmB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|cout~0_combout\,
	d => \FSMSEF|E_Atual.eVdB~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMSEF|E_Atual.eAmB~q\);

\FSMSEF|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|Selector1~0_combout\ = (\PvA~input_o\ & (((!\FSMSEF|E_Atual.Bgn~q\ & !\Noturno~input_o\)) # (\FSMSEF|E_Atual.eAmB~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110011000000001011001100000000101100110000000010110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.Bgn~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.eAmB~q\,
	datac => \ALT_INV_Noturno~input_o\,
	datad => \ALT_INV_PvA~input_o\,
	combout => \FSMSEF|Selector1~0_combout\);

\FSMSEF|E_Atual.eVdA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|cout~0_combout\,
	d => \FSMSEF|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMSEF|E_Atual.eVdA~q\);

\FSMSEF|E_Atual.eAmA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|cout~0_combout\,
	d => \FSMSEF|E_Atual.eVdA~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMSEF|E_Atual.eAmA~q\);

\FSMSEF|c5s\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|c5s~combout\ = (\FSMSEF|E_Atual.eAmB~q\) # (\FSMSEF|E_Atual.eAmA~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.eAmA~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.eAmB~q\,
	combout => \FSMSEF|c5s~combout\);

\TEMP|conter:0:INITC:Ci|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|d0~combout\,
	clrn => \FSMSEF|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|conter:0:INITC:Ci|Q~q\);

\TEMP|d2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|d2~combout\ = (!\TEMP|conter:1:CO1:Ci|Q~q\) # (!\TEMP|conter:0:INITC:Ci|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|conter:1:CO1:Ci|ALT_INV_Q~q\,
	datab => \TEMP|conter:0:INITC:Ci|ALT_INV_Q~q\,
	combout => \TEMP|d2~combout\);

\TEMP|conter:2:CO2:Ci|QI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|d2~combout\,
	ena => \FSMSEF|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|conter:2:CO2:Ci|QI~q\);

\TEMP|d0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|d0~combout\ = (\TEMP|conter:0:INITC:Ci|QI~q\ & \TEMP|conter:2:CO2:Ci|QI~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|conter:0:INITC:Ci|ALT_INV_QI~q\,
	datab => \TEMP|conter:2:CO2:Ci|ALT_INV_QI~q\,
	combout => \TEMP|d0~combout\);

\TEMP|conter:0:INITC:Ci|QI~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|conter:0:INITC:Ci|QI~0_combout\ = !\TEMP|d0~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_d0~combout\,
	combout => \TEMP|conter:0:INITC:Ci|QI~0_combout\);

\TEMP|conter:0:INITC:Ci|QI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|conter:0:INITC:Ci|QI~0_combout\,
	ena => \FSMSEF|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|conter:0:INITC:Ci|QI~q\);

\TEMP|conter:1:CO1:Ci|QI~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|conter:1:CO1:Ci|QI~0_combout\ = !\TEMP|d1~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_d1~combout\,
	combout => \TEMP|conter:1:CO1:Ci|QI~0_combout\);

\TEMP|conter:1:CO1:Ci|QI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|conter:1:CO1:Ci|QI~0_combout\,
	ena => \FSMSEF|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|conter:1:CO1:Ci|QI~q\);

\TEMP|d1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|d1~combout\ = (!\TEMP|conter:1:CO1:Ci|Q~q\ & (((\TEMP|conter:0:INITC:Ci|Q~q\ & \TEMP|conter:1:CO1:Ci|QI~q\)))) # (\TEMP|conter:1:CO1:Ci|Q~q\ & (((\TEMP|conter:0:INITC:Ci|Q~q\ & \TEMP|conter:1:CO1:Ci|QI~q\)) # (\TEMP|conter:0:INITC:Ci|QI~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|conter:1:CO1:Ci|ALT_INV_Q~q\,
	datab => \TEMP|conter:0:INITC:Ci|ALT_INV_QI~q\,
	datac => \TEMP|conter:0:INITC:Ci|ALT_INV_Q~q\,
	datad => \TEMP|conter:1:CO1:Ci|ALT_INV_QI~q\,
	combout => \TEMP|d1~combout\);

\TEMP|conter:1:CO1:Ci|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|d1~combout\,
	clrn => \FSMSEF|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|conter:1:CO1:Ci|Q~q\);

\TEMP|conter:3:CO3:Ci|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|conter:1:CO1:Ci|Q~q\,
	clrn => \FSMSEF|c5s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|conter:3:CO3:Ci|Q~q\);

\TEMP|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|cout~2_combout\ = (!\TEMP|conter:1:CO1:Ci|Q~q\ & !\TEMP|conter:3:CO3:Ci|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|conter:1:CO1:Ci|ALT_INV_Q~q\,
	datab => \TEMP|conter:3:CO3:Ci|ALT_INV_Q~q\,
	combout => \TEMP|cout~2_combout\);

\TEMP|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~81_sumout\ = SUM(( !\TEMP|cc60\(0) ) + ( VCC ) + ( !VCC ))
-- \TEMP|Add1~82\ = CARRY(( !\TEMP|cc60\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(0),
	cin => GND,
	sumout => \TEMP|Add1~81_sumout\,
	cout => \TEMP|Add1~82\);

\TEMP|cc60[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|cc60[0]~0_combout\ = !\TEMP|Add1~81_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_Add1~81_sumout\,
	combout => \TEMP|cc60[0]~0_combout\);

\FSMSEF|c1m\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|c1m~combout\ = (!\FSMSEF|E_Atual.eVdB~q\ & !\FSMSEF|E_Atual.eVdA~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.eVdB~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.eVdA~q\,
	combout => \FSMSEF|c1m~combout\);

\TEMP|cc60[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|cc60[0]~0_combout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(0));

\TEMP|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~77_sumout\ = SUM(( \TEMP|cc60\(1) ) + ( GND ) + ( \TEMP|Add1~82\ ))
-- \TEMP|Add1~78\ = CARRY(( \TEMP|cc60\(1) ) + ( GND ) + ( \TEMP|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(1),
	cin => \TEMP|Add1~82\,
	sumout => \TEMP|Add1~77_sumout\,
	cout => \TEMP|Add1~78\);

\TEMP|cc60[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~77_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(1));

\TEMP|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~101_sumout\ = SUM(( \TEMP|cc60\(2) ) + ( GND ) + ( \TEMP|Add1~78\ ))
-- \TEMP|Add1~102\ = CARRY(( \TEMP|cc60\(2) ) + ( GND ) + ( \TEMP|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(2),
	cin => \TEMP|Add1~78\,
	sumout => \TEMP|Add1~101_sumout\,
	cout => \TEMP|Add1~102\);

\TEMP|cc60[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~101_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(2));

\TEMP|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~97_sumout\ = SUM(( \TEMP|cc60\(3) ) + ( GND ) + ( \TEMP|Add1~102\ ))
-- \TEMP|Add1~98\ = CARRY(( \TEMP|cc60\(3) ) + ( GND ) + ( \TEMP|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(3),
	cin => \TEMP|Add1~102\,
	sumout => \TEMP|Add1~97_sumout\,
	cout => \TEMP|Add1~98\);

\TEMP|cc60[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~97_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(3));

\TEMP|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~93_sumout\ = SUM(( \TEMP|cc60\(4) ) + ( GND ) + ( \TEMP|Add1~98\ ))
-- \TEMP|Add1~94\ = CARRY(( \TEMP|cc60\(4) ) + ( GND ) + ( \TEMP|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(4),
	cin => \TEMP|Add1~98\,
	sumout => \TEMP|Add1~93_sumout\,
	cout => \TEMP|Add1~94\);

\TEMP|cc60[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~93_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(4));

\TEMP|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~89_sumout\ = SUM(( \TEMP|cc60\(5) ) + ( GND ) + ( \TEMP|Add1~94\ ))
-- \TEMP|Add1~90\ = CARRY(( \TEMP|cc60\(5) ) + ( GND ) + ( \TEMP|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(5),
	cin => \TEMP|Add1~94\,
	sumout => \TEMP|Add1~89_sumout\,
	cout => \TEMP|Add1~90\);

\TEMP|cc60[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~89_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(5));

\TEMP|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~5_sumout\ = SUM(( \TEMP|cc60\(6) ) + ( GND ) + ( \TEMP|Add1~90\ ))
-- \TEMP|Add1~6\ = CARRY(( \TEMP|cc60\(6) ) + ( GND ) + ( \TEMP|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(6),
	cin => \TEMP|Add1~90\,
	sumout => \TEMP|Add1~5_sumout\,
	cout => \TEMP|Add1~6\);

\TEMP|cc60[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~5_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(6));

\TEMP|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~1_sumout\ = SUM(( \TEMP|cc60\(7) ) + ( GND ) + ( \TEMP|Add1~6\ ))
-- \TEMP|Add1~2\ = CARRY(( \TEMP|cc60\(7) ) + ( GND ) + ( \TEMP|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(7),
	cin => \TEMP|Add1~6\,
	sumout => \TEMP|Add1~1_sumout\,
	cout => \TEMP|Add1~2\);

\TEMP|cc60[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~1_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(7));

\TEMP|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal1~0_combout\ = (!\TEMP|cc60\(7) & !\TEMP|cc60\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc60\(7),
	datab => \TEMP|ALT_INV_cc60\(6),
	combout => \TEMP|Equal1~0_combout\);

\TEMP|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~29_sumout\ = SUM(( \TEMP|cc60\(8) ) + ( GND ) + ( \TEMP|Add1~2\ ))
-- \TEMP|Add1~30\ = CARRY(( \TEMP|cc60\(8) ) + ( GND ) + ( \TEMP|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(8),
	cin => \TEMP|Add1~2\,
	sumout => \TEMP|Add1~29_sumout\,
	cout => \TEMP|Add1~30\);

\TEMP|cc60[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~29_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(8));

\TEMP|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~25_sumout\ = SUM(( \TEMP|cc60\(9) ) + ( GND ) + ( \TEMP|Add1~30\ ))
-- \TEMP|Add1~26\ = CARRY(( \TEMP|cc60\(9) ) + ( GND ) + ( \TEMP|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(9),
	cin => \TEMP|Add1~30\,
	sumout => \TEMP|Add1~25_sumout\,
	cout => \TEMP|Add1~26\);

\TEMP|cc60[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~25_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(9));

\TEMP|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~21_sumout\ = SUM(( \TEMP|cc60\(10) ) + ( GND ) + ( \TEMP|Add1~26\ ))
-- \TEMP|Add1~22\ = CARRY(( \TEMP|cc60\(10) ) + ( GND ) + ( \TEMP|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(10),
	cin => \TEMP|Add1~26\,
	sumout => \TEMP|Add1~21_sumout\,
	cout => \TEMP|Add1~22\);

\TEMP|cc60[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~21_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(10));

\TEMP|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~17_sumout\ = SUM(( \TEMP|cc60\(11) ) + ( GND ) + ( \TEMP|Add1~22\ ))
-- \TEMP|Add1~18\ = CARRY(( \TEMP|cc60\(11) ) + ( GND ) + ( \TEMP|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(11),
	cin => \TEMP|Add1~22\,
	sumout => \TEMP|Add1~17_sumout\,
	cout => \TEMP|Add1~18\);

\TEMP|cc60[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~17_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(11));

\TEMP|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~13_sumout\ = SUM(( \TEMP|cc60\(12) ) + ( GND ) + ( \TEMP|Add1~18\ ))
-- \TEMP|Add1~14\ = CARRY(( \TEMP|cc60\(12) ) + ( GND ) + ( \TEMP|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(12),
	cin => \TEMP|Add1~18\,
	sumout => \TEMP|Add1~13_sumout\,
	cout => \TEMP|Add1~14\);

\TEMP|cc60[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~13_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(12));

\TEMP|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~9_sumout\ = SUM(( \TEMP|cc60\(13) ) + ( GND ) + ( \TEMP|Add1~14\ ))
-- \TEMP|Add1~10\ = CARRY(( \TEMP|cc60\(13) ) + ( GND ) + ( \TEMP|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(13),
	cin => \TEMP|Add1~14\,
	sumout => \TEMP|Add1~9_sumout\,
	cout => \TEMP|Add1~10\);

\TEMP|cc60[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~9_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(13));

\TEMP|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal1~1_combout\ = ( !\TEMP|cc60\(9) & ( !\TEMP|cc60\(8) & ( (!\TEMP|cc60\(13) & (!\TEMP|cc60\(12) & (!\TEMP|cc60\(11) & !\TEMP|cc60\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc60\(13),
	datab => \TEMP|ALT_INV_cc60\(12),
	datac => \TEMP|ALT_INV_cc60\(11),
	datad => \TEMP|ALT_INV_cc60\(10),
	datae => \TEMP|ALT_INV_cc60\(9),
	dataf => \TEMP|ALT_INV_cc60\(8),
	combout => \TEMP|Equal1~1_combout\);

\TEMP|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~53_sumout\ = SUM(( \TEMP|cc60\(14) ) + ( GND ) + ( \TEMP|Add1~10\ ))
-- \TEMP|Add1~54\ = CARRY(( \TEMP|cc60\(14) ) + ( GND ) + ( \TEMP|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(14),
	cin => \TEMP|Add1~10\,
	sumout => \TEMP|Add1~53_sumout\,
	cout => \TEMP|Add1~54\);

\TEMP|cc60[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~53_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(14));

\TEMP|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~49_sumout\ = SUM(( \TEMP|cc60\(15) ) + ( GND ) + ( \TEMP|Add1~54\ ))
-- \TEMP|Add1~50\ = CARRY(( \TEMP|cc60\(15) ) + ( GND ) + ( \TEMP|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(15),
	cin => \TEMP|Add1~54\,
	sumout => \TEMP|Add1~49_sumout\,
	cout => \TEMP|Add1~50\);

\TEMP|cc60[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~49_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(15));

\TEMP|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~45_sumout\ = SUM(( \TEMP|cc60\(16) ) + ( GND ) + ( \TEMP|Add1~50\ ))
-- \TEMP|Add1~46\ = CARRY(( \TEMP|cc60\(16) ) + ( GND ) + ( \TEMP|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(16),
	cin => \TEMP|Add1~50\,
	sumout => \TEMP|Add1~45_sumout\,
	cout => \TEMP|Add1~46\);

\TEMP|cc60[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~45_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(16));

\TEMP|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~41_sumout\ = SUM(( \TEMP|cc60\(17) ) + ( GND ) + ( \TEMP|Add1~46\ ))
-- \TEMP|Add1~42\ = CARRY(( \TEMP|cc60\(17) ) + ( GND ) + ( \TEMP|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(17),
	cin => \TEMP|Add1~46\,
	sumout => \TEMP|Add1~41_sumout\,
	cout => \TEMP|Add1~42\);

\TEMP|cc60[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~41_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(17));

\TEMP|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~37_sumout\ = SUM(( \TEMP|cc60\(18) ) + ( GND ) + ( \TEMP|Add1~42\ ))
-- \TEMP|Add1~38\ = CARRY(( \TEMP|cc60\(18) ) + ( GND ) + ( \TEMP|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(18),
	cin => \TEMP|Add1~42\,
	sumout => \TEMP|Add1~37_sumout\,
	cout => \TEMP|Add1~38\);

\TEMP|cc60[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~37_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(18));

\TEMP|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~33_sumout\ = SUM(( \TEMP|cc60\(19) ) + ( GND ) + ( \TEMP|Add1~38\ ))
-- \TEMP|Add1~34\ = CARRY(( \TEMP|cc60\(19) ) + ( GND ) + ( \TEMP|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(19),
	cin => \TEMP|Add1~38\,
	sumout => \TEMP|Add1~33_sumout\,
	cout => \TEMP|Add1~34\);

\TEMP|cc60[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~33_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(19));

\TEMP|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal1~2_combout\ = ( !\TEMP|cc60\(15) & ( !\TEMP|cc60\(14) & ( (!\TEMP|cc60\(19) & (!\TEMP|cc60\(18) & (!\TEMP|cc60\(17) & !\TEMP|cc60\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc60\(19),
	datab => \TEMP|ALT_INV_cc60\(18),
	datac => \TEMP|ALT_INV_cc60\(17),
	datad => \TEMP|ALT_INV_cc60\(16),
	datae => \TEMP|ALT_INV_cc60\(15),
	dataf => \TEMP|ALT_INV_cc60\(14),
	combout => \TEMP|Equal1~2_combout\);

\TEMP|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~117_sumout\ = SUM(( \TEMP|cc60\(20) ) + ( GND ) + ( \TEMP|Add1~34\ ))
-- \TEMP|Add1~118\ = CARRY(( \TEMP|cc60\(20) ) + ( GND ) + ( \TEMP|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(20),
	cin => \TEMP|Add1~34\,
	sumout => \TEMP|Add1~117_sumout\,
	cout => \TEMP|Add1~118\);

\TEMP|cc60[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~117_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(20));

\TEMP|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~73_sumout\ = SUM(( \TEMP|cc60\(21) ) + ( GND ) + ( \TEMP|Add1~118\ ))
-- \TEMP|Add1~74\ = CARRY(( \TEMP|cc60\(21) ) + ( GND ) + ( \TEMP|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(21),
	cin => \TEMP|Add1~118\,
	sumout => \TEMP|Add1~73_sumout\,
	cout => \TEMP|Add1~74\);

\TEMP|cc60[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~73_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(21));

\TEMP|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~69_sumout\ = SUM(( \TEMP|cc60\(22) ) + ( GND ) + ( \TEMP|Add1~74\ ))
-- \TEMP|Add1~70\ = CARRY(( \TEMP|cc60\(22) ) + ( GND ) + ( \TEMP|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(22),
	cin => \TEMP|Add1~74\,
	sumout => \TEMP|Add1~69_sumout\,
	cout => \TEMP|Add1~70\);

\TEMP|cc60[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~69_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(22));

\TEMP|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~65_sumout\ = SUM(( \TEMP|cc60\(23) ) + ( GND ) + ( \TEMP|Add1~70\ ))
-- \TEMP|Add1~66\ = CARRY(( \TEMP|cc60\(23) ) + ( GND ) + ( \TEMP|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(23),
	cin => \TEMP|Add1~70\,
	sumout => \TEMP|Add1~65_sumout\,
	cout => \TEMP|Add1~66\);

\TEMP|cc60[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~65_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(23));

\TEMP|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~61_sumout\ = SUM(( \TEMP|cc60\(24) ) + ( GND ) + ( \TEMP|Add1~66\ ))
-- \TEMP|Add1~62\ = CARRY(( \TEMP|cc60\(24) ) + ( GND ) + ( \TEMP|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(24),
	cin => \TEMP|Add1~66\,
	sumout => \TEMP|Add1~61_sumout\,
	cout => \TEMP|Add1~62\);

\TEMP|cc60[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~61_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(24));

\TEMP|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~57_sumout\ = SUM(( \TEMP|cc60\(25) ) + ( GND ) + ( \TEMP|Add1~62\ ))
-- \TEMP|Add1~58\ = CARRY(( \TEMP|cc60\(25) ) + ( GND ) + ( \TEMP|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(25),
	cin => \TEMP|Add1~62\,
	sumout => \TEMP|Add1~57_sumout\,
	cout => \TEMP|Add1~58\);

\TEMP|cc60[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~57_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(25));

\TEMP|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal1~3_combout\ = ( !\TEMP|cc60\(21) & ( \TEMP|cc60\(1) & ( (!\TEMP|cc60\(25) & (!\TEMP|cc60\(24) & (!\TEMP|cc60\(23) & !\TEMP|cc60\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc60\(25),
	datab => \TEMP|ALT_INV_cc60\(24),
	datac => \TEMP|ALT_INV_cc60\(23),
	datad => \TEMP|ALT_INV_cc60\(22),
	datae => \TEMP|ALT_INV_cc60\(21),
	dataf => \TEMP|ALT_INV_cc60\(1),
	combout => \TEMP|Equal1~3_combout\);

\TEMP|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~125_sumout\ = SUM(( \TEMP|cc60\(26) ) + ( GND ) + ( \TEMP|Add1~58\ ))
-- \TEMP|Add1~126\ = CARRY(( \TEMP|cc60\(26) ) + ( GND ) + ( \TEMP|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(26),
	cin => \TEMP|Add1~58\,
	sumout => \TEMP|Add1~125_sumout\,
	cout => \TEMP|Add1~126\);

\TEMP|cc60[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~125_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(26));

\TEMP|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~121_sumout\ = SUM(( \TEMP|cc60\(27) ) + ( GND ) + ( \TEMP|Add1~126\ ))
-- \TEMP|Add1~122\ = CARRY(( \TEMP|cc60\(27) ) + ( GND ) + ( \TEMP|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(27),
	cin => \TEMP|Add1~126\,
	sumout => \TEMP|Add1~121_sumout\,
	cout => \TEMP|Add1~122\);

\TEMP|cc60[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~121_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(27));

\TEMP|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~85_sumout\ = SUM(( \TEMP|cc60\(28) ) + ( GND ) + ( \TEMP|Add1~122\ ))
-- \TEMP|Add1~86\ = CARRY(( \TEMP|cc60\(28) ) + ( GND ) + ( \TEMP|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(28),
	cin => \TEMP|Add1~122\,
	sumout => \TEMP|Add1~85_sumout\,
	cout => \TEMP|Add1~86\);

\TEMP|cc60[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~85_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(28));

\TEMP|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal1~4_combout\ = ( !\TEMP|cc60\(3) & ( !\TEMP|cc60\(2) & ( (\TEMP|cc60\(0) & (!\TEMP|cc60\(28) & (!\TEMP|cc60\(5) & !\TEMP|cc60\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc60\(0),
	datab => \TEMP|ALT_INV_cc60\(28),
	datac => \TEMP|ALT_INV_cc60\(5),
	datad => \TEMP|ALT_INV_cc60\(4),
	datae => \TEMP|ALT_INV_cc60\(3),
	dataf => \TEMP|ALT_INV_cc60\(2),
	combout => \TEMP|Equal1~4_combout\);

\TEMP|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~113_sumout\ = SUM(( \TEMP|cc60\(29) ) + ( GND ) + ( \TEMP|Add1~86\ ))
-- \TEMP|Add1~114\ = CARRY(( \TEMP|cc60\(29) ) + ( GND ) + ( \TEMP|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(29),
	cin => \TEMP|Add1~86\,
	sumout => \TEMP|Add1~113_sumout\,
	cout => \TEMP|Add1~114\);

\TEMP|cc60[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~113_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(29));

\TEMP|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~109_sumout\ = SUM(( \TEMP|cc60\(30) ) + ( GND ) + ( \TEMP|Add1~114\ ))
-- \TEMP|Add1~110\ = CARRY(( \TEMP|cc60\(30) ) + ( GND ) + ( \TEMP|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(30),
	cin => \TEMP|Add1~114\,
	sumout => \TEMP|Add1~109_sumout\,
	cout => \TEMP|Add1~110\);

\TEMP|cc60[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~109_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(30));

\TEMP|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Add1~105_sumout\ = SUM(( \TEMP|cc60\(31) ) + ( GND ) + ( \TEMP|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TEMP|ALT_INV_cc60\(31),
	cin => \TEMP|Add1~110\,
	sumout => \TEMP|Add1~105_sumout\);

\TEMP|cc60[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|Add1~105_sumout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	sclr => \TEMP|Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|cc60\(31));

\TEMP|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal1~5_combout\ = ( !\TEMP|cc60\(27) & ( !\TEMP|cc60\(26) & ( (!\TEMP|cc60\(31) & (!\TEMP|cc60\(30) & (!\TEMP|cc60\(29) & !\TEMP|cc60\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cc60\(31),
	datab => \TEMP|ALT_INV_cc60\(30),
	datac => \TEMP|ALT_INV_cc60\(29),
	datad => \TEMP|ALT_INV_cc60\(20),
	datae => \TEMP|ALT_INV_cc60\(27),
	dataf => \TEMP|ALT_INV_cc60\(26),
	combout => \TEMP|Equal1~5_combout\);

\TEMP|Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|Equal1~6_combout\ = ( \TEMP|Equal1~4_combout\ & ( \TEMP|Equal1~5_combout\ & ( (\TEMP|Equal1~0_combout\ & (\TEMP|Equal1~1_combout\ & (\TEMP|Equal1~2_combout\ & \TEMP|Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_Equal1~0_combout\,
	datab => \TEMP|ALT_INV_Equal1~1_combout\,
	datac => \TEMP|ALT_INV_Equal1~2_combout\,
	datad => \TEMP|ALT_INV_Equal1~3_combout\,
	datae => \TEMP|ALT_INV_Equal1~4_combout\,
	dataf => \TEMP|ALT_INV_Equal1~5_combout\,
	combout => \TEMP|Equal1~6_combout\);

\TEMP|temp1m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|temp1m~0_combout\ = !\TEMP|temp1m~q\ $ (!\TEMP|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_temp1m~q\,
	datab => \TEMP|ALT_INV_Equal1~6_combout\,
	combout => \TEMP|temp1m~0_combout\);

\TEMP|temp1m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|temp1s~q\,
	d => \TEMP|temp1m~0_combout\,
	clrn => \FSMSEF|ALT_INV_c1m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TEMP|temp1m~q\);

\TEMP|cout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|cout~3_combout\ = (\TEMP|temp1m~q\ & ((\FSMSEF|E_Atual.eVdA~q\) # (\FSMSEF|E_Atual.eVdB~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.eVdB~q\,
	datab => \TEMP|ALT_INV_temp1m~q\,
	datac => \FSMSEF|ALT_INV_E_Atual.eVdA~q\,
	combout => \TEMP|cout~3_combout\);

\TEMP|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|cout~1_combout\ = (!\FSMSEF|c5s~combout\ & ((!\TEMP|cout~3_combout\))) # (\FSMSEF|c5s~combout\ & (\TEMP|cout~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000101110001011100010111000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cout~2_combout\,
	datab => \TEMP|ALT_INV_cout~3_combout\,
	datac => \FSMSEF|ALT_INV_c5s~combout\,
	combout => \TEMP|cout~1_combout\);

\FSMSEF|E_Futuro.Apagado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|E_Futuro.Apagado~0_combout\ = (\FSMSEF|E_Atual.Piscante~q\ & \Noturno~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.Piscante~q\,
	datab => \ALT_INV_Noturno~input_o\,
	combout => \FSMSEF|E_Futuro.Apagado~0_combout\);

\FSMSEF|E_Atual.Apagado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|cout~0_combout\,
	d => \FSMSEF|E_Futuro.Apagado~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMSEF|E_Atual.Apagado~q\);

\FSMSEF|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|Selector3~0_combout\ = ((!\FSMSEF|E_Atual.Bgn~q\ & \Noturno~input_o\)) # (\FSMSEF|E_Atual.Apagado~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.Bgn~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.Apagado~q\,
	datac => \ALT_INV_Noturno~input_o\,
	combout => \FSMSEF|Selector3~0_combout\);

\FSMSEF|E_Atual.Piscante\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|cout~0_combout\,
	d => \FSMSEF|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMSEF|E_Atual.Piscante~q\);

\FSMSEF|Q2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|Q2~combout\ = (!\FSMSEF|E_Atual.Bgn~q\) # ((\FSMSEF|E_Atual.Apagado~q\) # (\FSMSEF|E_Atual.Piscante~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.Bgn~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.Piscante~q\,
	datac => \FSMSEF|ALT_INV_E_Atual.Apagado~q\,
	combout => \FSMSEF|Q2~combout\);

\TEMP|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TEMP|cout~0_combout\ = LCELL((!\FSMSEF|Q2~combout\ & (!\TEMP|cout~1_combout\)) # (\FSMSEF|Q2~combout\ & ((\TEMP|temp1s~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001110100011101000111010001110100011101000111010001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TEMP|ALT_INV_cout~1_combout\,
	datab => \TEMP|ALT_INV_temp1s~q\,
	datac => \FSMSEF|ALT_INV_Q2~combout\,
	combout => \TEMP|cout~0_combout\);

\FSMSEF|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|Selector0~0_combout\ = ( !\PvA~input_o\ & ( ((!\FSMSEF|E_Atual.Bgn~q\ & (!\PvB~input_o\ & !\Noturno~input_o\))) # (\FSMSEF|E_Atual.eAmB~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100110011000000000000000010110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.Bgn~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.eAmB~q\,
	datac => \ALT_INV_PvB~input_o\,
	datad => \ALT_INV_Noturno~input_o\,
	datae => \ALT_INV_PvA~input_o\,
	combout => \FSMSEF|Selector0~0_combout\);

\FSMSEF|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|Selector0~1_combout\ = ( !\FSMSEF|Selector0~0_combout\ & ( (!\FSMSEF|E_Atual.eAmA~q\ & ((!\FSMSEF|E_Atual.Piscante~q\) # ((\Noturno~input_o\)))) # (\FSMSEF|E_Atual.eAmA~q\ & (\PvB~input_o\ & ((!\FSMSEF|E_Atual.Piscante~q\) # (\Noturno~input_o\)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010101111000000000000000010001100101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.eAmA~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.Piscante~q\,
	datac => \ALT_INV_PvB~input_o\,
	datad => \ALT_INV_Noturno~input_o\,
	datae => \FSMSEF|ALT_INV_Selector0~0_combout\,
	combout => \FSMSEF|Selector0~1_combout\);

\FSMSEF|E_Atual.Bgn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TEMP|cout~0_combout\,
	d => \FSMSEF|Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSMSEF|E_Atual.Bgn~q\);

\FSMSEF|Q0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|Q0~combout\ = (!\FSMSEF|E_Atual.Bgn~q\) # ((\FSMSEF|E_Atual.eVdB~q\) # (\FSMSEF|E_Atual.eAmA~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.Bgn~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.eAmA~q\,
	datac => \FSMSEF|ALT_INV_E_Atual.eVdB~q\,
	combout => \FSMSEF|Q0~combout\);

\FSMSEF|Q1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSMSEF|Q1~combout\ = ((\FSMSEF|E_Atual.Piscante~q\) # (\FSMSEF|E_Atual.eAmB~q\)) # (\FSMSEF|E_Atual.eVdB~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSMSEF|ALT_INV_E_Atual.eVdB~q\,
	datab => \FSMSEF|ALT_INV_E_Atual.eAmB~q\,
	datac => \FSMSEF|ALT_INV_E_Atual.Piscante~q\,
	combout => \FSMSEF|Q1~combout\);

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;
END structure;


