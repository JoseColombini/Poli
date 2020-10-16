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
-- Generated on "06/23/2020 16:00:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CircuitoTemporizador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CircuitoTemporizador_vhd_vec_tst IS
END CircuitoTemporizador_vhd_vec_tst;
ARCHITECTURE CircuitoTemporizador_arch OF CircuitoTemporizador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c1m : STD_LOGIC;
SIGNAL c1s : STD_LOGIC;
SIGNAL c5s : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
COMPONENT CircuitoTemporizador
	PORT (
	c1m : IN STD_LOGIC;
	c1s : IN STD_LOGIC;
	c5s : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	cout : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CircuitoTemporizador
	PORT MAP (
-- list connections between master ports and signals
	c1m => c1m,
	c1s => c1s,
	c5s => c5s,
	clock => clock,
	cout => cout
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

-- c1s
t_prcs_c1s: PROCESS
BEGIN
	c1s <= '0';
	WAIT FOR 970000 ps;
	c1s <= '1';
WAIT;
END PROCESS t_prcs_c1s;

-- c5s
t_prcs_c5s: PROCESS
BEGIN
	c5s <= '1';
	WAIT FOR 110000 ps;
	c5s <= '0';
WAIT;
END PROCESS t_prcs_c5s;

-- c1m
t_prcs_c1m: PROCESS
BEGIN
	c1m <= '0';
	WAIT FOR 120000 ps;
	c1m <= '1';
	WAIT FOR 840000 ps;
	c1m <= '0';
WAIT;
END PROCESS t_prcs_c1m;
END CircuitoTemporizador_arch;
