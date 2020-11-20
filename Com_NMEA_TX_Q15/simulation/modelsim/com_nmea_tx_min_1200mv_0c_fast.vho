-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "11/20/2020 10:54:42"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nmea_tx IS
    PORT (
	clk : IN std_logic;
	chipselect : IN std_logic;
	write_n : IN std_logic;
	reset_n : IN std_logic;
	address : IN std_logic_vector(2 DOWNTO 0);
	writedata : IN std_logic_vector(31 DOWNTO 0);
	txd : BUFFER std_logic;
	done_probe : BUFFER std_logic;
	readdata : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END nmea_tx;

-- Design Ports Information
-- chipselect	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_n	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done_probe	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[8]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[9]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[10]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[11]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[12]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[14]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[15]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[17]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[18]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[19]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[20]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[21]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[22]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[23]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[24]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[25]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[26]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[27]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[28]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[29]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[30]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[31]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nmea_tx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_chipselect : std_logic;
SIGNAL ww_write_n : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_txd : std_logic;
SIGNAL ww_done_probe : std_logic;
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL \s_clk16~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_count16[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \chipselect~input_o\ : std_logic;
SIGNAL \write_n~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \writedata[1]~input_o\ : std_logic;
SIGNAL \writedata[2]~input_o\ : std_logic;
SIGNAL \writedata[3]~input_o\ : std_logic;
SIGNAL \writedata[4]~input_o\ : std_logic;
SIGNAL \writedata[5]~input_o\ : std_logic;
SIGNAL \writedata[6]~input_o\ : std_logic;
SIGNAL \writedata[7]~input_o\ : std_logic;
SIGNAL \writedata[8]~input_o\ : std_logic;
SIGNAL \writedata[9]~input_o\ : std_logic;
SIGNAL \writedata[10]~input_o\ : std_logic;
SIGNAL \writedata[11]~input_o\ : std_logic;
SIGNAL \writedata[12]~input_o\ : std_logic;
SIGNAL \writedata[13]~input_o\ : std_logic;
SIGNAL \writedata[14]~input_o\ : std_logic;
SIGNAL \writedata[15]~input_o\ : std_logic;
SIGNAL \writedata[16]~input_o\ : std_logic;
SIGNAL \writedata[17]~input_o\ : std_logic;
SIGNAL \writedata[18]~input_o\ : std_logic;
SIGNAL \writedata[19]~input_o\ : std_logic;
SIGNAL \writedata[20]~input_o\ : std_logic;
SIGNAL \writedata[21]~input_o\ : std_logic;
SIGNAL \writedata[22]~input_o\ : std_logic;
SIGNAL \writedata[23]~input_o\ : std_logic;
SIGNAL \writedata[24]~input_o\ : std_logic;
SIGNAL \writedata[25]~input_o\ : std_logic;
SIGNAL \writedata[26]~input_o\ : std_logic;
SIGNAL \writedata[27]~input_o\ : std_logic;
SIGNAL \writedata[28]~input_o\ : std_logic;
SIGNAL \writedata[29]~input_o\ : std_logic;
SIGNAL \writedata[30]~input_o\ : std_logic;
SIGNAL \writedata[31]~input_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \done_probe~output_o\ : std_logic;
SIGNAL \readdata[0]~output_o\ : std_logic;
SIGNAL \readdata[1]~output_o\ : std_logic;
SIGNAL \readdata[2]~output_o\ : std_logic;
SIGNAL \readdata[3]~output_o\ : std_logic;
SIGNAL \readdata[4]~output_o\ : std_logic;
SIGNAL \readdata[5]~output_o\ : std_logic;
SIGNAL \readdata[6]~output_o\ : std_logic;
SIGNAL \readdata[7]~output_o\ : std_logic;
SIGNAL \readdata[8]~output_o\ : std_logic;
SIGNAL \readdata[9]~output_o\ : std_logic;
SIGNAL \readdata[10]~output_o\ : std_logic;
SIGNAL \readdata[11]~output_o\ : std_logic;
SIGNAL \readdata[12]~output_o\ : std_logic;
SIGNAL \readdata[13]~output_o\ : std_logic;
SIGNAL \readdata[14]~output_o\ : std_logic;
SIGNAL \readdata[15]~output_o\ : std_logic;
SIGNAL \readdata[16]~output_o\ : std_logic;
SIGNAL \readdata[17]~output_o\ : std_logic;
SIGNAL \readdata[18]~output_o\ : std_logic;
SIGNAL \readdata[19]~output_o\ : std_logic;
SIGNAL \readdata[20]~output_o\ : std_logic;
SIGNAL \readdata[21]~output_o\ : std_logic;
SIGNAL \readdata[22]~output_o\ : std_logic;
SIGNAL \readdata[23]~output_o\ : std_logic;
SIGNAL \readdata[24]~output_o\ : std_logic;
SIGNAL \readdata[25]~output_o\ : std_logic;
SIGNAL \readdata[26]~output_o\ : std_logic;
SIGNAL \readdata[27]~output_o\ : std_logic;
SIGNAL \readdata[28]~output_o\ : std_logic;
SIGNAL \readdata[29]~output_o\ : std_logic;
SIGNAL \readdata[30]~output_o\ : std_logic;
SIGNAL \readdata[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_count~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_count~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \s_count~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \s_count~3_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \s_count~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \s_clk16~q\ : std_logic;
SIGNAL \s_clk16~clkctrl_outclk\ : std_logic;
SIGNAL \s_count16[0]~3_combout\ : std_logic;
SIGNAL \s_count16[1]~2_combout\ : std_logic;
SIGNAL \s_count16[2]~1_combout\ : std_logic;
SIGNAL \s_count16[3]~0_combout\ : std_logic;
SIGNAL \s_count16[3]~clkctrl_outclk\ : std_logic;
SIGNAL \tmp[39]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count_bit[0]~15_combout\ : std_logic;
SIGNAL \count_bit[1]~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \count_bit[1]~6\ : std_logic;
SIGNAL \count_bit[2]~7_combout\ : std_logic;
SIGNAL \count_bit[2]~8\ : std_logic;
SIGNAL \count_bit[3]~9_combout\ : std_logic;
SIGNAL \count_bit[3]~10\ : std_logic;
SIGNAL \count_bit[4]~11_combout\ : std_logic;
SIGNAL \count_bit[4]~12\ : std_logic;
SIGNAL \count_bit[5]~13_combout\ : std_logic;
SIGNAL \fin_tx~0_combout\ : std_logic;
SIGNAL \fin_tx~q\ : std_logic;
SIGNAL \etat_nios[1]~feeder_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \done~feeder_combout\ : std_logic;
SIGNAL \done~q\ : std_logic;
SIGNAL \tmp[38]~feeder_combout\ : std_logic;
SIGNAL \tmp[37]~feeder_combout\ : std_logic;
SIGNAL \tmp[36]~feeder_combout\ : std_logic;
SIGNAL \tmp[35]~22_combout\ : std_logic;
SIGNAL \tmp[34]~feeder_combout\ : std_logic;
SIGNAL \tmp[33]~21_combout\ : std_logic;
SIGNAL \tmp[32]~feeder_combout\ : std_logic;
SIGNAL \tmp[31]~feeder_combout\ : std_logic;
SIGNAL \tmp[30]~20_combout\ : std_logic;
SIGNAL \tmp[29]~19_combout\ : std_logic;
SIGNAL \tmp[28]~feeder_combout\ : std_logic;
SIGNAL \tmp[27]~feeder_combout\ : std_logic;
SIGNAL \tmp[26]~feeder_combout\ : std_logic;
SIGNAL \tmp[25]~18_combout\ : std_logic;
SIGNAL \tmp[24]~17_combout\ : std_logic;
SIGNAL \tmp[23]~16_combout\ : std_logic;
SIGNAL \tmp[22]~feeder_combout\ : std_logic;
SIGNAL \tmp[21]~15_combout\ : std_logic;
SIGNAL \tmp[20]~14_combout\ : std_logic;
SIGNAL \tmp[19]~13_combout\ : std_logic;
SIGNAL \tmp[18]~feeder_combout\ : std_logic;
SIGNAL \tmp[17]~feeder_combout\ : std_logic;
SIGNAL \tmp[16]~feeder_combout\ : std_logic;
SIGNAL \tmp[15]~12_combout\ : std_logic;
SIGNAL \tmp[14]~11_combout\ : std_logic;
SIGNAL \tmp[13]~10_combout\ : std_logic;
SIGNAL \tmp[12]~9_combout\ : std_logic;
SIGNAL \tmp[11]~feeder_combout\ : std_logic;
SIGNAL \tmp[10]~8_combout\ : std_logic;
SIGNAL \tmp[9]~feeder_combout\ : std_logic;
SIGNAL \tmp[8]~7_combout\ : std_logic;
SIGNAL \tmp[7]~6_combout\ : std_logic;
SIGNAL \tmp[6]~5_combout\ : std_logic;
SIGNAL \tmp[5]~4_combout\ : std_logic;
SIGNAL \tmp[4]~3_combout\ : std_logic;
SIGNAL \tmp[3]~2_combout\ : std_logic;
SIGNAL \tmp[2]~1_combout\ : std_logic;
SIGNAL \tmp[1]~feeder_combout\ : std_logic;
SIGNAL \tmp[0]~0_combout\ : std_logic;
SIGNAL count_bit : std_logic_vector(5 DOWNTO 0);
SIGNAL tmp : std_logic_vector(40 DOWNTO 0);
SIGNAL s_count16 : std_logic_vector(3 DOWNTO 0);
SIGNAL etat_nios : std_logic_vector(1 DOWNTO 0);
SIGNAL s_count : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_done~q\ : std_logic;
SIGNAL ALT_INV_tmp : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_chipselect <= chipselect;
ww_write_n <= write_n;
ww_reset_n <= reset_n;
ww_address <= address;
ww_writedata <= writedata;
txd <= ww_txd;
done_probe <= ww_done_probe;
readdata <= ww_readdata;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\s_clk16~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_clk16~q\);

\s_count16[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & s_count16(3));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_done~q\ <= NOT \done~q\;
ALT_INV_tmp(0) <= NOT tmp(0);

-- Location: IOOBUF_X1_Y34_N9
\txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_tmp(0),
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\done_probe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~q\,
	devoe => ww_devoe,
	o => \done_probe~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\readdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\readdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[1]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\readdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[2]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\readdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[3]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\readdata[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\readdata[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[5]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\readdata[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[6]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\readdata[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[7]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\readdata[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[8]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\readdata[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[9]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\readdata[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[10]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\readdata[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[11]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\readdata[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[12]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\readdata[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[13]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\readdata[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\readdata[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[15]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\readdata[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\readdata[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[17]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\readdata[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[18]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\readdata[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[19]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\readdata[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[20]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\readdata[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[21]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\readdata[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[22]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\readdata[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[23]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\readdata[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[24]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\readdata[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[25]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\readdata[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[26]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\readdata[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[27]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\readdata[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[28]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\readdata[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[29]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\readdata[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[30]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\readdata[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[31]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y18_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_count(0) $ (VCC)
-- \Add0~1\ = CARRY(s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X52_Y18_N6
\s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~2_combout\ = (\Add0~0_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count~2_combout\);

-- Location: FF_X52_Y18_N7
\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

-- Location: LCCOMB_X52_Y18_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_count(1) & (!\Add0~1\)) # (!s_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!s_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X52_Y18_N10
\s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~0_combout\ = (\Add0~2_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count~0_combout\);

-- Location: FF_X52_Y18_N11
\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

-- Location: LCCOMB_X52_Y18_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (s_count(2) & (\Add0~3\ $ (GND))) # (!s_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((s_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X52_Y18_N17
\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

-- Location: LCCOMB_X52_Y18_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_count(3) & (!\Add0~5\)) # (!s_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X52_Y18_N0
\s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~1_combout\ = (\Add0~6_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count~1_combout\);

-- Location: FF_X52_Y18_N1
\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

-- Location: LCCOMB_X52_Y18_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (s_count(4) & (\Add0~7\ $ (GND))) # (!s_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((s_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X52_Y18_N21
\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

-- Location: LCCOMB_X52_Y18_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_count(5) & (!\Add0~9\)) # (!s_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!s_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X52_Y18_N23
\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

-- Location: LCCOMB_X52_Y18_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (s_count(6) & (\Add0~11\ $ (GND))) # (!s_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((s_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X52_Y18_N25
\s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(6));

-- Location: LCCOMB_X52_Y18_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_count(7) & (!\Add0~13\)) # (!s_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!s_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X52_Y18_N8
\s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~3_combout\ = (\Add0~14_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count~3_combout\);

-- Location: FF_X52_Y18_N9
\s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(7));

-- Location: LCCOMB_X52_Y18_N28
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_count(8) & (\Add0~15\ $ (GND))) # (!s_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((s_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X52_Y18_N29
\s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(8));

-- Location: LCCOMB_X52_Y18_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = s_count(9) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X52_Y18_N4
\s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count~4_combout\ = (\Add0~18_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count~4_combout\);

-- Location: FF_X52_Y18_N5
\s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(9));

-- Location: LCCOMB_X51_Y18_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_count(0) & (s_count(3) & (s_count(1) & !s_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datab => s_count(3),
	datac => s_count(1),
	datad => s_count(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X51_Y18_N14
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!s_count(4) & (!s_count(5) & (s_count(7) & !s_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datab => s_count(5),
	datac => s_count(7),
	datad => s_count(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X52_Y18_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (s_count(9) & (!s_count(8) & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datab => s_count(8),
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X52_Y18_N3
s_clk16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_clk16~q\);

-- Location: CLKCTRL_G9
\s_clk16~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_clk16~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_clk16~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y17_N18
\s_count16[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count16[0]~3_combout\ = !s_count16(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_count16(0),
	combout => \s_count16[0]~3_combout\);

-- Location: FF_X52_Y17_N19
\s_count16[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk16~clkctrl_outclk\,
	d => \s_count16[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count16(0));

-- Location: LCCOMB_X52_Y17_N26
\s_count16[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count16[1]~2_combout\ = s_count16(1) $ (s_count16(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_count16(1),
	datad => s_count16(0),
	combout => \s_count16[1]~2_combout\);

-- Location: FF_X52_Y17_N27
\s_count16[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk16~clkctrl_outclk\,
	d => \s_count16[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count16(1));

-- Location: LCCOMB_X52_Y17_N28
\s_count16[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count16[2]~1_combout\ = s_count16(2) $ (((s_count16(0) & s_count16(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_count16(0),
	datac => s_count16(2),
	datad => s_count16(1),
	combout => \s_count16[2]~1_combout\);

-- Location: FF_X52_Y17_N29
\s_count16[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk16~clkctrl_outclk\,
	d => \s_count16[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count16(2));

-- Location: LCCOMB_X52_Y17_N20
\s_count16[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count16[3]~0_combout\ = s_count16(3) $ (((s_count16(2) & (s_count16(1) & s_count16(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count16(3),
	datab => s_count16(2),
	datac => s_count16(1),
	datad => s_count16(0),
	combout => \s_count16[3]~0_combout\);

-- Location: FF_X52_Y17_N23
\s_count16[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk16~clkctrl_outclk\,
	asdata => \s_count16[3]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count16(3));

-- Location: CLKCTRL_G8
\s_count16[3]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_count16[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_count16[3]~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y33_N24
\tmp[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[39]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \tmp[39]~feeder_combout\);

-- Location: LCCOMB_X2_Y33_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count_bit(3) & (((!count_bit(1)) # (!count_bit(0))) # (!count_bit(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(2),
	datab => count_bit(0),
	datac => count_bit(1),
	datad => count_bit(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y33_N4
\count_bit[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit[0]~15_combout\ = count_bit(0) $ ((((!count_bit(4) & \LessThan0~0_combout\)) # (!count_bit(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(5),
	datab => count_bit(4),
	datac => count_bit(0),
	datad => \LessThan0~0_combout\,
	combout => \count_bit[0]~15_combout\);

-- Location: FF_X2_Y33_N5
\count_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \count_bit[0]~15_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(0));

-- Location: LCCOMB_X2_Y33_N8
\count_bit[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit[1]~5_combout\ = (count_bit(1) & (count_bit(0) $ (VCC))) # (!count_bit(1) & (count_bit(0) & VCC))
-- \count_bit[1]~6\ = CARRY((count_bit(1) & count_bit(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(1),
	datab => count_bit(0),
	datad => VCC,
	combout => \count_bit[1]~5_combout\,
	cout => \count_bit[1]~6\);

-- Location: LCCOMB_X2_Y33_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!count_bit(4) & \LessThan0~0_combout\)) # (!count_bit(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_bit(5),
	datac => count_bit(4),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X2_Y33_N9
\count_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \count_bit[1]~5_combout\,
	clrn => \ALT_INV_done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(1));

-- Location: LCCOMB_X2_Y33_N10
\count_bit[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit[2]~7_combout\ = (count_bit(2) & (!\count_bit[1]~6\)) # (!count_bit(2) & ((\count_bit[1]~6\) # (GND)))
-- \count_bit[2]~8\ = CARRY((!\count_bit[1]~6\) # (!count_bit(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(2),
	datad => VCC,
	cin => \count_bit[1]~6\,
	combout => \count_bit[2]~7_combout\,
	cout => \count_bit[2]~8\);

-- Location: FF_X2_Y33_N11
\count_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \count_bit[2]~7_combout\,
	clrn => \ALT_INV_done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(2));

-- Location: LCCOMB_X2_Y33_N12
\count_bit[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit[3]~9_combout\ = (count_bit(3) & (\count_bit[2]~8\ $ (GND))) # (!count_bit(3) & (!\count_bit[2]~8\ & VCC))
-- \count_bit[3]~10\ = CARRY((count_bit(3) & !\count_bit[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(3),
	datad => VCC,
	cin => \count_bit[2]~8\,
	combout => \count_bit[3]~9_combout\,
	cout => \count_bit[3]~10\);

-- Location: FF_X2_Y33_N13
\count_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \count_bit[3]~9_combout\,
	clrn => \ALT_INV_done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(3));

-- Location: LCCOMB_X2_Y33_N14
\count_bit[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit[4]~11_combout\ = (count_bit(4) & (!\count_bit[3]~10\)) # (!count_bit(4) & ((\count_bit[3]~10\) # (GND)))
-- \count_bit[4]~12\ = CARRY((!\count_bit[3]~10\) # (!count_bit(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_bit(4),
	datad => VCC,
	cin => \count_bit[3]~10\,
	combout => \count_bit[4]~11_combout\,
	cout => \count_bit[4]~12\);

-- Location: FF_X2_Y33_N15
\count_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \count_bit[4]~11_combout\,
	clrn => \ALT_INV_done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(4));

-- Location: LCCOMB_X2_Y33_N16
\count_bit[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit[5]~13_combout\ = \count_bit[4]~12\ $ (!count_bit(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_bit(5),
	cin => \count_bit[4]~12\,
	combout => \count_bit[5]~13_combout\);

-- Location: FF_X2_Y33_N17
\count_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \count_bit[5]~13_combout\,
	clrn => \ALT_INV_done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(5));

-- Location: LCCOMB_X3_Y33_N8
\fin_tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fin_tx~0_combout\ = (\fin_tx~q\) # ((count_bit(5) & ((count_bit(4)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(5),
	datab => count_bit(4),
	datac => \fin_tx~q\,
	datad => \LessThan0~0_combout\,
	combout => \fin_tx~0_combout\);

-- Location: FF_X3_Y33_N9
fin_tx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \fin_tx~0_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fin_tx~q\);

-- Location: LCCOMB_X3_Y33_N2
\etat_nios[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_nios[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \etat_nios[1]~feeder_combout\);

-- Location: FF_X3_Y33_N3
\etat_nios[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \etat_nios[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => etat_nios(1));

-- Location: LCCOMB_X3_Y33_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (etat_nios(0) & (!\fin_tx~q\)) # (!etat_nios(0) & ((!etat_nios(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fin_tx~q\,
	datac => etat_nios(0),
	datad => etat_nios(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X3_Y33_N31
\etat_nios[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => etat_nios(0));

-- Location: LCCOMB_X3_Y33_N12
\done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (etat_nios(1) & ((\done~q\) # ((etat_nios(0) & \fin_tx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_nios(0),
	datab => \done~q\,
	datac => \fin_tx~q\,
	datad => etat_nios(1),
	combout => \done~0_combout\);

-- Location: LCCOMB_X3_Y33_N24
\done~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \done~feeder_combout\ = \done~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \done~0_combout\,
	combout => \done~feeder_combout\);

-- Location: FF_X3_Y33_N25
done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \done~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~q\);

-- Location: FF_X4_Y33_N25
\tmp[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[39]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(39));

-- Location: LCCOMB_X4_Y33_N10
\tmp[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[38]~feeder_combout\ = tmp(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(39),
	combout => \tmp[38]~feeder_combout\);

-- Location: FF_X4_Y33_N11
\tmp[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[38]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(38));

-- Location: LCCOMB_X4_Y33_N20
\tmp[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[37]~feeder_combout\ = tmp(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(38),
	combout => \tmp[37]~feeder_combout\);

-- Location: FF_X4_Y33_N21
\tmp[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[37]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(37));

-- Location: LCCOMB_X4_Y33_N6
\tmp[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[36]~feeder_combout\ = tmp(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(37),
	combout => \tmp[36]~feeder_combout\);

-- Location: FF_X4_Y33_N7
\tmp[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[36]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(36));

-- Location: LCCOMB_X4_Y33_N12
\tmp[35]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[35]~22_combout\ = !tmp(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(36),
	combout => \tmp[35]~22_combout\);

-- Location: FF_X4_Y33_N13
\tmp[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[35]~22_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(35));

-- Location: LCCOMB_X4_Y33_N22
\tmp[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[34]~feeder_combout\ = tmp(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(35),
	combout => \tmp[34]~feeder_combout\);

-- Location: FF_X4_Y33_N23
\tmp[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[34]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(34));

-- Location: LCCOMB_X4_Y33_N16
\tmp[33]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[33]~21_combout\ = !tmp(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(34),
	combout => \tmp[33]~21_combout\);

-- Location: FF_X4_Y33_N17
\tmp[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[33]~21_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(33));

-- Location: LCCOMB_X4_Y33_N2
\tmp[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[32]~feeder_combout\ = tmp(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(33),
	combout => \tmp[32]~feeder_combout\);

-- Location: FF_X4_Y33_N3
\tmp[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[32]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(32));

-- Location: LCCOMB_X4_Y33_N28
\tmp[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[31]~feeder_combout\ = tmp(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(32),
	combout => \tmp[31]~feeder_combout\);

-- Location: FF_X4_Y33_N29
\tmp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[31]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(31));

-- Location: LCCOMB_X4_Y33_N18
\tmp[30]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[30]~20_combout\ = !tmp(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(31),
	combout => \tmp[30]~20_combout\);

-- Location: FF_X4_Y33_N19
\tmp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[30]~20_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(30));

-- Location: LCCOMB_X4_Y33_N4
\tmp[29]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[29]~19_combout\ = !tmp(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(30),
	combout => \tmp[29]~19_combout\);

-- Location: FF_X4_Y33_N5
\tmp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[29]~19_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(29));

-- Location: LCCOMB_X3_Y33_N10
\tmp[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[28]~feeder_combout\ = tmp(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(29),
	combout => \tmp[28]~feeder_combout\);

-- Location: FF_X3_Y33_N11
\tmp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[28]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(28));

-- Location: LCCOMB_X3_Y33_N20
\tmp[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[27]~feeder_combout\ = tmp(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(28),
	combout => \tmp[27]~feeder_combout\);

-- Location: FF_X3_Y33_N21
\tmp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[27]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(27));

-- Location: LCCOMB_X3_Y33_N6
\tmp[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[26]~feeder_combout\ = tmp(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(27),
	combout => \tmp[26]~feeder_combout\);

-- Location: FF_X3_Y33_N7
\tmp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[26]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(26));

-- Location: LCCOMB_X3_Y33_N4
\tmp[25]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[25]~18_combout\ = !tmp(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(26),
	combout => \tmp[25]~18_combout\);

-- Location: FF_X3_Y33_N5
\tmp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[25]~18_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(25));

-- Location: LCCOMB_X3_Y33_N18
\tmp[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[24]~17_combout\ = !tmp(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(25),
	combout => \tmp[24]~17_combout\);

-- Location: FF_X3_Y33_N19
\tmp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[24]~17_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(24));

-- Location: LCCOMB_X3_Y33_N28
\tmp[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[23]~16_combout\ = !tmp(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(24),
	combout => \tmp[23]~16_combout\);

-- Location: FF_X3_Y33_N29
\tmp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[23]~16_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(23));

-- Location: LCCOMB_X3_Y33_N14
\tmp[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[22]~feeder_combout\ = tmp(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(23),
	combout => \tmp[22]~feeder_combout\);

-- Location: FF_X3_Y33_N15
\tmp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[22]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(22));

-- Location: LCCOMB_X3_Y33_N16
\tmp[21]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[21]~15_combout\ = !tmp(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(22),
	combout => \tmp[21]~15_combout\);

-- Location: FF_X3_Y33_N17
\tmp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[21]~15_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(21));

-- Location: LCCOMB_X3_Y33_N26
\tmp[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[20]~14_combout\ = !tmp(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(21),
	combout => \tmp[20]~14_combout\);

-- Location: FF_X3_Y33_N27
\tmp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[20]~14_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(20));

-- Location: LCCOMB_X3_Y33_N0
\tmp[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[19]~13_combout\ = !tmp(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(20),
	combout => \tmp[19]~13_combout\);

-- Location: FF_X3_Y33_N1
\tmp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[19]~13_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(19));

-- Location: LCCOMB_X3_Y33_N22
\tmp[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[18]~feeder_combout\ = tmp(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(19),
	combout => \tmp[18]~feeder_combout\);

-- Location: FF_X3_Y33_N23
\tmp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[18]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(18));

-- Location: LCCOMB_X2_Y33_N30
\tmp[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[17]~feeder_combout\ = tmp(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(18),
	combout => \tmp[17]~feeder_combout\);

-- Location: FF_X2_Y33_N31
\tmp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[17]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(17));

-- Location: LCCOMB_X2_Y33_N24
\tmp[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[16]~feeder_combout\ = tmp(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(17),
	combout => \tmp[16]~feeder_combout\);

-- Location: FF_X2_Y33_N25
\tmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[16]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(16));

-- Location: LCCOMB_X2_Y33_N18
\tmp[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[15]~12_combout\ = !tmp(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(16),
	combout => \tmp[15]~12_combout\);

-- Location: FF_X2_Y33_N19
\tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[15]~12_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(15));

-- Location: LCCOMB_X2_Y33_N28
\tmp[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[14]~11_combout\ = !tmp(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(15),
	combout => \tmp[14]~11_combout\);

-- Location: FF_X2_Y33_N29
\tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[14]~11_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(14));

-- Location: LCCOMB_X2_Y33_N26
\tmp[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[13]~10_combout\ = !tmp(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(14),
	combout => \tmp[13]~10_combout\);

-- Location: FF_X2_Y33_N27
\tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[13]~10_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(13));

-- Location: LCCOMB_X2_Y33_N6
\tmp[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[12]~9_combout\ = !tmp(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(13),
	combout => \tmp[12]~9_combout\);

-- Location: FF_X2_Y33_N7
\tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[12]~9_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(12));

-- Location: LCCOMB_X1_Y33_N2
\tmp[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[11]~feeder_combout\ = tmp(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(12),
	combout => \tmp[11]~feeder_combout\);

-- Location: FF_X1_Y33_N3
\tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[11]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(11));

-- Location: LCCOMB_X1_Y33_N16
\tmp[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[10]~8_combout\ = !tmp(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(11),
	combout => \tmp[10]~8_combout\);

-- Location: FF_X1_Y33_N17
\tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[10]~8_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(10));

-- Location: LCCOMB_X1_Y33_N6
\tmp[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[9]~feeder_combout\ = tmp(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(10),
	combout => \tmp[9]~feeder_combout\);

-- Location: FF_X1_Y33_N7
\tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[9]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(9));

-- Location: LCCOMB_X1_Y33_N20
\tmp[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[8]~7_combout\ = !tmp(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(9),
	combout => \tmp[8]~7_combout\);

-- Location: FF_X1_Y33_N21
\tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[8]~7_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(8));

-- Location: LCCOMB_X1_Y33_N22
\tmp[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[7]~6_combout\ = !tmp(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(8),
	combout => \tmp[7]~6_combout\);

-- Location: FF_X1_Y33_N23
\tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[7]~6_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(7));

-- Location: LCCOMB_X1_Y33_N12
\tmp[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[6]~5_combout\ = !tmp(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(7),
	combout => \tmp[6]~5_combout\);

-- Location: FF_X1_Y33_N13
\tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[6]~5_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(6));

-- Location: LCCOMB_X1_Y33_N26
\tmp[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[5]~4_combout\ = !tmp(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(6),
	combout => \tmp[5]~4_combout\);

-- Location: FF_X1_Y33_N27
\tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[5]~4_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(5));

-- Location: LCCOMB_X1_Y33_N28
\tmp[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[4]~3_combout\ = !tmp(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tmp(5),
	combout => \tmp[4]~3_combout\);

-- Location: FF_X1_Y33_N29
\tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[4]~3_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(4));

-- Location: LCCOMB_X1_Y33_N18
\tmp[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[3]~2_combout\ = !tmp(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(4),
	combout => \tmp[3]~2_combout\);

-- Location: FF_X1_Y33_N19
\tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[3]~2_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(3));

-- Location: LCCOMB_X1_Y33_N24
\tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[2]~1_combout\ = !tmp(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(3),
	combout => \tmp[2]~1_combout\);

-- Location: FF_X1_Y33_N25
\tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[2]~1_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(2));

-- Location: LCCOMB_X1_Y33_N10
\tmp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[1]~feeder_combout\ = tmp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(2),
	combout => \tmp[1]~feeder_combout\);

-- Location: FF_X1_Y33_N11
\tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[1]~feeder_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(1));

-- Location: LCCOMB_X1_Y33_N0
\tmp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tmp[0]~0_combout\ = !tmp(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tmp(1),
	combout => \tmp[0]~0_combout\);

-- Location: FF_X1_Y33_N1
\tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_count16[3]~clkctrl_outclk\,
	d => \tmp[0]~0_combout\,
	clrn => \ALT_INV_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tmp(0));

-- Location: IOIBUF_X20_Y34_N22
\chipselect~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chipselect,
	o => \chipselect~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\write_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_n,
	o => \write_n~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\writedata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\writedata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\writedata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\writedata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\writedata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\writedata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\writedata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\writedata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\writedata[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(8),
	o => \writedata[8]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\writedata[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(9),
	o => \writedata[9]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\writedata[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(10),
	o => \writedata[10]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\writedata[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(11),
	o => \writedata[11]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\writedata[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(12),
	o => \writedata[12]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\writedata[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(13),
	o => \writedata[13]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\writedata[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(14),
	o => \writedata[14]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\writedata[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(15),
	o => \writedata[15]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\writedata[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(16),
	o => \writedata[16]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\writedata[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(17),
	o => \writedata[17]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\writedata[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(18),
	o => \writedata[18]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\writedata[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(19),
	o => \writedata[19]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\writedata[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(20),
	o => \writedata[20]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\writedata[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(21),
	o => \writedata[21]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\writedata[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(22),
	o => \writedata[22]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\writedata[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(23),
	o => \writedata[23]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\writedata[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(24),
	o => \writedata[24]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\writedata[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(25),
	o => \writedata[25]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\writedata[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(26),
	o => \writedata[26]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\writedata[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(27),
	o => \writedata[27]~input_o\);

-- Location: IOIBUF_X53_Y24_N22
\writedata[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(28),
	o => \writedata[28]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\writedata[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(29),
	o => \writedata[29]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\writedata[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(30),
	o => \writedata[30]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\writedata[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(31),
	o => \writedata[31]~input_o\);

ww_txd <= \txd~output_o\;

ww_done_probe <= \done_probe~output_o\;

ww_readdata(0) <= \readdata[0]~output_o\;

ww_readdata(1) <= \readdata[1]~output_o\;

ww_readdata(2) <= \readdata[2]~output_o\;

ww_readdata(3) <= \readdata[3]~output_o\;

ww_readdata(4) <= \readdata[4]~output_o\;

ww_readdata(5) <= \readdata[5]~output_o\;

ww_readdata(6) <= \readdata[6]~output_o\;

ww_readdata(7) <= \readdata[7]~output_o\;

ww_readdata(8) <= \readdata[8]~output_o\;

ww_readdata(9) <= \readdata[9]~output_o\;

ww_readdata(10) <= \readdata[10]~output_o\;

ww_readdata(11) <= \readdata[11]~output_o\;

ww_readdata(12) <= \readdata[12]~output_o\;

ww_readdata(13) <= \readdata[13]~output_o\;

ww_readdata(14) <= \readdata[14]~output_o\;

ww_readdata(15) <= \readdata[15]~output_o\;

ww_readdata(16) <= \readdata[16]~output_o\;

ww_readdata(17) <= \readdata[17]~output_o\;

ww_readdata(18) <= \readdata[18]~output_o\;

ww_readdata(19) <= \readdata[19]~output_o\;

ww_readdata(20) <= \readdata[20]~output_o\;

ww_readdata(21) <= \readdata[21]~output_o\;

ww_readdata(22) <= \readdata[22]~output_o\;

ww_readdata(23) <= \readdata[23]~output_o\;

ww_readdata(24) <= \readdata[24]~output_o\;

ww_readdata(25) <= \readdata[25]~output_o\;

ww_readdata(26) <= \readdata[26]~output_o\;

ww_readdata(27) <= \readdata[27]~output_o\;

ww_readdata(28) <= \readdata[28]~output_o\;

ww_readdata(29) <= \readdata[29]~output_o\;

ww_readdata(30) <= \readdata[30]~output_o\;

ww_readdata(31) <= \readdata[31]~output_o\;
END structure;


