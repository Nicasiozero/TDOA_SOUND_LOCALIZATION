-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/26/2024 13:44:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TDOA_SOUND
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TDOA_SOUND_vhd_vec_tst IS
END TDOA_SOUND_vhd_vec_tst;
ARCHITECTURE TDOA_SOUND_arch OF TDOA_SOUND_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADC_CSN : STD_LOGIC;
SIGNAL ADC_MISO : STD_LOGIC;
SIGNAL ADC_MOSI : STD_LOGIC;
SIGNAL ADC_SCLK : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL LEDS : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL NRST : STD_LOGIC;
COMPONENT TDOA_SOUND
	PORT (
	ADC_CSN : OUT STD_LOGIC;
	ADC_MISO : IN STD_LOGIC;
	ADC_MOSI : OUT STD_LOGIC;
	ADC_SCLK : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	LEDS : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	NRST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TDOA_SOUND
	PORT MAP (
-- list connections between master ports and signals
	ADC_CSN => ADC_CSN,
	ADC_MISO => ADC_MISO,
	ADC_MOSI => ADC_MOSI,
	ADC_SCLK => ADC_SCLK,
	CLK => CLK,
	LEDS => LEDS,
	NRST => NRST
	);

-- ADC_MISO
t_prcs_ADC_MISO: PROCESS
BEGIN
	ADC_MISO <= '0';
WAIT;
END PROCESS t_prcs_ADC_MISO;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- NRST
t_prcs_NRST: PROCESS
BEGIN
	NRST <= '0';
WAIT;
END PROCESS t_prcs_NRST;
END TDOA_SOUND_arch;
