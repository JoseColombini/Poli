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
-- Generated on "06/23/2020 18:03:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          farol
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY farol_vhd_vec_tst IS
END farol_vhd_vec_tst;
ARCHITECTURE farol_arch OF farol_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ama : STD_LOGIC;
SIGNAL amb : STD_LOGIC;
SIGNAL estado : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL vda : STD_LOGIC;
SIGNAL vdb : STD_LOGIC;
SIGNAL vdpa : STD_LOGIC;
SIGNAL vdpb : STD_LOGIC;
SIGNAL vma : STD_LOGIC;
SIGNAL vmb : STD_LOGIC;
SIGNAL vmpa : STD_LOGIC;
SIGNAL vmpb : STD_LOGIC;
COMPONENT farol
	PORT (
	ama : OUT STD_LOGIC;
	amb : OUT STD_LOGIC;
	estado : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	vda : OUT STD_LOGIC;
	vdb : OUT STD_LOGIC;
	vdpa : OUT STD_LOGIC;
	vdpb : OUT STD_LOGIC;
	vma : OUT STD_LOGIC;
	vmb : OUT STD_LOGIC;
	vmpa : OUT STD_LOGIC;
	vmpb : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : farol
	PORT MAP (
-- list connections between master ports and signals
	ama => ama,
	amb => amb,
	estado => estado,
	vda => vda,
	vdb => vdb,
	vdpa => vdpa,
	vdpb => vdpb,
	vma => vma,
	vmb => vmb,
	vmpa => vmpa,
	vmpb => vmpb
	);
-- estado[2]
t_prcs_estado_2: PROCESS
BEGIN
	estado(2) <= '0';
	WAIT FOR 180000 ps;
	estado(2) <= '1';
	WAIT FOR 90000 ps;
	estado(2) <= '0';
WAIT;
END PROCESS t_prcs_estado_2;
-- estado[1]
t_prcs_estado_1: PROCESS
BEGIN
	estado(1) <= '0';
	WAIT FOR 80000 ps;
	estado(1) <= '1';
	WAIT FOR 150000 ps;
	estado(1) <= '0';
WAIT;
END PROCESS t_prcs_estado_1;
-- estado[0]
t_prcs_estado_0: PROCESS
BEGIN
	estado(0) <= '0';
	WAIT FOR 30000 ps;
	estado(0) <= '1';
	WAIT FOR 100000 ps;
	estado(0) <= '0';
WAIT;
END PROCESS t_prcs_estado_0;
END farol_arch;
