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

-- DATE "06/23/2020 18:03:40"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	farol IS
    PORT (
	estado : IN std_logic_vector(2 DOWNTO 0);
	vda : OUT std_logic;
	ama : OUT std_logic;
	vma : OUT std_logic;
	vdb : OUT std_logic;
	amb : OUT std_logic;
	vmb : OUT std_logic;
	vdpa : OUT std_logic;
	vmpa : OUT std_logic;
	vdpb : OUT std_logic;
	vmpb : OUT std_logic
	);
END farol;

ARCHITECTURE structure OF farol IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_estado : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vda : std_logic;
SIGNAL ww_ama : std_logic;
SIGNAL ww_vma : std_logic;
SIGNAL ww_vdb : std_logic;
SIGNAL ww_amb : std_logic;
SIGNAL ww_vmb : std_logic;
SIGNAL ww_vdpa : std_logic;
SIGNAL ww_vmpa : std_logic;
SIGNAL ww_vdpb : std_logic;
SIGNAL ww_vmpb : std_logic;
SIGNAL \vda~output_o\ : std_logic;
SIGNAL \ama~output_o\ : std_logic;
SIGNAL \vma~output_o\ : std_logic;
SIGNAL \vdb~output_o\ : std_logic;
SIGNAL \amb~output_o\ : std_logic;
SIGNAL \vmb~output_o\ : std_logic;
SIGNAL \vdpa~output_o\ : std_logic;
SIGNAL \vmpa~output_o\ : std_logic;
SIGNAL \vdpb~output_o\ : std_logic;
SIGNAL \vmpb~output_o\ : std_logic;
SIGNAL \estado[0]~input_o\ : std_logic;
SIGNAL \estado[1]~input_o\ : std_logic;
SIGNAL \estado[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ama~0_combout\ : std_logic;
SIGNAL \vma~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \amb~0_combout\ : std_logic;
SIGNAL \vmpb~0_combout\ : std_logic;
SIGNAL \vdpa~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_estado[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_estado[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_vdpa~0_combout\ : std_logic;
SIGNAL \ALT_INV_vmpb~0_combout\ : std_logic;

BEGIN

ww_estado <= estado;
vda <= ww_vda;
ama <= ww_ama;
vma <= ww_vma;
vdb <= ww_vdb;
amb <= ww_amb;
vmb <= ww_vmb;
vdpa <= ww_vdpa;
vmpa <= ww_vmpa;
vdpb <= ww_vdpb;
vmpb <= ww_vmpb;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_estado[2]~input_o\ <= NOT \estado[2]~input_o\;
\ALT_INV_estado[1]~input_o\ <= NOT \estado[1]~input_o\;
\ALT_INV_estado[0]~input_o\ <= NOT \estado[0]~input_o\;
\ALT_INV_vdpa~0_combout\ <= NOT \vdpa~0_combout\;
\ALT_INV_vmpb~0_combout\ <= NOT \vmpb~0_combout\;

\vda~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \vda~output_o\);

\ama~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ama~0_combout\,
	devoe => ww_devoe,
	o => \ama~output_o\);

\vma~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vma~0_combout\,
	devoe => ww_devoe,
	o => \vma~output_o\);

\vdb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \vdb~output_o\);

\amb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \amb~0_combout\,
	devoe => ww_devoe,
	o => \amb~output_o\);

\vmb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vmpb~0_combout\,
	devoe => ww_devoe,
	o => \vmb~output_o\);

\vdpa~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vdpa~0_combout\,
	devoe => ww_devoe,
	o => \vdpa~output_o\);

\vmpa~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vdpa~0_combout\,
	devoe => ww_devoe,
	o => \vmpa~output_o\);

\vdpb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_vmpb~0_combout\,
	devoe => ww_devoe,
	o => \vdpb~output_o\);

\vmpb~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vmpb~0_combout\,
	devoe => ww_devoe,
	o => \vmpb~output_o\);

\estado[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado(0),
	o => \estado[0]~input_o\);

\estado[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado(1),
	o => \estado[1]~input_o\);

\estado[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_estado(2),
	o => \estado[2]~input_o\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\estado[0]~input_o\ & (!\estado[1]~input_o\ & !\estado[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado[0]~input_o\,
	datab => \ALT_INV_estado[1]~input_o\,
	datac => \ALT_INV_estado[2]~input_o\,
	combout => \Equal0~0_combout\);

\ama~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ama~0_combout\ = (!\estado[0]~input_o\ & (\estado[1]~input_o\ & \estado[2]~input_o\)) # (\estado[0]~input_o\ & (!\estado[1]~input_o\ & !\estado[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado[0]~input_o\,
	datab => \ALT_INV_estado[1]~input_o\,
	datac => \ALT_INV_estado[2]~input_o\,
	combout => \ama~0_combout\);

\vma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vma~0_combout\ = (!\estado[1]~input_o\ & (\estado[0]~input_o\ & \estado[2]~input_o\)) # (\estado[1]~input_o\ & ((!\estado[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010000110100001101000011010000110100001101000011010000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado[0]~input_o\,
	datab => \ALT_INV_estado[1]~input_o\,
	datac => \ALT_INV_estado[2]~input_o\,
	combout => \vma~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\estado[0]~input_o\ & (\estado[1]~input_o\ & !\estado[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado[0]~input_o\,
	datab => \ALT_INV_estado[1]~input_o\,
	datac => \ALT_INV_estado[2]~input_o\,
	combout => \Equal0~1_combout\);

\amb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \amb~0_combout\ = (!\estado[0]~input_o\ & \estado[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado[0]~input_o\,
	datab => \ALT_INV_estado[1]~input_o\,
	combout => \amb~0_combout\);

\vmpb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vmpb~0_combout\ = ((!\estado[0]~input_o\ & \estado[2]~input_o\)) # (\estado[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado[0]~input_o\,
	datab => \ALT_INV_estado[1]~input_o\,
	datac => \ALT_INV_estado[2]~input_o\,
	combout => \vmpb~0_combout\);

\vdpa~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vdpa~0_combout\ = (\estado[1]~input_o\ & !\estado[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado[1]~input_o\,
	datab => \ALT_INV_estado[2]~input_o\,
	combout => \vdpa~0_combout\);

ww_vda <= \vda~output_o\;

ww_ama <= \ama~output_o\;

ww_vma <= \vma~output_o\;

ww_vdb <= \vdb~output_o\;

ww_amb <= \amb~output_o\;

ww_vmb <= \vmb~output_o\;

ww_vdpa <= \vdpa~output_o\;

ww_vmpa <= \vmpa~output_o\;

ww_vdpb <= \vdpb~output_o\;

ww_vmpb <= \vmpb~output_o\;
END structure;


