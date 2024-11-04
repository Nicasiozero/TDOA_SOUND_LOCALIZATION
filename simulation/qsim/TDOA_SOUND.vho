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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/26/2024 13:44:55"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TDOA_SOUND IS
    PORT (
	CLK : IN std_logic;
	NRST : IN std_logic;
	ADC_CSN : OUT std_logic;
	ADC_SCLK : OUT std_logic;
	ADC_MOSI : OUT std_logic;
	ADC_MISO : IN std_logic;
	LEDS : OUT std_logic_vector(7 DOWNTO 0)
	);
END TDOA_SOUND;

-- Design Ports Information
-- ADC_CSN	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_MOSI	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[6]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDS[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NRST	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADC_MISO	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TDOA_SOUND IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_NRST : std_logic;
SIGNAL ww_ADC_CSN : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_ADC_MOSI : std_logic;
SIGNAL ww_ADC_MISO : std_logic;
SIGNAL ww_LEDS : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_CSN~output_o\ : std_logic;
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \ADC_MOSI~output_o\ : std_logic;
SIGNAL \LEDS[0]~output_o\ : std_logic;
SIGNAL \LEDS[1]~output_o\ : std_logic;
SIGNAL \LEDS[2]~output_o\ : std_logic;
SIGNAL \LEDS[3]~output_o\ : std_logic;
SIGNAL \LEDS[4]~output_o\ : std_logic;
SIGNAL \LEDS[5]~output_o\ : std_logic;
SIGNAL \LEDS[6]~output_o\ : std_logic;
SIGNAL \LEDS[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \adc_instance|wait_cnt[0]~32_combout\ : std_logic;
SIGNAL \NRST~input_o\ : std_logic;
SIGNAL \adc_instance|wait_cnt[0]~33\ : std_logic;
SIGNAL \adc_instance|wait_cnt[1]~34_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[1]~35\ : std_logic;
SIGNAL \adc_instance|wait_cnt[2]~36_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[2]~37\ : std_logic;
SIGNAL \adc_instance|wait_cnt[3]~38_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[3]~39\ : std_logic;
SIGNAL \adc_instance|wait_cnt[4]~40_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[4]~41\ : std_logic;
SIGNAL \adc_instance|wait_cnt[5]~42_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[5]~43\ : std_logic;
SIGNAL \adc_instance|wait_cnt[6]~44_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[6]~45\ : std_logic;
SIGNAL \adc_instance|wait_cnt[7]~46_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[7]~47\ : std_logic;
SIGNAL \adc_instance|wait_cnt[8]~48_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[8]~49\ : std_logic;
SIGNAL \adc_instance|wait_cnt[9]~50_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[9]~51\ : std_logic;
SIGNAL \adc_instance|wait_cnt[10]~52_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[10]~53\ : std_logic;
SIGNAL \adc_instance|wait_cnt[11]~54_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[11]~55\ : std_logic;
SIGNAL \adc_instance|wait_cnt[12]~56_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[12]~57\ : std_logic;
SIGNAL \adc_instance|wait_cnt[13]~58_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[13]~59\ : std_logic;
SIGNAL \adc_instance|wait_cnt[14]~60_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[14]~61\ : std_logic;
SIGNAL \adc_instance|wait_cnt[15]~62_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[15]~63\ : std_logic;
SIGNAL \adc_instance|wait_cnt[16]~64_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[16]~65\ : std_logic;
SIGNAL \adc_instance|wait_cnt[17]~66_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[17]~67\ : std_logic;
SIGNAL \adc_instance|wait_cnt[18]~68_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[18]~69\ : std_logic;
SIGNAL \adc_instance|wait_cnt[19]~70_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[19]~71\ : std_logic;
SIGNAL \adc_instance|wait_cnt[20]~72_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[20]~73\ : std_logic;
SIGNAL \adc_instance|wait_cnt[21]~74_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[21]~75\ : std_logic;
SIGNAL \adc_instance|wait_cnt[22]~76_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[22]~77\ : std_logic;
SIGNAL \adc_instance|wait_cnt[23]~78_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~6_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~5_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[23]~79\ : std_logic;
SIGNAL \adc_instance|wait_cnt[24]~80_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[24]~81\ : std_logic;
SIGNAL \adc_instance|wait_cnt[25]~82_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[25]~83\ : std_logic;
SIGNAL \adc_instance|wait_cnt[26]~84_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[26]~85\ : std_logic;
SIGNAL \adc_instance|wait_cnt[27]~86_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[27]~87\ : std_logic;
SIGNAL \adc_instance|wait_cnt[28]~88_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[28]~89\ : std_logic;
SIGNAL \adc_instance|wait_cnt[29]~90_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[29]~91\ : std_logic;
SIGNAL \adc_instance|wait_cnt[30]~92_combout\ : std_logic;
SIGNAL \adc_instance|wait_cnt[30]~93\ : std_logic;
SIGNAL \adc_instance|wait_cnt[31]~94_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~8_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~7_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~9_combout\ : std_logic;
SIGNAL \adc_instance|Selector10~1_combout\ : std_logic;
SIGNAL \adc_instance|Add0~0_combout\ : std_logic;
SIGNAL \adc_instance|Add0~1\ : std_logic;
SIGNAL \adc_instance|Add0~2_combout\ : std_logic;
SIGNAL \adc_instance|Add0~3\ : std_logic;
SIGNAL \adc_instance|Add0~4_combout\ : std_logic;
SIGNAL \adc_instance|Add0~5\ : std_logic;
SIGNAL \adc_instance|Add0~6_combout\ : std_logic;
SIGNAL \adc_instance|count~1_combout\ : std_logic;
SIGNAL \adc_instance|Add0~7\ : std_logic;
SIGNAL \adc_instance|Add0~8_combout\ : std_logic;
SIGNAL \adc_instance|count~0_combout\ : std_logic;
SIGNAL \adc_instance|Equal0~0_combout\ : std_logic;
SIGNAL \adc_instance|count~2_combout\ : std_logic;
SIGNAL \adc_instance|Equal0~1_combout\ : std_logic;
SIGNAL \adc_instance|shift_en~q\ : std_logic;
SIGNAL \adc_instance|Equal2~0_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~2_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~3_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~1_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~4_combout\ : std_logic;
SIGNAL \adc_instance|Equal2~10_combout\ : std_logic;
SIGNAL \adc_instance|Selector6~0_combout\ : std_logic;
SIGNAL \adc_instance|state.ST_IDLE~q\ : std_logic;
SIGNAL \adc_instance|state.ST_START~0_combout\ : std_logic;
SIGNAL \adc_instance|state.ST_START~q\ : std_logic;
SIGNAL \adc_instance|Selector9~0_combout\ : std_logic;
SIGNAL \adc_instance|bit_index~3_combout\ : std_logic;
SIGNAL \adc_instance|Selector3~0_combout\ : std_logic;
SIGNAL \adc_instance|Add1~2_combout\ : std_logic;
SIGNAL \adc_instance|bit_index[1]~2_combout\ : std_logic;
SIGNAL \adc_instance|Selector2~0_combout\ : std_logic;
SIGNAL \adc_instance|Add1~1_combout\ : std_logic;
SIGNAL \adc_instance|bit_index[2]~1_combout\ : std_logic;
SIGNAL \adc_instance|Selector1~0_combout\ : std_logic;
SIGNAL \adc_instance|Add1~0_combout\ : std_logic;
SIGNAL \adc_instance|bit_index[3]~0_combout\ : std_logic;
SIGNAL \adc_instance|Selector0~0_combout\ : std_logic;
SIGNAL \adc_instance|Equal1~0_combout\ : std_logic;
SIGNAL \adc_instance|Selector9~1_combout\ : std_logic;
SIGNAL \adc_instance|state.ST_SCK_L~q\ : std_logic;
SIGNAL \adc_instance|state.ST_SCK_H~q\ : std_logic;
SIGNAL \adc_instance|Selector10~0_combout\ : std_logic;
SIGNAL \adc_instance|Selector10~2_combout\ : std_logic;
SIGNAL \adc_instance|state.ST_WAIT~q\ : std_logic;
SIGNAL \adc_instance|Selector4~0_combout\ : std_logic;
SIGNAL \adc_instance|Selector4~1_combout\ : std_logic;
SIGNAL \adc_instance|cs_n~q\ : std_logic;
SIGNAL \adc_instance|Selector5~0_combout\ : std_logic;
SIGNAL \adc_instance|Selector5~1_combout\ : std_logic;
SIGNAL \adc_instance|sclk~q\ : std_logic;
SIGNAL \ADC_MISO~input_o\ : std_logic;
SIGNAL \adc_instance|shift_reg[0]~14_combout\ : std_logic;
SIGNAL \adc_instance|Selector27~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[1]~13_combout\ : std_logic;
SIGNAL \adc_instance|Selector26~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[2]~12_combout\ : std_logic;
SIGNAL \adc_instance|Selector25~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[3]~11_combout\ : std_logic;
SIGNAL \adc_instance|Selector24~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[4]~10_combout\ : std_logic;
SIGNAL \adc_instance|Selector23~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[5]~9_combout\ : std_logic;
SIGNAL \adc_instance|Selector22~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[6]~8_combout\ : std_logic;
SIGNAL \adc_instance|Selector21~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[7]~7_combout\ : std_logic;
SIGNAL \adc_instance|Selector20~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[8]~5_combout\ : std_logic;
SIGNAL \adc_instance|Selector19~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[9]~4_combout\ : std_logic;
SIGNAL \adc_instance|Selector18~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[10]~3_combout\ : std_logic;
SIGNAL \adc_instance|Selector17~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[11]~2_combout\ : std_logic;
SIGNAL \adc_instance|Selector16~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[12]~6_combout\ : std_logic;
SIGNAL \adc_instance|Selector15~0_combout\ : std_logic;
SIGNAL \adc_instance|Selector14~0_combout\ : std_logic;
SIGNAL \adc_instance|Selector14~1_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[14]~1_combout\ : std_logic;
SIGNAL \adc_instance|Selector13~0_combout\ : std_logic;
SIGNAL \adc_instance|shift_reg[15]~0_combout\ : std_logic;
SIGNAL \adc_instance|Selector12~0_combout\ : std_logic;
SIGNAL \adc_instance|mosi~0_combout\ : std_logic;
SIGNAL \adc_instance|mosi~q\ : std_logic;
SIGNAL \adc_instance|adc_data[11]~feeder_combout\ : std_logic;
SIGNAL \adc_instance|adc_data[10]~feeder_combout\ : std_logic;
SIGNAL \adc_instance|adc_data[9]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \LEDS[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \LEDS[2]~reg0_q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \LEDS[3]~reg0_q\ : std_logic;
SIGNAL \LEDS[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDS[4]~reg0_q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \LEDS[5]~reg0_q\ : std_logic;
SIGNAL \LEDS~0_combout\ : std_logic;
SIGNAL \LEDS[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \LEDS[7]~reg0_q\ : std_logic;
SIGNAL \adc_instance|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adc_instance|bit_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adc_instance|shift_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \adc_instance|wait_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \adc_instance|adc_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \adc_instance|ALT_INV_state.ST_WAIT~q\ : std_logic;
SIGNAL \adc_instance|ALT_INV_state.ST_SCK_H~q\ : std_logic;
SIGNAL \adc_instance|ALT_INV_cs_n~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_NRST <= NRST;
ADC_CSN <= ww_ADC_CSN;
ADC_SCLK <= ww_ADC_SCLK;
ADC_MOSI <= ww_ADC_MOSI;
ww_ADC_MISO <= ADC_MISO;
LEDS <= ww_LEDS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\adc_instance|ALT_INV_state.ST_WAIT~q\ <= NOT \adc_instance|state.ST_WAIT~q\;
\adc_instance|ALT_INV_state.ST_SCK_H~q\ <= NOT \adc_instance|state.ST_SCK_H~q\;
\adc_instance|ALT_INV_cs_n~q\ <= NOT \adc_instance|cs_n~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CSN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_instance|ALT_INV_cs_n~q\,
	devoe => ww_devoe,
	o => \ADC_CSN~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_instance|sclk~q\,
	devoe => ww_devoe,
	o => \ADC_SCLK~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\ADC_MOSI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adc_instance|mosi~q\,
	devoe => ww_devoe,
	o => \ADC_MOSI~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LEDS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDS[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LEDS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LEDS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LEDS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LEDS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LEDS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LEDS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDS[7]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDS[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G18
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y17_N0
\adc_instance|wait_cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[0]~32_combout\ = \adc_instance|wait_cnt\(0) $ (VCC)
-- \adc_instance|wait_cnt[0]~33\ = CARRY(\adc_instance|wait_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(0),
	datad => VCC,
	combout => \adc_instance|wait_cnt[0]~32_combout\,
	cout => \adc_instance|wait_cnt[0]~33\);

-- Location: IOIBUF_X53_Y14_N1
\NRST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NRST,
	o => \NRST~input_o\);

-- Location: FF_X46_Y17_N1
\adc_instance|wait_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[0]~32_combout\,
	asdata => VCC,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(0));

-- Location: LCCOMB_X46_Y17_N2
\adc_instance|wait_cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[1]~34_combout\ = (\adc_instance|wait_cnt\(1) & (\adc_instance|wait_cnt[0]~33\ & VCC)) # (!\adc_instance|wait_cnt\(1) & (!\adc_instance|wait_cnt[0]~33\))
-- \adc_instance|wait_cnt[1]~35\ = CARRY((!\adc_instance|wait_cnt\(1) & !\adc_instance|wait_cnt[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(1),
	datad => VCC,
	cin => \adc_instance|wait_cnt[0]~33\,
	combout => \adc_instance|wait_cnt[1]~34_combout\,
	cout => \adc_instance|wait_cnt[1]~35\);

-- Location: FF_X46_Y17_N3
\adc_instance|wait_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[1]~34_combout\,
	asdata => VCC,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(1));

-- Location: LCCOMB_X46_Y17_N4
\adc_instance|wait_cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[2]~36_combout\ = (\adc_instance|wait_cnt\(2) & ((GND) # (!\adc_instance|wait_cnt[1]~35\))) # (!\adc_instance|wait_cnt\(2) & (\adc_instance|wait_cnt[1]~35\ $ (GND)))
-- \adc_instance|wait_cnt[2]~37\ = CARRY((\adc_instance|wait_cnt\(2)) # (!\adc_instance|wait_cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(2),
	datad => VCC,
	cin => \adc_instance|wait_cnt[1]~35\,
	combout => \adc_instance|wait_cnt[2]~36_combout\,
	cout => \adc_instance|wait_cnt[2]~37\);

-- Location: FF_X46_Y17_N5
\adc_instance|wait_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[2]~36_combout\,
	asdata => VCC,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(2));

-- Location: LCCOMB_X46_Y17_N6
\adc_instance|wait_cnt[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[3]~38_combout\ = (\adc_instance|wait_cnt\(3) & (\adc_instance|wait_cnt[2]~37\ & VCC)) # (!\adc_instance|wait_cnt\(3) & (!\adc_instance|wait_cnt[2]~37\))
-- \adc_instance|wait_cnt[3]~39\ = CARRY((!\adc_instance|wait_cnt\(3) & !\adc_instance|wait_cnt[2]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(3),
	datad => VCC,
	cin => \adc_instance|wait_cnt[2]~37\,
	combout => \adc_instance|wait_cnt[3]~38_combout\,
	cout => \adc_instance|wait_cnt[3]~39\);

-- Location: FF_X46_Y17_N7
\adc_instance|wait_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[3]~38_combout\,
	asdata => VCC,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(3));

-- Location: LCCOMB_X46_Y17_N8
\adc_instance|wait_cnt[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[4]~40_combout\ = (\adc_instance|wait_cnt\(4) & ((GND) # (!\adc_instance|wait_cnt[3]~39\))) # (!\adc_instance|wait_cnt\(4) & (\adc_instance|wait_cnt[3]~39\ $ (GND)))
-- \adc_instance|wait_cnt[4]~41\ = CARRY((\adc_instance|wait_cnt\(4)) # (!\adc_instance|wait_cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(4),
	datad => VCC,
	cin => \adc_instance|wait_cnt[3]~39\,
	combout => \adc_instance|wait_cnt[4]~40_combout\,
	cout => \adc_instance|wait_cnt[4]~41\);

-- Location: FF_X46_Y17_N9
\adc_instance|wait_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[4]~40_combout\,
	asdata => VCC,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(4));

-- Location: LCCOMB_X46_Y17_N10
\adc_instance|wait_cnt[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[5]~42_combout\ = (\adc_instance|wait_cnt\(5) & (\adc_instance|wait_cnt[4]~41\ & VCC)) # (!\adc_instance|wait_cnt\(5) & (!\adc_instance|wait_cnt[4]~41\))
-- \adc_instance|wait_cnt[5]~43\ = CARRY((!\adc_instance|wait_cnt\(5) & !\adc_instance|wait_cnt[4]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(5),
	datad => VCC,
	cin => \adc_instance|wait_cnt[4]~41\,
	combout => \adc_instance|wait_cnt[5]~42_combout\,
	cout => \adc_instance|wait_cnt[5]~43\);

-- Location: LCCOMB_X46_Y15_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X46_Y17_N11
\adc_instance|wait_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[5]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(5));

-- Location: LCCOMB_X46_Y17_N12
\adc_instance|wait_cnt[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[6]~44_combout\ = (\adc_instance|wait_cnt\(6) & ((GND) # (!\adc_instance|wait_cnt[5]~43\))) # (!\adc_instance|wait_cnt\(6) & (\adc_instance|wait_cnt[5]~43\ $ (GND)))
-- \adc_instance|wait_cnt[6]~45\ = CARRY((\adc_instance|wait_cnt\(6)) # (!\adc_instance|wait_cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(6),
	datad => VCC,
	cin => \adc_instance|wait_cnt[5]~43\,
	combout => \adc_instance|wait_cnt[6]~44_combout\,
	cout => \adc_instance|wait_cnt[6]~45\);

-- Location: FF_X46_Y17_N13
\adc_instance|wait_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[6]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(6));

-- Location: LCCOMB_X46_Y17_N14
\adc_instance|wait_cnt[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[7]~46_combout\ = (\adc_instance|wait_cnt\(7) & (\adc_instance|wait_cnt[6]~45\ & VCC)) # (!\adc_instance|wait_cnt\(7) & (!\adc_instance|wait_cnt[6]~45\))
-- \adc_instance|wait_cnt[7]~47\ = CARRY((!\adc_instance|wait_cnt\(7) & !\adc_instance|wait_cnt[6]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(7),
	datad => VCC,
	cin => \adc_instance|wait_cnt[6]~45\,
	combout => \adc_instance|wait_cnt[7]~46_combout\,
	cout => \adc_instance|wait_cnt[7]~47\);

-- Location: FF_X46_Y17_N15
\adc_instance|wait_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[7]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(7));

-- Location: LCCOMB_X46_Y17_N16
\adc_instance|wait_cnt[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[8]~48_combout\ = (\adc_instance|wait_cnt\(8) & ((GND) # (!\adc_instance|wait_cnt[7]~47\))) # (!\adc_instance|wait_cnt\(8) & (\adc_instance|wait_cnt[7]~47\ $ (GND)))
-- \adc_instance|wait_cnt[8]~49\ = CARRY((\adc_instance|wait_cnt\(8)) # (!\adc_instance|wait_cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(8),
	datad => VCC,
	cin => \adc_instance|wait_cnt[7]~47\,
	combout => \adc_instance|wait_cnt[8]~48_combout\,
	cout => \adc_instance|wait_cnt[8]~49\);

-- Location: FF_X46_Y17_N17
\adc_instance|wait_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[8]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(8));

-- Location: LCCOMB_X46_Y17_N18
\adc_instance|wait_cnt[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[9]~50_combout\ = (\adc_instance|wait_cnt\(9) & (\adc_instance|wait_cnt[8]~49\ & VCC)) # (!\adc_instance|wait_cnt\(9) & (!\adc_instance|wait_cnt[8]~49\))
-- \adc_instance|wait_cnt[9]~51\ = CARRY((!\adc_instance|wait_cnt\(9) & !\adc_instance|wait_cnt[8]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(9),
	datad => VCC,
	cin => \adc_instance|wait_cnt[8]~49\,
	combout => \adc_instance|wait_cnt[9]~50_combout\,
	cout => \adc_instance|wait_cnt[9]~51\);

-- Location: FF_X46_Y17_N19
\adc_instance|wait_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[9]~50_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(9));

-- Location: LCCOMB_X46_Y17_N20
\adc_instance|wait_cnt[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[10]~52_combout\ = (\adc_instance|wait_cnt\(10) & ((GND) # (!\adc_instance|wait_cnt[9]~51\))) # (!\adc_instance|wait_cnt\(10) & (\adc_instance|wait_cnt[9]~51\ $ (GND)))
-- \adc_instance|wait_cnt[10]~53\ = CARRY((\adc_instance|wait_cnt\(10)) # (!\adc_instance|wait_cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(10),
	datad => VCC,
	cin => \adc_instance|wait_cnt[9]~51\,
	combout => \adc_instance|wait_cnt[10]~52_combout\,
	cout => \adc_instance|wait_cnt[10]~53\);

-- Location: FF_X46_Y17_N21
\adc_instance|wait_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[10]~52_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(10));

-- Location: LCCOMB_X46_Y17_N22
\adc_instance|wait_cnt[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[11]~54_combout\ = (\adc_instance|wait_cnt\(11) & (\adc_instance|wait_cnt[10]~53\ & VCC)) # (!\adc_instance|wait_cnt\(11) & (!\adc_instance|wait_cnt[10]~53\))
-- \adc_instance|wait_cnt[11]~55\ = CARRY((!\adc_instance|wait_cnt\(11) & !\adc_instance|wait_cnt[10]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(11),
	datad => VCC,
	cin => \adc_instance|wait_cnt[10]~53\,
	combout => \adc_instance|wait_cnt[11]~54_combout\,
	cout => \adc_instance|wait_cnt[11]~55\);

-- Location: FF_X46_Y17_N23
\adc_instance|wait_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[11]~54_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(11));

-- Location: LCCOMB_X46_Y17_N24
\adc_instance|wait_cnt[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[12]~56_combout\ = (\adc_instance|wait_cnt\(12) & ((GND) # (!\adc_instance|wait_cnt[11]~55\))) # (!\adc_instance|wait_cnt\(12) & (\adc_instance|wait_cnt[11]~55\ $ (GND)))
-- \adc_instance|wait_cnt[12]~57\ = CARRY((\adc_instance|wait_cnt\(12)) # (!\adc_instance|wait_cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(12),
	datad => VCC,
	cin => \adc_instance|wait_cnt[11]~55\,
	combout => \adc_instance|wait_cnt[12]~56_combout\,
	cout => \adc_instance|wait_cnt[12]~57\);

-- Location: FF_X46_Y17_N25
\adc_instance|wait_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[12]~56_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(12));

-- Location: LCCOMB_X46_Y17_N26
\adc_instance|wait_cnt[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[13]~58_combout\ = (\adc_instance|wait_cnt\(13) & (\adc_instance|wait_cnt[12]~57\ & VCC)) # (!\adc_instance|wait_cnt\(13) & (!\adc_instance|wait_cnt[12]~57\))
-- \adc_instance|wait_cnt[13]~59\ = CARRY((!\adc_instance|wait_cnt\(13) & !\adc_instance|wait_cnt[12]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(13),
	datad => VCC,
	cin => \adc_instance|wait_cnt[12]~57\,
	combout => \adc_instance|wait_cnt[13]~58_combout\,
	cout => \adc_instance|wait_cnt[13]~59\);

-- Location: FF_X46_Y17_N27
\adc_instance|wait_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[13]~58_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(13));

-- Location: LCCOMB_X46_Y17_N28
\adc_instance|wait_cnt[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[14]~60_combout\ = (\adc_instance|wait_cnt\(14) & ((GND) # (!\adc_instance|wait_cnt[13]~59\))) # (!\adc_instance|wait_cnt\(14) & (\adc_instance|wait_cnt[13]~59\ $ (GND)))
-- \adc_instance|wait_cnt[14]~61\ = CARRY((\adc_instance|wait_cnt\(14)) # (!\adc_instance|wait_cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(14),
	datad => VCC,
	cin => \adc_instance|wait_cnt[13]~59\,
	combout => \adc_instance|wait_cnt[14]~60_combout\,
	cout => \adc_instance|wait_cnt[14]~61\);

-- Location: FF_X46_Y17_N29
\adc_instance|wait_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[14]~60_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(14));

-- Location: LCCOMB_X46_Y17_N30
\adc_instance|wait_cnt[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[15]~62_combout\ = (\adc_instance|wait_cnt\(15) & (\adc_instance|wait_cnt[14]~61\ & VCC)) # (!\adc_instance|wait_cnt\(15) & (!\adc_instance|wait_cnt[14]~61\))
-- \adc_instance|wait_cnt[15]~63\ = CARRY((!\adc_instance|wait_cnt\(15) & !\adc_instance|wait_cnt[14]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(15),
	datad => VCC,
	cin => \adc_instance|wait_cnt[14]~61\,
	combout => \adc_instance|wait_cnt[15]~62_combout\,
	cout => \adc_instance|wait_cnt[15]~63\);

-- Location: FF_X46_Y17_N31
\adc_instance|wait_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[15]~62_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(15));

-- Location: LCCOMB_X46_Y16_N0
\adc_instance|wait_cnt[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[16]~64_combout\ = (\adc_instance|wait_cnt\(16) & ((GND) # (!\adc_instance|wait_cnt[15]~63\))) # (!\adc_instance|wait_cnt\(16) & (\adc_instance|wait_cnt[15]~63\ $ (GND)))
-- \adc_instance|wait_cnt[16]~65\ = CARRY((\adc_instance|wait_cnt\(16)) # (!\adc_instance|wait_cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(16),
	datad => VCC,
	cin => \adc_instance|wait_cnt[15]~63\,
	combout => \adc_instance|wait_cnt[16]~64_combout\,
	cout => \adc_instance|wait_cnt[16]~65\);

-- Location: FF_X46_Y16_N1
\adc_instance|wait_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[16]~64_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(16));

-- Location: LCCOMB_X46_Y16_N2
\adc_instance|wait_cnt[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[17]~66_combout\ = (\adc_instance|wait_cnt\(17) & (\adc_instance|wait_cnt[16]~65\ & VCC)) # (!\adc_instance|wait_cnt\(17) & (!\adc_instance|wait_cnt[16]~65\))
-- \adc_instance|wait_cnt[17]~67\ = CARRY((!\adc_instance|wait_cnt\(17) & !\adc_instance|wait_cnt[16]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(17),
	datad => VCC,
	cin => \adc_instance|wait_cnt[16]~65\,
	combout => \adc_instance|wait_cnt[17]~66_combout\,
	cout => \adc_instance|wait_cnt[17]~67\);

-- Location: FF_X46_Y16_N3
\adc_instance|wait_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[17]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(17));

-- Location: LCCOMB_X46_Y16_N4
\adc_instance|wait_cnt[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[18]~68_combout\ = (\adc_instance|wait_cnt\(18) & ((GND) # (!\adc_instance|wait_cnt[17]~67\))) # (!\adc_instance|wait_cnt\(18) & (\adc_instance|wait_cnt[17]~67\ $ (GND)))
-- \adc_instance|wait_cnt[18]~69\ = CARRY((\adc_instance|wait_cnt\(18)) # (!\adc_instance|wait_cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(18),
	datad => VCC,
	cin => \adc_instance|wait_cnt[17]~67\,
	combout => \adc_instance|wait_cnt[18]~68_combout\,
	cout => \adc_instance|wait_cnt[18]~69\);

-- Location: FF_X46_Y16_N5
\adc_instance|wait_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[18]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(18));

-- Location: LCCOMB_X46_Y16_N6
\adc_instance|wait_cnt[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[19]~70_combout\ = (\adc_instance|wait_cnt\(19) & (\adc_instance|wait_cnt[18]~69\ & VCC)) # (!\adc_instance|wait_cnt\(19) & (!\adc_instance|wait_cnt[18]~69\))
-- \adc_instance|wait_cnt[19]~71\ = CARRY((!\adc_instance|wait_cnt\(19) & !\adc_instance|wait_cnt[18]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(19),
	datad => VCC,
	cin => \adc_instance|wait_cnt[18]~69\,
	combout => \adc_instance|wait_cnt[19]~70_combout\,
	cout => \adc_instance|wait_cnt[19]~71\);

-- Location: FF_X46_Y16_N7
\adc_instance|wait_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[19]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(19));

-- Location: LCCOMB_X46_Y16_N8
\adc_instance|wait_cnt[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[20]~72_combout\ = (\adc_instance|wait_cnt\(20) & ((GND) # (!\adc_instance|wait_cnt[19]~71\))) # (!\adc_instance|wait_cnt\(20) & (\adc_instance|wait_cnt[19]~71\ $ (GND)))
-- \adc_instance|wait_cnt[20]~73\ = CARRY((\adc_instance|wait_cnt\(20)) # (!\adc_instance|wait_cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(20),
	datad => VCC,
	cin => \adc_instance|wait_cnt[19]~71\,
	combout => \adc_instance|wait_cnt[20]~72_combout\,
	cout => \adc_instance|wait_cnt[20]~73\);

-- Location: FF_X46_Y16_N9
\adc_instance|wait_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[20]~72_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(20));

-- Location: LCCOMB_X46_Y16_N10
\adc_instance|wait_cnt[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[21]~74_combout\ = (\adc_instance|wait_cnt\(21) & (\adc_instance|wait_cnt[20]~73\ & VCC)) # (!\adc_instance|wait_cnt\(21) & (!\adc_instance|wait_cnt[20]~73\))
-- \adc_instance|wait_cnt[21]~75\ = CARRY((!\adc_instance|wait_cnt\(21) & !\adc_instance|wait_cnt[20]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(21),
	datad => VCC,
	cin => \adc_instance|wait_cnt[20]~73\,
	combout => \adc_instance|wait_cnt[21]~74_combout\,
	cout => \adc_instance|wait_cnt[21]~75\);

-- Location: FF_X46_Y16_N11
\adc_instance|wait_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[21]~74_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(21));

-- Location: LCCOMB_X46_Y16_N12
\adc_instance|wait_cnt[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[22]~76_combout\ = (\adc_instance|wait_cnt\(22) & ((GND) # (!\adc_instance|wait_cnt[21]~75\))) # (!\adc_instance|wait_cnt\(22) & (\adc_instance|wait_cnt[21]~75\ $ (GND)))
-- \adc_instance|wait_cnt[22]~77\ = CARRY((\adc_instance|wait_cnt\(22)) # (!\adc_instance|wait_cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(22),
	datad => VCC,
	cin => \adc_instance|wait_cnt[21]~75\,
	combout => \adc_instance|wait_cnt[22]~76_combout\,
	cout => \adc_instance|wait_cnt[22]~77\);

-- Location: FF_X46_Y16_N13
\adc_instance|wait_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[22]~76_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(22));

-- Location: LCCOMB_X46_Y16_N14
\adc_instance|wait_cnt[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[23]~78_combout\ = (\adc_instance|wait_cnt\(23) & (\adc_instance|wait_cnt[22]~77\ & VCC)) # (!\adc_instance|wait_cnt\(23) & (!\adc_instance|wait_cnt[22]~77\))
-- \adc_instance|wait_cnt[23]~79\ = CARRY((!\adc_instance|wait_cnt\(23) & !\adc_instance|wait_cnt[22]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(23),
	datad => VCC,
	cin => \adc_instance|wait_cnt[22]~77\,
	combout => \adc_instance|wait_cnt[23]~78_combout\,
	cout => \adc_instance|wait_cnt[23]~79\);

-- Location: FF_X46_Y16_N15
\adc_instance|wait_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[23]~78_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(23));

-- Location: LCCOMB_X45_Y16_N0
\adc_instance|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~6_combout\ = (!\adc_instance|wait_cnt\(21) & (!\adc_instance|wait_cnt\(20) & (!\adc_instance|wait_cnt\(23) & !\adc_instance|wait_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(21),
	datab => \adc_instance|wait_cnt\(20),
	datac => \adc_instance|wait_cnt\(23),
	datad => \adc_instance|wait_cnt\(22),
	combout => \adc_instance|Equal2~6_combout\);

-- Location: LCCOMB_X45_Y16_N22
\adc_instance|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~5_combout\ = (!\adc_instance|wait_cnt\(19) & (!\adc_instance|wait_cnt\(16) & (!\adc_instance|wait_cnt\(17) & !\adc_instance|wait_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(19),
	datab => \adc_instance|wait_cnt\(16),
	datac => \adc_instance|wait_cnt\(17),
	datad => \adc_instance|wait_cnt\(18),
	combout => \adc_instance|Equal2~5_combout\);

-- Location: LCCOMB_X46_Y16_N16
\adc_instance|wait_cnt[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[24]~80_combout\ = (\adc_instance|wait_cnt\(24) & ((GND) # (!\adc_instance|wait_cnt[23]~79\))) # (!\adc_instance|wait_cnt\(24) & (\adc_instance|wait_cnt[23]~79\ $ (GND)))
-- \adc_instance|wait_cnt[24]~81\ = CARRY((\adc_instance|wait_cnt\(24)) # (!\adc_instance|wait_cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(24),
	datad => VCC,
	cin => \adc_instance|wait_cnt[23]~79\,
	combout => \adc_instance|wait_cnt[24]~80_combout\,
	cout => \adc_instance|wait_cnt[24]~81\);

-- Location: FF_X46_Y16_N17
\adc_instance|wait_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[24]~80_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(24));

-- Location: LCCOMB_X46_Y16_N18
\adc_instance|wait_cnt[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[25]~82_combout\ = (\adc_instance|wait_cnt\(25) & (\adc_instance|wait_cnt[24]~81\ & VCC)) # (!\adc_instance|wait_cnt\(25) & (!\adc_instance|wait_cnt[24]~81\))
-- \adc_instance|wait_cnt[25]~83\ = CARRY((!\adc_instance|wait_cnt\(25) & !\adc_instance|wait_cnt[24]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(25),
	datad => VCC,
	cin => \adc_instance|wait_cnt[24]~81\,
	combout => \adc_instance|wait_cnt[25]~82_combout\,
	cout => \adc_instance|wait_cnt[25]~83\);

-- Location: FF_X46_Y16_N19
\adc_instance|wait_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[25]~82_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(25));

-- Location: LCCOMB_X46_Y16_N20
\adc_instance|wait_cnt[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[26]~84_combout\ = (\adc_instance|wait_cnt\(26) & ((GND) # (!\adc_instance|wait_cnt[25]~83\))) # (!\adc_instance|wait_cnt\(26) & (\adc_instance|wait_cnt[25]~83\ $ (GND)))
-- \adc_instance|wait_cnt[26]~85\ = CARRY((\adc_instance|wait_cnt\(26)) # (!\adc_instance|wait_cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(26),
	datad => VCC,
	cin => \adc_instance|wait_cnt[25]~83\,
	combout => \adc_instance|wait_cnt[26]~84_combout\,
	cout => \adc_instance|wait_cnt[26]~85\);

-- Location: FF_X46_Y16_N21
\adc_instance|wait_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[26]~84_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(26));

-- Location: LCCOMB_X46_Y16_N22
\adc_instance|wait_cnt[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[27]~86_combout\ = (\adc_instance|wait_cnt\(27) & (\adc_instance|wait_cnt[26]~85\ & VCC)) # (!\adc_instance|wait_cnt\(27) & (!\adc_instance|wait_cnt[26]~85\))
-- \adc_instance|wait_cnt[27]~87\ = CARRY((!\adc_instance|wait_cnt\(27) & !\adc_instance|wait_cnt[26]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(27),
	datad => VCC,
	cin => \adc_instance|wait_cnt[26]~85\,
	combout => \adc_instance|wait_cnt[27]~86_combout\,
	cout => \adc_instance|wait_cnt[27]~87\);

-- Location: FF_X46_Y16_N23
\adc_instance|wait_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[27]~86_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(27));

-- Location: LCCOMB_X46_Y16_N24
\adc_instance|wait_cnt[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[28]~88_combout\ = (\adc_instance|wait_cnt\(28) & ((GND) # (!\adc_instance|wait_cnt[27]~87\))) # (!\adc_instance|wait_cnt\(28) & (\adc_instance|wait_cnt[27]~87\ $ (GND)))
-- \adc_instance|wait_cnt[28]~89\ = CARRY((\adc_instance|wait_cnt\(28)) # (!\adc_instance|wait_cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(28),
	datad => VCC,
	cin => \adc_instance|wait_cnt[27]~87\,
	combout => \adc_instance|wait_cnt[28]~88_combout\,
	cout => \adc_instance|wait_cnt[28]~89\);

-- Location: FF_X46_Y16_N25
\adc_instance|wait_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[28]~88_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(28));

-- Location: LCCOMB_X46_Y16_N26
\adc_instance|wait_cnt[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[29]~90_combout\ = (\adc_instance|wait_cnt\(29) & (\adc_instance|wait_cnt[28]~89\ & VCC)) # (!\adc_instance|wait_cnt\(29) & (!\adc_instance|wait_cnt[28]~89\))
-- \adc_instance|wait_cnt[29]~91\ = CARRY((!\adc_instance|wait_cnt\(29) & !\adc_instance|wait_cnt[28]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(29),
	datad => VCC,
	cin => \adc_instance|wait_cnt[28]~89\,
	combout => \adc_instance|wait_cnt[29]~90_combout\,
	cout => \adc_instance|wait_cnt[29]~91\);

-- Location: FF_X46_Y16_N27
\adc_instance|wait_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[29]~90_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(29));

-- Location: LCCOMB_X46_Y16_N28
\adc_instance|wait_cnt[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[30]~92_combout\ = (\adc_instance|wait_cnt\(30) & ((GND) # (!\adc_instance|wait_cnt[29]~91\))) # (!\adc_instance|wait_cnt\(30) & (\adc_instance|wait_cnt[29]~91\ $ (GND)))
-- \adc_instance|wait_cnt[30]~93\ = CARRY((\adc_instance|wait_cnt\(30)) # (!\adc_instance|wait_cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|wait_cnt\(30),
	datad => VCC,
	cin => \adc_instance|wait_cnt[29]~91\,
	combout => \adc_instance|wait_cnt[30]~92_combout\,
	cout => \adc_instance|wait_cnt[30]~93\);

-- Location: FF_X46_Y16_N29
\adc_instance|wait_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[30]~92_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(30));

-- Location: LCCOMB_X46_Y16_N30
\adc_instance|wait_cnt[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|wait_cnt[31]~94_combout\ = \adc_instance|wait_cnt\(31) $ (!\adc_instance|wait_cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(31),
	cin => \adc_instance|wait_cnt[30]~93\,
	combout => \adc_instance|wait_cnt[31]~94_combout\);

-- Location: FF_X46_Y16_N31
\adc_instance|wait_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|wait_cnt[31]~94_combout\,
	asdata => \~GND~combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_WAIT~q\,
	ena => \adc_instance|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|wait_cnt\(31));

-- Location: LCCOMB_X45_Y16_N4
\adc_instance|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~8_combout\ = (!\adc_instance|wait_cnt\(31) & !\adc_instance|wait_cnt\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_instance|wait_cnt\(31),
	datad => \adc_instance|wait_cnt\(30),
	combout => \adc_instance|Equal2~8_combout\);

-- Location: LCCOMB_X45_Y16_N6
\adc_instance|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~7_combout\ = (!\adc_instance|wait_cnt\(26) & (!\adc_instance|wait_cnt\(27) & (!\adc_instance|wait_cnt\(25) & !\adc_instance|wait_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(26),
	datab => \adc_instance|wait_cnt\(27),
	datac => \adc_instance|wait_cnt\(25),
	datad => \adc_instance|wait_cnt\(24),
	combout => \adc_instance|Equal2~7_combout\);

-- Location: LCCOMB_X45_Y16_N18
\adc_instance|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~9_combout\ = (!\adc_instance|wait_cnt\(29) & (!\adc_instance|wait_cnt\(28) & (\adc_instance|Equal2~8_combout\ & \adc_instance|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(29),
	datab => \adc_instance|wait_cnt\(28),
	datac => \adc_instance|Equal2~8_combout\,
	datad => \adc_instance|Equal2~7_combout\,
	combout => \adc_instance|Equal2~9_combout\);

-- Location: LCCOMB_X45_Y16_N12
\adc_instance|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector10~1_combout\ = ((!\adc_instance|Equal2~9_combout\) # (!\adc_instance|Equal2~5_combout\)) # (!\adc_instance|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|Equal2~6_combout\,
	datac => \adc_instance|Equal2~5_combout\,
	datad => \adc_instance|Equal2~9_combout\,
	combout => \adc_instance|Selector10~1_combout\);

-- Location: LCCOMB_X44_Y18_N8
\adc_instance|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Add0~0_combout\ = \adc_instance|count\(0) $ (VCC)
-- \adc_instance|Add0~1\ = CARRY(\adc_instance|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|count\(0),
	datad => VCC,
	combout => \adc_instance|Add0~0_combout\,
	cout => \adc_instance|Add0~1\);

-- Location: LCCOMB_X44_Y18_N10
\adc_instance|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Add0~2_combout\ = (\adc_instance|count\(1) & (!\adc_instance|Add0~1\)) # (!\adc_instance|count\(1) & ((\adc_instance|Add0~1\) # (GND)))
-- \adc_instance|Add0~3\ = CARRY((!\adc_instance|Add0~1\) # (!\adc_instance|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|count\(1),
	datad => VCC,
	cin => \adc_instance|Add0~1\,
	combout => \adc_instance|Add0~2_combout\,
	cout => \adc_instance|Add0~3\);

-- Location: FF_X44_Y18_N11
\adc_instance|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Add0~2_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|count\(1));

-- Location: LCCOMB_X44_Y18_N12
\adc_instance|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Add0~4_combout\ = (\adc_instance|count\(2) & (\adc_instance|Add0~3\ $ (GND))) # (!\adc_instance|count\(2) & (!\adc_instance|Add0~3\ & VCC))
-- \adc_instance|Add0~5\ = CARRY((\adc_instance|count\(2) & !\adc_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|count\(2),
	datad => VCC,
	cin => \adc_instance|Add0~3\,
	combout => \adc_instance|Add0~4_combout\,
	cout => \adc_instance|Add0~5\);

-- Location: FF_X44_Y18_N13
\adc_instance|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Add0~4_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|count\(2));

-- Location: LCCOMB_X44_Y18_N14
\adc_instance|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Add0~6_combout\ = (\adc_instance|count\(3) & (!\adc_instance|Add0~5\)) # (!\adc_instance|count\(3) & ((\adc_instance|Add0~5\) # (GND)))
-- \adc_instance|Add0~7\ = CARRY((!\adc_instance|Add0~5\) # (!\adc_instance|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|count\(3),
	datad => VCC,
	cin => \adc_instance|Add0~5\,
	combout => \adc_instance|Add0~6_combout\,
	cout => \adc_instance|Add0~7\);

-- Location: LCCOMB_X44_Y18_N0
\adc_instance|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|count~1_combout\ = (\adc_instance|Add0~6_combout\ & ((\adc_instance|count\(0)) # (!\adc_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|count\(0),
	datac => \adc_instance|Add0~6_combout\,
	datad => \adc_instance|Equal0~0_combout\,
	combout => \adc_instance|count~1_combout\);

-- Location: FF_X44_Y18_N1
\adc_instance|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|count~1_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|count\(3));

-- Location: LCCOMB_X44_Y18_N16
\adc_instance|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Add0~8_combout\ = \adc_instance|Add0~7\ $ (!\adc_instance|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \adc_instance|count\(4),
	cin => \adc_instance|Add0~7\,
	combout => \adc_instance|Add0~8_combout\);

-- Location: LCCOMB_X44_Y18_N18
\adc_instance|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|count~0_combout\ = (\adc_instance|Add0~8_combout\ & ((\adc_instance|count\(0)) # (!\adc_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|Equal0~0_combout\,
	datac => \adc_instance|count\(0),
	datad => \adc_instance|Add0~8_combout\,
	combout => \adc_instance|count~0_combout\);

-- Location: FF_X44_Y18_N19
\adc_instance|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|count~0_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|count\(4));

-- Location: LCCOMB_X44_Y18_N2
\adc_instance|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal0~0_combout\ = (!\adc_instance|count\(1) & (\adc_instance|count\(4) & (\adc_instance|count\(3) & !\adc_instance|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|count\(1),
	datab => \adc_instance|count\(4),
	datac => \adc_instance|count\(3),
	datad => \adc_instance|count\(2),
	combout => \adc_instance|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y18_N4
\adc_instance|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|count~2_combout\ = (\adc_instance|Add0~0_combout\ & ((\adc_instance|count\(0)) # (!\adc_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|Add0~0_combout\,
	datac => \adc_instance|count\(0),
	datad => \adc_instance|Equal0~0_combout\,
	combout => \adc_instance|count~2_combout\);

-- Location: FF_X44_Y18_N5
\adc_instance|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|count~2_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|count\(0));

-- Location: LCCOMB_X44_Y18_N6
\adc_instance|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal0~1_combout\ = (!\adc_instance|count\(0) & \adc_instance|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_instance|count\(0),
	datad => \adc_instance|Equal0~0_combout\,
	combout => \adc_instance|Equal0~1_combout\);

-- Location: FF_X44_Y18_N7
\adc_instance|shift_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Equal0~1_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_en~q\);

-- Location: LCCOMB_X45_Y16_N10
\adc_instance|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~0_combout\ = (!\adc_instance|wait_cnt\(0) & (!\adc_instance|wait_cnt\(1) & (!\adc_instance|wait_cnt\(2) & !\adc_instance|wait_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(0),
	datab => \adc_instance|wait_cnt\(1),
	datac => \adc_instance|wait_cnt\(2),
	datad => \adc_instance|wait_cnt\(3),
	combout => \adc_instance|Equal2~0_combout\);

-- Location: LCCOMB_X45_Y16_N8
\adc_instance|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~2_combout\ = (!\adc_instance|wait_cnt\(9) & (!\adc_instance|wait_cnt\(11) & (!\adc_instance|wait_cnt\(10) & !\adc_instance|wait_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(9),
	datab => \adc_instance|wait_cnt\(11),
	datac => \adc_instance|wait_cnt\(10),
	datad => \adc_instance|wait_cnt\(8),
	combout => \adc_instance|Equal2~2_combout\);

-- Location: LCCOMB_X45_Y16_N26
\adc_instance|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~3_combout\ = (!\adc_instance|wait_cnt\(15) & (!\adc_instance|wait_cnt\(14) & (!\adc_instance|wait_cnt\(12) & !\adc_instance|wait_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(15),
	datab => \adc_instance|wait_cnt\(14),
	datac => \adc_instance|wait_cnt\(12),
	datad => \adc_instance|wait_cnt\(13),
	combout => \adc_instance|Equal2~3_combout\);

-- Location: LCCOMB_X45_Y17_N20
\adc_instance|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~1_combout\ = (!\adc_instance|wait_cnt\(6) & (!\adc_instance|wait_cnt\(5) & (!\adc_instance|wait_cnt\(4) & !\adc_instance|wait_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|wait_cnt\(6),
	datab => \adc_instance|wait_cnt\(5),
	datac => \adc_instance|wait_cnt\(4),
	datad => \adc_instance|wait_cnt\(7),
	combout => \adc_instance|Equal2~1_combout\);

-- Location: LCCOMB_X45_Y16_N16
\adc_instance|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~4_combout\ = (\adc_instance|Equal2~0_combout\ & (\adc_instance|Equal2~2_combout\ & (\adc_instance|Equal2~3_combout\ & \adc_instance|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|Equal2~0_combout\,
	datab => \adc_instance|Equal2~2_combout\,
	datac => \adc_instance|Equal2~3_combout\,
	datad => \adc_instance|Equal2~1_combout\,
	combout => \adc_instance|Equal2~4_combout\);

-- Location: LCCOMB_X45_Y16_N14
\adc_instance|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal2~10_combout\ = (\adc_instance|Equal2~5_combout\ & (\adc_instance|Equal2~6_combout\ & (\adc_instance|Equal2~9_combout\ & \adc_instance|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|Equal2~5_combout\,
	datab => \adc_instance|Equal2~6_combout\,
	datac => \adc_instance|Equal2~9_combout\,
	datad => \adc_instance|Equal2~4_combout\,
	combout => \adc_instance|Equal2~10_combout\);

-- Location: LCCOMB_X45_Y16_N20
\adc_instance|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector6~0_combout\ = (!\adc_instance|state.ST_WAIT~q\) # (!\adc_instance|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_instance|Equal2~10_combout\,
	datad => \adc_instance|state.ST_WAIT~q\,
	combout => \adc_instance|Selector6~0_combout\);

-- Location: FF_X45_Y16_N21
\adc_instance|state.ST_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Selector6~0_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|state.ST_IDLE~q\);

-- Location: LCCOMB_X44_Y16_N24
\adc_instance|state.ST_START~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|state.ST_START~0_combout\ = !\adc_instance|state.ST_IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_instance|state.ST_IDLE~q\,
	combout => \adc_instance|state.ST_START~0_combout\);

-- Location: FF_X44_Y16_N25
\adc_instance|state.ST_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|state.ST_START~0_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|state.ST_START~q\);

-- Location: LCCOMB_X44_Y16_N26
\adc_instance|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector9~0_combout\ = (\adc_instance|state.ST_START~q\) # ((!\adc_instance|shift_en~q\ & \adc_instance|state.ST_SCK_L~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_en~q\,
	datac => \adc_instance|state.ST_START~q\,
	datad => \adc_instance|state.ST_SCK_L~q\,
	combout => \adc_instance|Selector9~0_combout\);

-- Location: LCCOMB_X44_Y16_N28
\adc_instance|bit_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|bit_index~3_combout\ = (\adc_instance|Equal1~0_combout\) # (!\adc_instance|shift_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_instance|Equal1~0_combout\,
	datad => \adc_instance|shift_en~q\,
	combout => \adc_instance|bit_index~3_combout\);

-- Location: LCCOMB_X44_Y16_N12
\adc_instance|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector3~0_combout\ = (\adc_instance|state.ST_SCK_H~q\ & (\adc_instance|bit_index~3_combout\ $ (((!\adc_instance|bit_index\(0)))))) # (!\adc_instance|state.ST_SCK_H~q\ & (((\adc_instance|state.ST_IDLE~q\ & \adc_instance|bit_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|bit_index~3_combout\,
	datab => \adc_instance|state.ST_IDLE~q\,
	datac => \adc_instance|bit_index\(0),
	datad => \adc_instance|state.ST_SCK_H~q\,
	combout => \adc_instance|Selector3~0_combout\);

-- Location: FF_X44_Y16_N13
\adc_instance|bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Selector3~0_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|bit_index\(0));

-- Location: LCCOMB_X43_Y16_N14
\adc_instance|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Add1~2_combout\ = \adc_instance|bit_index\(1) $ (\adc_instance|bit_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|bit_index\(1),
	datac => \adc_instance|bit_index\(0),
	combout => \adc_instance|Add1~2_combout\);

-- Location: LCCOMB_X44_Y16_N0
\adc_instance|bit_index[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|bit_index[1]~2_combout\ = (\adc_instance|bit_index~3_combout\ & ((\adc_instance|bit_index\(1)))) # (!\adc_instance|bit_index~3_combout\ & (\adc_instance|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|Add1~2_combout\,
	datac => \adc_instance|bit_index\(1),
	datad => \adc_instance|bit_index~3_combout\,
	combout => \adc_instance|bit_index[1]~2_combout\);

-- Location: LCCOMB_X44_Y16_N8
\adc_instance|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector2~0_combout\ = (\adc_instance|bit_index\(1) & \adc_instance|state.ST_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|bit_index\(1),
	datac => \adc_instance|state.ST_IDLE~q\,
	combout => \adc_instance|Selector2~0_combout\);

-- Location: FF_X44_Y16_N1
\adc_instance|bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|bit_index[1]~2_combout\,
	asdata => \adc_instance|Selector2~0_combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|bit_index\(1));

-- Location: LCCOMB_X44_Y16_N20
\adc_instance|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Add1~1_combout\ = \adc_instance|bit_index\(2) $ (((\adc_instance|bit_index\(0) & \adc_instance|bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|bit_index\(0),
	datab => \adc_instance|bit_index\(1),
	datad => \adc_instance|bit_index\(2),
	combout => \adc_instance|Add1~1_combout\);

-- Location: LCCOMB_X44_Y16_N10
\adc_instance|bit_index[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|bit_index[2]~1_combout\ = (\adc_instance|bit_index~3_combout\ & ((\adc_instance|bit_index\(2)))) # (!\adc_instance|bit_index~3_combout\ & (\adc_instance|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|Add1~1_combout\,
	datac => \adc_instance|bit_index\(2),
	datad => \adc_instance|bit_index~3_combout\,
	combout => \adc_instance|bit_index[2]~1_combout\);

-- Location: LCCOMB_X44_Y16_N30
\adc_instance|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector1~0_combout\ = (\adc_instance|bit_index\(2) & \adc_instance|state.ST_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|bit_index\(2),
	datac => \adc_instance|state.ST_IDLE~q\,
	combout => \adc_instance|Selector1~0_combout\);

-- Location: FF_X44_Y16_N11
\adc_instance|bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|bit_index[2]~1_combout\,
	asdata => \adc_instance|Selector1~0_combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|bit_index\(2));

-- Location: LCCOMB_X44_Y16_N2
\adc_instance|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Add1~0_combout\ = \adc_instance|bit_index\(3) $ (((\adc_instance|bit_index\(2) & (\adc_instance|bit_index\(1) & \adc_instance|bit_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|bit_index\(2),
	datab => \adc_instance|bit_index\(1),
	datac => \adc_instance|bit_index\(3),
	datad => \adc_instance|bit_index\(0),
	combout => \adc_instance|Add1~0_combout\);

-- Location: LCCOMB_X44_Y16_N4
\adc_instance|bit_index[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|bit_index[3]~0_combout\ = (\adc_instance|bit_index~3_combout\ & ((\adc_instance|bit_index\(3)))) # (!\adc_instance|bit_index~3_combout\ & (\adc_instance|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|Add1~0_combout\,
	datac => \adc_instance|bit_index\(3),
	datad => \adc_instance|bit_index~3_combout\,
	combout => \adc_instance|bit_index[3]~0_combout\);

-- Location: LCCOMB_X44_Y16_N22
\adc_instance|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector0~0_combout\ = (\adc_instance|state.ST_IDLE~q\ & \adc_instance|bit_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|state.ST_IDLE~q\,
	datac => \adc_instance|bit_index\(3),
	combout => \adc_instance|Selector0~0_combout\);

-- Location: FF_X44_Y16_N5
\adc_instance|bit_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|bit_index[3]~0_combout\,
	asdata => \adc_instance|Selector0~0_combout\,
	clrn => \NRST~input_o\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|bit_index\(3));

-- Location: LCCOMB_X44_Y16_N14
\adc_instance|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Equal1~0_combout\ = (\adc_instance|bit_index\(2) & (\adc_instance|bit_index\(1) & (\adc_instance|bit_index\(3) & \adc_instance|bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|bit_index\(2),
	datab => \adc_instance|bit_index\(1),
	datac => \adc_instance|bit_index\(3),
	datad => \adc_instance|bit_index\(0),
	combout => \adc_instance|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y16_N16
\adc_instance|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector9~1_combout\ = (\adc_instance|Selector9~0_combout\) # ((\adc_instance|shift_en~q\ & (!\adc_instance|Equal1~0_combout\ & \adc_instance|state.ST_SCK_H~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|Selector9~0_combout\,
	datab => \adc_instance|shift_en~q\,
	datac => \adc_instance|Equal1~0_combout\,
	datad => \adc_instance|state.ST_SCK_H~q\,
	combout => \adc_instance|Selector9~1_combout\);

-- Location: FF_X44_Y16_N17
\adc_instance|state.ST_SCK_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Selector9~1_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|state.ST_SCK_L~q\);

-- Location: FF_X45_Y16_N31
\adc_instance|state.ST_SCK_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \adc_instance|state.ST_SCK_L~q\,
	clrn => \NRST~input_o\,
	sload => VCC,
	ena => \adc_instance|shift_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|state.ST_SCK_H~q\);

-- Location: LCCOMB_X45_Y16_N24
\adc_instance|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector10~0_combout\ = (\adc_instance|shift_en~q\ & (\adc_instance|state.ST_SCK_H~q\ & \adc_instance|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_en~q\,
	datac => \adc_instance|state.ST_SCK_H~q\,
	datad => \adc_instance|Equal1~0_combout\,
	combout => \adc_instance|Selector10~0_combout\);

-- Location: LCCOMB_X45_Y16_N2
\adc_instance|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector10~2_combout\ = (\adc_instance|Selector10~0_combout\) # ((\adc_instance|state.ST_WAIT~q\ & ((\adc_instance|Selector10~1_combout\) # (!\adc_instance|Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|Selector10~1_combout\,
	datab => \adc_instance|Selector10~0_combout\,
	datac => \adc_instance|state.ST_WAIT~q\,
	datad => \adc_instance|Equal2~4_combout\,
	combout => \adc_instance|Selector10~2_combout\);

-- Location: FF_X45_Y16_N3
\adc_instance|state.ST_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Selector10~2_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|state.ST_WAIT~q\);

-- Location: LCCOMB_X44_Y16_N18
\adc_instance|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector4~0_combout\ = (!\adc_instance|cs_n~q\ & ((\adc_instance|state.ST_WAIT~q\) # ((\adc_instance|state.ST_SCK_H~q\) # (\adc_instance|state.ST_SCK_L~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|state.ST_WAIT~q\,
	datab => \adc_instance|state.ST_SCK_H~q\,
	datac => \adc_instance|cs_n~q\,
	datad => \adc_instance|state.ST_SCK_L~q\,
	combout => \adc_instance|Selector4~0_combout\);

-- Location: LCCOMB_X44_Y16_N6
\adc_instance|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector4~1_combout\ = (!\adc_instance|Selector4~0_combout\ & (\adc_instance|state.ST_IDLE~q\ & !\adc_instance|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|Selector4~0_combout\,
	datac => \adc_instance|state.ST_IDLE~q\,
	datad => \adc_instance|Selector10~0_combout\,
	combout => \adc_instance|Selector4~1_combout\);

-- Location: FF_X44_Y16_N7
\adc_instance|cs_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Selector4~1_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|cs_n~q\);

-- Location: LCCOMB_X45_Y16_N30
\adc_instance|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector5~0_combout\ = (\adc_instance|state.ST_SCK_L~q\ & (((\adc_instance|shift_en~q\)))) # (!\adc_instance|state.ST_SCK_L~q\ & ((\adc_instance|state.ST_WAIT~q\) # ((\adc_instance|state.ST_SCK_H~q\ & !\adc_instance|shift_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|state.ST_SCK_L~q\,
	datab => \adc_instance|state.ST_WAIT~q\,
	datac => \adc_instance|state.ST_SCK_H~q\,
	datad => \adc_instance|shift_en~q\,
	combout => \adc_instance|Selector5~0_combout\);

-- Location: LCCOMB_X45_Y16_N28
\adc_instance|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector5~1_combout\ = (\adc_instance|state.ST_SCK_L~q\ & (((\adc_instance|sclk~q\ & !\adc_instance|Selector5~0_combout\)))) # (!\adc_instance|state.ST_SCK_L~q\ & ((\adc_instance|sclk~q\) # ((!\adc_instance|state.ST_START~q\ & 
-- !\adc_instance|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|state.ST_SCK_L~q\,
	datab => \adc_instance|state.ST_START~q\,
	datac => \adc_instance|sclk~q\,
	datad => \adc_instance|Selector5~0_combout\,
	combout => \adc_instance|Selector5~1_combout\);

-- Location: FF_X45_Y16_N29
\adc_instance|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Selector5~1_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|sclk~q\);

-- Location: IOIBUF_X25_Y34_N1
\ADC_MISO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_MISO,
	o => \ADC_MISO~input_o\);

-- Location: LCCOMB_X43_Y16_N12
\adc_instance|shift_reg[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[0]~14_combout\ = (\adc_instance|shift_en~q\ & ((\ADC_MISO~input_o\))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(0),
	datad => \ADC_MISO~input_o\,
	combout => \adc_instance|shift_reg[0]~14_combout\);

-- Location: LCCOMB_X43_Y16_N24
\adc_instance|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector27~0_combout\ = (\adc_instance|shift_reg\(0) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_reg\(0),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector27~0_combout\);

-- Location: FF_X43_Y16_N13
\adc_instance|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[0]~14_combout\,
	asdata => \adc_instance|Selector27~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(0));

-- Location: LCCOMB_X43_Y16_N10
\adc_instance|shift_reg[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[1]~13_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(0)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(1),
	datad => \adc_instance|shift_reg\(0),
	combout => \adc_instance|shift_reg[1]~13_combout\);

-- Location: LCCOMB_X43_Y16_N30
\adc_instance|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector26~0_combout\ = (\adc_instance|shift_reg\(1) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_reg\(1),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector26~0_combout\);

-- Location: FF_X43_Y16_N11
\adc_instance|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[1]~13_combout\,
	asdata => \adc_instance|Selector26~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(1));

-- Location: LCCOMB_X43_Y16_N0
\adc_instance|shift_reg[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[2]~12_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(1)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(2),
	datad => \adc_instance|shift_reg\(1),
	combout => \adc_instance|shift_reg[2]~12_combout\);

-- Location: LCCOMB_X43_Y16_N4
\adc_instance|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector25~0_combout\ = (\adc_instance|shift_reg\(2) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_reg\(2),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector25~0_combout\);

-- Location: FF_X43_Y16_N1
\adc_instance|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[2]~12_combout\,
	asdata => \adc_instance|Selector25~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(2));

-- Location: LCCOMB_X43_Y16_N18
\adc_instance|shift_reg[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[3]~11_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(2)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(3),
	datad => \adc_instance|shift_reg\(2),
	combout => \adc_instance|shift_reg[3]~11_combout\);

-- Location: LCCOMB_X43_Y16_N22
\adc_instance|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector24~0_combout\ = (\adc_instance|shift_reg\(3) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_reg\(3),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector24~0_combout\);

-- Location: FF_X43_Y16_N19
\adc_instance|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[3]~11_combout\,
	asdata => \adc_instance|Selector24~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(3));

-- Location: LCCOMB_X43_Y16_N28
\adc_instance|shift_reg[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[4]~10_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(3)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(4),
	datad => \adc_instance|shift_reg\(3),
	combout => \adc_instance|shift_reg[4]~10_combout\);

-- Location: LCCOMB_X43_Y16_N20
\adc_instance|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector23~0_combout\ = (\adc_instance|shift_reg\(4) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_reg\(4),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector23~0_combout\);

-- Location: FF_X43_Y16_N29
\adc_instance|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[4]~10_combout\,
	asdata => \adc_instance|Selector23~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(4));

-- Location: LCCOMB_X43_Y16_N6
\adc_instance|shift_reg[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[5]~9_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(4)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(5),
	datad => \adc_instance|shift_reg\(4),
	combout => \adc_instance|shift_reg[5]~9_combout\);

-- Location: LCCOMB_X43_Y16_N26
\adc_instance|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector22~0_combout\ = (\adc_instance|shift_reg\(5) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_reg\(5),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector22~0_combout\);

-- Location: FF_X43_Y16_N7
\adc_instance|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[5]~9_combout\,
	asdata => \adc_instance|Selector22~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(5));

-- Location: LCCOMB_X43_Y16_N16
\adc_instance|shift_reg[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[6]~8_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(5)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(6),
	datad => \adc_instance|shift_reg\(5),
	combout => \adc_instance|shift_reg[6]~8_combout\);

-- Location: LCCOMB_X43_Y16_N8
\adc_instance|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector21~0_combout\ = (\adc_instance|shift_reg\(6) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_reg\(6),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector21~0_combout\);

-- Location: FF_X43_Y16_N17
\adc_instance|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[6]~8_combout\,
	asdata => \adc_instance|Selector21~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(6));

-- Location: LCCOMB_X43_Y18_N10
\adc_instance|shift_reg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[7]~7_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(6)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(7),
	datad => \adc_instance|shift_reg\(6),
	combout => \adc_instance|shift_reg[7]~7_combout\);

-- Location: LCCOMB_X43_Y18_N30
\adc_instance|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector20~0_combout\ = (\adc_instance|shift_reg\(7) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_reg\(7),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector20~0_combout\);

-- Location: FF_X43_Y18_N11
\adc_instance|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[7]~7_combout\,
	asdata => \adc_instance|Selector20~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(7));

-- Location: LCCOMB_X43_Y18_N6
\adc_instance|shift_reg[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[8]~5_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(7)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(8),
	datad => \adc_instance|shift_reg\(7),
	combout => \adc_instance|shift_reg[8]~5_combout\);

-- Location: LCCOMB_X43_Y18_N22
\adc_instance|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector19~0_combout\ = (\adc_instance|shift_reg\(8) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_reg\(8),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector19~0_combout\);

-- Location: FF_X43_Y18_N7
\adc_instance|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[8]~5_combout\,
	asdata => \adc_instance|Selector19~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(8));

-- Location: LCCOMB_X43_Y18_N20
\adc_instance|shift_reg[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[9]~4_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(8)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(9),
	datad => \adc_instance|shift_reg\(8),
	combout => \adc_instance|shift_reg[9]~4_combout\);

-- Location: LCCOMB_X43_Y18_N14
\adc_instance|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector18~0_combout\ = (\adc_instance|shift_reg\(9) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_reg\(9),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector18~0_combout\);

-- Location: FF_X43_Y18_N21
\adc_instance|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[9]~4_combout\,
	asdata => \adc_instance|Selector18~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(9));

-- Location: LCCOMB_X43_Y18_N16
\adc_instance|shift_reg[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[10]~3_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(9)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(10),
	datad => \adc_instance|shift_reg\(9),
	combout => \adc_instance|shift_reg[10]~3_combout\);

-- Location: LCCOMB_X43_Y18_N26
\adc_instance|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector17~0_combout\ = (\adc_instance|shift_reg\(10) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_reg\(10),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector17~0_combout\);

-- Location: FF_X43_Y18_N17
\adc_instance|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[10]~3_combout\,
	asdata => \adc_instance|Selector17~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(10));

-- Location: LCCOMB_X43_Y18_N18
\adc_instance|shift_reg[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[11]~2_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(10)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(11),
	datad => \adc_instance|shift_reg\(10),
	combout => \adc_instance|shift_reg[11]~2_combout\);

-- Location: LCCOMB_X43_Y18_N8
\adc_instance|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector16~0_combout\ = (\adc_instance|shift_reg\(11) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_reg\(11),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector16~0_combout\);

-- Location: FF_X43_Y18_N19
\adc_instance|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[11]~2_combout\,
	asdata => \adc_instance|Selector16~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(11));

-- Location: LCCOMB_X43_Y18_N0
\adc_instance|shift_reg[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[12]~6_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(11)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(12),
	datad => \adc_instance|shift_reg\(11),
	combout => \adc_instance|shift_reg[12]~6_combout\);

-- Location: LCCOMB_X43_Y18_N4
\adc_instance|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector15~0_combout\ = (\adc_instance|shift_reg\(12) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_reg\(12),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector15~0_combout\);

-- Location: FF_X43_Y18_N1
\adc_instance|shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[12]~6_combout\,
	asdata => \adc_instance|Selector15~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(12));

-- Location: LCCOMB_X43_Y18_N24
\adc_instance|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector14~0_combout\ = ((\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(12))) # (!\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(13))))) # (!\adc_instance|state.ST_SCK_H~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datab => \adc_instance|shift_reg\(12),
	datac => \adc_instance|state.ST_SCK_H~q\,
	datad => \adc_instance|shift_reg\(13),
	combout => \adc_instance|Selector14~0_combout\);

-- Location: LCCOMB_X44_Y18_N24
\adc_instance|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector14~1_combout\ = (\adc_instance|Selector14~0_combout\ & ((\adc_instance|state.ST_SCK_H~q\) # ((\adc_instance|state.ST_START~q\) # (\adc_instance|shift_reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|state.ST_SCK_H~q\,
	datab => \adc_instance|state.ST_START~q\,
	datac => \adc_instance|shift_reg\(13),
	datad => \adc_instance|Selector14~0_combout\,
	combout => \adc_instance|Selector14~1_combout\);

-- Location: FF_X44_Y18_N25
\adc_instance|shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|Selector14~1_combout\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(13));

-- Location: LCCOMB_X44_Y18_N30
\adc_instance|shift_reg[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[14]~1_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(13)))) # (!\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datac => \adc_instance|shift_reg\(14),
	datad => \adc_instance|shift_reg\(13),
	combout => \adc_instance|shift_reg[14]~1_combout\);

-- Location: LCCOMB_X44_Y18_N26
\adc_instance|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector13~0_combout\ = (\adc_instance|shift_reg\(14) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_reg\(14),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector13~0_combout\);

-- Location: FF_X44_Y18_N31
\adc_instance|shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[14]~1_combout\,
	asdata => \adc_instance|Selector13~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(14));

-- Location: LCCOMB_X44_Y18_N20
\adc_instance|shift_reg[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|shift_reg[15]~0_combout\ = (\adc_instance|shift_en~q\ & (\adc_instance|shift_reg\(14))) # (!\adc_instance|shift_en~q\ & ((\adc_instance|shift_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_reg\(14),
	datac => \adc_instance|shift_reg\(15),
	datad => \adc_instance|shift_en~q\,
	combout => \adc_instance|shift_reg[15]~0_combout\);

-- Location: LCCOMB_X44_Y18_N22
\adc_instance|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|Selector12~0_combout\ = (\adc_instance|shift_reg\(15) & !\adc_instance|state.ST_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adc_instance|shift_reg\(15),
	datad => \adc_instance|state.ST_START~q\,
	combout => \adc_instance|Selector12~0_combout\);

-- Location: FF_X44_Y18_N21
\adc_instance|shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|shift_reg[15]~0_combout\,
	asdata => \adc_instance|Selector12~0_combout\,
	sload => \adc_instance|ALT_INV_state.ST_SCK_H~q\,
	ena => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|shift_reg\(15));

-- Location: LCCOMB_X44_Y18_N28
\adc_instance|mosi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|mosi~0_combout\ = (\adc_instance|shift_en~q\ & ((\adc_instance|state.ST_SCK_L~q\ & ((\adc_instance|shift_reg\(15)))) # (!\adc_instance|state.ST_SCK_L~q\ & (\adc_instance|mosi~q\)))) # (!\adc_instance|shift_en~q\ & 
-- (((\adc_instance|mosi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|shift_en~q\,
	datab => \adc_instance|state.ST_SCK_L~q\,
	datac => \adc_instance|mosi~q\,
	datad => \adc_instance|shift_reg\(15),
	combout => \adc_instance|mosi~0_combout\);

-- Location: FF_X44_Y18_N29
\adc_instance|mosi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|mosi~0_combout\,
	clrn => \NRST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|mosi~q\);

-- Location: LCCOMB_X43_Y18_N2
\adc_instance|adc_data[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|adc_data[11]~feeder_combout\ = \adc_instance|shift_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_instance|shift_reg\(11),
	combout => \adc_instance|adc_data[11]~feeder_combout\);

-- Location: FF_X43_Y18_N3
\adc_instance|adc_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|adc_data[11]~feeder_combout\,
	clrn => \NRST~input_o\,
	ena => \adc_instance|state.ST_WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|adc_data\(11));

-- Location: LCCOMB_X43_Y18_N28
\adc_instance|adc_data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|adc_data[10]~feeder_combout\ = \adc_instance|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_instance|shift_reg\(10),
	combout => \adc_instance|adc_data[10]~feeder_combout\);

-- Location: FF_X43_Y18_N29
\adc_instance|adc_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|adc_data[10]~feeder_combout\,
	clrn => \NRST~input_o\,
	ena => \adc_instance|state.ST_WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|adc_data\(10));

-- Location: LCCOMB_X43_Y18_N12
\adc_instance|adc_data[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_instance|adc_data[9]~feeder_combout\ = \adc_instance|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_instance|shift_reg\(9),
	combout => \adc_instance|adc_data[9]~feeder_combout\);

-- Location: FF_X43_Y18_N13
\adc_instance|adc_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \adc_instance|adc_data[9]~feeder_combout\,
	clrn => \NRST~input_o\,
	ena => \adc_instance|state.ST_WAIT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_instance|adc_data\(9));

-- Location: LCCOMB_X40_Y22_N28
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\adc_instance|adc_data\(11)) # ((\adc_instance|adc_data\(10)) # (\adc_instance|adc_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|adc_data\(11),
	datac => \adc_instance|adc_data\(10),
	datad => \adc_instance|adc_data\(9),
	combout => \Decoder0~0_combout\);

-- Location: FF_X40_Y22_N29
\LEDS[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[1]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N2
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\adc_instance|adc_data\(10)) # (\adc_instance|adc_data\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_instance|adc_data\(10),
	datad => \adc_instance|adc_data\(11),
	combout => \Decoder0~1_combout\);

-- Location: FF_X40_Y22_N3
\LEDS[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[2]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N24
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\adc_instance|adc_data\(11)) # ((\adc_instance|adc_data\(10) & \adc_instance|adc_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|adc_data\(11),
	datac => \adc_instance|adc_data\(10),
	datad => \adc_instance|adc_data\(9),
	combout => \WideOr2~0_combout\);

-- Location: FF_X40_Y22_N25
\LEDS[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[3]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N10
\LEDS[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDS[4]~reg0feeder_combout\ = \adc_instance|adc_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_instance|adc_data\(11),
	combout => \LEDS[4]~reg0feeder_combout\);

-- Location: FF_X40_Y22_N11
\LEDS[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LEDS[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[4]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N8
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\adc_instance|adc_data\(11) & ((\adc_instance|adc_data\(10)) # (\adc_instance|adc_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|adc_data\(11),
	datac => \adc_instance|adc_data\(10),
	datad => \adc_instance|adc_data\(9),
	combout => \WideOr0~0_combout\);

-- Location: FF_X40_Y22_N9
\LEDS[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[5]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N6
\LEDS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDS~0_combout\ = (\adc_instance|adc_data\(10) & \adc_instance|adc_data\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \adc_instance|adc_data\(10),
	datad => \adc_instance|adc_data\(11),
	combout => \LEDS~0_combout\);

-- Location: FF_X40_Y22_N7
\LEDS[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \LEDS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[6]~reg0_q\);

-- Location: LCCOMB_X40_Y22_N12
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\adc_instance|adc_data\(11) & (\adc_instance|adc_data\(10) & \adc_instance|adc_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_instance|adc_data\(11),
	datac => \adc_instance|adc_data\(10),
	datad => \adc_instance|adc_data\(9),
	combout => \Decoder0~2_combout\);

-- Location: FF_X40_Y22_N13
\LEDS[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDS[7]~reg0_q\);

ww_ADC_CSN <= \ADC_CSN~output_o\;

ww_ADC_SCLK <= \ADC_SCLK~output_o\;

ww_ADC_MOSI <= \ADC_MOSI~output_o\;

ww_LEDS(0) <= \LEDS[0]~output_o\;

ww_LEDS(1) <= \LEDS[1]~output_o\;

ww_LEDS(2) <= \LEDS[2]~output_o\;

ww_LEDS(3) <= \LEDS[3]~output_o\;

ww_LEDS(4) <= \LEDS[4]~output_o\;

ww_LEDS(5) <= \LEDS[5]~output_o\;

ww_LEDS(6) <= \LEDS[6]~output_o\;

ww_LEDS(7) <= \LEDS[7]~output_o\;
END structure;


