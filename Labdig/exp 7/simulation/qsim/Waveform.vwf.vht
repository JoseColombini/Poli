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
-- Generated on "05/04/2020 02:19:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exp7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exp7_vhd_vec_tst IS
END exp7_vhd_vec_tst;
ARCHITECTURE exp7_arch OF exp7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL Noturno : STD_LOGIC;
SIGNAL PvA : STD_LOGIC;
SIGNAL PvB : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT exp7
	PORT (
	clock : IN STD_LOGIC;
	Noturno : IN STD_LOGIC;
	PvA : IN STD_LOGIC;
	PvB : IN STD_LOGIC;
	Q0 : BUFFER STD_LOGIC;
	Q1 : BUFFER STD_LOGIC;
	Q2 : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : exp7
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	Noturno => Noturno,
	PvA => PvA,
	PvB => PvB,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	reset => reset
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
	WAIT FOR 20000 ps;
	Noturno <= '1';
	WAIT FOR 100000 ps;
	Noturno <= '0';
WAIT;
END PROCESS t_prcs_Noturno;

-- PvA
t_prcs_PvA: PROCESS
BEGIN
	PvA <= '0';
	WAIT FOR 130000 ps;
	PvA <= '1';
	WAIT FOR 110000 ps;
	PvA <= '0';
	WAIT FOR 90000 ps;
	PvA <= '1';
	WAIT FOR 100000 ps;
	PvA <= '0';
WAIT;
END PROCESS t_prcs_PvA;

-- PvB
t_prcs_PvB: PROCESS
BEGIN
	PvB <= '0';
	WAIT FOR 130000 ps;
	PvB <= '1';
	WAIT FOR 110000 ps;
	PvB <= '0';
WAIT;
END PROCESS t_prcs_PvB;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 400000 ps;
	reset <= '1';
	WAIT FOR 30000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END exp7_arch;
