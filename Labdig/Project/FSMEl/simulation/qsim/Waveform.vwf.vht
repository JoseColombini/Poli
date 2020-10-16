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
-- Generated on "05/24/2020 21:22:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSMEl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSMEl_vhd_vec_tst IS
END FSMEl_vhd_vec_tst;
ARCHITECTURE FSMEl_arch OF FSMEl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL call : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL destiny : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL do : STD_LOGIC;
SIGNAL position : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL upDown : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT FSMEl
	PORT (
	call : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	destiny : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	do : OUT STD_LOGIC;
	position : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	upDown : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FSMEl
	PORT MAP (
-- list connections between master ports and signals
	call => call,
	clock => clock,
	destiny => destiny,
	do => do,
	position => position,
	reset => reset,
	upDown => upDown
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

-- call
t_prcs_call: PROCESS
BEGIN
	call <= '1';
	WAIT FOR 30000 ps;
	call <= '0';
	WAIT FOR 20000 ps;
	call <= '1';
	WAIT FOR 110000 ps;
	call <= '0';
	WAIT FOR 30000 ps;
	call <= '1';
	WAIT FOR 40000 ps;
	call <= '0';
WAIT;
END PROCESS t_prcs_call;
-- destiny[2]
t_prcs_destiny_2: PROCESS
BEGIN
	destiny(2) <= '0';
	WAIT FOR 50000 ps;
	destiny(2) <= '1';
	WAIT FOR 60000 ps;
	destiny(2) <= '0';
WAIT;
END PROCESS t_prcs_destiny_2;
-- destiny[1]
t_prcs_destiny_1: PROCESS
BEGIN
	destiny(1) <= '0';
	WAIT FOR 10000 ps;
	destiny(1) <= '1';
	WAIT FOR 100000 ps;
	destiny(1) <= '0';
WAIT;
END PROCESS t_prcs_destiny_1;
-- destiny[0]
t_prcs_destiny_0: PROCESS
BEGIN
	destiny(0) <= '0';
WAIT;
END PROCESS t_prcs_destiny_0;
-- position[2]
t_prcs_position_2: PROCESS
BEGIN
	position(2) <= '0';
WAIT;
END PROCESS t_prcs_position_2;
-- position[1]
t_prcs_position_1: PROCESS
BEGIN
	position(1) <= '0';
	WAIT FOR 40000 ps;
	position(1) <= '1';
	WAIT FOR 70000 ps;
	position(1) <= '0';
WAIT;
END PROCESS t_prcs_position_1;
-- position[0]
t_prcs_position_0: PROCESS
BEGIN
	position(0) <= '0';
	WAIT FOR 20000 ps;
	position(0) <= '1';
	WAIT FOR 20000 ps;
	position(0) <= '0';
WAIT;
END PROCESS t_prcs_position_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END FSMEl_arch;
