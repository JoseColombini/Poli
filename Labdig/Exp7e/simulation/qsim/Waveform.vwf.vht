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
-- Generated on "06/23/2020 17:11:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MaquinaEstadoSemaforo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MaquinaEstadoSemaforo_vhd_vec_tst IS
END MaquinaEstadoSemaforo_vhd_vec_tst;
ARCHITECTURE MaquinaEstadoSemaforo_arch OF MaquinaEstadoSemaforo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c1m : STD_LOGIC;
SIGNAL c1s : STD_LOGIC;
SIGNAL c5s : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL Noturno : STD_LOGIC;
SIGNAL PvA : STD_LOGIC;
SIGNAL PvB : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT MaquinaEstadoSemaforo
	PORT (
	c1m : OUT STD_LOGIC;
	c1s : OUT STD_LOGIC;
	c5s : OUT STD_LOGIC;
	clock : IN STD_LOGIC;
	Noturno : IN STD_LOGIC;
	PvA : IN STD_LOGIC;
	PvB : IN STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MaquinaEstadoSemaforo
	PORT MAP (
-- list connections between master ports and signals
	c1m => c1m,
	c1s => c1s,
	c5s => c5s,
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
	WAIT FOR 650000 ps;
	Noturno <= '1';
	WAIT FOR 240000 ps;
	Noturno <= '0';
WAIT;
END PROCESS t_prcs_Noturno;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- PvB
t_prcs_PvB: PROCESS
BEGIN
	PvB <= '0';
	WAIT FOR 90000 ps;
	PvB <= '1';
	WAIT FOR 210000 ps;
	PvB <= '0';
	WAIT FOR 30000 ps;
	PvB <= '1';
	WAIT FOR 160000 ps;
	PvB <= '0';
	WAIT FOR 500000 ps;
	PvB <= '1';
WAIT;
END PROCESS t_prcs_PvB;

-- PvA
t_prcs_PvA: PROCESS
BEGIN
	PvA <= '0';
	WAIT FOR 90000 ps;
	PvA <= '1';
	WAIT FOR 210000 ps;
	PvA <= '0';
	WAIT FOR 180000 ps;
	PvA <= '1';
	WAIT FOR 130000 ps;
	PvA <= '0';
	WAIT FOR 380000 ps;
	PvA <= '1';
WAIT;
END PROCESS t_prcs_PvA;
END MaquinaEstadoSemaforo_arch;
