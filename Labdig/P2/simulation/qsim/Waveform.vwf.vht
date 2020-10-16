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
-- Generated on "07/23/2020 16:07:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          P2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY P2_vhd_vec_tst IS
END P2_vhd_vec_tst;
ARCHITECTURE P2_arch OF P2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c2k : STD_LOGIC;
SIGNAL c20 : STD_LOGIC;
SIGNAL c20k : STD_LOGIC;
SIGNAL c200 : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
COMPONENT P2
	PORT (
	c2k : OUT STD_LOGIC;
	c20 : OUT STD_LOGIC;
	c20k : OUT STD_LOGIC;
	c200 : OUT STD_LOGIC;
	clock : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : P2
	PORT MAP (
-- list connections between master ports and signals
	c2k => c2k,
	c20 => c20,
	c20k => c20k,
	c200 => c200,
	clock => clock
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 500 ps;
	clock <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END P2_arch;
