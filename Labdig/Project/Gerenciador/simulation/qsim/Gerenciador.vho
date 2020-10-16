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

-- DATE "05/24/2020 18:18:38"

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

ENTITY 	gerenciador IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	position : IN std_logic_vector(2 DOWNTO 0);
	requestsDown : IN std_logic_vector(7 DOWNTO 0);
	requestsUp : IN std_logic_vector(7 DOWNTO 0);
	internal : IN std_logic_vector(7 DOWNTO 0);
	direction : IN std_logic_vector(1 DOWNTO 0);
	destiny : OUT std_logic_vector(2 DOWNTO 0);
	call : OUT std_logic
	);
END gerenciador;

ARCHITECTURE structure OF gerenciador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_position : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_requestsDown : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_requestsUp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_internal : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_direction : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_destiny : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_call : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \destiny[0]~output_o\ : std_logic;
SIGNAL \destiny[1]~output_o\ : std_logic;
SIGNAL \destiny[2]~output_o\ : std_logic;
SIGNAL \call~output_o\ : std_logic;
SIGNAL \internal[7]~input_o\ : std_logic;
SIGNAL \direction[0]~input_o\ : std_logic;
SIGNAL \direction[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \internal[5]~input_o\ : std_logic;
SIGNAL \internal[6]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \internal[0]~input_o\ : std_logic;
SIGNAL \internal[1]~input_o\ : std_logic;
SIGNAL \internal[2]~input_o\ : std_logic;
SIGNAL \internal[3]~input_o\ : std_logic;
SIGNAL \internal[4]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \position[2]~input_o\ : std_logic;
SIGNAL \position[0]~input_o\ : std_logic;
SIGNAL \position[1]~input_o\ : std_logic;
SIGNAL \d~0_combout\ : std_logic;
SIGNAL \Add3~18_cout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \LessThan27~0_combout\ : std_logic;
SIGNAL \requestsUp[1]~input_o\ : std_logic;
SIGNAL \stop~0_combout\ : std_logic;
SIGNAL \LessThan26~0_combout\ : std_logic;
SIGNAL \stop~1_combout\ : std_logic;
SIGNAL \Add5~18_cout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \LessThan29~0_combout\ : std_logic;
SIGNAL \LessThan27~1_combout\ : std_logic;
SIGNAL \LessThan27~2_combout\ : std_logic;
SIGNAL \stop~2_combout\ : std_logic;
SIGNAL \LessThan29~1_combout\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \LessThan29~2_combout\ : std_logic;
SIGNAL \aux~0_combout\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \LessThan29~3_combout\ : std_logic;
SIGNAL \LessThan29~4_combout\ : std_logic;
SIGNAL \requestsUp[2]~input_o\ : std_logic;
SIGNAL \stop~3_combout\ : std_logic;
SIGNAL \stop~4_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \aux~1_combout\ : std_logic;
SIGNAL \LessThan31~0_combout\ : std_logic;
SIGNAL \requestsUp[3]~input_o\ : std_logic;
SIGNAL \stop~5_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \aux~2_combout\ : std_logic;
SIGNAL \LessThan31~1_combout\ : std_logic;
SIGNAL \LessThan31~2_combout\ : std_logic;
SIGNAL \stop~6_combout\ : std_logic;
SIGNAL \f[0]~0_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \LessThan31~3_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \LessThan31~4_combout\ : std_logic;
SIGNAL \requestsUp[4]~input_o\ : std_logic;
SIGNAL \stop~7_combout\ : std_logic;
SIGNAL \stop~8_combout\ : std_logic;
SIGNAL \f[0]~1_combout\ : std_logic;
SIGNAL \aux~3_combout\ : std_logic;
SIGNAL \stop~9_combout\ : std_logic;
SIGNAL \aux~4_combout\ : std_logic;
SIGNAL \aux~5_combout\ : std_logic;
SIGNAL \aux~6_combout\ : std_logic;
SIGNAL \aux~7_combout\ : std_logic;
SIGNAL \stop~10_combout\ : std_logic;
SIGNAL \stop~11_combout\ : std_logic;
SIGNAL \stop~12_combout\ : std_logic;
SIGNAL \stop~13_combout\ : std_logic;
SIGNAL \stop~14_combout\ : std_logic;
SIGNAL \stop~15_combout\ : std_logic;
SIGNAL \stop~16_combout\ : std_logic;
SIGNAL \stop~17_combout\ : std_logic;
SIGNAL \aux~8_combout\ : std_logic;
SIGNAL \aux~9_combout\ : std_logic;
SIGNAL \aux~10_combout\ : std_logic;
SIGNAL \stop~18_combout\ : std_logic;
SIGNAL \aux~11_combout\ : std_logic;
SIGNAL \aux~12_combout\ : std_logic;
SIGNAL \stop~19_combout\ : std_logic;
SIGNAL \stop~20_combout\ : std_logic;
SIGNAL \aux~13_combout\ : std_logic;
SIGNAL \stop~21_combout\ : std_logic;
SIGNAL \stop~22_combout\ : std_logic;
SIGNAL \stop~23_combout\ : std_logic;
SIGNAL \stop~24_combout\ : std_logic;
SIGNAL \stop~25_combout\ : std_logic;
SIGNAL \f[0]~2_combout\ : std_logic;
SIGNAL \f[0]~3_combout\ : std_logic;
SIGNAL \requestsDown[1]~input_o\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \requestsDown[2]~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \aux~14_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \stop~26_combout\ : std_logic;
SIGNAL \requestsDown[3]~input_o\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \aux~15_combout\ : std_logic;
SIGNAL \aux~16_combout\ : std_logic;
SIGNAL \aux~17_combout\ : std_logic;
SIGNAL \aux~18_combout\ : std_logic;
SIGNAL \aux~19_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \aux~20_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \aux~21_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \stop~27_combout\ : std_logic;
SIGNAL \f[0]~4_combout\ : std_logic;
SIGNAL \f[0]~5_combout\ : std_logic;
SIGNAL \f[2]~6_combout\ : std_logic;
SIGNAL \f[1]~8_combout\ : std_logic;
SIGNAL \f[1]~9_combout\ : std_logic;
SIGNAL \f[1]~7_combout\ : std_logic;
SIGNAL \f[1]~12_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \stop~28_combout\ : std_logic;
SIGNAL \stop~29_combout\ : std_logic;
SIGNAL \f[2]~10_combout\ : std_logic;
SIGNAL \f[2]~11_combout\ : std_logic;
SIGNAL \requestsDown[0]~input_o\ : std_logic;
SIGNAL \requestsDown[5]~input_o\ : std_logic;
SIGNAL \requestsDown[6]~input_o\ : std_logic;
SIGNAL \requestsDown[7]~input_o\ : std_logic;
SIGNAL \requestsUp[0]~input_o\ : std_logic;
SIGNAL \requestsUp[5]~input_o\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \requestsUp[6]~input_o\ : std_logic;
SIGNAL \requestsUp[7]~input_o\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \requestsDown[4]~input_o\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL f : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_stop~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan31~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan31~1_combout\ : std_logic;
SIGNAL \ALT_INV_aux~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add10~1_combout\ : std_logic;
SIGNAL \ALT_INV_stop~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan31~0_combout\ : std_logic;
SIGNAL \ALT_INV_aux~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add10~0_combout\ : std_logic;
SIGNAL \ALT_INV_stop~4_combout\ : std_logic;
SIGNAL \ALT_INV_stop~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan29~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan29~3_combout\ : std_logic;
SIGNAL \ALT_INV_aux~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan29~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan29~1_combout\ : std_logic;
SIGNAL \ALT_INV_stop~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan27~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan27~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan29~0_combout\ : std_logic;
SIGNAL \ALT_INV_stop~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan26~0_combout\ : std_logic;
SIGNAL \ALT_INV_stop~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_position[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_position[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_position[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_direction[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_direction[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsUp[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsDown[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsUp[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsDown[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsUp[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsDown[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsUp[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsUp[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsUp[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsUp[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsDown[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsDown[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsDown[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsDown[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_internal[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_internal[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_internal[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_internal[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_internal[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_internal[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_internal[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_internal[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsUp[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_requestsDown[2]~input_o\ : std_logic;
SIGNAL ALT_INV_f : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_f[1]~12_combout\ : std_logic;
SIGNAL \ALT_INV_d~0_combout\ : std_logic;
SIGNAL \ALT_INV_f[2]~11_combout\ : std_logic;
SIGNAL \ALT_INV_f[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_stop~29_combout\ : std_logic;
SIGNAL \ALT_INV_stop~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_f[1]~9_combout\ : std_logic;
SIGNAL \ALT_INV_f[1]~8_combout\ : std_logic;
SIGNAL \ALT_INV_f[1]~7_combout\ : std_logic;
SIGNAL \ALT_INV_f[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_f[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_f[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_stop~27_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \ALT_INV_aux~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \ALT_INV_aux~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~4_combout\ : std_logic;
SIGNAL \ALT_INV_aux~19_combout\ : std_logic;
SIGNAL \ALT_INV_aux~18_combout\ : std_logic;
SIGNAL \ALT_INV_aux~17_combout\ : std_logic;
SIGNAL \ALT_INV_aux~16_combout\ : std_logic;
SIGNAL \ALT_INV_aux~15_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~6_combout\ : std_logic;
SIGNAL \ALT_INV_stop~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~2_combout\ : std_logic;
SIGNAL \ALT_INV_aux~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~5_combout\ : std_logic;
SIGNAL \ALT_INV_f[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_f[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_stop~25_combout\ : std_logic;
SIGNAL \ALT_INV_stop~24_combout\ : std_logic;
SIGNAL \ALT_INV_stop~23_combout\ : std_logic;
SIGNAL \ALT_INV_stop~22_combout\ : std_logic;
SIGNAL \ALT_INV_stop~21_combout\ : std_logic;
SIGNAL \ALT_INV_aux~13_combout\ : std_logic;
SIGNAL \ALT_INV_stop~20_combout\ : std_logic;
SIGNAL \ALT_INV_stop~19_combout\ : std_logic;
SIGNAL \ALT_INV_aux~12_combout\ : std_logic;
SIGNAL \ALT_INV_aux~11_combout\ : std_logic;
SIGNAL \ALT_INV_stop~18_combout\ : std_logic;
SIGNAL \ALT_INV_aux~10_combout\ : std_logic;
SIGNAL \ALT_INV_aux~9_combout\ : std_logic;
SIGNAL \ALT_INV_aux~8_combout\ : std_logic;
SIGNAL \ALT_INV_stop~17_combout\ : std_logic;
SIGNAL \ALT_INV_stop~16_combout\ : std_logic;
SIGNAL \ALT_INV_stop~15_combout\ : std_logic;
SIGNAL \ALT_INV_stop~14_combout\ : std_logic;
SIGNAL \ALT_INV_stop~13_combout\ : std_logic;
SIGNAL \ALT_INV_stop~12_combout\ : std_logic;
SIGNAL \ALT_INV_stop~11_combout\ : std_logic;
SIGNAL \ALT_INV_stop~10_combout\ : std_logic;
SIGNAL \ALT_INV_aux~7_combout\ : std_logic;
SIGNAL \ALT_INV_aux~6_combout\ : std_logic;
SIGNAL \ALT_INV_aux~5_combout\ : std_logic;
SIGNAL \ALT_INV_aux~4_combout\ : std_logic;
SIGNAL \ALT_INV_stop~9_combout\ : std_logic;
SIGNAL \ALT_INV_aux~3_combout\ : std_logic;
SIGNAL \ALT_INV_f[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_stop~8_combout\ : std_logic;
SIGNAL \ALT_INV_stop~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan31~4_combout\ : std_logic;
SIGNAL \ALT_INV_Add9~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan31~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add10~2_combout\ : std_logic;
SIGNAL \ALT_INV_f[0]~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_position <= position;
ww_requestsDown <= requestsDown;
ww_requestsUp <= requestsUp;
ww_internal <= internal;
ww_direction <= direction;
destiny <= ww_destiny;
call <= ww_call;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_stop~6_combout\ <= NOT \stop~6_combout\;
\ALT_INV_LessThan31~2_combout\ <= NOT \LessThan31~2_combout\;
\ALT_INV_LessThan31~1_combout\ <= NOT \LessThan31~1_combout\;
\ALT_INV_aux~2_combout\ <= NOT \aux~2_combout\;
\ALT_INV_Add10~1_combout\ <= NOT \Add10~1_combout\;
\ALT_INV_stop~5_combout\ <= NOT \stop~5_combout\;
\ALT_INV_LessThan31~0_combout\ <= NOT \LessThan31~0_combout\;
\ALT_INV_aux~1_combout\ <= NOT \aux~1_combout\;
\ALT_INV_Add10~0_combout\ <= NOT \Add10~0_combout\;
\ALT_INV_stop~4_combout\ <= NOT \stop~4_combout\;
\ALT_INV_stop~3_combout\ <= NOT \stop~3_combout\;
\ALT_INV_LessThan29~4_combout\ <= NOT \LessThan29~4_combout\;
\ALT_INV_LessThan29~3_combout\ <= NOT \LessThan29~3_combout\;
\ALT_INV_aux~0_combout\ <= NOT \aux~0_combout\;
\ALT_INV_LessThan29~2_combout\ <= NOT \LessThan29~2_combout\;
\ALT_INV_LessThan29~1_combout\ <= NOT \LessThan29~1_combout\;
\ALT_INV_stop~2_combout\ <= NOT \stop~2_combout\;
\ALT_INV_LessThan27~2_combout\ <= NOT \LessThan27~2_combout\;
\ALT_INV_LessThan27~1_combout\ <= NOT \LessThan27~1_combout\;
\ALT_INV_LessThan29~0_combout\ <= NOT \LessThan29~0_combout\;
\ALT_INV_stop~1_combout\ <= NOT \stop~1_combout\;
\ALT_INV_LessThan26~0_combout\ <= NOT \LessThan26~0_combout\;
\ALT_INV_stop~0_combout\ <= NOT \stop~0_combout\;
\ALT_INV_LessThan27~0_combout\ <= NOT \LessThan27~0_combout\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_process_1~3_combout\ <= NOT \process_1~3_combout\;
\ALT_INV_process_1~2_combout\ <= NOT \process_1~2_combout\;
\ALT_INV_process_1~1_combout\ <= NOT \process_1~1_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_position[1]~input_o\ <= NOT \position[1]~input_o\;
\ALT_INV_position[0]~input_o\ <= NOT \position[0]~input_o\;
\ALT_INV_position[2]~input_o\ <= NOT \position[2]~input_o\;
\ALT_INV_direction[1]~input_o\ <= NOT \direction[1]~input_o\;
\ALT_INV_direction[0]~input_o\ <= NOT \direction[0]~input_o\;
\ALT_INV_requestsUp[4]~input_o\ <= NOT \requestsUp[4]~input_o\;
\ALT_INV_requestsDown[4]~input_o\ <= NOT \requestsDown[4]~input_o\;
\ALT_INV_requestsUp[3]~input_o\ <= NOT \requestsUp[3]~input_o\;
\ALT_INV_requestsDown[3]~input_o\ <= NOT \requestsDown[3]~input_o\;
\ALT_INV_requestsUp[1]~input_o\ <= NOT \requestsUp[1]~input_o\;
\ALT_INV_requestsDown[1]~input_o\ <= NOT \requestsDown[1]~input_o\;
\ALT_INV_requestsUp[7]~input_o\ <= NOT \requestsUp[7]~input_o\;
\ALT_INV_requestsUp[6]~input_o\ <= NOT \requestsUp[6]~input_o\;
\ALT_INV_requestsUp[5]~input_o\ <= NOT \requestsUp[5]~input_o\;
\ALT_INV_requestsUp[0]~input_o\ <= NOT \requestsUp[0]~input_o\;
\ALT_INV_requestsDown[7]~input_o\ <= NOT \requestsDown[7]~input_o\;
\ALT_INV_requestsDown[6]~input_o\ <= NOT \requestsDown[6]~input_o\;
\ALT_INV_requestsDown[5]~input_o\ <= NOT \requestsDown[5]~input_o\;
\ALT_INV_requestsDown[0]~input_o\ <= NOT \requestsDown[0]~input_o\;
\ALT_INV_internal[4]~input_o\ <= NOT \internal[4]~input_o\;
\ALT_INV_internal[3]~input_o\ <= NOT \internal[3]~input_o\;
\ALT_INV_internal[2]~input_o\ <= NOT \internal[2]~input_o\;
\ALT_INV_internal[1]~input_o\ <= NOT \internal[1]~input_o\;
\ALT_INV_internal[0]~input_o\ <= NOT \internal[0]~input_o\;
\ALT_INV_internal[7]~input_o\ <= NOT \internal[7]~input_o\;
\ALT_INV_internal[6]~input_o\ <= NOT \internal[6]~input_o\;
\ALT_INV_internal[5]~input_o\ <= NOT \internal[5]~input_o\;
\ALT_INV_requestsUp[2]~input_o\ <= NOT \requestsUp[2]~input_o\;
\ALT_INV_requestsDown[2]~input_o\ <= NOT \requestsDown[2]~input_o\;
ALT_INV_f(2) <= NOT f(2);
ALT_INV_f(1) <= NOT f(1);
ALT_INV_f(0) <= NOT f(0);
\ALT_INV_f[1]~12_combout\ <= NOT \f[1]~12_combout\;
\ALT_INV_d~0_combout\ <= NOT \d~0_combout\;
\ALT_INV_f[2]~11_combout\ <= NOT \f[2]~11_combout\;
\ALT_INV_f[2]~10_combout\ <= NOT \f[2]~10_combout\;
\ALT_INV_stop~29_combout\ <= NOT \stop~29_combout\;
\ALT_INV_stop~28_combout\ <= NOT \stop~28_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_f[1]~9_combout\ <= NOT \f[1]~9_combout\;
\ALT_INV_f[1]~8_combout\ <= NOT \f[1]~8_combout\;
\ALT_INV_f[1]~7_combout\ <= NOT \f[1]~7_combout\;
\ALT_INV_f[2]~6_combout\ <= NOT \f[2]~6_combout\;
\ALT_INV_f[0]~5_combout\ <= NOT \f[0]~5_combout\;
\ALT_INV_f[0]~4_combout\ <= NOT \f[0]~4_combout\;
\ALT_INV_stop~27_combout\ <= NOT \stop~27_combout\;
\ALT_INV_LessThan8~2_combout\ <= NOT \LessThan8~2_combout\;
\ALT_INV_LessThan8~1_combout\ <= NOT \LessThan8~1_combout\;
\ALT_INV_aux~21_combout\ <= NOT \aux~21_combout\;
\ALT_INV_LessThan8~0_combout\ <= NOT \LessThan8~0_combout\;
\ALT_INV_aux~20_combout\ <= NOT \aux~20_combout\;
\ALT_INV_LessThan7~4_combout\ <= NOT \LessThan7~4_combout\;
\ALT_INV_aux~19_combout\ <= NOT \aux~19_combout\;
\ALT_INV_aux~18_combout\ <= NOT \aux~18_combout\;
\ALT_INV_aux~17_combout\ <= NOT \aux~17_combout\;
\ALT_INV_aux~16_combout\ <= NOT \aux~16_combout\;
\ALT_INV_aux~15_combout\ <= NOT \aux~15_combout\;
\ALT_INV_process_1~6_combout\ <= NOT \process_1~6_combout\;
\ALT_INV_stop~26_combout\ <= NOT \stop~26_combout\;
\ALT_INV_LessThan7~3_combout\ <= NOT \LessThan7~3_combout\;
\ALT_INV_LessThan7~2_combout\ <= NOT \LessThan7~2_combout\;
\ALT_INV_aux~14_combout\ <= NOT \aux~14_combout\;
\ALT_INV_LessThan7~1_combout\ <= NOT \LessThan7~1_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_process_1~5_combout\ <= NOT \process_1~5_combout\;
\ALT_INV_f[0]~3_combout\ <= NOT \f[0]~3_combout\;
\ALT_INV_f[0]~2_combout\ <= NOT \f[0]~2_combout\;
\ALT_INV_stop~25_combout\ <= NOT \stop~25_combout\;
\ALT_INV_stop~24_combout\ <= NOT \stop~24_combout\;
\ALT_INV_stop~23_combout\ <= NOT \stop~23_combout\;
\ALT_INV_stop~22_combout\ <= NOT \stop~22_combout\;
\ALT_INV_stop~21_combout\ <= NOT \stop~21_combout\;
\ALT_INV_aux~13_combout\ <= NOT \aux~13_combout\;
\ALT_INV_stop~20_combout\ <= NOT \stop~20_combout\;
\ALT_INV_stop~19_combout\ <= NOT \stop~19_combout\;
\ALT_INV_aux~12_combout\ <= NOT \aux~12_combout\;
\ALT_INV_aux~11_combout\ <= NOT \aux~11_combout\;
\ALT_INV_stop~18_combout\ <= NOT \stop~18_combout\;
\ALT_INV_aux~10_combout\ <= NOT \aux~10_combout\;
\ALT_INV_aux~9_combout\ <= NOT \aux~9_combout\;
\ALT_INV_aux~8_combout\ <= NOT \aux~8_combout\;
\ALT_INV_stop~17_combout\ <= NOT \stop~17_combout\;
\ALT_INV_stop~16_combout\ <= NOT \stop~16_combout\;
\ALT_INV_stop~15_combout\ <= NOT \stop~15_combout\;
\ALT_INV_stop~14_combout\ <= NOT \stop~14_combout\;
\ALT_INV_stop~13_combout\ <= NOT \stop~13_combout\;
\ALT_INV_stop~12_combout\ <= NOT \stop~12_combout\;
\ALT_INV_stop~11_combout\ <= NOT \stop~11_combout\;
\ALT_INV_stop~10_combout\ <= NOT \stop~10_combout\;
\ALT_INV_aux~7_combout\ <= NOT \aux~7_combout\;
\ALT_INV_aux~6_combout\ <= NOT \aux~6_combout\;
\ALT_INV_aux~5_combout\ <= NOT \aux~5_combout\;
\ALT_INV_aux~4_combout\ <= NOT \aux~4_combout\;
\ALT_INV_stop~9_combout\ <= NOT \stop~9_combout\;
\ALT_INV_aux~3_combout\ <= NOT \aux~3_combout\;
\ALT_INV_f[0]~1_combout\ <= NOT \f[0]~1_combout\;
\ALT_INV_stop~8_combout\ <= NOT \stop~8_combout\;
\ALT_INV_stop~7_combout\ <= NOT \stop~7_combout\;
\ALT_INV_LessThan31~4_combout\ <= NOT \LessThan31~4_combout\;
\ALT_INV_Add9~0_combout\ <= NOT \Add9~0_combout\;
\ALT_INV_LessThan31~3_combout\ <= NOT \LessThan31~3_combout\;
\ALT_INV_Add10~2_combout\ <= NOT \Add10~2_combout\;
\ALT_INV_f[0]~0_combout\ <= NOT \f[0]~0_combout\;

\destiny[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => f(0),
	devoe => ww_devoe,
	o => \destiny[0]~output_o\);

\destiny[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => f(1),
	devoe => ww_devoe,
	o => \destiny[1]~output_o\);

\destiny[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => f(2),
	devoe => ww_devoe,
	o => \destiny[2]~output_o\);

\call~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_1~4_combout\,
	devoe => ww_devoe,
	o => \call~output_o\);

\internal[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_internal(7),
	o => \internal[7]~input_o\);

\direction[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction(0),
	o => \direction[0]~input_o\);

\direction[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction(1),
	o => \direction[1]~input_o\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\direction[0]~input_o\ & !\direction[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_direction[0]~input_o\,
	datab => \ALT_INV_direction[1]~input_o\,
	combout => \Equal0~0_combout\);

\internal[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_internal(5),
	o => \internal[5]~input_o\);

\internal[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_internal(6),
	o => \internal[6]~input_o\);

\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\internal[5]~input_o\ & (!\internal[6]~input_o\ & !\internal[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[5]~input_o\,
	datab => \ALT_INV_internal[6]~input_o\,
	datac => \ALT_INV_internal[7]~input_o\,
	combout => \Equal1~0_combout\);

\internal[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_internal(0),
	o => \internal[0]~input_o\);

\internal[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_internal(1),
	o => \internal[1]~input_o\);

\internal[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_internal(2),
	o => \internal[2]~input_o\);

\internal[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_internal(3),
	o => \internal[3]~input_o\);

\internal[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_internal(4),
	o => \internal[4]~input_o\);

\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !\internal[4]~input_o\ & ( (!\internal[0]~input_o\ & (!\internal[1]~input_o\ & (!\internal[2]~input_o\ & !\internal[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[0]~input_o\,
	datab => \ALT_INV_internal[1]~input_o\,
	datac => \ALT_INV_internal[2]~input_o\,
	datad => \ALT_INV_internal[3]~input_o\,
	datae => \ALT_INV_internal[4]~input_o\,
	combout => \Equal1~1_combout\);

\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~0_combout\ & \Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	combout => \Equal1~2_combout\);

\position[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position(2),
	o => \position[2]~input_o\);

\position[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position(0),
	o => \position[0]~input_o\);

\position[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position(1),
	o => \position[1]~input_o\);

\d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d~0_combout\ = (\position[2]~input_o\ & (\position[0]~input_o\ & \position[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datac => \ALT_INV_position[1]~input_o\,
	combout => \d~0_combout\);

\Add3~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~18_cout\ = CARRY(( ((\position[0]~input_o\ & \position[1]~input_o\)) # (\position[2]~input_o\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datad => \ALT_INV_position[1]~input_o\,
	cin => GND,
	cout => \Add3~18_cout\);

\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( (!\position[2]~input_o\ & (\position[0]~input_o\ & !\position[1]~input_o\)) # (\position[2]~input_o\ & (!\position[0]~input_o\)) ) + ( GND ) + ( \Add3~18_cout\ ))
-- \Add3~10\ = CARRY(( (!\position[2]~input_o\ & (\position[0]~input_o\ & !\position[1]~input_o\)) # (\position[2]~input_o\ & (!\position[0]~input_o\)) ) + ( GND ) + ( \Add3~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datad => \ALT_INV_position[1]~input_o\,
	cin => \Add3~18_cout\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( (!\position[2]~input_o\ & (!\position[0]~input_o\ & !\position[1]~input_o\)) # (\position[2]~input_o\ & (!\position[0]~input_o\ $ (!\position[1]~input_o\))) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( (!\position[2]~input_o\ & (!\position[0]~input_o\ & !\position[1]~input_o\)) # (\position[2]~input_o\ & (!\position[0]~input_o\ $ (!\position[1]~input_o\))) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001001100101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datad => \ALT_INV_position[1]~input_o\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \d~0_combout\ ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~2\ = CARRY(( \d~0_combout\ ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_d~0_combout\,
	cin => \Add3~14\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( GND ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\);

\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\position[2]~input_o\ & ((\position[1]~input_o\) # (\position[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datac => \ALT_INV_position[1]~input_o\,
	combout => \Add1~0_combout\);

\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (!\position[0]~input_o\ & (\position[2]~input_o\ & !\position[1]~input_o\)) # (\position[0]~input_o\ & ((\position[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001101000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datac => \ALT_INV_position[1]~input_o\,
	combout => \Add1~1_combout\);

\LessThan27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan27~0_combout\ = (!\Add3~13_sumout\ & (((!\position[0]~input_o\ & !\Add3~9_sumout\)) # (\Add1~1_combout\))) # (\Add3~13_sumout\ & (!\position[0]~input_o\ & (!\Add3~9_sumout\ & \Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011111000100000001111100010000000111110001000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Add1~1_combout\,
	combout => \LessThan27~0_combout\);

\requestsUp[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsUp(1),
	o => \requestsUp[1]~input_o\);

\stop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~0_combout\ = (!\internal[1]~input_o\ & !\requestsUp[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_requestsUp[1]~input_o\,
	combout => \stop~0_combout\);

\LessThan26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan26~0_combout\ = (!\Add3~9_sumout\ & !\Add3~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~9_sumout\,
	datab => \ALT_INV_Add3~13_sumout\,
	combout => \LessThan26~0_combout\);

\stop~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~1_combout\ = ( !\stop~0_combout\ & ( \LessThan26~0_combout\ & ( (\Add3~1_sumout\ & (!\Add3~5_sumout\ & (\Add1~0_combout\ & \LessThan27~0_combout\))) ) ) ) # ( !\stop~0_combout\ & ( !\LessThan26~0_combout\ & ( (!\Add3~5_sumout\ & ((!\Add3~1_sumout\ & 
-- ((\LessThan27~0_combout\) # (\Add1~0_combout\))) # (\Add3~1_sumout\ & (\Add1~0_combout\ & \LessThan27~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_Add3~5_sumout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_LessThan27~0_combout\,
	datae => \ALT_INV_stop~0_combout\,
	dataf => \ALT_INV_LessThan26~0_combout\,
	combout => \stop~1_combout\);

\Add5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~18_cout\ = CARRY(( (\position[2]~input_o\ & ((\position[1]~input_o\) # (\position[0]~input_o\))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datad => \ALT_INV_position[1]~input_o\,
	cin => GND,
	cout => \Add5~18_cout\);

\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( (!\position[2]~input_o\ & (\position[0]~input_o\)) # (\position[2]~input_o\ & (!\position[0]~input_o\ & \position[1]~input_o\)) ) + ( GND ) + ( \Add5~18_cout\ ))
-- \Add5~14\ = CARRY(( (!\position[2]~input_o\ & (\position[0]~input_o\)) # (\position[2]~input_o\ & (!\position[0]~input_o\ & \position[1]~input_o\)) ) + ( GND ) + ( \Add5~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010001001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datad => \ALT_INV_position[1]~input_o\,
	cin => \Add5~18_cout\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( (!\position[2]~input_o\ & (!\position[0]~input_o\ $ (!\position[1]~input_o\))) # (\position[2]~input_o\ & (\position[0]~input_o\ & \position[1]~input_o\)) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~10\ = CARRY(( (!\position[2]~input_o\ & (!\position[0]~input_o\ $ (!\position[1]~input_o\))) # (\position[2]~input_o\ & (\position[0]~input_o\ & \position[1]~input_o\)) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010001010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datad => \ALT_INV_position[1]~input_o\,
	cin => \Add5~14\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( (!\position[2]~input_o\ & (!\position[0]~input_o\ & !\position[1]~input_o\)) ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~6\ = CARRY(( (!\position[2]~input_o\ & (!\position[0]~input_o\ & !\position[1]~input_o\)) ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datac => \ALT_INV_position[0]~input_o\,
	datad => \ALT_INV_position[1]~input_o\,
	cin => \Add5~10\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( GND ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add5~6\,
	sumout => \Add5~1_sumout\);

\LessThan29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan29~0_combout\ = (!\Add5~1_sumout\ & !\Add5~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~1_sumout\,
	datab => \ALT_INV_Add5~5_sumout\,
	combout => \LessThan29~0_combout\);

\LessThan27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan27~1_combout\ = (!\position[0]~input_o\ & !\Add3~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_Add3~9_sumout\,
	combout => \LessThan27~1_combout\);

\LessThan27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan27~2_combout\ = ( \Add1~1_combout\ & ( \LessThan27~1_combout\ & ( (!\Add3~5_sumout\ & ((!\Add3~1_sumout\) # (\Add1~0_combout\))) ) ) ) # ( !\Add1~1_combout\ & ( \LessThan27~1_combout\ & ( (!\Add3~5_sumout\ & ((!\Add3~1_sumout\ & 
-- ((!\Add3~13_sumout\) # (\Add1~0_combout\))) # (\Add3~1_sumout\ & (!\Add3~13_sumout\ & \Add1~0_combout\)))) ) ) ) # ( \Add1~1_combout\ & ( !\LessThan27~1_combout\ & ( (!\Add3~5_sumout\ & ((!\Add3~1_sumout\ & ((!\Add3~13_sumout\) # (\Add1~0_combout\))) # 
-- (\Add3~1_sumout\ & (!\Add3~13_sumout\ & \Add1~0_combout\)))) ) ) ) # ( !\Add1~1_combout\ & ( !\LessThan27~1_combout\ & ( (!\Add3~1_sumout\ & (!\Add3~5_sumout\ & \Add1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000100000001110000010000000111000001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_Add3~13_sumout\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_LessThan27~1_combout\,
	combout => \LessThan27~2_combout\);

\stop~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~2_combout\ = ( !\stop~0_combout\ & ( (((\Add3~5_sumout\) # (\Add3~13_sumout\)) # (\Add3~9_sumout\)) # (\Add3~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111000000000000000001111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_stop~0_combout\,
	combout => \stop~2_combout\);

\LessThan29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan29~1_combout\ = ( \stop~2_combout\ & ( (\LessThan29~0_combout\ & ((!\LessThan27~2_combout\ & ((\Add1~0_combout\))) # (\LessThan27~2_combout\ & (\Add3~1_sumout\)))) ) ) # ( !\stop~2_combout\ & ( (\LessThan29~0_combout\ & \Add1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010001000100000101000001010000010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan29~0_combout\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_LessThan27~2_combout\,
	datae => \ALT_INV_stop~2_combout\,
	combout => \LessThan29~1_combout\);

\LessThan29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan29~2_combout\ = ( \stop~2_combout\ & ( (!\Add5~9_sumout\ & ((!\LessThan27~2_combout\ & ((\Add1~1_combout\))) # (\LessThan27~2_combout\ & (\Add3~13_sumout\)))) ) ) # ( !\stop~2_combout\ & ( (!\Add5~9_sumout\ & \Add1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100010001000001010000010100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~9_sumout\,
	datab => \ALT_INV_Add3~13_sumout\,
	datac => \ALT_INV_Add1~1_combout\,
	datad => \ALT_INV_LessThan27~2_combout\,
	datae => \ALT_INV_stop~2_combout\,
	combout => \LessThan29~2_combout\);

\aux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~0_combout\ = (!\LessThan27~2_combout\ & (!\position[0]~input_o\)) # (\LessThan27~2_combout\ & ((!\stop~2_combout\ & (!\position[0]~input_o\)) # (\stop~2_combout\ & ((\Add3~9_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100011101010101010001110101010101000111010101010100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_LessThan27~2_combout\,
	datad => \ALT_INV_stop~2_combout\,
	combout => \aux~0_combout\);

\LessThan29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan29~3_combout\ = ( \LessThan27~2_combout\ & ( \stop~2_combout\ & ( (!\Add5~13_sumout\ & (!\Add5~9_sumout\ $ (\Add3~13_sumout\))) ) ) ) # ( !\LessThan27~2_combout\ & ( \stop~2_combout\ & ( (!\Add5~13_sumout\ & (!\Add5~9_sumout\ $ 
-- (\Add1~1_combout\))) ) ) ) # ( \LessThan27~2_combout\ & ( !\stop~2_combout\ & ( (!\Add5~13_sumout\ & (!\Add5~9_sumout\ $ (\Add1~1_combout\))) ) ) ) # ( !\LessThan27~2_combout\ & ( !\stop~2_combout\ & ( (!\Add5~13_sumout\ & (!\Add5~9_sumout\ $ 
-- (\Add1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001010001000001000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~13_sumout\,
	datab => \ALT_INV_Add5~9_sumout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Add1~1_combout\,
	datae => \ALT_INV_LessThan27~2_combout\,
	dataf => \ALT_INV_stop~2_combout\,
	combout => \LessThan29~3_combout\);

\LessThan29~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan29~4_combout\ = ( \LessThan27~2_combout\ & ( \stop~2_combout\ & ( (!\Add5~1_sumout\ & (!\Add5~5_sumout\ $ (\Add3~1_sumout\))) ) ) ) # ( !\LessThan27~2_combout\ & ( \stop~2_combout\ & ( (!\Add5~1_sumout\ & (!\Add5~5_sumout\ $ (\Add1~0_combout\))) 
-- ) ) ) # ( \LessThan27~2_combout\ & ( !\stop~2_combout\ & ( (!\Add5~1_sumout\ & (!\Add5~5_sumout\ $ (\Add1~0_combout\))) ) ) ) # ( !\LessThan27~2_combout\ & ( !\stop~2_combout\ & ( (!\Add5~1_sumout\ & (!\Add5~5_sumout\ $ (\Add1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001010001000001000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~1_sumout\,
	datab => \ALT_INV_Add5~5_sumout\,
	datac => \ALT_INV_Add3~1_sumout\,
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_LessThan27~2_combout\,
	dataf => \ALT_INV_stop~2_combout\,
	combout => \LessThan29~4_combout\);

\requestsUp[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsUp(2),
	o => \requestsUp[2]~input_o\);

\stop~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~3_combout\ = ( \Add5~9_sumout\ & ( \Add5~5_sumout\ & ( (!\internal[2]~input_o\ & !\requestsUp[2]~input_o\) ) ) ) # ( !\Add5~9_sumout\ & ( \Add5~5_sumout\ & ( (!\internal[2]~input_o\ & !\requestsUp[2]~input_o\) ) ) ) # ( \Add5~9_sumout\ & ( 
-- !\Add5~5_sumout\ & ( (!\internal[2]~input_o\ & !\requestsUp[2]~input_o\) ) ) ) # ( !\Add5~9_sumout\ & ( !\Add5~5_sumout\ & ( (!\internal[2]~input_o\ & ((!\requestsUp[2]~input_o\) # ((!\Add5~1_sumout\ & !\Add5~13_sumout\)))) # (\internal[2]~input_o\ & 
-- (((!\Add5~1_sumout\ & !\Add5~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[2]~input_o\,
	datab => \ALT_INV_requestsUp[2]~input_o\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add5~13_sumout\,
	datae => \ALT_INV_Add5~9_sumout\,
	dataf => \ALT_INV_Add5~5_sumout\,
	combout => \stop~3_combout\);

\stop~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~4_combout\ = ( \LessThan29~4_combout\ & ( !\stop~3_combout\ & ( (((\aux~0_combout\ & \LessThan29~3_combout\)) # (\LessThan29~2_combout\)) # (\LessThan29~1_combout\) ) ) ) # ( !\LessThan29~4_combout\ & ( !\stop~3_combout\ & ( \LessThan29~1_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101011101110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan29~1_combout\,
	datab => \ALT_INV_LessThan29~2_combout\,
	datac => \ALT_INV_aux~0_combout\,
	datad => \ALT_INV_LessThan29~3_combout\,
	datae => \ALT_INV_LessThan29~4_combout\,
	dataf => \ALT_INV_stop~3_combout\,
	combout => \stop~4_combout\);

\Add10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = !\position[0]~input_o\ $ (!\position[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_position[1]~input_o\,
	combout => \Add10~0_combout\);

\aux~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~1_combout\ = ( \stop~4_combout\ & ( \Add5~9_sumout\ ) ) # ( !\stop~4_combout\ & ( (!\stop~1_combout\ & ((\Add1~1_combout\))) # (\stop~1_combout\ & (\Add3~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010101010100001111001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~9_sumout\,
	datab => \ALT_INV_Add3~13_sumout\,
	datac => \ALT_INV_Add1~1_combout\,
	datad => \ALT_INV_stop~1_combout\,
	datae => \ALT_INV_stop~4_combout\,
	combout => \aux~1_combout\);

\LessThan31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan31~0_combout\ = (!\position[0]~input_o\ & ((!\stop~4_combout\ & ((\aux~0_combout\))) # (\stop~4_combout\ & (\Add5~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001000001010001000100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_Add5~13_sumout\,
	datac => \ALT_INV_aux~0_combout\,
	datad => \ALT_INV_stop~4_combout\,
	combout => \LessThan31~0_combout\);

\requestsUp[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsUp(3),
	o => \requestsUp[3]~input_o\);

\stop~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~5_combout\ = (!\internal[3]~input_o\ & !\requestsUp[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[3]~input_o\,
	datab => \ALT_INV_requestsUp[3]~input_o\,
	combout => \stop~5_combout\);

\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = (!\position[0]~input_o\ & !\position[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_position[1]~input_o\,
	combout => \Add10~1_combout\);

\aux~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~2_combout\ = ( \stop~0_combout\ & ( \LessThan26~0_combout\ & ( \Add1~0_combout\ ) ) ) # ( !\stop~0_combout\ & ( \LessThan26~0_combout\ & ( \Add1~0_combout\ ) ) ) # ( \stop~0_combout\ & ( !\LessThan26~0_combout\ & ( \Add1~0_combout\ ) ) ) # ( 
-- !\stop~0_combout\ & ( !\LessThan26~0_combout\ & ( (\Add1~0_combout\ & ((\Add3~5_sumout\) # (\Add3~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_Add3~5_sumout\,
	datac => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_stop~0_combout\,
	dataf => \ALT_INV_LessThan26~0_combout\,
	combout => \aux~2_combout\);

\LessThan31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan31~1_combout\ = ( \aux~2_combout\ & ( \stop~4_combout\ & ( (!\position[2]~input_o\ & ((!\Add10~1_combout\ & (!\Add5~1_sumout\ & \Add5~5_sumout\)) # (\Add10~1_combout\ & (\Add5~1_sumout\ & !\Add5~5_sumout\)))) # (\position[2]~input_o\ & 
-- (!\Add5~1_sumout\ & (!\Add10~1_combout\ $ (\Add5~5_sumout\)))) ) ) ) # ( !\aux~2_combout\ & ( \stop~4_combout\ & ( (!\position[2]~input_o\ & ((!\Add10~1_combout\ & (!\Add5~1_sumout\ & \Add5~5_sumout\)) # (\Add10~1_combout\ & (\Add5~1_sumout\ & 
-- !\Add5~5_sumout\)))) # (\position[2]~input_o\ & (!\Add5~1_sumout\ & (!\Add10~1_combout\ $ (\Add5~5_sumout\)))) ) ) ) # ( \aux~2_combout\ & ( !\stop~4_combout\ & ( !\position[2]~input_o\ $ (\Add10~1_combout\) ) ) ) # ( !\aux~2_combout\ & ( 
-- !\stop~4_combout\ & ( (\position[2]~input_o\ & !\Add10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100110011001100101000010100100000100001010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_Add10~1_combout\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add5~5_sumout\,
	datae => \ALT_INV_aux~2_combout\,
	dataf => \ALT_INV_stop~4_combout\,
	combout => \LessThan31~1_combout\);

\LessThan31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan31~2_combout\ = ( \aux~2_combout\ & ( \stop~4_combout\ & ( (!\position[2]~input_o\ & (\Add5~1_sumout\ & ((!\Add10~1_combout\) # (\Add5~5_sumout\)))) # (\position[2]~input_o\ & (((!\Add10~1_combout\ & \Add5~5_sumout\)) # (\Add5~1_sumout\))) ) ) ) 
-- # ( !\aux~2_combout\ & ( \stop~4_combout\ & ( (!\position[2]~input_o\ & (\Add5~1_sumout\ & ((!\Add10~1_combout\) # (\Add5~5_sumout\)))) # (\position[2]~input_o\ & (((!\Add10~1_combout\ & \Add5~5_sumout\)) # (\Add5~1_sumout\))) ) ) ) # ( \aux~2_combout\ & 
-- ( !\stop~4_combout\ & ( (\position[2]~input_o\ & !\Add10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000001101010011110000110101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_Add10~1_combout\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add5~5_sumout\,
	datae => \ALT_INV_aux~2_combout\,
	dataf => \ALT_INV_stop~4_combout\,
	combout => \LessThan31~2_combout\);

\stop~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~6_combout\ = ( \LessThan31~1_combout\ & ( \LessThan31~2_combout\ & ( !\stop~5_combout\ ) ) ) # ( !\LessThan31~1_combout\ & ( \LessThan31~2_combout\ & ( !\stop~5_combout\ ) ) ) # ( \LessThan31~1_combout\ & ( !\LessThan31~2_combout\ & ( 
-- (!\stop~5_combout\ & ((!\Add10~0_combout\ & ((\LessThan31~0_combout\) # (\aux~1_combout\))) # (\Add10~0_combout\ & (\aux~1_combout\ & \LessThan31~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~0_combout\,
	datab => \ALT_INV_aux~1_combout\,
	datac => \ALT_INV_LessThan31~0_combout\,
	datad => \ALT_INV_stop~5_combout\,
	datae => \ALT_INV_LessThan31~1_combout\,
	dataf => \ALT_INV_LessThan31~2_combout\,
	combout => \stop~6_combout\);

\f[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[0]~0_combout\ = (!\direction[1]~input_o\ & ((\Equal1~2_combout\) # (\direction[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_direction[0]~input_o\,
	datab => \ALT_INV_direction[1]~input_o\,
	datac => \ALT_INV_Equal1~2_combout\,
	combout => \f[0]~0_combout\);

\Add10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = !\position[2]~input_o\ $ (\Add10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_Add10~1_combout\,
	combout => \Add10~2_combout\);

\LessThan31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan31~3_combout\ = (!\Add10~2_combout\ & ((!\stop~4_combout\ & ((\aux~2_combout\))) # (\stop~4_combout\ & (\Add5~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_aux~2_combout\,
	datac => \ALT_INV_stop~4_combout\,
	datad => \ALT_INV_Add10~2_combout\,
	combout => \LessThan31~3_combout\);

\Add9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (!\position[2]~input_o\ & \Add10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_Add10~1_combout\,
	combout => \Add9~0_combout\);

\LessThan31~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan31~4_combout\ = (!\Add9~0_combout\ & (\Add5~1_sumout\ & \stop~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~0_combout\,
	datab => \ALT_INV_Add5~1_sumout\,
	datac => \ALT_INV_stop~4_combout\,
	combout => \LessThan31~4_combout\);

\requestsUp[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsUp(4),
	o => \requestsUp[4]~input_o\);

\stop~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~7_combout\ = ( \stop~4_combout\ & ( \Add10~2_combout\ & ( (!\Add5~5_sumout\) # ((!\internal[4]~input_o\ & !\requestsUp[4]~input_o\)) ) ) ) # ( !\stop~4_combout\ & ( \Add10~2_combout\ & ( (!\aux~2_combout\) # ((!\internal[4]~input_o\ & 
-- !\requestsUp[4]~input_o\)) ) ) ) # ( \stop~4_combout\ & ( !\Add10~2_combout\ & ( (!\internal[4]~input_o\ & !\requestsUp[4]~input_o\) ) ) ) # ( !\stop~4_combout\ & ( !\Add10~2_combout\ & ( (!\internal[4]~input_o\ & !\requestsUp[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100011111111100010001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[4]~input_o\,
	datab => \ALT_INV_requestsUp[4]~input_o\,
	datac => \ALT_INV_Add5~5_sumout\,
	datad => \ALT_INV_aux~2_combout\,
	datae => \ALT_INV_stop~4_combout\,
	dataf => \ALT_INV_Add10~2_combout\,
	combout => \stop~7_combout\);

\stop~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~8_combout\ = ( \LessThan31~4_combout\ & ( !\stop~7_combout\ & ( ((!\Add10~0_combout\ & ((\LessThan31~0_combout\) # (\aux~1_combout\))) # (\Add10~0_combout\ & (\aux~1_combout\ & \LessThan31~0_combout\))) # (\LessThan31~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111011101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan31~3_combout\,
	datab => \ALT_INV_Add10~0_combout\,
	datac => \ALT_INV_aux~1_combout\,
	datad => \ALT_INV_LessThan31~0_combout\,
	datae => \ALT_INV_LessThan31~4_combout\,
	dataf => \ALT_INV_stop~7_combout\,
	combout => \stop~8_combout\);

\f[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[0]~1_combout\ = ( \stop~8_combout\ & ( (\stop~6_combout\ & !\f[0]~0_combout\) ) ) # ( !\stop~8_combout\ & ( (!\f[0]~0_combout\ & (((\stop~1_combout\ & !\stop~4_combout\)) # (\stop~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000000000011110000000001001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stop~1_combout\,
	datab => \ALT_INV_stop~4_combout\,
	datac => \ALT_INV_stop~6_combout\,
	datad => \ALT_INV_f[0]~0_combout\,
	datae => \ALT_INV_stop~8_combout\,
	combout => \f[0]~1_combout\);

\aux~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~3_combout\ = (\internal[1]~input_o\ & \Add3~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_Add3~5_sumout\,
	combout => \aux~3_combout\);

\stop~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~9_combout\ = (!\Add3~13_sumout\ & (\position[0]~input_o\ & (\Add3~9_sumout\ & !\Add1~1_combout\))) # (\Add3~13_sumout\ & ((!\Add1~1_combout\) # ((\position[0]~input_o\ & \Add3~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100000001000111110000000100011111000000010001111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_Add3~9_sumout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Add1~1_combout\,
	combout => \stop~9_combout\);

\aux~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~4_combout\ = ( \Add1~0_combout\ & ( \stop~9_combout\ & ( (\internal[1]~input_o\ & (\Add3~13_sumout\ & ((\Add3~5_sumout\) # (\Add3~1_sumout\)))) ) ) ) # ( !\Add1~0_combout\ & ( \stop~9_combout\ & ( (\internal[1]~input_o\ & \Add3~13_sumout\) ) ) ) # ( 
-- \Add1~0_combout\ & ( !\stop~9_combout\ & ( (\internal[1]~input_o\ & (\Add3~13_sumout\ & \Add3~5_sumout\)) ) ) ) # ( !\Add1~0_combout\ & ( !\stop~9_combout\ & ( (\internal[1]~input_o\ & (\Add3~13_sumout\ & ((\Add3~5_sumout\) # (\Add3~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000000000010100000101000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_stop~9_combout\,
	combout => \aux~4_combout\);

\aux~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~5_combout\ = ( \Add1~1_combout\ & ( \stop~9_combout\ & ( (!\internal[1]~input_o\) # ((!\Add3~1_sumout\ & (!\Add3~5_sumout\ & \Add1~0_combout\))) ) ) ) # ( \Add1~1_combout\ & ( !\stop~9_combout\ & ( (!\internal[1]~input_o\) # ((!\Add3~5_sumout\ & 
-- ((!\Add3~1_sumout\) # (\Add1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010101111101000000000000000001010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_stop~9_combout\,
	combout => \aux~5_combout\);

\aux~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~6_combout\ = ( \Add1~0_combout\ & ( \stop~9_combout\ & ( (\internal[1]~input_o\ & (\Add3~9_sumout\ & ((\Add3~5_sumout\) # (\Add3~1_sumout\)))) ) ) ) # ( !\Add1~0_combout\ & ( \stop~9_combout\ & ( (\internal[1]~input_o\ & \Add3~9_sumout\) ) ) ) # ( 
-- \Add1~0_combout\ & ( !\stop~9_combout\ & ( (\internal[1]~input_o\ & (\Add3~9_sumout\ & \Add3~5_sumout\)) ) ) ) # ( !\Add1~0_combout\ & ( !\stop~9_combout\ & ( (\internal[1]~input_o\ & (\Add3~9_sumout\ & ((\Add3~5_sumout\) # (\Add3~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000000000010100000101000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_stop~9_combout\,
	combout => \aux~6_combout\);

\aux~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~7_combout\ = ( \Add1~0_combout\ & ( \stop~9_combout\ & ( (!\position[0]~input_o\ & ((!\internal[1]~input_o\) # ((!\Add3~1_sumout\ & !\Add3~5_sumout\)))) ) ) ) # ( !\Add1~0_combout\ & ( \stop~9_combout\ & ( (!\internal[1]~input_o\ & 
-- !\position[0]~input_o\) ) ) ) # ( \Add1~0_combout\ & ( !\stop~9_combout\ & ( (!\position[0]~input_o\ & ((!\internal[1]~input_o\) # (!\Add3~5_sumout\))) ) ) ) # ( !\Add1~0_combout\ & ( !\stop~9_combout\ & ( (!\position[0]~input_o\ & 
-- ((!\internal[1]~input_o\) # ((!\Add3~1_sumout\ & !\Add3~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110011001000100010001000100010001100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datac => \ALT_INV_Add3~1_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_stop~9_combout\,
	combout => \aux~7_combout\);

\stop~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~10_combout\ = ( \aux~6_combout\ & ( \aux~7_combout\ & ( (\Add5~9_sumout\ & (!\aux~4_combout\ & !\aux~5_combout\)) ) ) ) # ( !\aux~6_combout\ & ( \aux~7_combout\ & ( (\Add5~9_sumout\ & (!\aux~4_combout\ & !\aux~5_combout\)) ) ) ) # ( \aux~6_combout\ 
-- & ( !\aux~7_combout\ & ( (\Add5~9_sumout\ & (!\aux~4_combout\ & !\aux~5_combout\)) ) ) ) # ( !\aux~6_combout\ & ( !\aux~7_combout\ & ( (!\Add5~13_sumout\ & (\Add5~9_sumout\ & (!\aux~4_combout\ & !\aux~5_combout\))) # (\Add5~13_sumout\ & 
-- (((!\aux~4_combout\ & !\aux~5_combout\)) # (\Add5~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100010001001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~13_sumout\,
	datab => \ALT_INV_Add5~9_sumout\,
	datac => \ALT_INV_aux~4_combout\,
	datad => \ALT_INV_aux~5_combout\,
	datae => \ALT_INV_aux~6_combout\,
	dataf => \ALT_INV_aux~7_combout\,
	combout => \stop~10_combout\);

\stop~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~11_combout\ = (\position[0]~input_o\ & \Add3~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_Add3~9_sumout\,
	combout => \stop~11_combout\);

\stop~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~12_combout\ = ( \Add1~1_combout\ & ( \stop~11_combout\ & ( (!\Add3~5_sumout\ & ((!\Add3~1_sumout\ & ((!\Add3~13_sumout\) # (\Add1~0_combout\))) # (\Add3~1_sumout\ & (!\Add3~13_sumout\ & \Add1~0_combout\)))) ) ) ) # ( !\Add1~1_combout\ & ( 
-- \stop~11_combout\ & ( (!\Add3~1_sumout\ & (!\Add3~5_sumout\ & \Add1~0_combout\)) ) ) ) # ( \Add1~1_combout\ & ( !\stop~11_combout\ & ( (!\Add3~5_sumout\ & ((!\Add3~1_sumout\) # (\Add1~0_combout\))) ) ) ) # ( !\Add1~1_combout\ & ( !\stop~11_combout\ & ( 
-- (!\Add3~5_sumout\ & ((!\Add3~1_sumout\ & ((!\Add3~13_sumout\) # (\Add1~0_combout\))) # (\Add3~1_sumout\ & (!\Add3~13_sumout\ & \Add1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011100000101000001111000000000000101000001000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~1_sumout\,
	datab => \ALT_INV_Add3~13_sumout\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_stop~11_combout\,
	combout => \stop~12_combout\);

\stop~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~13_combout\ = (\internal[2]~input_o\ & (!\Add5~1_sumout\ $ (((\internal[1]~input_o\ & \Add3~5_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000100001001100000010000100110000001000010011000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_internal[2]~input_o\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	combout => \stop~13_combout\);

\stop~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~14_combout\ = ( \stop~12_combout\ & ( \stop~13_combout\ & ( !\Add5~5_sumout\ $ (\Add1~0_combout\) ) ) ) # ( !\stop~12_combout\ & ( \stop~13_combout\ & ( !\Add5~5_sumout\ $ (((!\internal[1]~input_o\ & ((\Add1~0_combout\))) # (\internal[1]~input_o\ & 
-- (\Add3~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001001011000111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_Add5~5_sumout\,
	datac => \ALT_INV_Add3~1_sumout\,
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_stop~12_combout\,
	dataf => \ALT_INV_stop~13_combout\,
	combout => \stop~14_combout\);

\stop~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~15_combout\ = (\internal[2]~input_o\ & (\Add5~1_sumout\ & ((!\internal[1]~input_o\) # (!\Add3~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010000000110000001000000011000000100000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_internal[2]~input_o\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	combout => \stop~15_combout\);

\stop~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~16_combout\ = ( \Add3~5_sumout\ & ( (\internal[2]~input_o\ & (\Add5~5_sumout\ & (!\internal[1]~input_o\ $ (\Add5~1_sumout\)))) ) ) # ( !\Add3~5_sumout\ & ( (\internal[2]~input_o\ & (!\Add5~1_sumout\ & \Add5~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000010000100000000001100000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_internal[2]~input_o\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add5~5_sumout\,
	datae => \ALT_INV_Add3~5_sumout\,
	combout => \stop~16_combout\);

\stop~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~17_combout\ = ( !\stop~15_combout\ & ( \stop~16_combout\ & ( (!\internal[1]~input_o\ & (((\Add1~0_combout\)))) # (\internal[1]~input_o\ & ((!\stop~12_combout\ & (\Add3~1_sumout\)) # (\stop~12_combout\ & ((\Add1~0_combout\))))) ) ) ) # ( 
-- !\stop~15_combout\ & ( !\stop~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000011011000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add1~0_combout\,
	datad => \ALT_INV_stop~12_combout\,
	datae => \ALT_INV_stop~15_combout\,
	dataf => \ALT_INV_stop~16_combout\,
	combout => \stop~17_combout\);

\aux~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~8_combout\ = ( \stop~17_combout\ & ( (!\stop~10_combout\ & (((\aux~3_combout\)))) # (\stop~10_combout\ & ((!\stop~14_combout\ & ((\aux~3_combout\))) # (\stop~14_combout\ & (\Add5~1_sumout\)))) ) ) # ( !\stop~17_combout\ & ( \Add5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011010101010101010101010011001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~1_sumout\,
	datab => \ALT_INV_aux~3_combout\,
	datac => \ALT_INV_stop~10_combout\,
	datad => \ALT_INV_stop~14_combout\,
	datae => \ALT_INV_stop~17_combout\,
	combout => \aux~8_combout\);

\aux~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~9_combout\ = (!\internal[1]~input_o\ & (((!\Add1~0_combout\)))) # (\internal[1]~input_o\ & (!\Add3~1_sumout\ & ((!\Add1~0_combout\) # (\Add3~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000100111011100000010011101110000001001110111000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Add1~0_combout\,
	combout => \aux~9_combout\);

\aux~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~10_combout\ = ( \stop~15_combout\ & ( !\Add5~5_sumout\ ) ) # ( !\stop~15_combout\ & ( (\aux~9_combout\ & ((!\Add5~5_sumout\) # (!\stop~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010101010101010101000110010001100101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_aux~9_combout\,
	datac => \ALT_INV_stop~13_combout\,
	datae => \ALT_INV_stop~15_combout\,
	combout => \aux~10_combout\);

\stop~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~18_combout\ = ( \Add3~9_sumout\ & ( \Add3~13_sumout\ & ( (\position[2]~input_o\ & !\Add3~1_sumout\) ) ) ) # ( !\Add3~9_sumout\ & ( \Add3~13_sumout\ & ( (!\position[2]~input_o\ & (\position[0]~input_o\ & (\position[1]~input_o\ & !\Add3~1_sumout\))) # 
-- (\position[2]~input_o\ & ((!\Add3~1_sumout\) # ((\position[0]~input_o\ & \position[1]~input_o\)))) ) ) ) # ( \Add3~9_sumout\ & ( !\Add3~13_sumout\ & ( (!\position[2]~input_o\ & (!\Add3~1_sumout\ & ((!\position[0]~input_o\) # (\position[1]~input_o\)))) # 
-- (\position[2]~input_o\ & (((!\Add3~1_sumout\) # (\position[1]~input_o\)))) ) ) ) # ( !\Add3~9_sumout\ & ( !\Add3~13_sumout\ & ( (!\Add3~1_sumout\) # ((\position[2]~input_o\ & ((\position[1]~input_o\) # (\position[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010101110111110000010101010111000000010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datac => \ALT_INV_position[1]~input_o\,
	datad => \ALT_INV_Add3~1_sumout\,
	datae => \ALT_INV_Add3~9_sumout\,
	dataf => \ALT_INV_Add3~13_sumout\,
	combout => \stop~18_combout\);

\aux~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~11_combout\ = ( \stop~18_combout\ & ( (!\internal[1]~input_o\ & (!\position[0]~input_o\)) # (\internal[1]~input_o\ & ((!\Add3~5_sumout\ & (!\position[0]~input_o\)) # (\Add3~5_sumout\ & ((\Add3~9_sumout\))))) ) ) # ( !\stop~18_combout\ & ( 
-- (!\internal[1]~input_o\ & (!\position[0]~input_o\)) # (\internal[1]~input_o\ & ((\Add3~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110001101110011001000110110001101100011011100110010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_stop~18_combout\,
	combout => \aux~11_combout\);

\aux~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~12_combout\ = ( \stop~18_combout\ & ( (!\internal[1]~input_o\ & (((\Add1~1_combout\)))) # (\internal[1]~input_o\ & ((!\Add3~5_sumout\ & ((\Add1~1_combout\))) # (\Add3~5_sumout\ & (\Add3~13_sumout\)))) ) ) # ( !\stop~18_combout\ & ( 
-- (!\internal[1]~input_o\ & ((\Add1~1_combout\))) # (\internal[1]~input_o\ & (\Add3~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000000011111101100010001101110110000000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_Add3~13_sumout\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Add1~1_combout\,
	datae => \ALT_INV_stop~18_combout\,
	combout => \aux~12_combout\);

\stop~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~19_combout\ = ( \Add3~5_sumout\ & ( \stop~18_combout\ & ( (\Add5~13_sumout\ & ((!\internal[1]~input_o\ & (\position[0]~input_o\)) # (\internal[1]~input_o\ & ((!\Add3~9_sumout\))))) ) ) ) # ( !\Add3~5_sumout\ & ( \stop~18_combout\ & ( 
-- (\position[0]~input_o\ & \Add5~13_sumout\) ) ) ) # ( \Add3~5_sumout\ & ( !\stop~18_combout\ & ( (\Add5~13_sumout\ & ((!\internal[1]~input_o\ & (\position[0]~input_o\)) # (\internal[1]~input_o\ & ((!\Add3~9_sumout\))))) ) ) ) # ( !\Add3~5_sumout\ & ( 
-- !\stop~18_combout\ & ( (\Add5~13_sumout\ & ((!\internal[1]~input_o\ & (\position[0]~input_o\)) # (\internal[1]~input_o\ & ((!\Add3~9_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000010000001110000001000000011000000110000011100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_position[0]~input_o\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_Add3~9_sumout\,
	datae => \ALT_INV_Add3~5_sumout\,
	dataf => \ALT_INV_stop~18_combout\,
	combout => \stop~19_combout\);

\stop~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~20_combout\ = ( \stop~17_combout\ & ( (!\stop~14_combout\) # ((!\Add5~9_sumout\ & ((!\stop~19_combout\) # (\aux~12_combout\))) # (\Add5~9_sumout\ & (\aux~12_combout\ & !\stop~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111011001000000000000000001111111110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~9_sumout\,
	datab => \ALT_INV_aux~12_combout\,
	datac => \ALT_INV_stop~19_combout\,
	datad => \ALT_INV_stop~14_combout\,
	datae => \ALT_INV_stop~17_combout\,
	combout => \stop~20_combout\);

\aux~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~13_combout\ = ( \stop~17_combout\ & ( (!\aux~12_combout\ & ((!\Add5~9_sumout\) # (!\stop~14_combout\))) ) ) # ( !\stop~17_combout\ & ( !\Add5~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001000100010101010101010101100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~9_sumout\,
	datab => \ALT_INV_aux~12_combout\,
	datad => \ALT_INV_stop~14_combout\,
	datae => \ALT_INV_stop~17_combout\,
	combout => \aux~13_combout\);

\stop~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~21_combout\ = ( \stop~20_combout\ & ( \aux~13_combout\ & ( (!\position[0]~input_o\ & (\position[1]~input_o\)) # (\position[0]~input_o\ & ((!\position[1]~input_o\) # (!\aux~11_combout\))) ) ) ) # ( !\stop~20_combout\ & ( \aux~13_combout\ & ( 
-- (!\position[0]~input_o\ & (\position[1]~input_o\)) # (\position[0]~input_o\ & ((!\position[1]~input_o\) # (!\Add5~13_sumout\))) ) ) ) # ( \stop~20_combout\ & ( !\aux~13_combout\ & ( (\position[0]~input_o\ & (!\position[1]~input_o\ & !\aux~11_combout\)) ) 
-- ) ) # ( !\stop~20_combout\ & ( !\aux~13_combout\ & ( (\position[0]~input_o\ & (!\position[1]~input_o\ & !\Add5~13_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010001000000000001110110011101100111011101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_position[1]~input_o\,
	datac => \ALT_INV_Add5~13_sumout\,
	datad => \ALT_INV_aux~11_combout\,
	datae => \ALT_INV_stop~20_combout\,
	dataf => \ALT_INV_aux~13_combout\,
	combout => \stop~21_combout\);

\stop~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~22_combout\ = ( \aux~10_combout\ & ( \stop~21_combout\ & ( (\internal[3]~input_o\ & ((!\aux~8_combout\) # ((!\position[2]~input_o\ & \Add10~1_combout\)))) ) ) ) # ( !\aux~10_combout\ & ( \stop~21_combout\ & ( (\internal[3]~input_o\ & 
-- (!\aux~8_combout\ & ((!\position[2]~input_o\) # (\Add10~1_combout\)))) ) ) ) # ( \aux~10_combout\ & ( !\stop~21_combout\ & ( (\internal[3]~input_o\ & (!\aux~8_combout\ & ((!\position[2]~input_o\) # (\Add10~1_combout\)))) ) ) ) # ( !\aux~10_combout\ & ( 
-- !\stop~21_combout\ & ( (\internal[3]~input_o\ & (!\position[2]~input_o\ & (\Add10~1_combout\ & !\aux~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000010001010000000001000101000000000101010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[3]~input_o\,
	datab => \ALT_INV_position[2]~input_o\,
	datac => \ALT_INV_Add10~1_combout\,
	datad => \ALT_INV_aux~8_combout\,
	datae => \ALT_INV_aux~10_combout\,
	dataf => \ALT_INV_stop~21_combout\,
	combout => \stop~22_combout\);

\stop~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~23_combout\ = ( \stop~14_combout\ & ( \stop~17_combout\ & ( (\position[0]~input_o\ & ((!\stop~10_combout\ & ((!\aux~11_combout\))) # (\stop~10_combout\ & (!\Add5~13_sumout\)))) ) ) ) # ( !\stop~14_combout\ & ( \stop~17_combout\ & ( 
-- (\position[0]~input_o\ & !\aux~11_combout\) ) ) ) # ( \stop~14_combout\ & ( !\stop~17_combout\ & ( (\position[0]~input_o\ & !\Add5~13_sumout\) ) ) ) # ( !\stop~14_combout\ & ( !\stop~17_combout\ & ( (\position[0]~input_o\ & !\Add5~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001010000010100000101000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_Add5~13_sumout\,
	datac => \ALT_INV_aux~11_combout\,
	datad => \ALT_INV_stop~10_combout\,
	datae => \ALT_INV_stop~14_combout\,
	dataf => \ALT_INV_stop~17_combout\,
	combout => \stop~23_combout\);

\stop~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~24_combout\ = ( \stop~14_combout\ & ( \stop~17_combout\ & ( (!\Add9~0_combout\ & ((!\stop~10_combout\ & ((\aux~3_combout\))) # (\stop~10_combout\ & (\Add5~1_sumout\)))) ) ) ) # ( !\stop~14_combout\ & ( \stop~17_combout\ & ( (!\Add9~0_combout\ & 
-- \aux~3_combout\) ) ) ) # ( \stop~14_combout\ & ( !\stop~17_combout\ & ( (!\Add9~0_combout\ & \Add5~1_sumout\) ) ) ) # ( !\stop~14_combout\ & ( !\stop~17_combout\ & ( (!\Add9~0_combout\ & \Add5~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000001010000010100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~0_combout\,
	datab => \ALT_INV_Add5~1_sumout\,
	datac => \ALT_INV_aux~3_combout\,
	datad => \ALT_INV_stop~10_combout\,
	datae => \ALT_INV_stop~14_combout\,
	dataf => \ALT_INV_stop~17_combout\,
	combout => \stop~24_combout\);

\stop~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~25_combout\ = ( \stop~23_combout\ & ( \stop~24_combout\ & ( (!\Add10~2_combout\ & ((!\aux~10_combout\) # ((!\Add10~0_combout\ & !\aux~13_combout\)))) # (\Add10~2_combout\ & (!\Add10~0_combout\ & (!\aux~10_combout\ & !\aux~13_combout\))) ) ) ) # ( 
-- !\stop~23_combout\ & ( \stop~24_combout\ & ( (!\Add10~2_combout\ & ((!\Add10~0_combout\) # ((!\aux~10_combout\) # (!\aux~13_combout\)))) # (\Add10~2_combout\ & (!\aux~10_combout\ & ((!\Add10~0_combout\) # (!\aux~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111010001110100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~2_combout\,
	datab => \ALT_INV_Add10~0_combout\,
	datac => \ALT_INV_aux~10_combout\,
	datad => \ALT_INV_aux~13_combout\,
	datae => \ALT_INV_stop~23_combout\,
	dataf => \ALT_INV_stop~24_combout\,
	combout => \stop~25_combout\);

\f[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[0]~2_combout\ = ( \stop~17_combout\ & ( (\internal[1]~input_o\ & (!\stop~12_combout\ & ((!\stop~10_combout\) # (!\stop~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100000000000000000000000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[1]~input_o\,
	datab => \ALT_INV_stop~12_combout\,
	datac => \ALT_INV_stop~10_combout\,
	datad => \ALT_INV_stop~14_combout\,
	datae => \ALT_INV_stop~17_combout\,
	combout => \f[0]~2_combout\);

\f[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[0]~3_combout\ = ( \stop~25_combout\ & ( \f[0]~2_combout\ & ( (!\internal[6]~input_o\ & ((!\internal[4]~input_o\) # ((!\stop~22_combout\) # (\internal[5]~input_o\)))) ) ) ) # ( !\stop~25_combout\ & ( \f[0]~2_combout\ & ( (!\internal[6]~input_o\ & 
-- ((!\internal[4]~input_o\) # (\internal[5]~input_o\))) ) ) ) # ( \stop~25_combout\ & ( !\f[0]~2_combout\ & ( (!\internal[6]~input_o\ & (((!\internal[4]~input_o\ & \stop~22_combout\)) # (\internal[5]~input_o\))) ) ) ) # ( !\stop~25_combout\ & ( 
-- !\f[0]~2_combout\ & ( (!\internal[6]~input_o\ & (((!\internal[4]~input_o\ & \stop~22_combout\)) # (\internal[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010110000001100001011000010110000101100001111000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[4]~input_o\,
	datab => \ALT_INV_internal[5]~input_o\,
	datac => \ALT_INV_internal[6]~input_o\,
	datad => \ALT_INV_stop~22_combout\,
	datae => \ALT_INV_stop~25_combout\,
	dataf => \ALT_INV_f[0]~2_combout\,
	combout => \f[0]~3_combout\);

\requestsDown[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsDown(1),
	o => \requestsDown[1]~input_o\);

\process_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (!\requestsDown[1]~input_o\ & !\requestsUp[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_requestsDown[1]~input_o\,
	datab => \ALT_INV_requestsUp[1]~input_o\,
	combout => \process_1~5_combout\);

\requestsDown[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsDown(2),
	o => \requestsDown[2]~input_o\);

\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\requestsDown[2]~input_o\ & !\requestsUp[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_requestsDown[2]~input_o\,
	datab => \ALT_INV_requestsUp[2]~input_o\,
	combout => \process_1~0_combout\);

\LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( \Add1~0_combout\ & ( (\LessThan29~0_combout\ & (((\Add3~5_sumout\) # (\Add3~1_sumout\)) # (\process_1~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100110011001100000000000000000001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_LessThan29~0_combout\,
	datac => \ALT_INV_Add3~1_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_Add1~0_combout\,
	combout => \LessThan7~0_combout\);

\LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ( \LessThan27~2_combout\ & ( (!\Add5~9_sumout\ & ((!\process_1~5_combout\ & (\Add3~13_sumout\)) # (\process_1~5_combout\ & ((\Add1~1_combout\))))) ) ) # ( !\LessThan27~2_combout\ & ( (!\Add5~9_sumout\ & \Add1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000010000100110000000000110011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_Add5~9_sumout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Add1~1_combout\,
	datae => \ALT_INV_LessThan27~2_combout\,
	combout => \LessThan7~1_combout\);

\aux~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~14_combout\ = (!\process_1~5_combout\ & ((!\LessThan27~2_combout\ & (!\position[0]~input_o\)) # (\LessThan27~2_combout\ & ((\Add3~9_sumout\))))) # (\process_1~5_combout\ & (!\position[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001110110011000100111011001100010011101100110001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_position[0]~input_o\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_LessThan27~2_combout\,
	combout => \aux~14_combout\);

\LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = ( \Add1~1_combout\ & ( \LessThan27~2_combout\ & ( (!\Add5~13_sumout\ & (!\Add5~9_sumout\ $ (((\Add3~13_sumout\) # (\process_1~5_combout\))))) ) ) ) # ( !\Add1~1_combout\ & ( \LessThan27~2_combout\ & ( (!\Add5~13_sumout\ & 
-- (!\Add5~9_sumout\ $ (((!\process_1~5_combout\ & \Add3~13_sumout\))))) ) ) ) # ( \Add1~1_combout\ & ( !\LessThan27~2_combout\ & ( (!\Add5~13_sumout\ & \Add5~9_sumout\) ) ) ) # ( !\Add1~1_combout\ & ( !\LessThan27~2_combout\ & ( (!\Add5~13_sumout\ & 
-- !\Add5~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110011000000010010001000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_Add5~13_sumout\,
	datac => \ALT_INV_Add5~9_sumout\,
	datad => \ALT_INV_Add3~13_sumout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_LessThan27~2_combout\,
	combout => \LessThan7~2_combout\);

\LessThan7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = ( \Add1~0_combout\ & ( \LessThan27~2_combout\ & ( (!\Add5~1_sumout\ & (!\Add5~5_sumout\ $ (((\Add3~1_sumout\) # (\process_1~5_combout\))))) ) ) ) # ( !\Add1~0_combout\ & ( \LessThan27~2_combout\ & ( (!\Add5~1_sumout\ & 
-- (!\Add5~5_sumout\ $ (((!\process_1~5_combout\ & \Add3~1_sumout\))))) ) ) ) # ( \Add1~0_combout\ & ( !\LessThan27~2_combout\ & ( (!\Add5~1_sumout\ & \Add5~5_sumout\) ) ) ) # ( !\Add1~0_combout\ & ( !\LessThan27~2_combout\ & ( (!\Add5~1_sumout\ & 
-- !\Add5~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110011000000010010001000010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_Add5~1_sumout\,
	datac => \ALT_INV_Add5~5_sumout\,
	datad => \ALT_INV_Add3~1_sumout\,
	datae => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_LessThan27~2_combout\,
	combout => \LessThan7~3_combout\);

\stop~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~26_combout\ = ( \LessThan7~2_combout\ & ( \LessThan7~3_combout\ & ( (!\process_1~0_combout\ & (((\aux~14_combout\) # (\LessThan7~1_combout\)) # (\LessThan7~0_combout\))) ) ) ) # ( !\LessThan7~2_combout\ & ( \LessThan7~3_combout\ & ( 
-- (!\process_1~0_combout\ & ((\LessThan7~1_combout\) # (\LessThan7~0_combout\))) ) ) ) # ( \LessThan7~2_combout\ & ( !\LessThan7~3_combout\ & ( (!\process_1~0_combout\ & \LessThan7~0_combout\) ) ) ) # ( !\LessThan7~2_combout\ & ( !\LessThan7~3_combout\ & ( 
-- (!\process_1~0_combout\ & \LessThan7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000101010001010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~0_combout\,
	datab => \ALT_INV_LessThan7~0_combout\,
	datac => \ALT_INV_LessThan7~1_combout\,
	datad => \ALT_INV_aux~14_combout\,
	datae => \ALT_INV_LessThan7~2_combout\,
	dataf => \ALT_INV_LessThan7~3_combout\,
	combout => \stop~26_combout\);

\requestsDown[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsDown(3),
	o => \requestsDown[3]~input_o\);

\process_1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (!\requestsDown[3]~input_o\ & !\requestsUp[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_requestsDown[3]~input_o\,
	datab => \ALT_INV_requestsUp[3]~input_o\,
	combout => \process_1~6_combout\);

\aux~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~15_combout\ = (!\process_1~5_combout\ & ((!\LessThan27~2_combout\ & ((\Add1~1_combout\))) # (\LessThan27~2_combout\ & (\Add3~13_sumout\)))) # (\process_1~5_combout\ & (((\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100100111000011110010011100001111001001110000111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_Add3~13_sumout\,
	datac => \ALT_INV_Add1~1_combout\,
	datad => \ALT_INV_LessThan27~2_combout\,
	combout => \aux~15_combout\);

\aux~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~16_combout\ = ( \Add1~0_combout\ & ( \LessThan27~0_combout\ & ( (!\process_1~5_combout\ & (\Add3~13_sumout\ & !\Add3~5_sumout\)) ) ) ) # ( !\Add1~0_combout\ & ( \LessThan27~0_combout\ & ( (!\process_1~5_combout\ & (!\Add3~1_sumout\ & 
-- (\Add3~13_sumout\ & !\Add3~5_sumout\))) ) ) ) # ( \Add1~0_combout\ & ( !\LessThan27~0_combout\ & ( (!\process_1~5_combout\ & (!\Add3~1_sumout\ & (\Add3~13_sumout\ & !\Add3~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000001000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~13_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_LessThan27~0_combout\,
	combout => \aux~16_combout\);

\aux~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~17_combout\ = ( \Add1~1_combout\ & ( \LessThan27~0_combout\ & ( (((\Add3~1_sumout\ & !\Add1~0_combout\)) # (\Add3~5_sumout\)) # (\process_1~5_combout\) ) ) ) # ( \Add1~1_combout\ & ( !\LessThan27~0_combout\ & ( (((!\Add1~0_combout\) # 
-- (\Add3~5_sumout\)) # (\Add3~1_sumout\)) # (\process_1~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000000111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Add1~0_combout\,
	datae => \ALT_INV_Add1~1_combout\,
	dataf => \ALT_INV_LessThan27~0_combout\,
	combout => \aux~17_combout\);

\aux~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~18_combout\ = ( \Add1~0_combout\ & ( \LessThan27~0_combout\ & ( (!\process_1~5_combout\ & (\Add3~9_sumout\ & !\Add3~5_sumout\)) ) ) ) # ( !\Add1~0_combout\ & ( \LessThan27~0_combout\ & ( (!\process_1~5_combout\ & (!\Add3~1_sumout\ & (\Add3~9_sumout\ 
-- & !\Add3~5_sumout\))) ) ) ) # ( \Add1~0_combout\ & ( !\LessThan27~0_combout\ & ( (!\process_1~5_combout\ & (!\Add3~1_sumout\ & (\Add3~9_sumout\ & !\Add3~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000001000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~9_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_LessThan27~0_combout\,
	combout => \aux~18_combout\);

\aux~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~19_combout\ = ( \Add1~0_combout\ & ( \LessThan27~0_combout\ & ( (!\position[0]~input_o\ & ((\Add3~5_sumout\) # (\process_1~5_combout\))) ) ) ) # ( !\Add1~0_combout\ & ( \LessThan27~0_combout\ & ( (!\position[0]~input_o\ & (((\Add3~5_sumout\) # 
-- (\Add3~1_sumout\)) # (\process_1~5_combout\))) ) ) ) # ( \Add1~0_combout\ & ( !\LessThan27~0_combout\ & ( (!\position[0]~input_o\ & (((\Add3~5_sumout\) # (\Add3~1_sumout\)) # (\process_1~5_combout\))) ) ) ) # ( !\Add1~0_combout\ & ( 
-- !\LessThan27~0_combout\ & ( !\position[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010011001100110001001100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_position[0]~input_o\,
	datac => \ALT_INV_Add3~1_sumout\,
	datad => \ALT_INV_Add3~5_sumout\,
	datae => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_LessThan27~0_combout\,
	combout => \aux~19_combout\);

\LessThan7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = ( \aux~18_combout\ & ( \aux~19_combout\ & ( (!\Add5~13_sumout\ & (\Add5~9_sumout\ & (!\aux~16_combout\ & !\aux~17_combout\))) # (\Add5~13_sumout\ & (((!\aux~16_combout\ & !\aux~17_combout\)) # (\Add5~9_sumout\))) ) ) ) # ( 
-- !\aux~18_combout\ & ( \aux~19_combout\ & ( (!\Add5~13_sumout\ & (\Add5~9_sumout\ & (!\aux~16_combout\ & !\aux~17_combout\))) # (\Add5~13_sumout\ & (((!\aux~16_combout\ & !\aux~17_combout\)) # (\Add5~9_sumout\))) ) ) ) # ( \aux~18_combout\ & ( 
-- !\aux~19_combout\ & ( (!\Add5~13_sumout\ & (\Add5~9_sumout\ & (!\aux~16_combout\ & !\aux~17_combout\))) # (\Add5~13_sumout\ & (((!\aux~16_combout\ & !\aux~17_combout\)) # (\Add5~9_sumout\))) ) ) ) # ( !\aux~18_combout\ & ( !\aux~19_combout\ & ( 
-- ((!\aux~16_combout\ & !\aux~17_combout\)) # (\Add5~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100110011011100010001000101110001000100010111000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~13_sumout\,
	datab => \ALT_INV_Add5~9_sumout\,
	datac => \ALT_INV_aux~16_combout\,
	datad => \ALT_INV_aux~17_combout\,
	datae => \ALT_INV_aux~18_combout\,
	dataf => \ALT_INV_aux~19_combout\,
	combout => \LessThan7~4_combout\);

\aux~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~20_combout\ = ( \LessThan7~4_combout\ & ( \LessThan7~3_combout\ & ( (!\process_1~0_combout\ & ((!\LessThan7~0_combout\ & ((\aux~15_combout\))) # (\LessThan7~0_combout\ & (\Add5~9_sumout\)))) # (\process_1~0_combout\ & (((\aux~15_combout\)))) ) ) ) # 
-- ( !\LessThan7~4_combout\ & ( \LessThan7~3_combout\ & ( (!\process_1~0_combout\ & (\Add5~9_sumout\)) # (\process_1~0_combout\ & ((\aux~15_combout\))) ) ) ) # ( \LessThan7~4_combout\ & ( !\LessThan7~3_combout\ & ( (!\process_1~0_combout\ & 
-- ((!\LessThan7~0_combout\ & ((\aux~15_combout\))) # (\LessThan7~0_combout\ & (\Add5~9_sumout\)))) # (\process_1~0_combout\ & (((\aux~15_combout\)))) ) ) ) # ( !\LessThan7~4_combout\ & ( !\LessThan7~3_combout\ & ( (!\process_1~0_combout\ & 
-- ((!\LessThan7~0_combout\ & ((\aux~15_combout\))) # (\LessThan7~0_combout\ & (\Add5~9_sumout\)))) # (\process_1~0_combout\ & (((\aux~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110111000000101111011100100010011101110000001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~0_combout\,
	datab => \ALT_INV_Add5~9_sumout\,
	datac => \ALT_INV_LessThan7~0_combout\,
	datad => \ALT_INV_aux~15_combout\,
	datae => \ALT_INV_LessThan7~4_combout\,
	dataf => \ALT_INV_LessThan7~3_combout\,
	combout => \aux~20_combout\);

\LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (!\position[0]~input_o\ & ((!\stop~26_combout\ & ((\aux~14_combout\))) # (\stop~26_combout\ & (\Add5~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001000001010001000100000101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[0]~input_o\,
	datab => \ALT_INV_Add5~13_sumout\,
	datac => \ALT_INV_aux~14_combout\,
	datad => \ALT_INV_stop~26_combout\,
	combout => \LessThan8~0_combout\);

\aux~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \aux~21_combout\ = (\Add1~0_combout\ & (((\Add3~5_sumout\) # (\Add3~1_sumout\)) # (\process_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add3~5_sumout\,
	datad => \ALT_INV_Add1~0_combout\,
	combout => \aux~21_combout\);

\LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = ( \aux~21_combout\ & ( \stop~26_combout\ & ( (!\position[2]~input_o\ & ((!\Add10~1_combout\ & (!\Add5~1_sumout\ & \Add5~5_sumout\)) # (\Add10~1_combout\ & (\Add5~1_sumout\ & !\Add5~5_sumout\)))) # (\position[2]~input_o\ & 
-- (!\Add5~1_sumout\ & (!\Add10~1_combout\ $ (\Add5~5_sumout\)))) ) ) ) # ( !\aux~21_combout\ & ( \stop~26_combout\ & ( (!\position[2]~input_o\ & ((!\Add10~1_combout\ & (!\Add5~1_sumout\ & \Add5~5_sumout\)) # (\Add10~1_combout\ & (\Add5~1_sumout\ & 
-- !\Add5~5_sumout\)))) # (\position[2]~input_o\ & (!\Add5~1_sumout\ & (!\Add10~1_combout\ $ (\Add5~5_sumout\)))) ) ) ) # ( \aux~21_combout\ & ( !\stop~26_combout\ & ( !\position[2]~input_o\ $ (\Add10~1_combout\) ) ) ) # ( !\aux~21_combout\ & ( 
-- !\stop~26_combout\ & ( (\position[2]~input_o\ & !\Add10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100110011001100101000010100100000100001010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_Add10~1_combout\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add5~5_sumout\,
	datae => \ALT_INV_aux~21_combout\,
	dataf => \ALT_INV_stop~26_combout\,
	combout => \LessThan8~1_combout\);

\LessThan8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = ( \aux~21_combout\ & ( \stop~26_combout\ & ( (!\position[2]~input_o\ & (\Add5~1_sumout\ & ((!\Add10~1_combout\) # (\Add5~5_sumout\)))) # (\position[2]~input_o\ & (((!\Add10~1_combout\ & \Add5~5_sumout\)) # (\Add5~1_sumout\))) ) ) ) 
-- # ( !\aux~21_combout\ & ( \stop~26_combout\ & ( (!\position[2]~input_o\ & (\Add5~1_sumout\ & ((!\Add10~1_combout\) # (\Add5~5_sumout\)))) # (\position[2]~input_o\ & (((!\Add10~1_combout\ & \Add5~5_sumout\)) # (\Add5~1_sumout\))) ) ) ) # ( \aux~21_combout\ 
-- & ( !\stop~26_combout\ & ( (\position[2]~input_o\ & !\Add10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000001101010011110000110101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_position[2]~input_o\,
	datab => \ALT_INV_Add10~1_combout\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add5~5_sumout\,
	datae => \ALT_INV_aux~21_combout\,
	dataf => \ALT_INV_stop~26_combout\,
	combout => \LessThan8~2_combout\);

\stop~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~27_combout\ = ( \LessThan8~1_combout\ & ( \LessThan8~2_combout\ & ( !\process_1~6_combout\ ) ) ) # ( !\LessThan8~1_combout\ & ( \LessThan8~2_combout\ & ( !\process_1~6_combout\ ) ) ) # ( \LessThan8~1_combout\ & ( !\LessThan8~2_combout\ & ( 
-- (!\process_1~6_combout\ & ((!\Add10~0_combout\ & ((\LessThan8~0_combout\) # (\aux~20_combout\))) # (\Add10~0_combout\ & (\aux~20_combout\ & \LessThan8~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~6_combout\,
	datab => \ALT_INV_Add10~0_combout\,
	datac => \ALT_INV_aux~20_combout\,
	datad => \ALT_INV_LessThan8~0_combout\,
	datae => \ALT_INV_LessThan8~1_combout\,
	dataf => \ALT_INV_LessThan8~2_combout\,
	combout => \stop~27_combout\);

\f[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[0]~4_combout\ = ( !\stop~27_combout\ & ( (\Equal1~2_combout\ & (((!\LessThan27~2_combout\) # (\stop~26_combout\)) # (\process_1~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001111000000000000000000001101000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~5_combout\,
	datab => \ALT_INV_LessThan27~2_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_stop~26_combout\,
	datae => \ALT_INV_stop~27_combout\,
	combout => \f[0]~4_combout\);

\f[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[0]~5_combout\ = ( \f[0]~3_combout\ & ( \f[0]~4_combout\ & ( (!\f[0]~1_combout\) # (\Equal0~0_combout\) ) ) ) # ( !\f[0]~3_combout\ & ( \f[0]~4_combout\ & ( (!\f[0]~1_combout\) # (\Equal0~0_combout\) ) ) ) # ( \f[0]~3_combout\ & ( !\f[0]~4_combout\ & ( 
-- (!\Equal0~0_combout\ & !\f[0]~1_combout\) ) ) ) # ( !\f[0]~3_combout\ & ( !\f[0]~4_combout\ & ( (!\Equal0~0_combout\ & (((!\f[0]~1_combout\)))) # (\Equal0~0_combout\ & (!\internal[7]~input_o\ & (!\Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000100000110011000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[7]~input_o\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_f[0]~1_combout\,
	datae => \ALT_INV_f[0]~3_combout\,
	dataf => \ALT_INV_f[0]~4_combout\,
	combout => \f[0]~5_combout\);

\f[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[2]~6_combout\ = (!\direction[0]~input_o\) # (!\direction[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_direction[0]~input_o\,
	datab => \ALT_INV_direction[1]~input_o\,
	combout => \f[2]~6_combout\);

\f[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- f(0) = ( f(0) & ( \f[2]~6_combout\ & ( !\f[0]~5_combout\ ) ) ) # ( !f(0) & ( \f[2]~6_combout\ & ( !\f[0]~5_combout\ ) ) ) # ( f(0) & ( !\f[2]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_f[0]~5_combout\,
	datae => ALT_INV_f(0),
	dataf => \ALT_INV_f[2]~6_combout\,
	combout => f(0));

\f[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[1]~8_combout\ = (!\internal[6]~input_o\ & (!\internal[7]~input_o\ & !\Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[6]~input_o\,
	datab => \ALT_INV_internal[7]~input_o\,
	datac => \ALT_INV_Equal1~2_combout\,
	combout => \f[1]~8_combout\);

\f[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[1]~9_combout\ = ( \stop~25_combout\ & ( \f[1]~8_combout\ & ( ((!\stop~22_combout\ & ((\stop~20_combout\))) # (\stop~22_combout\ & (\internal[4]~input_o\))) # (\internal[5]~input_o\) ) ) ) # ( !\stop~25_combout\ & ( \f[1]~8_combout\ & ( 
-- (((\stop~20_combout\ & !\stop~22_combout\)) # (\internal[5]~input_o\)) # (\internal[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[4]~input_o\,
	datab => \ALT_INV_internal[5]~input_o\,
	datac => \ALT_INV_stop~20_combout\,
	datad => \ALT_INV_stop~22_combout\,
	datae => \ALT_INV_stop~25_combout\,
	dataf => \ALT_INV_f[1]~8_combout\,
	combout => \f[1]~9_combout\);

\f[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[1]~7_combout\ = (!\f[0]~0_combout\ & (((\stop~4_combout\ & !\stop~8_combout\)) # (\stop~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000110000011100000011000001110000001100000111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stop~4_combout\,
	datab => \ALT_INV_stop~6_combout\,
	datac => \ALT_INV_f[0]~0_combout\,
	datad => \ALT_INV_stop~8_combout\,
	combout => \f[1]~7_combout\);

\f[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[1]~12_combout\ = ( \f[1]~7_combout\ & ( \Equal0~0_combout\ & ( ((!\stop~27_combout\ & (!\stop~26_combout\ & \Equal1~2_combout\))) # (\f[1]~9_combout\) ) ) ) # ( !\f[1]~7_combout\ & ( \Equal0~0_combout\ & ( ((!\stop~27_combout\ & (!\stop~26_combout\ & 
-- \Equal1~2_combout\))) # (\f[1]~9_combout\) ) ) ) # ( !\f[1]~7_combout\ & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stop~27_combout\,
	datab => \ALT_INV_stop~26_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_f[1]~9_combout\,
	datae => \ALT_INV_f[1]~7_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \f[1]~12_combout\);

\f[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- f(1) = ( f(1) & ( \f[2]~6_combout\ & ( !\f[1]~12_combout\ ) ) ) # ( !f(1) & ( \f[2]~6_combout\ & ( !\f[1]~12_combout\ ) ) ) # ( f(1) & ( !\f[2]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_f[1]~12_combout\,
	datae => ALT_INV_f(1),
	dataf => \ALT_INV_f[2]~6_combout\,
	combout => f(1));

\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( \stop~14_combout\ & ( \stop~17_combout\ & ( !\Add9~0_combout\ $ (((!\stop~10_combout\ & ((\aux~3_combout\))) # (\stop~10_combout\ & (\Add5~1_sumout\)))) ) ) ) # ( !\stop~14_combout\ & ( \stop~17_combout\ & ( !\Add9~0_combout\ $ 
-- (\aux~3_combout\) ) ) ) # ( \stop~14_combout\ & ( !\stop~17_combout\ & ( !\Add9~0_combout\ $ (\Add5~1_sumout\) ) ) ) # ( !\stop~14_combout\ & ( !\stop~17_combout\ & ( !\Add9~0_combout\ $ (\Add5~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110100101101001011010010110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~0_combout\,
	datab => \ALT_INV_Add5~1_sumout\,
	datac => \ALT_INV_aux~3_combout\,
	datad => \ALT_INV_stop~10_combout\,
	datae => \ALT_INV_stop~14_combout\,
	dataf => \ALT_INV_stop~17_combout\,
	combout => \LessThan2~0_combout\);

\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( \stop~15_combout\ & ( !\Add5~5_sumout\ $ (!\Add10~2_combout\) ) ) # ( !\stop~15_combout\ & ( !\Add10~2_combout\ $ (((\aux~9_combout\ & ((!\Add5~5_sumout\) # (!\stop~13_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000110110000111100011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_Add10~2_combout\,
	datac => \ALT_INV_aux~9_combout\,
	datad => \ALT_INV_stop~13_combout\,
	dataf => \ALT_INV_stop~15_combout\,
	combout => \LessThan2~1_combout\);

\stop~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~28_combout\ = ( \aux~13_combout\ & ( \stop~23_combout\ & ( (\internal[3]~input_o\ & (\LessThan2~0_combout\ & !\LessThan2~1_combout\)) ) ) ) # ( !\aux~13_combout\ & ( \stop~23_combout\ & ( (\internal[3]~input_o\ & (\Add10~0_combout\ & 
-- (\LessThan2~0_combout\ & !\LessThan2~1_combout\))) ) ) ) # ( \aux~13_combout\ & ( !\stop~23_combout\ & ( (\internal[3]~input_o\ & (\Add10~0_combout\ & (\LessThan2~0_combout\ & !\LessThan2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000001000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[3]~input_o\,
	datab => \ALT_INV_Add10~0_combout\,
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \ALT_INV_LessThan2~1_combout\,
	datae => \ALT_INV_aux~13_combout\,
	dataf => \ALT_INV_stop~23_combout\,
	combout => \stop~28_combout\);

\stop~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \stop~29_combout\ = ( \aux~10_combout\ & ( (\internal[3]~input_o\ & (!\aux~8_combout\ & ((!\position[2]~input_o\) # (\Add10~1_combout\)))) ) ) # ( !\aux~10_combout\ & ( (\internal[3]~input_o\ & (!\position[2]~input_o\ & (\Add10~1_combout\ & 
-- !\aux~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000010001010000000000000100000000000100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[3]~input_o\,
	datab => \ALT_INV_position[2]~input_o\,
	datac => \ALT_INV_Add10~1_combout\,
	datad => \ALT_INV_aux~8_combout\,
	datae => \ALT_INV_aux~10_combout\,
	combout => \stop~29_combout\);

\f[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[2]~10_combout\ = ( \stop~29_combout\ & ( \stop~25_combout\ & ( (!\internal[4]~input_o\ & (\Equal1~0_combout\ & !\Equal1~2_combout\)) ) ) ) # ( !\stop~29_combout\ & ( \stop~25_combout\ & ( (\Equal1~0_combout\ & (!\Equal1~2_combout\ & 
-- ((!\internal[4]~input_o\) # (!\stop~28_combout\)))) ) ) ) # ( \stop~29_combout\ & ( !\stop~25_combout\ & ( (!\internal[4]~input_o\ & (\Equal1~0_combout\ & !\Equal1~2_combout\)) ) ) ) # ( !\stop~29_combout\ & ( !\stop~25_combout\ & ( 
-- (!\internal[4]~input_o\ & (\Equal1~0_combout\ & !\Equal1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000110000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_internal[4]~input_o\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_stop~28_combout\,
	datae => \ALT_INV_stop~29_combout\,
	dataf => \ALT_INV_stop~25_combout\,
	combout => \f[2]~10_combout\);

\f[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \f[2]~11_combout\ = ( \Equal1~2_combout\ & ( \f[2]~10_combout\ & ( (((!\stop~8_combout\) # (\f[0]~0_combout\)) # (\stop~6_combout\)) # (\Equal0~0_combout\) ) ) ) # ( !\Equal1~2_combout\ & ( \f[2]~10_combout\ & ( (((!\stop~8_combout\) # (\f[0]~0_combout\)) 
-- # (\stop~6_combout\)) # (\Equal0~0_combout\) ) ) ) # ( \Equal1~2_combout\ & ( !\f[2]~10_combout\ & ( (((!\stop~8_combout\) # (\f[0]~0_combout\)) # (\stop~6_combout\)) # (\Equal0~0_combout\) ) ) ) # ( !\Equal1~2_combout\ & ( !\f[2]~10_combout\ & ( 
-- (!\Equal0~0_combout\ & (((!\stop~8_combout\) # (\f[0]~0_combout\)) # (\stop~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000101010111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_stop~6_combout\,
	datac => \ALT_INV_f[0]~0_combout\,
	datad => \ALT_INV_stop~8_combout\,
	datae => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_f[2]~10_combout\,
	combout => \f[2]~11_combout\);

\f[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- f(2) = ( f(2) & ( \f[2]~6_combout\ & ( !\f[2]~11_combout\ ) ) ) # ( !f(2) & ( \f[2]~6_combout\ & ( !\f[2]~11_combout\ ) ) ) # ( f(2) & ( !\f[2]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_f[2]~11_combout\,
	datae => ALT_INV_f(2),
	dataf => \ALT_INV_f[2]~6_combout\,
	combout => f(2));

\requestsDown[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsDown(0),
	o => \requestsDown[0]~input_o\);

\requestsDown[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsDown(5),
	o => \requestsDown[5]~input_o\);

\requestsDown[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsDown(6),
	o => \requestsDown[6]~input_o\);

\requestsDown[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsDown(7),
	o => \requestsDown[7]~input_o\);

\requestsUp[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsUp(0),
	o => \requestsUp[0]~input_o\);

\requestsUp[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsUp(5),
	o => \requestsUp[5]~input_o\);

\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( !\requestsUp[0]~input_o\ & ( !\requestsUp[5]~input_o\ & ( (!\requestsDown[0]~input_o\ & (!\requestsDown[5]~input_o\ & (!\requestsDown[6]~input_o\ & !\requestsDown[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_requestsDown[0]~input_o\,
	datab => \ALT_INV_requestsDown[5]~input_o\,
	datac => \ALT_INV_requestsDown[6]~input_o\,
	datad => \ALT_INV_requestsDown[7]~input_o\,
	datae => \ALT_INV_requestsUp[0]~input_o\,
	dataf => \ALT_INV_requestsUp[5]~input_o\,
	combout => \process_1~1_combout\);

\requestsUp[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsUp(6),
	o => \requestsUp[6]~input_o\);

\requestsUp[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsUp(7),
	o => \requestsUp[7]~input_o\);

\process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (!\requestsUp[6]~input_o\ & (!\requestsUp[7]~input_o\ & (!\requestsDown[1]~input_o\ & !\requestsUp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_requestsUp[6]~input_o\,
	datab => \ALT_INV_requestsUp[7]~input_o\,
	datac => \ALT_INV_requestsDown[1]~input_o\,
	datad => \ALT_INV_requestsUp[1]~input_o\,
	combout => \process_1~2_combout\);

\requestsDown[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_requestsDown(4),
	o => \requestsDown[4]~input_o\);

\process_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (!\requestsDown[3]~input_o\ & (!\requestsUp[3]~input_o\ & (!\requestsDown[4]~input_o\ & !\requestsUp[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_requestsDown[3]~input_o\,
	datab => \ALT_INV_requestsUp[3]~input_o\,
	datac => \ALT_INV_requestsDown[4]~input_o\,
	datad => \ALT_INV_requestsUp[4]~input_o\,
	combout => \process_1~3_combout\);

\process_1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = ( \process_1~2_combout\ & ( \process_1~3_combout\ & ( (!\process_1~0_combout\) # ((!\Equal1~0_combout\) # ((!\Equal1~1_combout\) # (!\process_1~1_combout\))) ) ) ) # ( !\process_1~2_combout\ & ( \process_1~3_combout\ ) ) # ( 
-- \process_1~2_combout\ & ( !\process_1~3_combout\ ) ) # ( !\process_1~2_combout\ & ( !\process_1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_process_1~1_combout\,
	datae => \ALT_INV_process_1~2_combout\,
	dataf => \ALT_INV_process_1~3_combout\,
	combout => \process_1~4_combout\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_destiny(0) <= \destiny[0]~output_o\;

ww_destiny(1) <= \destiny[1]~output_o\;

ww_destiny(2) <= \destiny[2]~output_o\;

ww_call <= \call~output_o\;
END structure;


