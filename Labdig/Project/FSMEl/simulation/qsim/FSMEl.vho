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

-- DATE "05/24/2020 21:22:44"

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

ENTITY 	FSMEl IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	destiny : IN std_logic_vector(2 DOWNTO 0);
	position : IN std_logic_vector(2 DOWNTO 0);
	call : IN std_logic;
	do : OUT std_logic;
	upDown : OUT std_logic_vector(1 DOWNTO 0)
	);
END FSMEl;

ARCHITECTURE structure OF FSMEl IS
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
SIGNAL ww_destiny : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_position : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_call : std_logic;
SIGNAL ww_do : std_logic;
SIGNAL ww_upDown : std_logic_vector(1 DOWNTO 0);
SIGNAL \do~output_o\ : std_logic;
SIGNAL \upDown[0]~output_o\ : std_logic;
SIGNAL \upDown[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \destiny[2]~input_o\ : std_logic;
SIGNAL \position[2]~input_o\ : std_logic;
SIGNAL \destiny[1]~input_o\ : std_logic;
SIGNAL \position[1]~input_o\ : std_logic;
SIGNAL \destiny[0]~input_o\ : std_logic;
SIGNAL \position[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \call~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Efut.Door~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Enow.Door~q\ : std_logic;
SIGNAL \Efut.Init~0_combout\ : std_logic;
SIGNAL \Enow.Gup~q\ : std_logic;
SIGNAL \Efut.Init~1_combout\ : std_logic;
SIGNAL \Enow.Init~q\ : std_logic;
SIGNAL \Efut.Gd~0_combout\ : std_logic;
SIGNAL \Enow.Gd~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_call~input_o\ : std_logic;
SIGNAL \ALT_INV_position[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_destiny[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_position[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_destiny[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_position[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_destiny[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Enow.Init~q\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Enow.Gup~q\ : std_logic;
SIGNAL \ALT_INV_Enow.Gd~q\ : std_logic;
SIGNAL \ALT_INV_Enow.Door~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_destiny <= destiny;
ww_position <= position;
ww_call <= call;
do <= ww_do;
upDown <= ww_upDown;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_call~input_o\ <= NOT \call~input_o\;
\ALT_INV_position[0]~input_o\ <= NOT \position[0]~input_o\;
\ALT_INV_destiny[0]~input_o\ <= NOT \destiny[0]~input_o\;
\ALT_INV_position[1]~input_o\ <= NOT \position[1]~input_o\;
\ALT_INV_destiny[1]~input_o\ <= NOT \destiny[1]~input_o\;
\ALT_INV_position[2]~input_o\ <= NOT \position[2]~input_o\;
\ALT_INV_destiny[2]~input_o\ <= NOT \destiny[2]~input_o\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_Enow.Init~q\ <= NOT \Enow.Init~q\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_Enow.Gup~q\ <= NOT \Enow.Gup~q\;
\ALT_INV_Enow.Gd~q\ <= NOT \Enow.Gd~q\;
\ALT_INV_Enow.Door~q\ <= NOT \Enow.Door~q\;

\do~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Enow.Door~q\,
	devoe => ww_devoe,
	o => \do~output_o\);

\upDown[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Enow.Gd~q\,
	devoe => ww_devoe,
	o => \upDown[0]~output_o\);

\upDown[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Enow.Gup~q\,
	devoe => ww_devoe,
	o => \upDown[1]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\destiny[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destiny(2),
	o => \destiny[2]~input_o\);

\position[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position(2),
	o => \position[2]~input_o\);

\destiny[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destiny(1),
	o => \destiny[1]~input_o\);

\position[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position(1),
	o => \position[1]~input_o\);

\destiny[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_destiny(0),
	o => \destiny[0]~input_o\);

\position[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position(0),
	o => \position[0]~input_o\);

\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( \destiny[0]~input_o\ & ( \position[0]~input_o\ & ( (!\destiny[2]~input_o\ & (!\position[2]~input_o\ & ((!\position[1]~input_o\) # (\destiny[1]~input_o\)))) # (\destiny[2]~input_o\ & ((!\position[2]~input_o\) # 
-- ((!\position[1]~input_o\) # (\destiny[1]~input_o\)))) ) ) ) # ( !\destiny[0]~input_o\ & ( \position[0]~input_o\ & ( (!\destiny[2]~input_o\ & (!\position[2]~input_o\ & (\destiny[1]~input_o\ & !\position[1]~input_o\))) # (\destiny[2]~input_o\ & 
-- ((!\position[2]~input_o\) # ((\destiny[1]~input_o\ & !\position[1]~input_o\)))) ) ) ) # ( \destiny[0]~input_o\ & ( !\position[0]~input_o\ & ( (!\destiny[2]~input_o\ & (!\position[2]~input_o\ & ((!\position[1]~input_o\) # (\destiny[1]~input_o\)))) # 
-- (\destiny[2]~input_o\ & ((!\position[2]~input_o\) # ((!\position[1]~input_o\) # (\destiny[1]~input_o\)))) ) ) ) # ( !\destiny[0]~input_o\ & ( !\position[0]~input_o\ & ( (!\destiny[2]~input_o\ & (!\position[2]~input_o\ & ((!\position[1]~input_o\) # 
-- (\destiny[1]~input_o\)))) # (\destiny[2]~input_o\ & ((!\position[2]~input_o\) # ((!\position[1]~input_o\) # (\destiny[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110101001101110111010100110101001101010001001101110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_destiny[2]~input_o\,
	datab => \ALT_INV_position[2]~input_o\,
	datac => \ALT_INV_destiny[1]~input_o\,
	datad => \ALT_INV_position[1]~input_o\,
	datae => \ALT_INV_destiny[0]~input_o\,
	dataf => \ALT_INV_position[0]~input_o\,
	combout => \Add0~0_combout\);

\call~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_call,
	o => \call~input_o\);

\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \destiny[0]~input_o\ & ( \position[0]~input_o\ & ( (!\destiny[2]~input_o\ & (!\position[2]~input_o\ & (!\destiny[1]~input_o\ $ (\position[1]~input_o\)))) # (\destiny[2]~input_o\ & (\position[2]~input_o\ & (!\destiny[1]~input_o\ $ 
-- (\position[1]~input_o\)))) ) ) ) # ( !\destiny[0]~input_o\ & ( !\position[0]~input_o\ & ( (!\destiny[2]~input_o\ & (!\position[2]~input_o\ & (!\destiny[1]~input_o\ $ (\position[1]~input_o\)))) # (\destiny[2]~input_o\ & (\position[2]~input_o\ & 
-- (!\destiny[1]~input_o\ $ (\position[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_destiny[2]~input_o\,
	datab => \ALT_INV_position[2]~input_o\,
	datac => \ALT_INV_destiny[1]~input_o\,
	datad => \ALT_INV_position[1]~input_o\,
	datae => \ALT_INV_destiny[0]~input_o\,
	dataf => \ALT_INV_position[0]~input_o\,
	combout => \LessThan1~0_combout\);

\Efut.Door~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Efut.Door~0_combout\ = (\Add0~0_combout\ & (\call~input_o\ & \LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~0_combout\,
	datab => \ALT_INV_call~input_o\,
	datac => \ALT_INV_LessThan1~0_combout\,
	combout => \Efut.Door~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\Enow.Door\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Efut.Door~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enow.Door~q\);

\Efut.Init~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Efut.Init~0_combout\ = ( \Enow.Init~q\ & ( !\LessThan1~0_combout\ & ( (\Add0~0_combout\ & (((\Enow.Door~q\ & \call~input_o\)) # (\Enow.Gup~q\))) ) ) ) # ( !\Enow.Init~q\ & ( !\LessThan1~0_combout\ & ( (\Add0~0_combout\ & ((\call~input_o\) # 
-- (\Enow.Gup~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Enow.Door~q\,
	datab => \ALT_INV_Enow.Gup~q\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_call~input_o\,
	datae => \ALT_INV_Enow.Init~q\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \Efut.Init~0_combout\);

\Enow.Gup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Efut.Init~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enow.Gup~q\);

\Efut.Init~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Efut.Init~1_combout\ = ( !\Add0~0_combout\ & ( (((\call~input_o\ & ((!\Enow.Init~q\) # (\Enow.Door~q\))))) # (\Enow.Gd~q\) ) ) # ( \Add0~0_combout\ & ( (!\LessThan1~0_combout\ & (((\call~input_o\ & ((!\Enow.Init~q\) # (\Enow.Door~q\)))) # 
-- (\Enow.Gup~q\))) # (\LessThan1~0_combout\ & ((((\call~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000000010111111101111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Enow.Init~q\,
	datab => \ALT_INV_Enow.Door~q\,
	datac => \ALT_INV_Enow.Gup~q\,
	datad => \ALT_INV_LessThan1~0_combout\,
	datae => \ALT_INV_Add0~0_combout\,
	dataf => \ALT_INV_call~input_o\,
	datag => \ALT_INV_Enow.Gd~q\,
	combout => \Efut.Init~1_combout\);

\Enow.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Efut.Init~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enow.Init~q\);

\Efut.Gd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Efut.Gd~0_combout\ = ( \Enow.Init~q\ & ( (!\Add0~0_combout\ & (((\Enow.Door~q\ & \call~input_o\)) # (\Enow.Gd~q\))) ) ) # ( !\Enow.Init~q\ & ( (!\Add0~0_combout\ & ((\call~input_o\) # (\Enow.Gd~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100000111000000110000111100000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Enow.Door~q\,
	datab => \ALT_INV_Enow.Gd~q\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_call~input_o\,
	datae => \ALT_INV_Enow.Init~q\,
	combout => \Efut.Gd~0_combout\);

\Enow.Gd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Efut.Gd~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Enow.Gd~q\);

ww_do <= \do~output_o\;

ww_upDown(0) <= \upDown[0]~output_o\;

ww_upDown(1) <= \upDown[1]~output_o\;
END structure;


