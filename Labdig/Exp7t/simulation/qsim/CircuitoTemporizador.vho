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

-- DATE "06/23/2020 16:00:21"

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

ENTITY 	CircuitoTemporizador IS
    PORT (
	c1s : IN std_logic;
	c5s : IN std_logic;
	c1m : IN std_logic;
	clock : IN std_logic;
	cout : OUT std_logic
	);
END CircuitoTemporizador;

ARCHITECTURE structure OF CircuitoTemporizador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_c1s : std_logic;
SIGNAL ww_c5s : std_logic;
SIGNAL ww_c1m : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \cc1[0]~0_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \temp1s~0_combout\ : std_logic;
SIGNAL \temp1s~q\ : std_logic;
SIGNAL \c5s~input_o\ : std_logic;
SIGNAL \conter:0:INITC:Ci|Q~q\ : std_logic;
SIGNAL \d2~combout\ : std_logic;
SIGNAL \conter:2:CO2:Ci|QI~q\ : std_logic;
SIGNAL \d0~combout\ : std_logic;
SIGNAL \conter:0:INITC:Ci|QI~0_combout\ : std_logic;
SIGNAL \conter:0:INITC:Ci|QI~q\ : std_logic;
SIGNAL \conter:1:CO1:Ci|QI~0_combout\ : std_logic;
SIGNAL \conter:1:CO1:Ci|QI~q\ : std_logic;
SIGNAL \d1~combout\ : std_logic;
SIGNAL \conter:1:CO1:Ci|Q~q\ : std_logic;
SIGNAL \conter:3:CO3:Ci|Q~q\ : std_logic;
SIGNAL \c1m~input_o\ : std_logic;
SIGNAL \c1s~input_o\ : std_logic;
SIGNAL \ts1s~0_combout\ : std_logic;
SIGNAL \ts1s~q\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \cc60[0]~0_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \temp1m~0_combout\ : std_logic;
SIGNAL \temp1m~q\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL cc60 : std_logic_vector(31 DOWNTO 0);
SIGNAL cc1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_cc1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_cc60 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_d1~combout\ : std_logic;
SIGNAL \conter:1:CO1:Ci|ALT_INV_QI~q\ : std_logic;
SIGNAL \conter:0:INITC:Ci|ALT_INV_Q~q\ : std_logic;
SIGNAL \conter:0:INITC:Ci|ALT_INV_QI~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp1s~q\ : std_logic;
SIGNAL \conter:3:CO3:Ci|ALT_INV_Q~q\ : std_logic;
SIGNAL \conter:1:CO1:Ci|ALT_INV_Q~q\ : std_logic;
SIGNAL \ALT_INV_temp1m~q\ : std_logic;
SIGNAL \ALT_INV_ts1s~q\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALT_INV_c1m~input_o\ : std_logic;
SIGNAL \ALT_INV_c5s~input_o\ : std_logic;
SIGNAL \ALT_INV_c1s~input_o\ : std_logic;
SIGNAL \ALT_INV_d0~combout\ : std_logic;
SIGNAL \conter:2:CO2:Ci|ALT_INV_QI~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;

BEGIN

ww_c1s <= c1s;
ww_c5s <= c5s;
ww_c1m <= c1m;
ww_clock <= clock;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_cc1(22) <= NOT cc1(22);
ALT_INV_cc1(23) <= NOT cc1(23);
ALT_INV_cc1(25) <= NOT cc1(25);
ALT_INV_cc1(26) <= NOT cc1(26);
ALT_INV_cc1(27) <= NOT cc1(27);
ALT_INV_cc1(28) <= NOT cc1(28);
ALT_INV_cc1(29) <= NOT cc1(29);
ALT_INV_cc1(30) <= NOT cc1(30);
ALT_INV_cc1(31) <= NOT cc1(31);
ALT_INV_cc1(24) <= NOT cc1(24);
ALT_INV_cc1(1) <= NOT cc1(1);
ALT_INV_cc1(16) <= NOT cc1(16);
ALT_INV_cc1(17) <= NOT cc1(17);
ALT_INV_cc1(18) <= NOT cc1(18);
ALT_INV_cc1(19) <= NOT cc1(19);
ALT_INV_cc1(20) <= NOT cc1(20);
ALT_INV_cc1(21) <= NOT cc1(21);
ALT_INV_cc1(10) <= NOT cc1(10);
ALT_INV_cc1(11) <= NOT cc1(11);
ALT_INV_cc1(12) <= NOT cc1(12);
ALT_INV_cc1(13) <= NOT cc1(13);
ALT_INV_cc1(14) <= NOT cc1(14);
ALT_INV_cc1(15) <= NOT cc1(15);
ALT_INV_cc1(4) <= NOT cc1(4);
ALT_INV_cc1(5) <= NOT cc1(5);
ALT_INV_cc1(6) <= NOT cc1(6);
ALT_INV_cc1(7) <= NOT cc1(7);
ALT_INV_cc1(8) <= NOT cc1(8);
ALT_INV_cc1(9) <= NOT cc1(9);
ALT_INV_cc1(2) <= NOT cc1(2);
ALT_INV_cc1(3) <= NOT cc1(3);
ALT_INV_cc60(22) <= NOT cc60(22);
ALT_INV_cc60(23) <= NOT cc60(23);
ALT_INV_cc60(16) <= NOT cc60(16);
ALT_INV_cc60(25) <= NOT cc60(25);
ALT_INV_cc60(26) <= NOT cc60(26);
ALT_INV_cc60(27) <= NOT cc60(27);
ALT_INV_cc60(28) <= NOT cc60(28);
ALT_INV_cc60(29) <= NOT cc60(29);
ALT_INV_cc60(30) <= NOT cc60(30);
ALT_INV_cc60(31) <= NOT cc60(31);
ALT_INV_cc60(24) <= NOT cc60(24);
ALT_INV_cc60(1) <= NOT cc60(1);
ALT_INV_cc60(17) <= NOT cc60(17);
ALT_INV_cc60(18) <= NOT cc60(18);
ALT_INV_cc60(19) <= NOT cc60(19);
ALT_INV_cc60(20) <= NOT cc60(20);
ALT_INV_cc60(21) <= NOT cc60(21);
ALT_INV_cc60(10) <= NOT cc60(10);
ALT_INV_cc60(11) <= NOT cc60(11);
ALT_INV_cc60(12) <= NOT cc60(12);
ALT_INV_cc60(13) <= NOT cc60(13);
ALT_INV_cc60(14) <= NOT cc60(14);
ALT_INV_cc60(15) <= NOT cc60(15);
ALT_INV_cc60(4) <= NOT cc60(4);
ALT_INV_cc60(5) <= NOT cc60(5);
ALT_INV_cc60(6) <= NOT cc60(6);
ALT_INV_cc60(7) <= NOT cc60(7);
ALT_INV_cc60(8) <= NOT cc60(8);
ALT_INV_cc60(9) <= NOT cc60(9);
ALT_INV_cc60(2) <= NOT cc60(2);
ALT_INV_cc60(3) <= NOT cc60(3);
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
ALT_INV_cc1(0) <= NOT cc1(0);
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_d1~combout\ <= NOT \d1~combout\;
\conter:1:CO1:Ci|ALT_INV_QI~q\ <= NOT \conter:1:CO1:Ci|QI~q\;
\conter:0:INITC:Ci|ALT_INV_Q~q\ <= NOT \conter:0:INITC:Ci|Q~q\;
\conter:0:INITC:Ci|ALT_INV_QI~q\ <= NOT \conter:0:INITC:Ci|QI~q\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
ALT_INV_cc60(0) <= NOT cc60(0);
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_temp1s~q\ <= NOT \temp1s~q\;
\conter:3:CO3:Ci|ALT_INV_Q~q\ <= NOT \conter:3:CO3:Ci|Q~q\;
\conter:1:CO1:Ci|ALT_INV_Q~q\ <= NOT \conter:1:CO1:Ci|Q~q\;
\ALT_INV_temp1m~q\ <= NOT \temp1m~q\;
\ALT_INV_ts1s~q\ <= NOT \ts1s~q\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add1~81_sumout\ <= NOT \Add1~81_sumout\;
\ALT_INV_c1m~input_o\ <= NOT \c1m~input_o\;
\ALT_INV_c5s~input_o\ <= NOT \c5s~input_o\;
\ALT_INV_c1s~input_o\ <= NOT \c1s~input_o\;
\ALT_INV_d0~combout\ <= NOT \d0~combout\;
\conter:2:CO2:Ci|ALT_INV_QI~q\ <= NOT \conter:2:CO2:Ci|QI~q\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;

\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( !cc1(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~82\ = CARRY(( !cc1(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(0),
	cin => GND,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

\cc1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cc1[0]~0_combout\ = !\Add0~81_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~81_sumout\,
	combout => \cc1[0]~0_combout\);

\cc1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \cc1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(0));

\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( cc1(1) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( cc1(1) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(1),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

\cc1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(1));

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( cc1(2) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~6\ = CARRY(( cc1(2) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(2),
	cin => \Add0~86\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\cc1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(2));

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( cc1(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( cc1(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(3),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\cc1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(3));

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cc1(3) & !cc1(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc1(3),
	datab => ALT_INV_cc1(2),
	combout => \Equal0~0_combout\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( cc1(4) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~30\ = CARRY(( cc1(4) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(4),
	cin => \Add0~2\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\cc1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(4));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( cc1(5) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( cc1(5) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(5),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\cc1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(5));

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( cc1(6) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( cc1(6) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(6),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\cc1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(6));

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( cc1(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( cc1(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(7),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\cc1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(7));

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( cc1(8) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( cc1(8) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(8),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\cc1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(8));

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( cc1(9) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( cc1(9) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(9),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\cc1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(9));

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !cc1(5) & ( !cc1(4) & ( (!cc1(9) & (!cc1(8) & (!cc1(7) & !cc1(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc1(9),
	datab => ALT_INV_cc1(8),
	datac => ALT_INV_cc1(7),
	datad => ALT_INV_cc1(6),
	datae => ALT_INV_cc1(5),
	dataf => ALT_INV_cc1(4),
	combout => \Equal0~1_combout\);

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( cc1(10) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~54\ = CARRY(( cc1(10) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(10),
	cin => \Add0~10\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\cc1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(10));

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( cc1(11) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( cc1(11) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(11),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\cc1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(11));

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( cc1(12) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( cc1(12) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(12),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\cc1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(12));

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( cc1(13) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( cc1(13) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(13),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\cc1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(13));

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( cc1(14) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( cc1(14) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(14),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\cc1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(14));

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( cc1(15) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( cc1(15) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(15),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\cc1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(15));

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !cc1(11) & ( !cc1(10) & ( (!cc1(15) & (!cc1(14) & (!cc1(13) & !cc1(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc1(15),
	datab => ALT_INV_cc1(14),
	datac => ALT_INV_cc1(13),
	datad => ALT_INV_cc1(12),
	datae => ALT_INV_cc1(11),
	dataf => ALT_INV_cc1(10),
	combout => \Equal0~2_combout\);

\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( cc1(16) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~78\ = CARRY(( cc1(16) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(16),
	cin => \Add0~34\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

\cc1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(16));

\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( cc1(17) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( cc1(17) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(17),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

\cc1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(17));

\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( cc1(18) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( cc1(18) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(18),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

\cc1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(18));

\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( cc1(19) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( cc1(19) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(19),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

\cc1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(19));

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( cc1(20) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( cc1(20) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(20),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

\cc1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(20));

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( cc1(21) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( cc1(21) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(21),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\cc1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(21));

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !cc1(17) & ( !cc1(16) & ( (!cc1(21) & (!cc1(20) & (!cc1(19) & !cc1(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc1(21),
	datab => ALT_INV_cc1(20),
	datac => ALT_INV_cc1(19),
	datad => ALT_INV_cc1(18),
	datae => ALT_INV_cc1(17),
	dataf => ALT_INV_cc1(16),
	combout => \Equal0~3_combout\);

\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( cc1(22) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~126\ = CARRY(( cc1(22) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(22),
	cin => \Add0~58\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

\cc1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(22));

\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( cc1(23) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( cc1(23) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(23),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

\cc1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(23));

\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( cc1(24) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~90\ = CARRY(( cc1(24) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(24),
	cin => \Add0~122\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

\cc1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(24));

\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( cc1(25) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~118\ = CARRY(( cc1(25) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(25),
	cin => \Add0~90\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

\cc1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(25));

\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( cc1(26) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( cc1(26) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(26),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

\cc1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~113_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(26));

\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( cc1(27) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( cc1(27) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(27),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

\cc1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(27));

\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( cc1(28) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( cc1(28) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(28),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

\cc1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(28));

\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( cc1(29) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( cc1(29) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(29),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

\cc1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(29));

\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( cc1(30) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( cc1(30) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(30),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

\cc1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(30));

\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( cc1(31) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc1(31),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\);

\cc1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc1(31));

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !cc1(30) & ( !cc1(29) & ( (cc1(0) & (cc1(1) & (!cc1(24) & !cc1(31)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc1(0),
	datab => ALT_INV_cc1(1),
	datac => ALT_INV_cc1(24),
	datad => ALT_INV_cc1(31),
	datae => ALT_INV_cc1(30),
	dataf => ALT_INV_cc1(29),
	combout => \Equal0~4_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !cc1(23) & ( !cc1(22) & ( (!cc1(28) & (!cc1(27) & (!cc1(26) & !cc1(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc1(28),
	datab => ALT_INV_cc1(27),
	datac => ALT_INV_cc1(26),
	datad => ALT_INV_cc1(25),
	datae => ALT_INV_cc1(23),
	dataf => ALT_INV_cc1(22),
	combout => \Equal0~5_combout\);

\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~5_combout\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

\temp1s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp1s~0_combout\ = !\temp1s~q\ $ (!\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp1s~q\,
	datab => \ALT_INV_Equal0~6_combout\,
	combout => \temp1s~0_combout\);

temp1s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \temp1s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1s~q\);

\c5s~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c5s,
	o => \c5s~input_o\);

\conter:0:INITC:Ci|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \d0~combout\,
	clrn => \c5s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conter:0:INITC:Ci|Q~q\);

d2 : cyclonev_lcell_comb
-- Equation(s):
-- \d2~combout\ = (!\conter:1:CO1:Ci|Q~q\) # (!\conter:0:INITC:Ci|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conter:1:CO1:Ci|ALT_INV_Q~q\,
	datab => \conter:0:INITC:Ci|ALT_INV_Q~q\,
	combout => \d2~combout\);

\conter:2:CO2:Ci|QI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \d2~combout\,
	ena => \c5s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conter:2:CO2:Ci|QI~q\);

d0 : cyclonev_lcell_comb
-- Equation(s):
-- \d0~combout\ = (\conter:0:INITC:Ci|QI~q\ & \conter:2:CO2:Ci|QI~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conter:0:INITC:Ci|ALT_INV_QI~q\,
	datab => \conter:2:CO2:Ci|ALT_INV_QI~q\,
	combout => \d0~combout\);

\conter:0:INITC:Ci|QI~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conter:0:INITC:Ci|QI~0_combout\ = !\d0~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d0~combout\,
	combout => \conter:0:INITC:Ci|QI~0_combout\);

\conter:0:INITC:Ci|QI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \conter:0:INITC:Ci|QI~0_combout\,
	ena => \c5s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conter:0:INITC:Ci|QI~q\);

\conter:1:CO1:Ci|QI~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \conter:1:CO1:Ci|QI~0_combout\ = !\d1~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d1~combout\,
	combout => \conter:1:CO1:Ci|QI~0_combout\);

\conter:1:CO1:Ci|QI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \conter:1:CO1:Ci|QI~0_combout\,
	ena => \c5s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conter:1:CO1:Ci|QI~q\);

d1 : cyclonev_lcell_comb
-- Equation(s):
-- \d1~combout\ = (!\conter:1:CO1:Ci|Q~q\ & (((\conter:0:INITC:Ci|Q~q\ & \conter:1:CO1:Ci|QI~q\)))) # (\conter:1:CO1:Ci|Q~q\ & (((\conter:0:INITC:Ci|Q~q\ & \conter:1:CO1:Ci|QI~q\)) # (\conter:0:INITC:Ci|QI~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conter:1:CO1:Ci|ALT_INV_Q~q\,
	datab => \conter:0:INITC:Ci|ALT_INV_QI~q\,
	datac => \conter:0:INITC:Ci|ALT_INV_Q~q\,
	datad => \conter:1:CO1:Ci|ALT_INV_QI~q\,
	combout => \d1~combout\);

\conter:1:CO1:Ci|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \d1~combout\,
	clrn => \c5s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conter:1:CO1:Ci|Q~q\);

\conter:3:CO3:Ci|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \conter:1:CO1:Ci|Q~q\,
	clrn => \c5s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conter:3:CO3:Ci|Q~q\);

\c1m~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1m,
	o => \c1m~input_o\);

\c1s~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1s,
	o => \c1s~input_o\);

\ts1s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ts1s~0_combout\ = !\ts1s~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ts1s~q\,
	combout => \ts1s~0_combout\);

ts1s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \ts1s~0_combout\,
	clrn => \c1s~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ts1s~q\);

\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( !cc60(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~82\ = CARRY(( !cc60(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(0),
	cin => GND,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

\cc60[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cc60[0]~0_combout\ = !\Add1~81_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~81_sumout\,
	combout => \cc60[0]~0_combout\);

\cc60[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \cc60[0]~0_combout\,
	clrn => \c1m~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(0));

\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( cc60(1) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( cc60(1) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(1),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

\cc60[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~77_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(1));

\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( cc60(2) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~6\ = CARRY(( cc60(2) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(2),
	cin => \Add1~78\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

\cc60[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~5_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(2));

\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( cc60(3) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~2\ = CARRY(( cc60(3) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(3),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

\cc60[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~1_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(3));

\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!cc60(3) & !cc60(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc60(3),
	datab => ALT_INV_cc60(2),
	combout => \Equal1~0_combout\);

\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( cc60(4) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~30\ = CARRY(( cc60(4) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(4),
	cin => \Add1~2\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

\cc60[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~29_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(4));

\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( cc60(5) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( cc60(5) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(5),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

\cc60[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~25_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(5));

\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( cc60(6) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( cc60(6) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(6),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

\cc60[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~21_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(6));

\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( cc60(7) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( cc60(7) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(7),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

\cc60[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~17_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(7));

\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( cc60(8) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( cc60(8) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(8),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

\cc60[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~13_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(8));

\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( cc60(9) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( cc60(9) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(9),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

\cc60[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~9_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(9));

\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !cc60(5) & ( !cc60(4) & ( (!cc60(9) & (!cc60(8) & (!cc60(7) & !cc60(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc60(9),
	datab => ALT_INV_cc60(8),
	datac => ALT_INV_cc60(7),
	datad => ALT_INV_cc60(6),
	datae => ALT_INV_cc60(5),
	dataf => ALT_INV_cc60(4),
	combout => \Equal1~1_combout\);

\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( cc60(10) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~54\ = CARRY(( cc60(10) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(10),
	cin => \Add1~10\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

\cc60[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~53_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(10));

\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( cc60(11) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( cc60(11) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(11),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

\cc60[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~49_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(11));

\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( cc60(12) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( cc60(12) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(12),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

\cc60[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~45_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(12));

\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( cc60(13) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( cc60(13) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(13),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

\cc60[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~41_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(13));

\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( cc60(14) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( cc60(14) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(14),
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

\cc60[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~37_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(14));

\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( cc60(15) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( cc60(15) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(15),
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

\cc60[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~33_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(15));

\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !cc60(11) & ( !cc60(10) & ( (!cc60(15) & (!cc60(14) & (!cc60(13) & !cc60(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc60(15),
	datab => ALT_INV_cc60(14),
	datac => ALT_INV_cc60(13),
	datad => ALT_INV_cc60(12),
	datae => ALT_INV_cc60(11),
	dataf => ALT_INV_cc60(10),
	combout => \Equal1~2_combout\);

\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( cc60(16) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~118\ = CARRY(( cc60(16) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(16),
	cin => \Add1~34\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

\cc60[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~117_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(16));

\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( cc60(17) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~74\ = CARRY(( cc60(17) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(17),
	cin => \Add1~118\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

\cc60[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~73_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(17));

\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( cc60(18) ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( cc60(18) ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(18),
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

\cc60[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~69_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(18));

\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( cc60(19) ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( cc60(19) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(19),
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

\cc60[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~65_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(19));

\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( cc60(20) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( cc60(20) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(20),
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

\cc60[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~61_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(20));

\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( cc60(21) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( cc60(21) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(21),
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

\cc60[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~57_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(21));

\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !cc60(17) & ( cc60(1) & ( (!cc60(21) & (!cc60(20) & (!cc60(19) & !cc60(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc60(21),
	datab => ALT_INV_cc60(20),
	datac => ALT_INV_cc60(19),
	datad => ALT_INV_cc60(18),
	datae => ALT_INV_cc60(17),
	dataf => ALT_INV_cc60(1),
	combout => \Equal1~3_combout\);

\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( cc60(22) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~126\ = CARRY(( cc60(22) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(22),
	cin => \Add1~58\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

\cc60[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~125_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(22));

\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( cc60(23) ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( cc60(23) ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(23),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

\cc60[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~121_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(23));

\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( cc60(24) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~86\ = CARRY(( cc60(24) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(24),
	cin => \Add1~122\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

\cc60[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~85_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(24));

\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( cc60(25) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~114\ = CARRY(( cc60(25) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(25),
	cin => \Add1~86\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

\cc60[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~113_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(25));

\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( cc60(26) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( cc60(26) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(26),
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

\cc60[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~109_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(26));

\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( cc60(27) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( cc60(27) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(27),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

\cc60[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~105_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(27));

\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( cc60(28) ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( cc60(28) ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(28),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

\cc60[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~101_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(28));

\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( cc60(29) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( cc60(29) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(29),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

\cc60[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~97_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(29));

\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( cc60(30) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( cc60(30) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(30),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

\cc60[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~93_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(30));

\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( cc60(31) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_cc60(31),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\);

\cc60[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \Add1~89_sumout\,
	clrn => \c1m~input_o\,
	sclr => \Equal1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cc60(31));

\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !cc60(29) & ( !cc60(28) & ( (cc60(0) & (!cc60(24) & (!cc60(31) & !cc60(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc60(0),
	datab => ALT_INV_cc60(24),
	datac => ALT_INV_cc60(31),
	datad => ALT_INV_cc60(30),
	datae => ALT_INV_cc60(29),
	dataf => ALT_INV_cc60(28),
	combout => \Equal1~4_combout\);

\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !cc60(23) & ( !cc60(22) & ( (!cc60(27) & (!cc60(26) & (!cc60(25) & !cc60(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_cc60(27),
	datab => ALT_INV_cc60(26),
	datac => ALT_INV_cc60(25),
	datad => ALT_INV_cc60(16),
	datae => ALT_INV_cc60(23),
	dataf => ALT_INV_cc60(22),
	combout => \Equal1~5_combout\);

\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~4_combout\ & ( \Equal1~5_combout\ & ( (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \Equal1~6_combout\);

\temp1m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp1m~0_combout\ = !\temp1m~q\ $ (!\Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp1m~q\,
	datab => \ALT_INV_Equal1~6_combout\,
	combout => \temp1m~0_combout\);

temp1m : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temp1s~q\,
	d => \temp1m~0_combout\,
	clrn => \c1m~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp1m~q\);

\cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = ( !\c5s~input_o\ & ( ((!\c1s~input_o\ & (\c1m~input_o\ & (\temp1m~q\))) # (\c1s~input_o\ & (((\ts1s~q\))))) ) ) # ( \c5s~input_o\ & ( ((!\c1s~input_o\ & (((\conter:1:CO1:Ci|Q~q\)) # (\conter:3:CO3:Ci|Q~q\))) # (\c1s~input_o\ & 
-- (((\ts1s~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000000010111110000000000000011111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \conter:3:CO3:Ci|ALT_INV_Q~q\,
	datab => \ALT_INV_c1m~input_o\,
	datac => \conter:1:CO1:Ci|ALT_INV_Q~q\,
	datad => \ALT_INV_c1s~input_o\,
	datae => \ALT_INV_c5s~input_o\,
	dataf => \ALT_INV_ts1s~q\,
	datag => \ALT_INV_temp1m~q\,
	combout => \cout~0_combout\);

ww_cout <= \cout~output_o\;
END structure;


