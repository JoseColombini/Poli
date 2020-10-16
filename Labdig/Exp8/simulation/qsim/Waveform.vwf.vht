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
-- Generated on "06/23/2020 17:23:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSMexp8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSMexp8_vhd_vec_tst IS
END FSMexp8_vhd_vec_tst;
ARCHITECTURE FSMexp8_arch OF FSMexp8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c1m : STD_LOGIC;
SIGNAL c1s : STD_LOGIC;
SIGNAL c5s : STD_LOGIC;
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
COMPONENT FSMexp8
	PORT (
	c1m : OUT STD_LOGIC;
	c1s : OUT STD_LOGIC;
	c5s : OUT STD_LOGIC;
	clock : IN STD_LOGIC;
	Noturno : IN STD_LOGIC;
	PdA : IN STD_LOGIC;
	PdB : IN STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	VeA : IN STD_LOGIC;
	VeB : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FSMexp8
	PORT MAP (
-- list connections between master ports and signals
	c1m => c1m,
	c1s => c1s,
	c5s => c5s,
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
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- Noturno
t_prcs_Noturno: PROCESS
BEGIN
	Noturno <= '0';
	WAIT FOR 30000 ps;
	Noturno <= '1';
	WAIT FOR 120000 ps;
	Noturno <= '0';
WAIT;
END PROCESS t_prcs_Noturno;

-- PdA
t_prcs_PdA: PROCESS
BEGIN
	PdA <= '0';
	WAIT FOR 230000 ps;
	PdA <= '1';
	WAIT FOR 230000 ps;
	PdA <= '0';
	WAIT FOR 40000 ps;
	PdA <= '1';
	WAIT FOR 40000 ps;
	PdA <= '0';
WAIT;
END PROCESS t_prcs_PdA;

-- VeA
t_prcs_VeA: PROCESS
BEGIN
	VeA <= '0';
	WAIT FOR 230000 ps;
	VeA <= '1';
	WAIT FOR 230000 ps;
	VeA <= '0';
	WAIT FOR 140000 ps;
	VeA <= '1';
	WAIT FOR 30000 ps;
	VeA <= '0';
	WAIT FOR 40000 ps;
	VeA <= '1';
	WAIT FOR 280000 ps;
	VeA <= '0';
WAIT;
END PROCESS t_prcs_VeA;

-- PdB
t_prcs_PdB: PROCESS
BEGIN
	PdB <= '0';
	WAIT FOR 230000 ps;
	PdB <= '1';
	WAIT FOR 230000 ps;
	PdB <= '0';
WAIT;
END PROCESS t_prcs_PdB;

-- VeB
t_prcs_VeB: PROCESS
BEGIN
	VeB <= '0';
	WAIT FOR 230000 ps;
	VeB <= '1';
	WAIT FOR 230000 ps;
	VeB <= '0';
	WAIT FOR 60000 ps;
	VeB <= '1';
	WAIT FOR 110000 ps;
	VeB <= '0';
WAIT;
END PROCESS t_prcs_VeB;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 400000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END FSMexp8_arch;
