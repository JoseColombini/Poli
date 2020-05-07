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

-- DATE "05/04/2020 01:22:52"

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

ENTITY 	MaquinaEstadoSemaforo IS
    PORT (
	clock : IN std_logic;
	Noturno : IN std_logic;
	PvA : IN std_logic;
	PvB : IN std_logic;
	reset : IN std_logic;
	c1s : OUT std_logic;
	c5s : OUT std_logic;
	c1m : OUT std_logic;
	Q0 : OUT std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic
	);
END MaquinaEstadoSemaforo;

ARCHITECTURE structure OF MaquinaEstadoSemaforo IS
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
SIGNAL ww_PvA : std_logic;
SIGNAL ww_PvB : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_c1s : std_logic;
SIGNAL ww_c5s : std_logic;
SIGNAL ww_c1m : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL \c1s~output_o\ : std_logic;
SIGNAL \c5s~output_o\ : std_logic;
SIGNAL \c1m~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \Noturno~input_o\ : std_logic;
SIGNAL \E_Futuro.Apagado~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \E_Atual.Apagado~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \E_Atual.Piscante~q\ : std_logic;
SIGNAL \PvA~input_o\ : std_logic;
SIGNAL \PvB~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \E_Atual.eVdB~q\ : std_logic;
SIGNAL \E_Atual.eAmB~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \E_Atual.eVdA~q\ : std_logic;
SIGNAL \E_Atual.eAmA~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \E_Atual.Bgn~q\ : std_logic;
SIGNAL \c1s~0_combout\ : std_logic;
SIGNAL \c5s~0_combout\ : std_logic;
SIGNAL \c1m~0_combout\ : std_logic;
SIGNAL \Q0~0_combout\ : std_logic;
SIGNAL \Q1~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_PvB~input_o\ : std_logic;
SIGNAL \ALT_INV_PvA~input_o\ : std_logic;
SIGNAL \ALT_INV_Noturno~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_E_Atual.eVdB~q\ : std_logic;
SIGNAL \ALT_INV_E_Atual.eVdA~q\ : std_logic;
SIGNAL \ALT_INV_E_Atual.eAmB~q\ : std_logic;
SIGNAL \ALT_INV_E_Atual.eAmA~q\ : std_logic;
SIGNAL \ALT_INV_E_Atual.Apagado~q\ : std_logic;
SIGNAL \ALT_INV_E_Atual.Piscante~q\ : std_logic;
SIGNAL \ALT_INV_E_Atual.Bgn~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_Noturno <= Noturno;
ww_PvA <= PvA;
ww_PvB <= PvB;
ww_reset <= reset;
c1s <= ww_c1s;
c5s <= ww_c5s;
c1m <= ww_c1m;
Q0 <= ww_Q0;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_PvB~input_o\ <= NOT \PvB~input_o\;
\ALT_INV_PvA~input_o\ <= NOT \PvA~input_o\;
\ALT_INV_Noturno~input_o\ <= NOT \Noturno~input_o\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_E_Atual.eVdB~q\ <= NOT \E_Atual.eVdB~q\;
\ALT_INV_E_Atual.eVdA~q\ <= NOT \E_Atual.eVdA~q\;
\ALT_INV_E_Atual.eAmB~q\ <= NOT \E_Atual.eAmB~q\;
\ALT_INV_E_Atual.eAmA~q\ <= NOT \E_Atual.eAmA~q\;
\ALT_INV_E_Atual.Apagado~q\ <= NOT \E_Atual.Apagado~q\;
\ALT_INV_E_Atual.Piscante~q\ <= NOT \E_Atual.Piscante~q\;
\ALT_INV_E_Atual.Bgn~q\ <= NOT \E_Atual.Bgn~q\;

\c1s~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c1s~0_combout\,
	devoe => ww_devoe,
	o => \c1s~output_o\);

\c5s~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c5s~0_combout\,
	devoe => ww_devoe,
	o => \c5s~output_o\);

\c1m~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c1m~0_combout\,
	devoe => ww_devoe,
	o => \c1m~output_o\);

\Q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0~0_combout\,
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
	i => \Q1~0_combout\,
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
	i => VCC,
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

\Noturno~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Noturno,
	o => \Noturno~input_o\);

\E_Futuro.Apagado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \E_Futuro.Apagado~0_combout\ = (\E_Atual.Piscante~q\ & \Noturno~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.Piscante~q\,
	datab => \ALT_INV_Noturno~input_o\,
	combout => \E_Futuro.Apagado~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\E_Atual.Apagado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \E_Futuro.Apagado~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_Atual.Apagado~q\);

\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ((!\E_Atual.Bgn~q\ & \Noturno~input_o\)) # (\E_Atual.Apagado~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.Bgn~q\,
	datab => \ALT_INV_E_Atual.Apagado~q\,
	datac => \ALT_INV_Noturno~input_o\,
	combout => \Selector3~0_combout\);

\E_Atual.Piscante\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_Atual.Piscante~q\);

\PvA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PvA,
	o => \PvA~input_o\);

\PvB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PvB,
	o => \PvB~input_o\);

\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \Noturno~input_o\ & ( (\E_Atual.eAmA~q\ & \PvB~input_o\) ) ) # ( !\Noturno~input_o\ & ( (\PvB~input_o\ & (((!\E_Atual.Bgn~q\ & !\PvA~input_o\)) # (\E_Atual.eAmA~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110011000000000011001100000000101100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.Bgn~q\,
	datab => \ALT_INV_E_Atual.eAmA~q\,
	datac => \ALT_INV_PvA~input_o\,
	datad => \ALT_INV_PvB~input_o\,
	datae => \ALT_INV_Noturno~input_o\,
	combout => \Selector2~0_combout\);

\E_Atual.eVdB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_Atual.eVdB~q\);

\E_Atual.eAmB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \E_Atual.eVdB~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_Atual.eAmB~q\);

\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\PvA~input_o\ & (((!\E_Atual.Bgn~q\ & !\Noturno~input_o\)) # (\E_Atual.eAmB~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000011000010110000001100001011000000110000101100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.Bgn~q\,
	datab => \ALT_INV_E_Atual.eAmB~q\,
	datac => \ALT_INV_PvA~input_o\,
	datad => \ALT_INV_Noturno~input_o\,
	combout => \Selector1~0_combout\);

\E_Atual.eVdA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_Atual.eVdA~q\);

\E_Atual.eAmA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \E_Atual.eVdA~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_Atual.eAmA~q\);

\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \PvB~input_o\ & ( \Noturno~input_o\ & ( (\E_Atual.eAmB~q\ & !\PvA~input_o\) ) ) ) # ( !\PvB~input_o\ & ( \Noturno~input_o\ & ( ((\E_Atual.eAmB~q\ & !\PvA~input_o\)) # (\E_Atual.eAmA~q\) ) ) ) # ( \PvB~input_o\ & ( 
-- !\Noturno~input_o\ & ( (\E_Atual.eAmB~q\ & !\PvA~input_o\) ) ) ) # ( !\PvB~input_o\ & ( !\Noturno~input_o\ & ( ((!\PvA~input_o\ & ((!\E_Atual.Bgn~q\) # (\E_Atual.eAmB~q\)))) # (\E_Atual.eAmA~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100110011000011110000000000111111001100110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.Bgn~q\,
	datab => \ALT_INV_E_Atual.eAmA~q\,
	datac => \ALT_INV_E_Atual.eAmB~q\,
	datad => \ALT_INV_PvA~input_o\,
	datae => \ALT_INV_PvB~input_o\,
	dataf => \ALT_INV_Noturno~input_o\,
	combout => \Selector0~0_combout\);

\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & ((!\E_Atual.Piscante~q\) # (\Noturno~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.Piscante~q\,
	datab => \ALT_INV_Noturno~input_o\,
	datac => \ALT_INV_Selector0~0_combout\,
	combout => \Selector0~1_combout\);

\E_Atual.Bgn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_Atual.Bgn~q\);

\c1s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1s~0_combout\ = (!\E_Atual.Bgn~q\) # ((\E_Atual.Apagado~q\) # (\E_Atual.Piscante~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.Bgn~q\,
	datab => \ALT_INV_E_Atual.Piscante~q\,
	datac => \ALT_INV_E_Atual.Apagado~q\,
	combout => \c1s~0_combout\);

\c5s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c5s~0_combout\ = (\E_Atual.eAmB~q\) # (\E_Atual.eAmA~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.eAmA~q\,
	datab => \ALT_INV_E_Atual.eAmB~q\,
	combout => \c5s~0_combout\);

\c1m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1m~0_combout\ = (\E_Atual.eVdB~q\) # (\E_Atual.eVdA~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.eVdA~q\,
	datab => \ALT_INV_E_Atual.eVdB~q\,
	combout => \c1m~0_combout\);

\Q0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q0~0_combout\ = (!\E_Atual.Bgn~q\) # ((\E_Atual.eVdB~q\) # (\E_Atual.eAmA~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.Bgn~q\,
	datab => \ALT_INV_E_Atual.eAmA~q\,
	datac => \ALT_INV_E_Atual.eVdB~q\,
	combout => \Q0~0_combout\);

\Q1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Q1~0_combout\ = ((\E_Atual.eVdB~q\) # (\E_Atual.eAmB~q\)) # (\E_Atual.Piscante~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_E_Atual.Piscante~q\,
	datab => \ALT_INV_E_Atual.eAmB~q\,
	datac => \ALT_INV_E_Atual.eVdB~q\,
	combout => \Q1~0_combout\);

ww_c1s <= \c1s~output_o\;

ww_c5s <= \c5s~output_o\;

ww_c1m <= \c1m~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q2 <= \Q2~output_o\;
END structure;


