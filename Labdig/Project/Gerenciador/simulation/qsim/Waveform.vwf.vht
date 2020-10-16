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
-- Generated on "05/24/2020 18:18:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          gerenciador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY gerenciador_vhd_vec_tst IS
END gerenciador_vhd_vec_tst;
ARCHITECTURE gerenciador_arch OF gerenciador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL call : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL destiny : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL direction : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL internal : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL position : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL requestsDown : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL requestsUp : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT gerenciador
	PORT (
	call : OUT STD_LOGIC;
	clock : IN STD_LOGIC;
	destiny : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	direction : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	internal : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	position : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	requestsDown : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	requestsUp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : gerenciador
	PORT MAP (
-- list connections between master ports and signals
	call => call,
	clock => clock,
	destiny => destiny,
	direction => direction,
	internal => internal,
	position => position,
	requestsDown => requestsDown,
	requestsUp => requestsUp,
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
-- direction[1]
t_prcs_direction_1: PROCESS
BEGIN
	direction(1) <= '0';
WAIT;
END PROCESS t_prcs_direction_1;
-- direction[0]
t_prcs_direction_0: PROCESS
BEGIN
	direction(0) <= '0';
WAIT;
END PROCESS t_prcs_direction_0;
-- internal[7]
t_prcs_internal_7: PROCESS
BEGIN
	internal(7) <= '0';
	WAIT FOR 520000 ps;
	internal(7) <= '1';
	WAIT FOR 140000 ps;
	internal(7) <= '0';
WAIT;
END PROCESS t_prcs_internal_7;
-- internal[6]
t_prcs_internal_6: PROCESS
BEGIN
	internal(6) <= '0';
WAIT;
END PROCESS t_prcs_internal_6;
-- internal[5]
t_prcs_internal_5: PROCESS
BEGIN
	internal(5) <= '0';
WAIT;
END PROCESS t_prcs_internal_5;
-- internal[4]
t_prcs_internal_4: PROCESS
BEGIN
	internal(4) <= '0';
WAIT;
END PROCESS t_prcs_internal_4;
-- internal[3]
t_prcs_internal_3: PROCESS
BEGIN
	internal(3) <= '0';
	WAIT FOR 30000 ps;
	internal(3) <= '1';
	WAIT FOR 400000 ps;
	internal(3) <= '0';
WAIT;
END PROCESS t_prcs_internal_3;
-- internal[2]
t_prcs_internal_2: PROCESS
BEGIN
	internal(2) <= '0';
WAIT;
END PROCESS t_prcs_internal_2;
-- internal[1]
t_prcs_internal_1: PROCESS
BEGIN
	internal(1) <= '0';
WAIT;
END PROCESS t_prcs_internal_1;
-- internal[0]
t_prcs_internal_0: PROCESS
BEGIN
	internal(0) <= '0';
WAIT;
END PROCESS t_prcs_internal_0;
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
WAIT;
END PROCESS t_prcs_position_1;
-- position[0]
t_prcs_position_0: PROCESS
BEGIN
	position(0) <= '0';
WAIT;
END PROCESS t_prcs_position_0;
-- requestsDown[7]
t_prcs_requestsDown_7: PROCESS
BEGIN
	requestsDown(7) <= '0';
WAIT;
END PROCESS t_prcs_requestsDown_7;
-- requestsDown[6]
t_prcs_requestsDown_6: PROCESS
BEGIN
	requestsDown(6) <= '0';
WAIT;
END PROCESS t_prcs_requestsDown_6;
-- requestsDown[5]
t_prcs_requestsDown_5: PROCESS
BEGIN
	requestsDown(5) <= '0';
WAIT;
END PROCESS t_prcs_requestsDown_5;
-- requestsDown[4]
t_prcs_requestsDown_4: PROCESS
BEGIN
	requestsDown(4) <= '0';
WAIT;
END PROCESS t_prcs_requestsDown_4;
-- requestsDown[3]
t_prcs_requestsDown_3: PROCESS
BEGIN
	requestsDown(3) <= '0';
WAIT;
END PROCESS t_prcs_requestsDown_3;
-- requestsDown[2]
t_prcs_requestsDown_2: PROCESS
BEGIN
	requestsDown(2) <= '0';
WAIT;
END PROCESS t_prcs_requestsDown_2;
-- requestsDown[1]
t_prcs_requestsDown_1: PROCESS
BEGIN
	requestsDown(1) <= '0';
WAIT;
END PROCESS t_prcs_requestsDown_1;
-- requestsDown[0]
t_prcs_requestsDown_0: PROCESS
BEGIN
	requestsDown(0) <= '0';
WAIT;
END PROCESS t_prcs_requestsDown_0;
-- requestsUp[7]
t_prcs_requestsUp_7: PROCESS
BEGIN
	requestsUp(7) <= '0';
WAIT;
END PROCESS t_prcs_requestsUp_7;
-- requestsUp[6]
t_prcs_requestsUp_6: PROCESS
BEGIN
	requestsUp(6) <= '0';
WAIT;
END PROCESS t_prcs_requestsUp_6;
-- requestsUp[5]
t_prcs_requestsUp_5: PROCESS
BEGIN
	requestsUp(5) <= '0';
WAIT;
END PROCESS t_prcs_requestsUp_5;
-- requestsUp[4]
t_prcs_requestsUp_4: PROCESS
BEGIN
	requestsUp(4) <= '0';
WAIT;
END PROCESS t_prcs_requestsUp_4;
-- requestsUp[3]
t_prcs_requestsUp_3: PROCESS
BEGIN
	requestsUp(3) <= '0';
WAIT;
END PROCESS t_prcs_requestsUp_3;
-- requestsUp[2]
t_prcs_requestsUp_2: PROCESS
BEGIN
	requestsUp(2) <= '0';
WAIT;
END PROCESS t_prcs_requestsUp_2;
-- requestsUp[1]
t_prcs_requestsUp_1: PROCESS
BEGIN
	requestsUp(1) <= '0';
WAIT;
END PROCESS t_prcs_requestsUp_1;
-- requestsUp[0]
t_prcs_requestsUp_0: PROCESS
BEGIN
	requestsUp(0) <= '0';
WAIT;
END PROCESS t_prcs_requestsUp_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END gerenciador_arch;
