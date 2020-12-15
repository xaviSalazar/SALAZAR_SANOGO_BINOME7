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

-- DATE "12/12/2020 18:53:49"

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

ENTITY 	nmea_rx IS
    PORT (
	clk_50M : IN std_logic;
	reset_n : IN std_logic;
	val_data : OUT std_logic;
	val_chaine : OUT std_logic;
	rxd : IN std_logic;
	txd_echo : OUT std_logic;
	txd : OUT std_logic;
	centaine_ok : OUT std_logic;
	dizaine_ok : OUT std_logic;
	unite_ok : OUT std_logic;
	BCD7SEGMENT : OUT std_logic_vector(0 TO 6);
	multiplex : OUT std_logic_vector(2 DOWNTO 0)
	);
END nmea_rx;

-- Design Ports Information
-- reset_n	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- val_data	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- val_chaine	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd_echo	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- centaine_ok	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dizaine_ok	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- unite_ok	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD7SEGMENT[6]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD7SEGMENT[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD7SEGMENT[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD7SEGMENT[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD7SEGMENT[2]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD7SEGMENT[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD7SEGMENT[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplex[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplex[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplex[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nmea_rx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50M : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_val_data : std_logic;
SIGNAL ww_val_chaine : std_logic;
SIGNAL ww_rxd : std_logic;
SIGNAL ww_txd_echo : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL ww_centaine_ok : std_logic;
SIGNAL ww_dizaine_ok : std_logic;
SIGNAL ww_unite_ok : std_logic;
SIGNAL ww_BCD7SEGMENT : std_logic_vector(0 TO 6);
SIGNAL ww_multiplex : std_logic_vector(2 DOWNTO 0);
SIGNAL \s_clk4800~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_clk76800~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \val_data~output_o\ : std_logic;
SIGNAL \val_chaine~output_o\ : std_logic;
SIGNAL \txd_echo~output_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \centaine_ok~output_o\ : std_logic;
SIGNAL \dizaine_ok~output_o\ : std_logic;
SIGNAL \unite_ok~output_o\ : std_logic;
SIGNAL \BCD7SEGMENT[6]~output_o\ : std_logic;
SIGNAL \BCD7SEGMENT[5]~output_o\ : std_logic;
SIGNAL \BCD7SEGMENT[4]~output_o\ : std_logic;
SIGNAL \BCD7SEGMENT[3]~output_o\ : std_logic;
SIGNAL \BCD7SEGMENT[2]~output_o\ : std_logic;
SIGNAL \BCD7SEGMENT[1]~output_o\ : std_logic;
SIGNAL \BCD7SEGMENT[0]~output_o\ : std_logic;
SIGNAL \multiplex[0]~output_o\ : std_logic;
SIGNAL \multiplex[1]~output_o\ : std_logic;
SIGNAL \multiplex[2]~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_count76800~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_count76800~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \s_count76800~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \s_count76800~3_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \s_count76800~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \s_clk76800~q\ : std_logic;
SIGNAL \s_clk76800~clkctrl_outclk\ : std_logic;
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \s_count4800[0]~2_combout\ : std_logic;
SIGNAL \count_bit~0_combout\ : std_logic;
SIGNAL \count_bit~2_combout\ : std_logic;
SIGNAL \count_bit~3_combout\ : std_logic;
SIGNAL \gen_4800~1_combout\ : std_logic;
SIGNAL \s_count4800[1]~1_combout\ : std_logic;
SIGNAL \s_count4800[2]~0_combout\ : std_logic;
SIGNAL \s_clk4800~0_combout\ : std_logic;
SIGNAL \s_clk4800~1_combout\ : std_logic;
SIGNAL \s_clk4800~feeder_combout\ : std_logic;
SIGNAL \s_clk4800~q\ : std_logic;
SIGNAL \s_clk4800~clkctrl_outclk\ : std_logic;
SIGNAL \count_bit~1_combout\ : std_logic;
SIGNAL \gen_4800~0_combout\ : std_logic;
SIGNAL \etat[1]~0_combout\ : std_logic;
SIGNAL \etat[1]~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \ack~0_combout\ : std_logic;
SIGNAL \ack~q\ : std_logic;
SIGNAL \etat_chaine[0]~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \etat_chaine[2]~2_combout\ : std_logic;
SIGNAL \etat_chaine[3]~0_combout\ : std_logic;
SIGNAL \etat_chaine[3]~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \chaine_valid~0_combout\ : std_logic;
SIGNAL \chaine_valid~1_combout\ : std_logic;
SIGNAL \chaine_valid~2_combout\ : std_logic;
SIGNAL \chaine_valid~q\ : std_logic;
SIGNAL \s_qout[9]~feeder_combout\ : std_logic;
SIGNAL \s_qout[8]~feeder_combout\ : std_logic;
SIGNAL \s_qout[7]~feeder_combout\ : std_logic;
SIGNAL \s_qout[6]~feeder_combout\ : std_logic;
SIGNAL \s_qout[5]~feeder_combout\ : std_logic;
SIGNAL \s_qout[4]~feeder_combout\ : std_logic;
SIGNAL \s_qout[3]~feeder_combout\ : std_logic;
SIGNAL \s_qout[2]~feeder_combout\ : std_logic;
SIGNAL \s_qout[1]~feeder_combout\ : std_logic;
SIGNAL \Equal33~0_combout\ : std_logic;
SIGNAL \Equal34~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~127_combout\ : std_logic;
SIGNAL \Equal33~1_combout\ : std_logic;
SIGNAL \Equal36~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \contador~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \contador~6_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \contador~2_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \contador~4_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \contador~1_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \contador~3_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \contador[17]~feeder_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \contador~5_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \s_multiplex[1]~0_combout\ : std_logic;
SIGNAL \s_multiplex[1]~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~84_combout\ : std_logic;
SIGNAL \Unidad~0_combout\ : std_logic;
SIGNAL \Equal35~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~85_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~86_combout\ : std_logic;
SIGNAL \data[3]~feeder_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \data[1]~feeder_combout\ : std_logic;
SIGNAL \data[6]~feeder_combout\ : std_logic;
SIGNAL \data[5]~feeder_combout\ : std_logic;
SIGNAL \data[4]~feeder_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~124_combout\ : std_logic;
SIGNAL \Equal13~1_combout\ : std_logic;
SIGNAL \data[0]~feeder_combout\ : std_logic;
SIGNAL \centaine[0]~0_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Centena~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~76_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~77_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~78_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~79_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~126_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~82_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~83_combout\ : std_logic;
SIGNAL \dizaine[2]~feeder_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \dizaine[1]~0_combout\ : std_logic;
SIGNAL \dizaine[4]~feeder_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~125_combout\ : std_logic;
SIGNAL \dizaine[0]~feeder_combout\ : std_logic;
SIGNAL \Equal23~1_combout\ : std_logic;
SIGNAL \Equal26~0_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal28~0_combout\ : std_logic;
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~71_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~69_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~133_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~80_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~81_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~87_combout\ : std_logic;
SIGNAL \Equal39~0_combout\ : std_logic;
SIGNAL \Equal40~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~88_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~128_combout\ : std_logic;
SIGNAL \Equal19~1_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~91_combout\ : std_logic;
SIGNAL \Equal29~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~90_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~89_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~44_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~42_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~131_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~92_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~93_combout\ : std_logic;
SIGNAL \Decena[4]~0_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~96_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~97_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~99_combout\ : std_logic;
SIGNAL \Unidad[4]~1_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~94_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~95_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~98_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~100_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~106_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~107_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~104_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~103_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~105_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~101_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~102_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~108_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~111_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~112_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~109_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~110_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~30_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~28_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~25_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~130_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~129_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~113_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~114_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~115_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~57_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~55_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~52_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~132_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~116_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~117_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~118_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~119_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~120_combout\ : std_logic;
SIGNAL \Equal23~2_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~122_combout\ : std_logic;
SIGNAL \Equal13~2_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~121_combout\ : std_logic;
SIGNAL \BCD7SEGMENT~123_combout\ : std_logic;
SIGNAL etat : std_logic_vector(2 DOWNTO 0);
SIGNAL contador : std_logic_vector(25 DOWNTO 0);
SIGNAL s_multiplex : std_logic_vector(2 DOWNTO 0);
SIGNAL centaine : std_logic_vector(7 DOWNTO 0);
SIGNAL dizaine : std_logic_vector(7 DOWNTO 0);
SIGNAL s_qout : std_logic_vector(9 DOWNTO 0);
SIGNAL s_qdec : std_logic_vector(1 DOWNTO 0);
SIGNAL count_bit : std_logic_vector(3 DOWNTO 0);
SIGNAL etat_chaine : std_logic_vector(3 DOWNTO 0);
SIGNAL data : std_logic_vector(7 DOWNTO 0);
SIGNAL s_count76800 : std_logic_vector(9 DOWNTO 0);
SIGNAL s_count4800 : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_gen_4800~1_combout\ : std_logic;

BEGIN

ww_clk_50M <= clk_50M;
ww_reset_n <= reset_n;
val_data <= ww_val_data;
val_chaine <= ww_val_chaine;
ww_rxd <= rxd;
txd_echo <= ww_txd_echo;
txd <= ww_txd;
centaine_ok <= ww_centaine_ok;
dizaine_ok <= ww_dizaine_ok;
unite_ok <= ww_unite_ok;
BCD7SEGMENT <= ww_BCD7SEGMENT;
multiplex <= ww_multiplex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\s_clk4800~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_clk4800~q\);

\s_clk76800~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_clk76800~q\);

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);
\ALT_INV_gen_4800~1_combout\ <= NOT \gen_4800~1_combout\;

-- Location: IOOBUF_X31_Y34_N2
\val_data~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~0_combout\,
	devoe => ww_devoe,
	o => \val_data~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\val_chaine~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chaine_valid~q\,
	devoe => ww_devoe,
	o => \val_chaine~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\txd_echo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \txd_echo~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\centaine_ok~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \centaine_ok~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\dizaine_ok~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dizaine_ok~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\unite_ok~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \unite_ok~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\BCD7SEGMENT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7SEGMENT~87_combout\,
	devoe => ww_devoe,
	o => \BCD7SEGMENT[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\BCD7SEGMENT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7SEGMENT~93_combout\,
	devoe => ww_devoe,
	o => \BCD7SEGMENT[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\BCD7SEGMENT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7SEGMENT~100_combout\,
	devoe => ww_devoe,
	o => \BCD7SEGMENT[4]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\BCD7SEGMENT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7SEGMENT~108_combout\,
	devoe => ww_devoe,
	o => \BCD7SEGMENT[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\BCD7SEGMENT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7SEGMENT~115_combout\,
	devoe => ww_devoe,
	o => \BCD7SEGMENT[2]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\BCD7SEGMENT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7SEGMENT~120_combout\,
	devoe => ww_devoe,
	o => \BCD7SEGMENT[1]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\BCD7SEGMENT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD7SEGMENT~123_combout\,
	devoe => ww_devoe,
	o => \BCD7SEGMENT[0]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\multiplex[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_multiplex(0),
	devoe => ww_devoe,
	o => \multiplex[0]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\multiplex[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_multiplex(1),
	devoe => ww_devoe,
	o => \multiplex[1]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\multiplex[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_multiplex(2),
	devoe => ww_devoe,
	o => \multiplex[2]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50M,
	o => \clk_50M~input_o\);

-- Location: CLKCTRL_G18
\clk_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y21_N8
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_count76800(0) $ (VCC)
-- \Add0~1\ = CARRY(s_count76800(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X41_Y21_N30
\s_count76800~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~2_combout\ = (\Add0~0_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count76800~2_combout\);

-- Location: FF_X41_Y21_N31
\s_count76800[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count76800~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(0));

-- Location: LCCOMB_X41_Y21_N10
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (s_count76800(1) & (!\Add0~1\)) # (!s_count76800(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!s_count76800(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count76800(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X41_Y21_N28
\s_count76800~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~0_combout\ = (\Add0~2_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count76800~0_combout\);

-- Location: FF_X41_Y21_N29
\s_count76800[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count76800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(1));

-- Location: LCCOMB_X41_Y21_N12
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (s_count76800(2) & (\Add0~3\ $ (GND))) # (!s_count76800(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((s_count76800(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X41_Y21_N13
\s_count76800[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(2));

-- Location: LCCOMB_X41_Y21_N14
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_count76800(3) & (!\Add0~5\)) # (!s_count76800(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!s_count76800(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X41_Y21_N6
\s_count76800~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~1_combout\ = (\Add0~6_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count76800~1_combout\);

-- Location: FF_X41_Y21_N7
\s_count76800[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count76800~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(3));

-- Location: LCCOMB_X40_Y21_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_count76800(0) & (s_count76800(1) & (!s_count76800(2) & s_count76800(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(0),
	datab => s_count76800(1),
	datac => s_count76800(2),
	datad => s_count76800(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X41_Y21_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (s_count76800(4) & (\Add0~7\ $ (GND))) # (!s_count76800(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((s_count76800(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count76800(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X41_Y21_N17
\s_count76800[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(4));

-- Location: LCCOMB_X41_Y21_N18
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_count76800(5) & (!\Add0~9\)) # (!s_count76800(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!s_count76800(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count76800(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X41_Y21_N19
\s_count76800[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(5));

-- Location: LCCOMB_X41_Y21_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (s_count76800(6) & (\Add0~11\ $ (GND))) # (!s_count76800(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((s_count76800(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count76800(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X41_Y21_N21
\s_count76800[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(6));

-- Location: LCCOMB_X41_Y21_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_count76800(7) & (!\Add0~13\)) # (!s_count76800(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!s_count76800(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count76800(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X41_Y21_N4
\s_count76800~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~3_combout\ = (\Add0~14_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count76800~3_combout\);

-- Location: FF_X41_Y21_N5
\s_count76800[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count76800~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(7));

-- Location: LCCOMB_X41_Y21_N24
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_count76800(8) & (\Add0~15\ $ (GND))) # (!s_count76800(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((s_count76800(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count76800(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X41_Y21_N25
\s_count76800[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(8));

-- Location: LCCOMB_X40_Y21_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!s_count76800(6) & (!s_count76800(4) & (!s_count76800(5) & s_count76800(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(6),
	datab => s_count76800(4),
	datac => s_count76800(5),
	datad => s_count76800(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X41_Y21_N26
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (s_count76800(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_count76800(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X41_Y21_N0
\s_count76800~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~4_combout\ = (\Add0~18_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count76800~4_combout\);

-- Location: FF_X41_Y21_N1
\s_count76800[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count76800~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count76800(9));

-- Location: LCCOMB_X41_Y21_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (!s_count76800(8) & (\Equal0~1_combout\ & s_count76800(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => s_count76800(8),
	datac => \Equal0~1_combout\,
	datad => s_count76800(9),
	combout => \Equal0~2_combout\);

-- Location: FF_X41_Y21_N3
s_clk76800 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_clk76800~q\);

-- Location: CLKCTRL_G6
\s_clk76800~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_clk76800~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_clk76800~clkctrl_outclk\);

-- Location: IOIBUF_X7_Y34_N15
\rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rxd,
	o => \rxd~input_o\);

-- Location: FF_X30_Y22_N15
\s_qdec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => \rxd~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qdec(0));

-- Location: FF_X30_Y22_N25
\s_qdec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => s_qdec(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qdec(1));

-- Location: LCCOMB_X30_Y22_N12
\s_count4800[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count4800[0]~2_combout\ = !s_count4800(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_count4800(0),
	combout => \s_count4800[0]~2_combout\);

-- Location: LCCOMB_X30_Y22_N10
\count_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit~0_combout\ = (count_bit(0) & (!count_bit(1) & ((!count_bit(3)) # (!count_bit(2))))) # (!count_bit(0) & (((count_bit(1) & !count_bit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(2),
	datab => count_bit(0),
	datac => count_bit(1),
	datad => count_bit(3),
	combout => \count_bit~0_combout\);

-- Location: FF_X30_Y22_N11
\count_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(1));

-- Location: LCCOMB_X30_Y22_N4
\count_bit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit~2_combout\ = (!count_bit(0) & (((!count_bit(1) & !count_bit(2))) # (!count_bit(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(1),
	datab => count_bit(3),
	datac => count_bit(0),
	datad => count_bit(2),
	combout => \count_bit~2_combout\);

-- Location: FF_X30_Y22_N5
\count_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(0));

-- Location: LCCOMB_X30_Y22_N22
\count_bit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit~3_combout\ = (count_bit(2) & (count_bit(0) & (!count_bit(3) & count_bit(1)))) # (!count_bit(2) & (((count_bit(3) & !count_bit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(2),
	datab => count_bit(0),
	datac => count_bit(3),
	datad => count_bit(1),
	combout => \count_bit~3_combout\);

-- Location: FF_X30_Y22_N23
\count_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(3));

-- Location: LCCOMB_X30_Y22_N18
\gen_4800~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_4800~1_combout\ = (s_qdec(1) & (!count_bit(3) & \gen_4800~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_qdec(1),
	datac => count_bit(3),
	datad => \gen_4800~0_combout\,
	combout => \gen_4800~1_combout\);

-- Location: FF_X30_Y22_N13
\s_count4800[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \s_count4800[0]~2_combout\,
	clrn => \ALT_INV_gen_4800~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count4800(0));

-- Location: LCCOMB_X30_Y22_N2
\s_count4800[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count4800[1]~1_combout\ = s_count4800(1) $ (s_count4800(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_count4800(1),
	datad => s_count4800(0),
	combout => \s_count4800[1]~1_combout\);

-- Location: FF_X30_Y22_N3
\s_count4800[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \s_count4800[1]~1_combout\,
	clrn => \ALT_INV_gen_4800~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count4800(1));

-- Location: LCCOMB_X30_Y22_N30
\s_count4800[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count4800[2]~0_combout\ = s_count4800(2) $ (((s_count4800(0) & s_count4800(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count4800(0),
	datab => s_count4800(1),
	datac => s_count4800(2),
	combout => \s_count4800[2]~0_combout\);

-- Location: FF_X30_Y22_N31
\s_count4800[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \s_count4800[2]~0_combout\,
	clrn => \ALT_INV_gen_4800~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count4800(2));

-- Location: LCCOMB_X30_Y22_N24
\s_clk4800~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_clk4800~0_combout\ = (s_count4800(0) & (s_count4800(2) & s_count4800(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count4800(0),
	datab => s_count4800(2),
	datad => s_count4800(1),
	combout => \s_clk4800~0_combout\);

-- Location: LCCOMB_X29_Y22_N24
\s_clk4800~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_clk4800~1_combout\ = \s_clk4800~q\ $ (((\s_clk4800~0_combout\ & !\gen_4800~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_clk4800~q\,
	datab => \s_clk4800~0_combout\,
	datad => \gen_4800~1_combout\,
	combout => \s_clk4800~1_combout\);

-- Location: LCCOMB_X29_Y22_N0
\s_clk4800~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_clk4800~feeder_combout\ = \s_clk4800~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_clk4800~1_combout\,
	combout => \s_clk4800~feeder_combout\);

-- Location: FF_X29_Y22_N1
s_clk4800 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \s_clk4800~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_clk4800~q\);

-- Location: CLKCTRL_G11
\s_clk4800~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_clk4800~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_clk4800~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y22_N26
\count_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit~1_combout\ = (!count_bit(3) & (count_bit(2) $ (((count_bit(1) & count_bit(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(1),
	datab => count_bit(0),
	datac => count_bit(2),
	datad => count_bit(3),
	combout => \count_bit~1_combout\);

-- Location: FF_X30_Y22_N27
\count_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(2));

-- Location: LCCOMB_X30_Y22_N0
\gen_4800~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen_4800~0_combout\ = (!count_bit(2) & (!count_bit(0) & (!s_qdec(0) & !count_bit(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(2),
	datab => count_bit(0),
	datac => s_qdec(0),
	datad => count_bit(1),
	combout => \gen_4800~0_combout\);

-- Location: LCCOMB_X30_Y22_N14
\etat[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat[1]~0_combout\ = (etat(0) & ((etat(1)))) # (!etat(0) & (!count_bit(3) & !etat(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(3),
	datab => etat(0),
	datad => etat(1),
	combout => \etat[1]~0_combout\);

-- Location: LCCOMB_X30_Y22_N20
\etat[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat[1]~1_combout\ = (\etat[1]~0_combout\ & ((etat(1)) # ((s_qdec(1) & \gen_4800~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qdec(1),
	datab => \gen_4800~0_combout\,
	datac => etat(1),
	datad => \etat[1]~0_combout\,
	combout => \etat[1]~1_combout\);

-- Location: FF_X30_Y22_N21
\etat[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \etat[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => etat(1));

-- Location: LCCOMB_X30_Y22_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ((count_bit(3) & ((count_bit(2)) # (count_bit(1))))) # (!etat(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(2),
	datab => etat(0),
	datac => count_bit(1),
	datad => count_bit(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X30_Y22_N16
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (count_bit(3)) # (!s_qdec(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_bit(3),
	datad => s_qdec(1),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X30_Y22_N8
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (etat(1) & (((!\Mux2~0_combout\)))) # (!etat(1) & (\gen_4800~0_combout\ & (\Mux2~0_combout\ & !\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat(1),
	datab => \gen_4800~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: FF_X30_Y22_N9
\etat[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => etat(0));

-- Location: LCCOMB_X30_Y22_N6
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!etat(0) & etat(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => etat(0),
	datad => etat(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X31_Y21_N8
\ack~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack~0_combout\ = (etat_chaine(3) & (!etat_chaine(0))) # (!etat_chaine(3) & ((\ack~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_chaine(3),
	datab => etat_chaine(0),
	datad => \ack~q\,
	combout => \ack~0_combout\);

-- Location: FF_X31_Y21_N27
ack : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => \ack~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack~q\);

-- Location: LCCOMB_X31_Y21_N0
\etat_chaine[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_chaine[0]~1_combout\ = (etat_chaine(3) & (!\ack~q\)) # (!etat_chaine(3) & (((!etat_chaine(0) & \Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_chaine(3),
	datab => \ack~q\,
	datac => etat_chaine(0),
	datad => \Equal3~0_combout\,
	combout => \etat_chaine[0]~1_combout\);

-- Location: FF_X31_Y21_N1
\etat_chaine[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \etat_chaine[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => etat_chaine(0));

-- Location: LCCOMB_X31_Y21_N14
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!etat_chaine(3) & (etat_chaine(1) $ (etat_chaine(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_chaine(3),
	datac => etat_chaine(1),
	datad => etat_chaine(0),
	combout => \Mux5~0_combout\);

-- Location: FF_X31_Y21_N15
\etat_chaine[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => etat_chaine(1));

-- Location: LCCOMB_X31_Y21_N24
\etat_chaine[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_chaine[2]~2_combout\ = etat_chaine(2) $ (((etat_chaine(0) & etat_chaine(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => etat_chaine(0),
	datac => etat_chaine(2),
	datad => etat_chaine(1),
	combout => \etat_chaine[2]~2_combout\);

-- Location: FF_X31_Y21_N25
\etat_chaine[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \etat_chaine[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => etat_chaine(2));

-- Location: LCCOMB_X31_Y21_N6
\etat_chaine[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_chaine[3]~0_combout\ = (!etat_chaine(3) & (etat_chaine(2) & (etat_chaine(1) & etat_chaine(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_chaine(3),
	datab => etat_chaine(2),
	datac => etat_chaine(1),
	datad => etat_chaine(0),
	combout => \etat_chaine[3]~0_combout\);

-- Location: LCCOMB_X31_Y21_N22
\etat_chaine[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_chaine[3]~3_combout\ = (\etat_chaine[3]~0_combout\) # ((etat_chaine(3) & ((!\ack~q\) # (!etat_chaine(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \etat_chaine[3]~0_combout\,
	datab => etat_chaine(0),
	datac => etat_chaine(3),
	datad => \ack~q\,
	combout => \etat_chaine[3]~3_combout\);

-- Location: FF_X31_Y21_N23
\etat_chaine[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \etat_chaine[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => etat_chaine(3));

-- Location: LCCOMB_X31_Y21_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (etat_chaine(1) & (!etat_chaine(3) & ((!etat_chaine(2)) # (!etat_chaine(0))))) # (!etat_chaine(1) & ((etat_chaine(2) & (!etat_chaine(3))) # (!etat_chaine(2) & ((etat_chaine(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_chaine(3),
	datab => etat_chaine(0),
	datac => etat_chaine(1),
	datad => etat_chaine(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X31_Y21_N26
\chaine_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chaine_valid~0_combout\ = (etat_chaine(3) & (!etat_chaine(0) & (\ack~q\ & !etat_chaine(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_chaine(3),
	datab => etat_chaine(0),
	datac => \ack~q\,
	datad => etat_chaine(1),
	combout => \chaine_valid~0_combout\);

-- Location: LCCOMB_X31_Y21_N28
\chaine_valid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \chaine_valid~1_combout\ = (\chaine_valid~q\ & ((\Mux7~0_combout\) # ((!etat_chaine(2) & \chaine_valid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chaine_valid~q\,
	datab => etat_chaine(2),
	datac => \chaine_valid~0_combout\,
	datad => \Mux7~0_combout\,
	combout => \chaine_valid~1_combout\);

-- Location: LCCOMB_X31_Y21_N4
\chaine_valid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \chaine_valid~2_combout\ = (\chaine_valid~1_combout\) # ((!\Mux7~0_combout\ & \etat_chaine[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datac => \etat_chaine[3]~0_combout\,
	datad => \chaine_valid~1_combout\,
	combout => \chaine_valid~2_combout\);

-- Location: FF_X31_Y21_N5
chaine_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \chaine_valid~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chaine_valid~q\);

-- Location: LCCOMB_X31_Y22_N18
\s_qout[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_qout[9]~feeder_combout\ = s_qdec(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qdec(1),
	combout => \s_qout[9]~feeder_combout\);

-- Location: FF_X31_Y22_N19
\s_qout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \s_qout[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qout(9));

-- Location: LCCOMB_X31_Y22_N26
\s_qout[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_qout[8]~feeder_combout\ = s_qout(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(9),
	combout => \s_qout[8]~feeder_combout\);

-- Location: FF_X31_Y22_N27
\s_qout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \s_qout[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qout(8));

-- Location: LCCOMB_X31_Y22_N16
\s_qout[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_qout[7]~feeder_combout\ = s_qout(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_qout(8),
	combout => \s_qout[7]~feeder_combout\);

-- Location: FF_X31_Y22_N17
\s_qout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \s_qout[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qout(7));

-- Location: LCCOMB_X31_Y22_N24
\s_qout[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_qout[6]~feeder_combout\ = s_qout(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(7),
	combout => \s_qout[6]~feeder_combout\);

-- Location: FF_X31_Y22_N25
\s_qout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \s_qout[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qout(6));

-- Location: LCCOMB_X31_Y22_N20
\s_qout[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_qout[5]~feeder_combout\ = s_qout(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(6),
	combout => \s_qout[5]~feeder_combout\);

-- Location: FF_X31_Y22_N21
\s_qout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \s_qout[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qout(5));

-- Location: LCCOMB_X31_Y22_N14
\s_qout[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_qout[4]~feeder_combout\ = s_qout(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(5),
	combout => \s_qout[4]~feeder_combout\);

-- Location: FF_X31_Y22_N15
\s_qout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \s_qout[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qout(4));

-- Location: LCCOMB_X31_Y22_N4
\s_qout[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_qout[3]~feeder_combout\ = s_qout(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_qout(4),
	combout => \s_qout[3]~feeder_combout\);

-- Location: FF_X31_Y22_N5
\s_qout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \s_qout[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qout(3));

-- Location: LCCOMB_X31_Y22_N6
\s_qout[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_qout[2]~feeder_combout\ = s_qout(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_qout(3),
	combout => \s_qout[2]~feeder_combout\);

-- Location: FF_X31_Y22_N7
\s_qout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \s_qout[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qout(2));

-- Location: LCCOMB_X31_Y22_N2
\s_qout[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_qout[1]~feeder_combout\ = s_qout(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(2),
	combout => \s_qout[1]~feeder_combout\);

-- Location: FF_X31_Y22_N3
\s_qout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \s_qout[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_qout(1));

-- Location: LCCOMB_X31_Y22_N28
\Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal33~0_combout\ = (!s_qout(6) & (!s_qout(5) & (!s_qout(8) & !s_qout(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qout(6),
	datab => s_qout(5),
	datac => s_qout(8),
	datad => s_qout(7),
	combout => \Equal33~0_combout\);

-- Location: LCCOMB_X26_Y22_N20
\Equal34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal34~0_combout\ = (!s_qout(1) & (!s_qout(4) & (s_qout(2) & \Equal33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qout(1),
	datab => s_qout(4),
	datac => s_qout(2),
	datad => \Equal33~0_combout\,
	combout => \Equal34~0_combout\);

-- Location: LCCOMB_X26_Y22_N10
\BCD7SEGMENT~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~127_combout\ = (s_qout(4)) # ((s_qout(3)) # (!\Equal33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_qout(4),
	datac => s_qout(3),
	datad => \Equal33~0_combout\,
	combout => \BCD7SEGMENT~127_combout\);

-- Location: LCCOMB_X26_Y22_N28
\Equal33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal33~1_combout\ = (!s_qout(4) & \Equal33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_qout(4),
	datad => \Equal33~0_combout\,
	combout => \Equal33~1_combout\);

-- Location: LCCOMB_X26_Y22_N24
\Equal36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal36~0_combout\ = (!s_qout(1) & (!s_qout(2) & (\Equal33~1_combout\ & s_qout(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qout(1),
	datab => s_qout(2),
	datac => \Equal33~1_combout\,
	datad => s_qout(3),
	combout => \Equal36~0_combout\);

-- Location: LCCOMB_X46_Y18_N6
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = contador(0) $ (VCC)
-- \Add3~1\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X46_Y18_N0
\contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~0_combout\ = (!\Equal7~1_combout\ & \Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~1_combout\,
	datad => \Add3~0_combout\,
	combout => \contador~0_combout\);

-- Location: FF_X46_Y18_N1
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X46_Y18_N8
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (contador(1) & (!\Add3~1\)) # (!contador(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X46_Y18_N9
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X46_Y18_N10
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (contador(2) & (\Add3~3\ $ (GND))) # (!contador(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((contador(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: FF_X46_Y18_N11
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X46_Y18_N12
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (contador(3) & (!\Add3~5\)) # (!contador(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: FF_X46_Y18_N13
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X46_Y18_N14
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (contador(4) & (\Add3~7\ $ (GND))) # (!contador(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((contador(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X46_Y18_N4
\contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~6_combout\ = (\Add3~8_combout\ & !\Equal7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~8_combout\,
	datac => \Equal7~1_combout\,
	combout => \contador~6_combout\);

-- Location: FF_X46_Y18_N5
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X46_Y18_N16
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (contador(5) & (!\Add3~9\)) # (!contador(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!contador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: FF_X46_Y18_N17
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X46_Y18_N18
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (contador(6) & (\Add3~11\ $ (GND))) # (!contador(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((contador(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X46_Y18_N20
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (contador(7) & (!\Add3~13\)) # (!contador(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!contador(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: FF_X46_Y18_N21
\contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(7));

-- Location: LCCOMB_X46_Y18_N22
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (contador(8) & (\Add3~15\ $ (GND))) # (!contador(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((contador(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X47_Y18_N6
\contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~2_combout\ = (!\Equal7~1_combout\ & \Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~1_combout\,
	datad => \Add3~16_combout\,
	combout => \contador~2_combout\);

-- Location: FF_X47_Y18_N7
\contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(8));

-- Location: LCCOMB_X46_Y18_N24
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (contador(9) & (!\Add3~17\)) # (!contador(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!contador(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X45_Y18_N6
\contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~4_combout\ = (\Add3~18_combout\ & !\Equal7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~18_combout\,
	datad => \Equal7~1_combout\,
	combout => \contador~4_combout\);

-- Location: FF_X45_Y18_N7
\contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(9));

-- Location: LCCOMB_X46_Y18_N26
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (contador(10) & (\Add3~19\ $ (GND))) # (!contador(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((contador(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X46_Y18_N27
\contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(10));

-- Location: LCCOMB_X46_Y18_N28
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (contador(11) & (!\Add3~21\)) # (!contador(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!contador(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X46_Y18_N29
\contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(11));

-- Location: LCCOMB_X46_Y18_N30
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (contador(12) & (\Add3~23\ $ (GND))) # (!contador(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((contador(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: FF_X46_Y18_N31
\contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(12));

-- Location: LCCOMB_X46_Y17_N0
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (contador(13) & (!\Add3~25\)) # (!contador(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!contador(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: FF_X46_Y17_N1
\contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(13));

-- Location: LCCOMB_X46_Y17_N2
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (contador(14) & (\Add3~27\ $ (GND))) # (!contador(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((contador(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X46_Y17_N30
\contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~1_combout\ = (!\Equal7~1_combout\ & \Add3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~1_combout\,
	datad => \Add3~28_combout\,
	combout => \contador~1_combout\);

-- Location: FF_X46_Y17_N31
\contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(14));

-- Location: LCCOMB_X46_Y17_N4
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (contador(15) & (!\Add3~29\)) # (!contador(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!contador(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X45_Y18_N4
\contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~3_combout\ = (\Add3~30_combout\ & !\Equal7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~30_combout\,
	datad => \Equal7~1_combout\,
	combout => \contador~3_combout\);

-- Location: FF_X45_Y18_N5
\contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(15));

-- Location: LCCOMB_X45_Y18_N10
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (contador(9) & (contador(15) & (!contador(7) & !contador(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(9),
	datab => contador(15),
	datac => contador(7),
	datad => contador(13),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X47_Y18_N8
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!contador(3) & (contador(4) & (!contador(5) & contador(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(4),
	datac => contador(5),
	datad => contador(6),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X46_Y18_N2
\Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (!contador(1) & !contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => contador(0),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X46_Y17_N6
\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (contador(16) & (\Add3~31\ $ (GND))) # (!contador(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((contador(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: FF_X47_Y18_N29
\contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Add3~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(16));

-- Location: LCCOMB_X46_Y17_N8
\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (contador(17) & (!\Add3~33\)) # (!contador(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!contador(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X47_Y18_N22
\contador[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador[17]~feeder_combout\ = \Add3~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~34_combout\,
	combout => \contador[17]~feeder_combout\);

-- Location: FF_X47_Y18_N23
\contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \contador[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(17));

-- Location: LCCOMB_X47_Y18_N14
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (!contador(17) & (!contador(16) & (!contador(10) & !contador(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(17),
	datab => contador(16),
	datac => contador(10),
	datad => contador(11),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X46_Y17_N10
\Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (contador(18) & (\Add3~35\ $ (GND))) # (!contador(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((contador(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: FF_X46_Y17_N11
\contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(18));

-- Location: LCCOMB_X46_Y17_N12
\Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (contador(19) & (!\Add3~37\)) # (!contador(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!contador(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: FF_X46_Y17_N13
\contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(19));

-- Location: LCCOMB_X46_Y17_N14
\Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (contador(20) & (\Add3~39\ $ (GND))) # (!contador(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((contador(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: FF_X46_Y17_N15
\contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(20));

-- Location: LCCOMB_X46_Y17_N16
\Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (contador(21) & (!\Add3~41\)) # (!contador(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!contador(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: FF_X46_Y17_N17
\contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(21));

-- Location: LCCOMB_X46_Y17_N18
\Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (contador(22) & (\Add3~43\ $ (GND))) # (!contador(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((contador(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: FF_X46_Y17_N19
\contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(22));

-- Location: LCCOMB_X46_Y17_N20
\Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (contador(23) & (!\Add3~45\)) # (!contador(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!contador(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: FF_X46_Y17_N21
\contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(23));

-- Location: LCCOMB_X46_Y17_N22
\Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (contador(24) & (\Add3~47\ $ (GND))) # (!contador(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((contador(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: FF_X46_Y17_N23
\contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(24));

-- Location: LCCOMB_X46_Y17_N24
\Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = contador(25) $ (\Add3~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(25),
	cin => \Add3~49\,
	combout => \Add3~50_combout\);

-- Location: FF_X46_Y17_N25
\contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(25));

-- Location: LCCOMB_X46_Y17_N26
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!contador(23) & (!contador(22) & (!contador(24) & !contador(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(23),
	datab => contador(22),
	datac => contador(24),
	datad => contador(25),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X46_Y17_N28
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!contador(19) & (!contador(18) & (!contador(20) & !contador(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(19),
	datab => contador(18),
	datac => contador(20),
	datad => contador(21),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X47_Y18_N20
\Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~3_combout\ & (\Equal4~2_combout\ & (\Equal4~0_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~3_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal4~1_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X47_Y18_N16
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (contador(8) & (!contador(12) & (!contador(2) & contador(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(8),
	datab => contador(12),
	datac => contador(2),
	datad => contador(14),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X47_Y18_N30
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Equal6~0_combout\ & (\Equal7~0_combout\ & (\Equal4~4_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal7~0_combout\,
	datac => \Equal4~4_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X47_Y18_N10
\contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \contador~5_combout\ = (!\Equal7~1_combout\ & \Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~1_combout\,
	datad => \Add3~12_combout\,
	combout => \contador~5_combout\);

-- Location: FF_X47_Y18_N11
\contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(6));

-- Location: LCCOMB_X47_Y18_N0
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!contador(6) & (!contador(4) & (contador(5) & contador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datab => contador(4),
	datac => contador(5),
	datad => contador(3),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X45_Y18_N0
\Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (!contador(9) & (!contador(15) & (contador(7) & contador(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(9),
	datab => contador(15),
	datac => contador(7),
	datad => contador(13),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X47_Y18_N4
\Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (((!\Equal4~4_combout\) # (!\Equal4~5_combout\)) # (!\Equal5~0_combout\)) # (!\Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal4~5_combout\,
	datad => \Equal4~4_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X47_Y18_N26
\Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (contador(6) & (contador(12) & (contador(4) & !contador(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datab => contador(12),
	datac => contador(4),
	datad => contador(14),
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X47_Y18_N12
\Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (!contador(8) & (contador(2) & (\Equal4~6_combout\ & \Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(8),
	datab => contador(2),
	datac => \Equal4~6_combout\,
	datad => \Equal4~4_combout\,
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X47_Y18_N28
\Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (!contador(5) & !contador(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	datad => contador(3),
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X47_Y18_N18
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (((!\Equal4~7_combout\) # (!\Equal6~0_combout\)) # (!contador(3))) # (!contador(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(5),
	datab => contador(3),
	datac => \Equal6~0_combout\,
	datad => \Equal4~7_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X47_Y18_N24
\s_multiplex[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_multiplex[1]~0_combout\ = (!\Equal6~1_combout\) # (!\Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~2_combout\,
	datad => \Equal6~1_combout\,
	combout => \s_multiplex[1]~0_combout\);

-- Location: LCCOMB_X47_Y18_N2
\s_multiplex[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_multiplex[1]~1_combout\ = (\s_multiplex[1]~0_combout\) # ((\Equal4~7_combout\ & (\Equal4~8_combout\ & \Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~7_combout\,
	datab => \Equal4~8_combout\,
	datac => \Equal4~5_combout\,
	datad => \s_multiplex[1]~0_combout\,
	combout => \s_multiplex[1]~1_combout\);

-- Location: FF_X47_Y18_N5
\s_multiplex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Equal5~2_combout\,
	ena => \s_multiplex[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_multiplex(1));

-- Location: FF_X47_Y18_N25
\s_multiplex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_multiplex[1]~0_combout\,
	ena => \s_multiplex[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_multiplex(2));

-- Location: FF_X47_Y18_N19
\s_multiplex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Equal6~1_combout\,
	ena => \s_multiplex[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_multiplex(0));

-- Location: LCCOMB_X27_Y21_N30
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (s_multiplex(1) & (s_multiplex(2) & !s_multiplex(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_multiplex(1),
	datac => s_multiplex(2),
	datad => s_multiplex(0),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X26_Y22_N30
\BCD7SEGMENT~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~84_combout\ = (\BCD7SEGMENT~127_combout\ & (!\Equal36~0_combout\ & \Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~127_combout\,
	datab => \Equal36~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \BCD7SEGMENT~84_combout\);

-- Location: LCCOMB_X26_Y22_N14
\Unidad~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unidad~0_combout\ = (!s_qout(3) & (!s_qout(2) & (s_qout(4) & \Equal33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qout(3),
	datab => s_qout(2),
	datac => s_qout(4),
	datad => \Equal33~0_combout\,
	combout => \Unidad~0_combout\);

-- Location: LCCOMB_X26_Y22_N16
\Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal35~0_combout\ = (s_qout(1) & (!s_qout(4) & \Equal33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qout(1),
	datac => s_qout(4),
	datad => \Equal33~0_combout\,
	combout => \Equal35~0_combout\);

-- Location: LCCOMB_X27_Y21_N8
\BCD7SEGMENT~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~85_combout\ = (!\Unidad~0_combout\ & ((s_qout(2)) # ((!s_qout(3)) # (!\Equal35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidad~0_combout\,
	datab => s_qout(2),
	datac => \Equal35~0_combout\,
	datad => s_qout(3),
	combout => \BCD7SEGMENT~85_combout\);

-- Location: LCCOMB_X27_Y21_N14
\BCD7SEGMENT~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~86_combout\ = (\BCD7SEGMENT~84_combout\ & (\BCD7SEGMENT~85_combout\ & ((!s_qout(3)) # (!\Equal34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal34~0_combout\,
	datab => \BCD7SEGMENT~84_combout\,
	datac => \BCD7SEGMENT~85_combout\,
	datad => s_qout(3),
	combout => \BCD7SEGMENT~86_combout\);

-- Location: LCCOMB_X32_Y22_N4
\data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[3]~feeder_combout\ = s_qout(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(4),
	combout => \data[3]~feeder_combout\);

-- Location: FF_X32_Y22_N5
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \data[3]~feeder_combout\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X31_Y21_N30
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (etat_chaine(1) & (!etat_chaine(2) & etat_chaine(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_chaine(1),
	datab => etat_chaine(2),
	datad => etat_chaine(0),
	combout => \Mux10~0_combout\);

-- Location: FF_X31_Y21_N21
\centaine[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(3),
	sload => VCC,
	ena => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centaine(3));

-- Location: LCCOMB_X31_Y22_N12
\data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[1]~feeder_combout\ = s_qout(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(2),
	combout => \data[1]~feeder_combout\);

-- Location: FF_X31_Y22_N13
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \data[1]~feeder_combout\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: FF_X32_Y21_N25
\centaine[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(1),
	sload => VCC,
	ena => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centaine(1));

-- Location: LCCOMB_X31_Y22_N8
\data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[6]~feeder_combout\ = s_qout(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(7),
	combout => \data[6]~feeder_combout\);

-- Location: FF_X31_Y22_N9
\data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \data[6]~feeder_combout\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(6));

-- Location: FF_X31_Y21_N9
\centaine[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(6),
	sload => VCC,
	ena => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centaine(6));

-- Location: LCCOMB_X31_Y22_N0
\data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[5]~feeder_combout\ = s_qout(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(6),
	combout => \data[5]~feeder_combout\);

-- Location: FF_X31_Y22_N1
\data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \data[5]~feeder_combout\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(5));

-- Location: FF_X31_Y21_N17
\centaine[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(5),
	sload => VCC,
	ena => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centaine(5));

-- Location: FF_X31_Y22_N29
\data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => s_qout(8),
	sload => VCC,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(7));

-- Location: FF_X31_Y21_N3
\centaine[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(7),
	sload => VCC,
	ena => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centaine(7));

-- Location: LCCOMB_X31_Y22_N22
\data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[4]~feeder_combout\ = s_qout(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(5),
	combout => \data[4]~feeder_combout\);

-- Location: FF_X31_Y22_N23
\data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \data[4]~feeder_combout\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(4));

-- Location: FF_X31_Y21_N31
\centaine[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(4),
	sload => VCC,
	ena => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centaine(4));

-- Location: LCCOMB_X31_Y21_N2
\Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (!centaine(6) & (!centaine(5) & (!centaine(7) & !centaine(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(6),
	datab => centaine(5),
	datac => centaine(7),
	datad => centaine(4),
	combout => \Equal13~0_combout\);

-- Location: FF_X31_Y22_N31
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => s_qout(3),
	sload => VCC,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: FF_X31_Y21_N11
\centaine[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(2),
	sload => VCC,
	ena => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centaine(2));

-- Location: LCCOMB_X32_Y21_N22
\BCD7SEGMENT~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~124_combout\ = (centaine(3)) # ((centaine(1)) # ((centaine(2)) # (!\Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(3),
	datab => centaine(1),
	datac => \Equal13~0_combout\,
	datad => centaine(2),
	combout => \BCD7SEGMENT~124_combout\);

-- Location: LCCOMB_X32_Y21_N12
\Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~1_combout\ = (!centaine(3) & \Equal13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(3),
	datab => \Equal13~0_combout\,
	combout => \Equal13~1_combout\);

-- Location: LCCOMB_X31_Y22_N10
\data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data[0]~feeder_combout\ = s_qout(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_qout(1),
	combout => \data[0]~feeder_combout\);

-- Location: FF_X31_Y22_N11
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \data[0]~feeder_combout\,
	ena => \Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X31_Y22_N30
\centaine[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \centaine[0]~0_combout\ = !data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(0),
	combout => \centaine[0]~0_combout\);

-- Location: FF_X31_Y21_N19
\centaine[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => \centaine[0]~0_combout\,
	sload => VCC,
	ena => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => centaine(0));

-- Location: LCCOMB_X31_Y21_N10
\Equal18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (\Equal13~1_combout\ & (centaine(0) & (!centaine(2) & centaine(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => centaine(0),
	datac => centaine(2),
	datad => centaine(1),
	combout => \Equal18~0_combout\);

-- Location: LCCOMB_X32_Y21_N6
\Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (!centaine(2) & (centaine(1) & (\Equal13~1_combout\ & !centaine(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(2),
	datab => centaine(1),
	datac => \Equal13~1_combout\,
	datad => centaine(0),
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X32_Y21_N18
\Centena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Centena~0_combout\ = (centaine(3) & (!centaine(1) & (\Equal13~0_combout\ & !centaine(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(3),
	datab => centaine(1),
	datac => \Equal13~0_combout\,
	datad => centaine(2),
	combout => \Centena~0_combout\);

-- Location: LCCOMB_X32_Y21_N4
\BCD7SEGMENT~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~76_combout\ = (centaine(3)) # (centaine(1) $ (centaine(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(3),
	datab => centaine(1),
	datad => centaine(0),
	combout => \BCD7SEGMENT~76_combout\);

-- Location: LCCOMB_X32_Y21_N14
\BCD7SEGMENT~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~77_combout\ = (!\Centena~0_combout\ & (((\BCD7SEGMENT~76_combout\) # (!centaine(2))) # (!\Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Centena~0_combout\,
	datab => \Equal13~0_combout\,
	datac => \BCD7SEGMENT~76_combout\,
	datad => centaine(2),
	combout => \BCD7SEGMENT~77_combout\);

-- Location: LCCOMB_X28_Y21_N8
\BCD7SEGMENT~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~78_combout\ = (!\Equal18~0_combout\ & (!\Equal17~0_combout\ & \BCD7SEGMENT~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datab => \Equal17~0_combout\,
	datad => \BCD7SEGMENT~77_combout\,
	combout => \BCD7SEGMENT~78_combout\);

-- Location: LCCOMB_X27_Y21_N24
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (s_multiplex(1) & (!s_multiplex(2) & s_multiplex(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_multiplex(1),
	datac => s_multiplex(2),
	datad => s_multiplex(0),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X32_Y21_N20
\Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = (centaine(2) & (!centaine(1) & (\Equal13~1_combout\ & centaine(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(2),
	datab => centaine(1),
	datac => \Equal13~1_combout\,
	datad => centaine(0),
	combout => \Equal16~0_combout\);

-- Location: LCCOMB_X28_Y21_N14
\BCD7SEGMENT~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~79_combout\ = (\Equal10~0_combout\ & (((\BCD7SEGMENT~78_combout\ & !\Equal16~0_combout\)) # (!\BCD7SEGMENT~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~124_combout\,
	datab => \BCD7SEGMENT~78_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal16~0_combout\,
	combout => \BCD7SEGMENT~79_combout\);

-- Location: LCCOMB_X26_Y22_N4
\BCD7SEGMENT~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~126_combout\ = ((\Equal33~1_combout\ & (!s_qout(2) & !s_qout(3)))) # (!\Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal33~1_combout\,
	datab => \Equal8~0_combout\,
	datac => s_qout(2),
	datad => s_qout(3),
	combout => \BCD7SEGMENT~126_combout\);

-- Location: LCCOMB_X27_Y21_N0
\BCD7SEGMENT~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~82_combout\ = (s_multiplex(1) $ (!s_multiplex(2))) # (!s_multiplex(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_multiplex(1),
	datac => s_multiplex(2),
	datad => s_multiplex(0),
	combout => \BCD7SEGMENT~82_combout\);

-- Location: LCCOMB_X26_Y22_N26
\BCD7SEGMENT~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~83_combout\ = (\BCD7SEGMENT~126_combout\ & (\BCD7SEGMENT~82_combout\ & ((!\Equal8~0_combout\) # (!\BCD7SEGMENT~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~127_combout\,
	datab => \Equal8~0_combout\,
	datac => \BCD7SEGMENT~126_combout\,
	datad => \BCD7SEGMENT~82_combout\,
	combout => \BCD7SEGMENT~83_combout\);

-- Location: LCCOMB_X30_Y21_N2
\dizaine[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dizaine[2]~feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(2),
	combout => \dizaine[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y21_N20
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (etat_chaine(2) & (!etat_chaine(1) & etat_chaine(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_chaine(2),
	datab => etat_chaine(1),
	datad => etat_chaine(0),
	combout => \Mux16~0_combout\);

-- Location: FF_X30_Y21_N3
\dizaine[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \dizaine[2]~feeder_combout\,
	ena => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dizaine(2));

-- Location: LCCOMB_X32_Y21_N26
\dizaine[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dizaine[1]~0_combout\ = !data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	combout => \dizaine[1]~0_combout\);

-- Location: FF_X32_Y21_N27
\dizaine[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \dizaine[1]~0_combout\,
	ena => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dizaine(1));

-- Location: FF_X32_Y21_N13
\dizaine[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(6),
	sload => VCC,
	ena => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dizaine(6));

-- Location: LCCOMB_X30_Y21_N0
\dizaine[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dizaine[4]~feeder_combout\ = data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(4),
	combout => \dizaine[4]~feeder_combout\);

-- Location: FF_X30_Y21_N1
\dizaine[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \dizaine[4]~feeder_combout\,
	ena => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dizaine(4));

-- Location: FF_X32_Y21_N1
\dizaine[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(5),
	sload => VCC,
	ena => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dizaine(5));

-- Location: FF_X32_Y21_N11
\dizaine[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(7),
	sload => VCC,
	ena => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dizaine(7));

-- Location: LCCOMB_X32_Y21_N0
\Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (!dizaine(6) & (!dizaine(4) & (!dizaine(5) & !dizaine(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(6),
	datab => dizaine(4),
	datac => dizaine(5),
	datad => dizaine(7),
	combout => \Equal23~0_combout\);

-- Location: FF_X32_Y21_N5
\dizaine[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => data(3),
	sload => VCC,
	ena => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dizaine(3));

-- Location: LCCOMB_X29_Y21_N10
\BCD7SEGMENT~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~125_combout\ = (!dizaine(2) & (dizaine(1) & (\Equal23~0_combout\ & !dizaine(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(1),
	datac => \Equal23~0_combout\,
	datad => dizaine(3),
	combout => \BCD7SEGMENT~125_combout\);

-- Location: LCCOMB_X30_Y21_N28
\dizaine[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dizaine[0]~feeder_combout\ = data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(0),
	combout => \dizaine[0]~feeder_combout\);

-- Location: FF_X30_Y21_N29
\dizaine[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \dizaine[0]~feeder_combout\,
	ena => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dizaine(0));

-- Location: LCCOMB_X29_Y21_N22
\Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~1_combout\ = (\Equal23~0_combout\ & !dizaine(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal23~0_combout\,
	datad => dizaine(3),
	combout => \Equal23~1_combout\);

-- Location: LCCOMB_X29_Y21_N24
\Equal26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal26~0_combout\ = (dizaine(2) & (!dizaine(0) & (\Equal23~1_combout\ & dizaine(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(0),
	datac => \Equal23~1_combout\,
	datad => dizaine(1),
	combout => \Equal26~0_combout\);

-- Location: LCCOMB_X27_Y21_N10
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!s_multiplex(1) & (s_multiplex(2) & s_multiplex(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_multiplex(1),
	datac => s_multiplex(2),
	datad => s_multiplex(0),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X29_Y21_N26
\Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal28~0_combout\ = (!dizaine(2) & (!dizaine(0) & (\Equal23~1_combout\ & !dizaine(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(0),
	datac => \Equal23~1_combout\,
	datad => dizaine(1),
	combout => \Equal28~0_combout\);

-- Location: LCCOMB_X29_Y21_N8
\Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal27~0_combout\ = (!dizaine(2) & (dizaine(0) & (\Equal23~1_combout\ & !dizaine(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(0),
	datac => \Equal23~1_combout\,
	datad => dizaine(1),
	combout => \Equal27~0_combout\);

-- Location: LCCOMB_X32_Y22_N18
\BCD7SEGMENT~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~71_combout\ = (dizaine(2) & ((dizaine(3)) # (dizaine(1) $ (dizaine(0))))) # (!dizaine(2) & (((!dizaine(3))) # (!dizaine(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(1),
	datac => dizaine(3),
	datad => dizaine(0),
	combout => \BCD7SEGMENT~71_combout\);

-- Location: LCCOMB_X32_Y22_N24
\BCD7SEGMENT~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~69_combout\ = (dizaine(4)) # (\BCD7SEGMENT~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dizaine(4),
	datad => \BCD7SEGMENT~71_combout\,
	combout => \BCD7SEGMENT~69_combout\);

-- Location: LCCOMB_X32_Y22_N26
\BCD7SEGMENT~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~133_combout\ = (dizaine(6)) # ((dizaine(5)) # ((dizaine(7)) # (\BCD7SEGMENT~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(6),
	datab => dizaine(5),
	datac => dizaine(7),
	datad => \BCD7SEGMENT~69_combout\,
	combout => \BCD7SEGMENT~133_combout\);

-- Location: LCCOMB_X29_Y21_N18
\BCD7SEGMENT~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~80_combout\ = (!\Equal28~0_combout\ & (!\Equal27~0_combout\ & \BCD7SEGMENT~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal28~0_combout\,
	datac => \Equal27~0_combout\,
	datad => \BCD7SEGMENT~133_combout\,
	combout => \BCD7SEGMENT~80_combout\);

-- Location: LCCOMB_X29_Y21_N16
\BCD7SEGMENT~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~81_combout\ = (\Equal9~0_combout\ & ((\BCD7SEGMENT~125_combout\) # ((!\Equal26~0_combout\ & \BCD7SEGMENT~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~125_combout\,
	datab => \Equal26~0_combout\,
	datac => \Equal9~0_combout\,
	datad => \BCD7SEGMENT~80_combout\,
	combout => \BCD7SEGMENT~81_combout\);

-- Location: LCCOMB_X28_Y21_N28
\BCD7SEGMENT~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~87_combout\ = (\BCD7SEGMENT~86_combout\) # ((\BCD7SEGMENT~79_combout\) # ((\BCD7SEGMENT~83_combout\) # (\BCD7SEGMENT~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~86_combout\,
	datab => \BCD7SEGMENT~79_combout\,
	datac => \BCD7SEGMENT~83_combout\,
	datad => \BCD7SEGMENT~81_combout\,
	combout => \BCD7SEGMENT~87_combout\);

-- Location: LCCOMB_X27_Y22_N16
\Equal39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal39~0_combout\ = (!s_qout(2) & !s_qout(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_qout(2),
	datad => s_qout(3),
	combout => \Equal39~0_combout\);

-- Location: LCCOMB_X26_Y22_N22
\Equal40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal40~0_combout\ = (s_qout(1)) # (((s_qout(4)) # (!\Equal33~0_combout\)) # (!\Equal39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qout(1),
	datab => \Equal39~0_combout\,
	datac => s_qout(4),
	datad => \Equal33~0_combout\,
	combout => \Equal40~0_combout\);

-- Location: LCCOMB_X26_Y22_N8
\BCD7SEGMENT~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~88_combout\ = (\BCD7SEGMENT~82_combout\ & (((!\BCD7SEGMENT~127_combout\ & \Equal40~0_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~127_combout\,
	datab => \Equal8~0_combout\,
	datac => \Equal40~0_combout\,
	datad => \BCD7SEGMENT~82_combout\,
	combout => \BCD7SEGMENT~88_combout\);

-- Location: LCCOMB_X32_Y21_N24
\BCD7SEGMENT~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~128_combout\ = ((centaine(3)) # ((centaine(2)) # (!centaine(1)))) # (!\Equal13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~0_combout\,
	datab => centaine(3),
	datac => centaine(1),
	datad => centaine(2),
	combout => \BCD7SEGMENT~128_combout\);

-- Location: LCCOMB_X32_Y21_N8
\Equal19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~1_combout\ = (!centaine(2) & (!centaine(1) & (\Equal13~1_combout\ & !centaine(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(2),
	datab => centaine(1),
	datac => \Equal13~1_combout\,
	datad => centaine(0),
	combout => \Equal19~1_combout\);

-- Location: LCCOMB_X32_Y21_N2
\BCD7SEGMENT~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~91_combout\ = ((\Equal19~1_combout\) # ((\BCD7SEGMENT~77_combout\ & !\Equal16~0_combout\))) # (!\BCD7SEGMENT~128_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~128_combout\,
	datab => \Equal19~1_combout\,
	datac => \BCD7SEGMENT~77_combout\,
	datad => \Equal16~0_combout\,
	combout => \BCD7SEGMENT~91_combout\);

-- Location: LCCOMB_X29_Y21_N20
\Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal29~0_combout\ = (!dizaine(2) & dizaine(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datad => dizaine(1),
	combout => \Equal29~0_combout\);

-- Location: LCCOMB_X29_Y21_N14
\BCD7SEGMENT~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~90_combout\ = (\Equal9~0_combout\ & (((dizaine(0)) # (!\Equal29~0_combout\)) # (!\Equal23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~1_combout\,
	datab => \Equal29~0_combout\,
	datac => \Equal9~0_combout\,
	datad => dizaine(0),
	combout => \BCD7SEGMENT~90_combout\);

-- Location: LCCOMB_X31_Y21_N16
\Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = (!centaine(2) & !centaine(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(2),
	datad => centaine(1),
	combout => \Equal19~0_combout\);

-- Location: LCCOMB_X30_Y21_N10
\BCD7SEGMENT~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~89_combout\ = (\Equal10~0_combout\ & (((!centaine(0)) # (!\Equal13~1_combout\)) # (!\Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal13~1_combout\,
	datac => \Equal10~0_combout\,
	datad => centaine(0),
	combout => \BCD7SEGMENT~89_combout\);

-- Location: LCCOMB_X32_Y22_N16
\BCD7SEGMENT~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~44_combout\ = (dizaine(2) & ((dizaine(3)) # ((!dizaine(1) & dizaine(0))))) # (!dizaine(2) & (((!dizaine(3))) # (!dizaine(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(1),
	datac => dizaine(3),
	datad => dizaine(0),
	combout => \BCD7SEGMENT~44_combout\);

-- Location: LCCOMB_X32_Y22_N30
\BCD7SEGMENT~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~42_combout\ = (dizaine(4)) # (\BCD7SEGMENT~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dizaine(4),
	datad => \BCD7SEGMENT~44_combout\,
	combout => \BCD7SEGMENT~42_combout\);

-- Location: LCCOMB_X32_Y21_N10
\BCD7SEGMENT~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~131_combout\ = (\BCD7SEGMENT~42_combout\) # ((dizaine(5)) # ((dizaine(7)) # (dizaine(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~42_combout\,
	datab => dizaine(5),
	datac => dizaine(7),
	datad => dizaine(6),
	combout => \BCD7SEGMENT~131_combout\);

-- Location: LCCOMB_X28_Y21_N18
\BCD7SEGMENT~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~92_combout\ = (\BCD7SEGMENT~91_combout\ & ((\BCD7SEGMENT~89_combout\) # ((\BCD7SEGMENT~90_combout\ & \BCD7SEGMENT~131_combout\)))) # (!\BCD7SEGMENT~91_combout\ & (\BCD7SEGMENT~90_combout\ & ((\BCD7SEGMENT~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~91_combout\,
	datab => \BCD7SEGMENT~90_combout\,
	datac => \BCD7SEGMENT~89_combout\,
	datad => \BCD7SEGMENT~131_combout\,
	combout => \BCD7SEGMENT~92_combout\);

-- Location: LCCOMB_X27_Y21_N20
\BCD7SEGMENT~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~93_combout\ = (\BCD7SEGMENT~86_combout\) # ((\BCD7SEGMENT~88_combout\) # (\BCD7SEGMENT~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD7SEGMENT~86_combout\,
	datac => \BCD7SEGMENT~88_combout\,
	datad => \BCD7SEGMENT~92_combout\,
	combout => \BCD7SEGMENT~93_combout\);

-- Location: LCCOMB_X29_Y21_N30
\Decena[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decena[4]~0_combout\ = (!dizaine(2) & (dizaine(1) & (\Equal23~0_combout\ & dizaine(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(1),
	datac => \Equal23~0_combout\,
	datad => dizaine(3),
	combout => \Decena[4]~0_combout\);

-- Location: LCCOMB_X29_Y21_N4
\Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = (dizaine(2) & (!dizaine(0) & (\Equal23~0_combout\ & !dizaine(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(0),
	datac => \Equal23~0_combout\,
	datad => dizaine(3),
	combout => \Equal24~0_combout\);

-- Location: LCCOMB_X29_Y21_N12
\BCD7SEGMENT~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~96_combout\ = (\BCD7SEGMENT~90_combout\ & ((dizaine(1)) # (!\Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD7SEGMENT~90_combout\,
	datac => \Equal24~0_combout\,
	datad => dizaine(1),
	combout => \BCD7SEGMENT~96_combout\);

-- Location: LCCOMB_X29_Y21_N6
\BCD7SEGMENT~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~97_combout\ = (!\Equal28~0_combout\ & (\BCD7SEGMENT~96_combout\ & ((dizaine(0)) # (!\Decena[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decena[4]~0_combout\,
	datab => dizaine(0),
	datac => \Equal28~0_combout\,
	datad => \BCD7SEGMENT~96_combout\,
	combout => \BCD7SEGMENT~97_combout\);

-- Location: LCCOMB_X30_Y21_N24
\BCD7SEGMENT~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~99_combout\ = (!\BCD7SEGMENT~82_combout\ & (!\Equal9~0_combout\ & ((!\Centena~0_combout\) # (!centaine(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~82_combout\,
	datab => centaine(0),
	datac => \Equal9~0_combout\,
	datad => \Centena~0_combout\,
	combout => \BCD7SEGMENT~99_combout\);

-- Location: LCCOMB_X26_Y22_N6
\Unidad[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unidad[4]~1_combout\ = (s_qout(1)) # (((!\Equal33~0_combout\) # (!s_qout(4))) # (!\Equal39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qout(1),
	datab => \Equal39~0_combout\,
	datac => s_qout(4),
	datad => \Equal33~0_combout\,
	combout => \Unidad[4]~1_combout\);

-- Location: LCCOMB_X26_Y22_N12
\BCD7SEGMENT~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~94_combout\ = (\Unidad[4]~1_combout\ & (\Equal40~0_combout\ & !\Equal34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unidad[4]~1_combout\,
	datac => \Equal40~0_combout\,
	datad => \Equal34~0_combout\,
	combout => \BCD7SEGMENT~94_combout\);

-- Location: LCCOMB_X26_Y22_N18
\BCD7SEGMENT~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~95_combout\ = (\BCD7SEGMENT~82_combout\ & ((\BCD7SEGMENT~94_combout\) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~94_combout\,
	datab => \Equal8~0_combout\,
	datad => \BCD7SEGMENT~82_combout\,
	combout => \BCD7SEGMENT~95_combout\);

-- Location: LCCOMB_X32_Y21_N28
\BCD7SEGMENT~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~98_combout\ = (((centaine(2) & !centaine(1))) # (!centaine(0))) # (!\Equal13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(2),
	datab => centaine(1),
	datac => \Equal13~1_combout\,
	datad => centaine(0),
	combout => \BCD7SEGMENT~98_combout\);

-- Location: LCCOMB_X29_Y21_N0
\BCD7SEGMENT~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~100_combout\ = (\BCD7SEGMENT~97_combout\) # ((\BCD7SEGMENT~95_combout\) # ((\BCD7SEGMENT~99_combout\ & \BCD7SEGMENT~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~97_combout\,
	datab => \BCD7SEGMENT~99_combout\,
	datac => \BCD7SEGMENT~95_combout\,
	datad => \BCD7SEGMENT~98_combout\,
	combout => \BCD7SEGMENT~100_combout\);

-- Location: LCCOMB_X29_Y21_N2
\BCD7SEGMENT~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~106_combout\ = ((dizaine(2) $ (!dizaine(0))) # (!dizaine(1))) # (!\Equal23~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(0),
	datac => \Equal23~1_combout\,
	datad => dizaine(1),
	combout => \BCD7SEGMENT~106_combout\);

-- Location: LCCOMB_X28_Y21_N20
\BCD7SEGMENT~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~107_combout\ = (\BCD7SEGMENT~90_combout\ & ((\BCD7SEGMENT~80_combout\) # (!\BCD7SEGMENT~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~106_combout\,
	datac => \BCD7SEGMENT~90_combout\,
	datad => \BCD7SEGMENT~80_combout\,
	combout => \BCD7SEGMENT~107_combout\);

-- Location: LCCOMB_X31_Y21_N18
\BCD7SEGMENT~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~104_combout\ = ((centaine(1)) # (centaine(0) $ (centaine(2)))) # (!\Equal13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal13~1_combout\,
	datab => centaine(1),
	datac => centaine(0),
	datad => centaine(2),
	combout => \BCD7SEGMENT~104_combout\);

-- Location: LCCOMB_X28_Y21_N24
\BCD7SEGMENT~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~103_combout\ = (!\Equal17~0_combout\ & \BCD7SEGMENT~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal17~0_combout\,
	datad => \BCD7SEGMENT~77_combout\,
	combout => \BCD7SEGMENT~103_combout\);

-- Location: LCCOMB_X28_Y21_N26
\BCD7SEGMENT~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~105_combout\ = (\BCD7SEGMENT~89_combout\ & (((\BCD7SEGMENT~103_combout\ & !\Equal18~0_combout\)) # (!\BCD7SEGMENT~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~89_combout\,
	datab => \BCD7SEGMENT~104_combout\,
	datac => \BCD7SEGMENT~103_combout\,
	datad => \Equal18~0_combout\,
	combout => \BCD7SEGMENT~105_combout\);

-- Location: LCCOMB_X30_Y21_N22
\BCD7SEGMENT~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~101_combout\ = (s_qout(3)) # (((!s_qout(2) & s_qout(1))) # (!\Equal33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qout(3),
	datab => s_qout(2),
	datac => s_qout(1),
	datad => \Equal33~1_combout\,
	combout => \BCD7SEGMENT~101_combout\);

-- Location: LCCOMB_X27_Y21_N22
\BCD7SEGMENT~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~102_combout\ = (\BCD7SEGMENT~82_combout\ & (!\BCD7SEGMENT~84_combout\ & ((\BCD7SEGMENT~101_combout\) # (!\Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \BCD7SEGMENT~82_combout\,
	datac => \BCD7SEGMENT~84_combout\,
	datad => \BCD7SEGMENT~101_combout\,
	combout => \BCD7SEGMENT~102_combout\);

-- Location: LCCOMB_X28_Y21_N10
\BCD7SEGMENT~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~108_combout\ = (\BCD7SEGMENT~86_combout\) # ((\BCD7SEGMENT~107_combout\) # ((\BCD7SEGMENT~105_combout\) # (\BCD7SEGMENT~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~86_combout\,
	datab => \BCD7SEGMENT~107_combout\,
	datac => \BCD7SEGMENT~105_combout\,
	datad => \BCD7SEGMENT~102_combout\,
	combout => \BCD7SEGMENT~108_combout\);

-- Location: LCCOMB_X27_Y21_N12
\BCD7SEGMENT~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~111_combout\ = ((\Equal34~0_combout\ & !s_qout(3))) # (!\Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal34~0_combout\,
	datad => s_qout(3),
	combout => \BCD7SEGMENT~111_combout\);

-- Location: LCCOMB_X27_Y21_N26
\BCD7SEGMENT~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~112_combout\ = (\BCD7SEGMENT~111_combout\ & (!\BCD7SEGMENT~84_combout\ & \BCD7SEGMENT~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~111_combout\,
	datac => \BCD7SEGMENT~84_combout\,
	datad => \BCD7SEGMENT~82_combout\,
	combout => \BCD7SEGMENT~112_combout\);

-- Location: LCCOMB_X27_Y21_N16
\BCD7SEGMENT~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~109_combout\ = (\Equal34~0_combout\) # ((s_qout(2) & \Equal35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_qout(2),
	datac => \Equal35~0_combout\,
	datad => \Equal34~0_combout\,
	combout => \BCD7SEGMENT~109_combout\);

-- Location: LCCOMB_X27_Y21_N18
\BCD7SEGMENT~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~110_combout\ = (\BCD7SEGMENT~85_combout\ & (\BCD7SEGMENT~84_combout\ & ((!s_qout(3)) # (!\BCD7SEGMENT~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~109_combout\,
	datab => \BCD7SEGMENT~85_combout\,
	datac => \BCD7SEGMENT~84_combout\,
	datad => s_qout(3),
	combout => \BCD7SEGMENT~110_combout\);

-- Location: LCCOMB_X32_Y22_N2
\BCD7SEGMENT~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~30_combout\ = (dizaine(2) & (((dizaine(3))))) # (!dizaine(2) & (!dizaine(1) & ((dizaine(3)) # (!dizaine(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(1),
	datac => dizaine(3),
	datad => dizaine(0),
	combout => \BCD7SEGMENT~30_combout\);

-- Location: LCCOMB_X32_Y22_N20
\BCD7SEGMENT~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~28_combout\ = (dizaine(4)) # (\BCD7SEGMENT~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dizaine(4),
	datad => \BCD7SEGMENT~30_combout\,
	combout => \BCD7SEGMENT~28_combout\);

-- Location: LCCOMB_X32_Y22_N14
\BCD7SEGMENT~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~25_combout\ = (dizaine(6)) # ((dizaine(5)) # ((dizaine(7)) # (\BCD7SEGMENT~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(6),
	datab => dizaine(5),
	datac => dizaine(7),
	datad => \BCD7SEGMENT~28_combout\,
	combout => \BCD7SEGMENT~25_combout\);

-- Location: LCCOMB_X27_Y21_N4
\BCD7SEGMENT~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~130_combout\ = (!s_multiplex(1) & (\BCD7SEGMENT~25_combout\ & (s_multiplex(2) & s_multiplex(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_multiplex(1),
	datab => \BCD7SEGMENT~25_combout\,
	datac => s_multiplex(2),
	datad => s_multiplex(0),
	combout => \BCD7SEGMENT~130_combout\);

-- Location: LCCOMB_X30_Y21_N12
\BCD7SEGMENT~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~129_combout\ = (\Equal10~0_combout\ & (((centaine(3)) # (!\Equal13~0_combout\)) # (!\Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal10~0_combout\,
	datac => \Equal13~0_combout\,
	datad => centaine(3),
	combout => \BCD7SEGMENT~129_combout\);

-- Location: LCCOMB_X32_Y21_N30
\BCD7SEGMENT~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~113_combout\ = ((centaine(1) $ (!centaine(0))) # (!\Equal13~1_combout\)) # (!centaine(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(2),
	datab => centaine(1),
	datac => \Equal13~1_combout\,
	datad => centaine(0),
	combout => \BCD7SEGMENT~113_combout\);

-- Location: LCCOMB_X28_Y21_N16
\BCD7SEGMENT~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~114_combout\ = (\BCD7SEGMENT~129_combout\ & ((\Equal18~0_combout\) # ((\BCD7SEGMENT~113_combout\ & \BCD7SEGMENT~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~129_combout\,
	datab => \BCD7SEGMENT~113_combout\,
	datac => \BCD7SEGMENT~103_combout\,
	datad => \Equal18~0_combout\,
	combout => \BCD7SEGMENT~114_combout\);

-- Location: LCCOMB_X28_Y21_N6
\BCD7SEGMENT~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~115_combout\ = (\BCD7SEGMENT~112_combout\) # ((\BCD7SEGMENT~110_combout\) # ((\BCD7SEGMENT~130_combout\) # (\BCD7SEGMENT~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~112_combout\,
	datab => \BCD7SEGMENT~110_combout\,
	datac => \BCD7SEGMENT~130_combout\,
	datad => \BCD7SEGMENT~114_combout\,
	combout => \BCD7SEGMENT~115_combout\);

-- Location: LCCOMB_X32_Y22_N12
\BCD7SEGMENT~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~57_combout\ = (dizaine(2) & ((dizaine(3)) # (dizaine(1) $ (!dizaine(0))))) # (!dizaine(2) & (!dizaine(1) & (dizaine(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(1),
	datac => dizaine(3),
	datad => dizaine(0),
	combout => \BCD7SEGMENT~57_combout\);

-- Location: LCCOMB_X32_Y22_N10
\BCD7SEGMENT~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~55_combout\ = (dizaine(4)) # (\BCD7SEGMENT~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dizaine(4),
	datad => \BCD7SEGMENT~57_combout\,
	combout => \BCD7SEGMENT~55_combout\);

-- Location: LCCOMB_X32_Y22_N28
\BCD7SEGMENT~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~52_combout\ = (dizaine(6)) # ((dizaine(5)) # ((dizaine(7)) # (\BCD7SEGMENT~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(6),
	datab => dizaine(5),
	datac => dizaine(7),
	datad => \BCD7SEGMENT~55_combout\,
	combout => \BCD7SEGMENT~52_combout\);

-- Location: LCCOMB_X27_Y21_N6
\BCD7SEGMENT~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~132_combout\ = (!s_multiplex(1) & (\BCD7SEGMENT~52_combout\ & (s_multiplex(2) & s_multiplex(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_multiplex(1),
	datab => \BCD7SEGMENT~52_combout\,
	datac => s_multiplex(2),
	datad => s_multiplex(0),
	combout => \BCD7SEGMENT~132_combout\);

-- Location: LCCOMB_X30_Y21_N8
\BCD7SEGMENT~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~116_combout\ = ((s_qout(3) & (s_qout(2) $ (s_qout(1))))) # (!\Equal33~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_qout(3),
	datab => s_qout(2),
	datac => s_qout(1),
	datad => \Equal33~1_combout\,
	combout => \BCD7SEGMENT~116_combout\);

-- Location: LCCOMB_X27_Y21_N28
\BCD7SEGMENT~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~117_combout\ = (\BCD7SEGMENT~82_combout\ & (((!\Unidad~0_combout\ & \BCD7SEGMENT~116_combout\)) # (!\Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \BCD7SEGMENT~82_combout\,
	datac => \Unidad~0_combout\,
	datad => \BCD7SEGMENT~116_combout\,
	combout => \BCD7SEGMENT~117_combout\);

-- Location: LCCOMB_X30_Y21_N14
\BCD7SEGMENT~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~118_combout\ = (!\Equal9~0_combout\ & (((!centaine(3)) # (!\Equal13~0_combout\)) # (!\Equal19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal19~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal13~0_combout\,
	datad => centaine(3),
	combout => \BCD7SEGMENT~118_combout\);

-- Location: LCCOMB_X28_Y21_N12
\BCD7SEGMENT~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~119_combout\ = (\BCD7SEGMENT~124_combout\ & (\BCD7SEGMENT~113_combout\ & (\BCD7SEGMENT~118_combout\ & \BCD7SEGMENT~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~124_combout\,
	datab => \BCD7SEGMENT~113_combout\,
	datac => \BCD7SEGMENT~118_combout\,
	datad => \BCD7SEGMENT~128_combout\,
	combout => \BCD7SEGMENT~119_combout\);

-- Location: LCCOMB_X27_Y21_N2
\BCD7SEGMENT~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~120_combout\ = (\BCD7SEGMENT~117_combout\) # ((!\BCD7SEGMENT~82_combout\ & ((\BCD7SEGMENT~132_combout\) # (\BCD7SEGMENT~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~132_combout\,
	datab => \BCD7SEGMENT~117_combout\,
	datac => \BCD7SEGMENT~119_combout\,
	datad => \BCD7SEGMENT~82_combout\,
	combout => \BCD7SEGMENT~120_combout\);

-- Location: LCCOMB_X29_Y21_N28
\Equal23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal23~2_combout\ = (dizaine(2) & (dizaine(0) & (\Equal23~1_combout\ & !dizaine(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dizaine(2),
	datab => dizaine(0),
	datac => \Equal23~1_combout\,
	datad => dizaine(1),
	combout => \Equal23~2_combout\);

-- Location: LCCOMB_X28_Y21_N0
\BCD7SEGMENT~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~122_combout\ = (\BCD7SEGMENT~90_combout\ & (((!\Equal23~2_combout\ & \BCD7SEGMENT~80_combout\)) # (!\BCD7SEGMENT~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~106_combout\,
	datab => \Equal23~2_combout\,
	datac => \BCD7SEGMENT~90_combout\,
	datad => \BCD7SEGMENT~80_combout\,
	combout => \BCD7SEGMENT~122_combout\);

-- Location: LCCOMB_X32_Y21_N16
\Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal13~2_combout\ = (centaine(2) & (centaine(1) & (\Equal13~1_combout\ & !centaine(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => centaine(2),
	datab => centaine(1),
	datac => \Equal13~1_combout\,
	datad => centaine(0),
	combout => \Equal13~2_combout\);

-- Location: LCCOMB_X28_Y21_N22
\BCD7SEGMENT~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~121_combout\ = (\BCD7SEGMENT~89_combout\ & (((\BCD7SEGMENT~78_combout\ & !\Equal13~2_combout\)) # (!\BCD7SEGMENT~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~89_combout\,
	datab => \BCD7SEGMENT~104_combout\,
	datac => \BCD7SEGMENT~78_combout\,
	datad => \Equal13~2_combout\,
	combout => \BCD7SEGMENT~121_combout\);

-- Location: LCCOMB_X28_Y21_N30
\BCD7SEGMENT~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD7SEGMENT~123_combout\ = (\BCD7SEGMENT~122_combout\) # ((\BCD7SEGMENT~102_combout\) # ((\BCD7SEGMENT~121_combout\) # (\BCD7SEGMENT~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD7SEGMENT~122_combout\,
	datab => \BCD7SEGMENT~102_combout\,
	datac => \BCD7SEGMENT~121_combout\,
	datad => \BCD7SEGMENT~110_combout\,
	combout => \BCD7SEGMENT~123_combout\);

-- Location: IOIBUF_X0_Y4_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

ww_val_data <= \val_data~output_o\;

ww_val_chaine <= \val_chaine~output_o\;

ww_txd_echo <= \txd_echo~output_o\;

ww_txd <= \txd~output_o\;

ww_centaine_ok <= \centaine_ok~output_o\;

ww_dizaine_ok <= \dizaine_ok~output_o\;

ww_unite_ok <= \unite_ok~output_o\;

ww_BCD7SEGMENT(6) <= \BCD7SEGMENT[6]~output_o\;

ww_BCD7SEGMENT(5) <= \BCD7SEGMENT[5]~output_o\;

ww_BCD7SEGMENT(4) <= \BCD7SEGMENT[4]~output_o\;

ww_BCD7SEGMENT(3) <= \BCD7SEGMENT[3]~output_o\;

ww_BCD7SEGMENT(2) <= \BCD7SEGMENT[2]~output_o\;

ww_BCD7SEGMENT(1) <= \BCD7SEGMENT[1]~output_o\;

ww_BCD7SEGMENT(0) <= \BCD7SEGMENT[0]~output_o\;

ww_multiplex(0) <= \multiplex[0]~output_o\;

ww_multiplex(1) <= \multiplex[1]~output_o\;

ww_multiplex(2) <= \multiplex[2]~output_o\;
END structure;


