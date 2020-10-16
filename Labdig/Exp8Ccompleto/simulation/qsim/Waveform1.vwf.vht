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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/23/2020 14:36:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Exp8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Exp8_vhd_vec_tst IS
END Exp8_vhd_vec_tst;
ARCHITECTURE Exp8_arch OF Exp8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL Noturno : STD_LOGIC;
SIGNAL PdA : STD_LOGIC;
SIGNAL PdB : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL VeA : STD_LOGIC;
SIGNAL VeB : STD_LOGIC;
COMPONENT Exp8
	PORT (
	clock : IN STD_LOGIC;
	Noturno : IN STD_LOGIC;
	PdA : IN STD_LOGIC;
	PdB : IN STD_LOGIC;
	Q0 : BUFFER STD_LOGIC;
	Q1 : BUFFER STD_LOGIC;
	Q2 : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	VeA : IN STD_LOGIC;
	VeB : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Exp8
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	Noturno => Noturno,
	PdA => PdA,
	PdB => PdB,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	reset => reset,
	VeA => VeA,
	VeB => VeB
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 500 ps;
	clock <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- Noturno
t_prcs_Noturno: PROCESS
BEGIN
	Noturno <= '0';
WAIT;
END PROCESS t_prcs_Noturno;

-- PdA
t_prcs_PdA: PROCESS
BEGIN
	PdA <= '0';
	WAIT FOR 110000 ps;
	PdA <= '1';
	WAIT FOR 110000 ps;
	PdA <= '0';
WAIT;
END PROCESS t_prcs_PdA;

-- PdB
t_prcs_PdB: PROCESS
BEGIN
	PdB <= '0';
	WAIT FOR 180000 ps;
	PdB <= '1';
	WAIT FOR 190000 ps;
	PdB <= '0';
WAIT;
END PROCESS t_prcs_PdB;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- VeA
t_prcs_VeA: PROCESS
BEGIN
	VeA <= '0';
	WAIT FOR 460000 ps;
	VeA <= '1';
	WAIT FOR 460000 ps;
	VeA <= '0';
WAIT;
END PROCESS t_prcs_VeA;

-- VeB
t_prcs_VeB: PROCESS
BEGIN
	VeB <= '0';
	WAIT FOR 460000 ps;
	VeB <= '1';
	WAIT FOR 460000 ps;
	VeB <= '0';
WAIT;
END PROCESS t_prcs_VeB;
END Exp8_arch;
