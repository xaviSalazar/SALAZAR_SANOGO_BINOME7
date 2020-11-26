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

-- DATE "11/26/2020 12:15:23"

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

ENTITY 	Com_NMEA IS
    PORT (
	clk_50M : IN std_logic;
	reset_n : IN std_logic;
	txd : BUFFER std_logic;
	rxd : IN std_logic;
	rxd_out : BUFFER std_logic
	);
END Com_NMEA;

-- Design Ports Information
-- txd	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd_out	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Com_NMEA IS
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
SIGNAL ww_txd : std_logic;
SIGNAL ww_rxd : std_logic;
SIGNAL ww_rxd_out : std_logic;
SIGNAL \tx|s_clk76800~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx|s_clk4800~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \rxd_out~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \tx|Add0~0_combout\ : std_logic;
SIGNAL \tx|s_count76800~4_combout\ : std_logic;
SIGNAL \tx|Add0~1\ : std_logic;
SIGNAL \tx|Add0~2_combout\ : std_logic;
SIGNAL \tx|s_count76800~3_combout\ : std_logic;
SIGNAL \tx|Add0~3\ : std_logic;
SIGNAL \tx|Add0~4_combout\ : std_logic;
SIGNAL \tx|Add0~5\ : std_logic;
SIGNAL \tx|Add0~6_combout\ : std_logic;
SIGNAL \tx|s_count76800~2_combout\ : std_logic;
SIGNAL \tx|Add0~7\ : std_logic;
SIGNAL \tx|Add0~8_combout\ : std_logic;
SIGNAL \tx|Add0~9\ : std_logic;
SIGNAL \tx|Add0~10_combout\ : std_logic;
SIGNAL \tx|Add0~11\ : std_logic;
SIGNAL \tx|Add0~12_combout\ : std_logic;
SIGNAL \tx|Add0~13\ : std_logic;
SIGNAL \tx|Add0~14_combout\ : std_logic;
SIGNAL \tx|s_count76800~1_combout\ : std_logic;
SIGNAL \tx|Add0~15\ : std_logic;
SIGNAL \tx|Add0~16_combout\ : std_logic;
SIGNAL \tx|Add0~17\ : std_logic;
SIGNAL \tx|Add0~18_combout\ : std_logic;
SIGNAL \tx|s_count76800~0_combout\ : std_logic;
SIGNAL \tx|Equal0~0_combout\ : std_logic;
SIGNAL \tx|Equal0~1_combout\ : std_logic;
SIGNAL \tx|Equal0~2_combout\ : std_logic;
SIGNAL \tx|s_clk76800~feeder_combout\ : std_logic;
SIGNAL \tx|s_clk76800~q\ : std_logic;
SIGNAL \tx|s_clk76800~clkctrl_outclk\ : std_logic;
SIGNAL \tx|s_count4800[0]~2_combout\ : std_logic;
SIGNAL \tx|s_count4800[1]~1_combout\ : std_logic;
SIGNAL \tx|s_count4800[2]~0_combout\ : std_logic;
SIGNAL \tx|s_clk4800~0_combout\ : std_logic;
SIGNAL \tx|s_clk4800~feeder_combout\ : std_logic;
SIGNAL \tx|s_clk4800~q\ : std_logic;
SIGNAL \tx|s_clk4800~clkctrl_outclk\ : std_logic;
SIGNAL \tx|trame[39]~feeder_combout\ : std_logic;
SIGNAL \tx|Add2~0_combout\ : std_logic;
SIGNAL \tx|s_count1~12_combout\ : std_logic;
SIGNAL \tx|Add2~1\ : std_logic;
SIGNAL \tx|Add2~2_combout\ : std_logic;
SIGNAL \tx|Add2~3\ : std_logic;
SIGNAL \tx|Add2~4_combout\ : std_logic;
SIGNAL \tx|Add2~5\ : std_logic;
SIGNAL \tx|Add2~6_combout\ : std_logic;
SIGNAL \tx|Add2~7\ : std_logic;
SIGNAL \tx|Add2~8_combout\ : std_logic;
SIGNAL \tx|Add2~9\ : std_logic;
SIGNAL \tx|Add2~10_combout\ : std_logic;
SIGNAL \tx|Add2~11\ : std_logic;
SIGNAL \tx|Add2~12_combout\ : std_logic;
SIGNAL \tx|Add2~13\ : std_logic;
SIGNAL \tx|Add2~14_combout\ : std_logic;
SIGNAL \tx|s_count1~11_combout\ : std_logic;
SIGNAL \tx|Add2~15\ : std_logic;
SIGNAL \tx|Add2~16_combout\ : std_logic;
SIGNAL \tx|Add2~17\ : std_logic;
SIGNAL \tx|Add2~18_combout\ : std_logic;
SIGNAL \tx|Equal2~5_combout\ : std_logic;
SIGNAL \tx|Equal2~7_combout\ : std_logic;
SIGNAL \tx|Equal2~6_combout\ : std_logic;
SIGNAL \tx|Add2~19\ : std_logic;
SIGNAL \tx|Add2~20_combout\ : std_logic;
SIGNAL \tx|Add2~21\ : std_logic;
SIGNAL \tx|Add2~22_combout\ : std_logic;
SIGNAL \tx|Add2~23\ : std_logic;
SIGNAL \tx|Add2~24_combout\ : std_logic;
SIGNAL \tx|s_count1~10_combout\ : std_logic;
SIGNAL \tx|Add2~25\ : std_logic;
SIGNAL \tx|Add2~26_combout\ : std_logic;
SIGNAL \tx|s_count1~9_combout\ : std_logic;
SIGNAL \tx|Add2~27\ : std_logic;
SIGNAL \tx|Add2~28_combout\ : std_logic;
SIGNAL \tx|s_count1~8_combout\ : std_logic;
SIGNAL \tx|Add2~29\ : std_logic;
SIGNAL \tx|Add2~30_combout\ : std_logic;
SIGNAL \tx|s_count1~7_combout\ : std_logic;
SIGNAL \tx|Add2~31\ : std_logic;
SIGNAL \tx|Add2~32_combout\ : std_logic;
SIGNAL \tx|Add2~33\ : std_logic;
SIGNAL \tx|Add2~34_combout\ : std_logic;
SIGNAL \tx|s_count1~6_combout\ : std_logic;
SIGNAL \tx|Equal2~2_combout\ : std_logic;
SIGNAL \tx|Equal2~3_combout\ : std_logic;
SIGNAL \tx|Add2~35\ : std_logic;
SIGNAL \tx|Add2~36_combout\ : std_logic;
SIGNAL \tx|Add2~37\ : std_logic;
SIGNAL \tx|Add2~38_combout\ : std_logic;
SIGNAL \tx|s_count1~5_combout\ : std_logic;
SIGNAL \tx|Add2~39\ : std_logic;
SIGNAL \tx|Add2~40_combout\ : std_logic;
SIGNAL \tx|s_count1~4_combout\ : std_logic;
SIGNAL \tx|Add2~41\ : std_logic;
SIGNAL \tx|Add2~42_combout\ : std_logic;
SIGNAL \tx|s_count1~3_combout\ : std_logic;
SIGNAL \tx|Equal2~1_combout\ : std_logic;
SIGNAL \tx|Add2~43\ : std_logic;
SIGNAL \tx|Add2~44_combout\ : std_logic;
SIGNAL \tx|s_count1~2_combout\ : std_logic;
SIGNAL \tx|Add2~45\ : std_logic;
SIGNAL \tx|Add2~46_combout\ : std_logic;
SIGNAL \tx|s_count1~1_combout\ : std_logic;
SIGNAL \tx|Add2~47\ : std_logic;
SIGNAL \tx|Add2~48_combout\ : std_logic;
SIGNAL \tx|Add2~49\ : std_logic;
SIGNAL \tx|Add2~50_combout\ : std_logic;
SIGNAL \tx|s_count1~0_combout\ : std_logic;
SIGNAL \tx|Equal2~0_combout\ : std_logic;
SIGNAL \tx|Equal2~4_combout\ : std_logic;
SIGNAL \tx|Equal2~8_combout\ : std_logic;
SIGNAL \tx|Mux0~0_combout\ : std_logic;
SIGNAL \tx|LessThan0~0_combout\ : std_logic;
SIGNAL \tx|count_bit[4]~12\ : std_logic;
SIGNAL \tx|count_bit[5]~13_combout\ : std_logic;
SIGNAL \tx|LessThan0~1_combout\ : std_logic;
SIGNAL \tx|count_bit[0]~15_combout\ : std_logic;
SIGNAL \tx|count_bit[1]~5_combout\ : std_logic;
SIGNAL \tx|count_bit[1]~6\ : std_logic;
SIGNAL \tx|count_bit[2]~7_combout\ : std_logic;
SIGNAL \tx|count_bit[2]~8\ : std_logic;
SIGNAL \tx|count_bit[3]~9_combout\ : std_logic;
SIGNAL \tx|count_bit[3]~10\ : std_logic;
SIGNAL \tx|count_bit[4]~11_combout\ : std_logic;
SIGNAL \tx|fin_tx~0_combout\ : std_logic;
SIGNAL \tx|fin_tx~q\ : std_logic;
SIGNAL \tx|Mux3~0_combout\ : std_logic;
SIGNAL \tx|Mux3~1_combout\ : std_logic;
SIGNAL \tx|start_stop~q\ : std_logic;
SIGNAL \tx|done~0_combout\ : std_logic;
SIGNAL \tx|done~feeder_combout\ : std_logic;
SIGNAL \tx|done~q\ : std_logic;
SIGNAL \tx|trame[37]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[36]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[35]~22_combout\ : std_logic;
SIGNAL \tx|trame[34]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[33]~21_combout\ : std_logic;
SIGNAL \tx|trame[32]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[31]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[30]~20_combout\ : std_logic;
SIGNAL \tx|trame[29]~19_combout\ : std_logic;
SIGNAL \tx|trame[28]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[27]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[26]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[25]~18_combout\ : std_logic;
SIGNAL \tx|trame[24]~17_combout\ : std_logic;
SIGNAL \tx|trame[23]~16_combout\ : std_logic;
SIGNAL \tx|trame[22]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[21]~15_combout\ : std_logic;
SIGNAL \tx|trame[20]~14_combout\ : std_logic;
SIGNAL \tx|trame[19]~13_combout\ : std_logic;
SIGNAL \tx|trame[18]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[17]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[16]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[15]~12_combout\ : std_logic;
SIGNAL \tx|trame[14]~11_combout\ : std_logic;
SIGNAL \tx|trame[13]~10_combout\ : std_logic;
SIGNAL \tx|trame[12]~9_combout\ : std_logic;
SIGNAL \tx|trame[11]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[10]~8_combout\ : std_logic;
SIGNAL \tx|trame[9]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[8]~7_combout\ : std_logic;
SIGNAL \tx|trame[7]~6_combout\ : std_logic;
SIGNAL \tx|trame[6]~5_combout\ : std_logic;
SIGNAL \tx|trame[5]~4_combout\ : std_logic;
SIGNAL \tx|trame[4]~3_combout\ : std_logic;
SIGNAL \tx|trame[3]~2_combout\ : std_logic;
SIGNAL \tx|trame[2]~1_combout\ : std_logic;
SIGNAL \tx|trame[1]~feeder_combout\ : std_logic;
SIGNAL \tx|trame[0]~0_combout\ : std_logic;
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \tx|count_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \tx|trame\ : std_logic_vector(40 DOWNTO 0);
SIGNAL \tx|s_count4800\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tx|etat_nios\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \tx|s_count76800\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \tx|s_count1\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \tx|ALT_INV_trame\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk_50M <= clk_50M;
ww_reset_n <= reset_n;
txd <= ww_txd;
ww_rxd <= rxd;
rxd_out <= ww_rxd_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\tx|s_clk76800~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tx|s_clk76800~q\);

\tx|s_clk4800~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tx|s_clk4800~q\);

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);
\tx|ALT_INV_trame\(0) <= NOT \tx|trame\(0);

-- Location: IOOBUF_X1_Y34_N9
\txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx|ALT_INV_trame\(0),
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\rxd_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rxd~input_o\,
	devoe => ww_devoe,
	o => \rxd_out~output_o\);

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

-- Location: LCCOMB_X37_Y10_N12
\tx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~0_combout\ = \tx|s_count76800\(0) $ (VCC)
-- \tx|Add0~1\ = CARRY(\tx|s_count76800\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count76800\(0),
	datad => VCC,
	combout => \tx|Add0~0_combout\,
	cout => \tx|Add0~1\);

-- Location: LCCOMB_X37_Y10_N10
\tx|s_count76800~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count76800~4_combout\ = (\tx|Add0~0_combout\ & !\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add0~0_combout\,
	datad => \tx|Equal0~2_combout\,
	combout => \tx|s_count76800~4_combout\);

-- Location: FF_X37_Y10_N11
\tx|s_count76800[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count76800~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(0));

-- Location: LCCOMB_X37_Y10_N14
\tx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~2_combout\ = (\tx|s_count76800\(1) & (!\tx|Add0~1\)) # (!\tx|s_count76800\(1) & ((\tx|Add0~1\) # (GND)))
-- \tx|Add0~3\ = CARRY((!\tx|Add0~1\) # (!\tx|s_count76800\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count76800\(1),
	datad => VCC,
	cin => \tx|Add0~1\,
	combout => \tx|Add0~2_combout\,
	cout => \tx|Add0~3\);

-- Location: LCCOMB_X37_Y10_N0
\tx|s_count76800~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count76800~3_combout\ = (\tx|Add0~2_combout\ & !\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add0~2_combout\,
	datad => \tx|Equal0~2_combout\,
	combout => \tx|s_count76800~3_combout\);

-- Location: FF_X37_Y10_N1
\tx|s_count76800[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count76800~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(1));

-- Location: LCCOMB_X37_Y10_N16
\tx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~4_combout\ = (\tx|s_count76800\(2) & (\tx|Add0~3\ $ (GND))) # (!\tx|s_count76800\(2) & (!\tx|Add0~3\ & VCC))
-- \tx|Add0~5\ = CARRY((\tx|s_count76800\(2) & !\tx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count76800\(2),
	datad => VCC,
	cin => \tx|Add0~3\,
	combout => \tx|Add0~4_combout\,
	cout => \tx|Add0~5\);

-- Location: FF_X37_Y10_N17
\tx|s_count76800[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(2));

-- Location: LCCOMB_X37_Y10_N18
\tx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~6_combout\ = (\tx|s_count76800\(3) & (!\tx|Add0~5\)) # (!\tx|s_count76800\(3) & ((\tx|Add0~5\) # (GND)))
-- \tx|Add0~7\ = CARRY((!\tx|Add0~5\) # (!\tx|s_count76800\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count76800\(3),
	datad => VCC,
	cin => \tx|Add0~5\,
	combout => \tx|Add0~6_combout\,
	cout => \tx|Add0~7\);

-- Location: LCCOMB_X37_Y10_N2
\tx|s_count76800~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count76800~2_combout\ = (!\tx|Equal0~2_combout\ & \tx|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|Equal0~2_combout\,
	datad => \tx|Add0~6_combout\,
	combout => \tx|s_count76800~2_combout\);

-- Location: FF_X37_Y10_N3
\tx|s_count76800[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count76800~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(3));

-- Location: LCCOMB_X37_Y10_N20
\tx|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~8_combout\ = (\tx|s_count76800\(4) & (\tx|Add0~7\ $ (GND))) # (!\tx|s_count76800\(4) & (!\tx|Add0~7\ & VCC))
-- \tx|Add0~9\ = CARRY((\tx|s_count76800\(4) & !\tx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count76800\(4),
	datad => VCC,
	cin => \tx|Add0~7\,
	combout => \tx|Add0~8_combout\,
	cout => \tx|Add0~9\);

-- Location: FF_X37_Y10_N21
\tx|s_count76800[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(4));

-- Location: LCCOMB_X37_Y10_N22
\tx|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~10_combout\ = (\tx|s_count76800\(5) & (!\tx|Add0~9\)) # (!\tx|s_count76800\(5) & ((\tx|Add0~9\) # (GND)))
-- \tx|Add0~11\ = CARRY((!\tx|Add0~9\) # (!\tx|s_count76800\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count76800\(5),
	datad => VCC,
	cin => \tx|Add0~9\,
	combout => \tx|Add0~10_combout\,
	cout => \tx|Add0~11\);

-- Location: FF_X37_Y10_N23
\tx|s_count76800[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(5));

-- Location: LCCOMB_X37_Y10_N24
\tx|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~12_combout\ = (\tx|s_count76800\(6) & (\tx|Add0~11\ $ (GND))) # (!\tx|s_count76800\(6) & (!\tx|Add0~11\ & VCC))
-- \tx|Add0~13\ = CARRY((\tx|s_count76800\(6) & !\tx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count76800\(6),
	datad => VCC,
	cin => \tx|Add0~11\,
	combout => \tx|Add0~12_combout\,
	cout => \tx|Add0~13\);

-- Location: FF_X37_Y10_N25
\tx|s_count76800[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(6));

-- Location: LCCOMB_X37_Y10_N26
\tx|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~14_combout\ = (\tx|s_count76800\(7) & (!\tx|Add0~13\)) # (!\tx|s_count76800\(7) & ((\tx|Add0~13\) # (GND)))
-- \tx|Add0~15\ = CARRY((!\tx|Add0~13\) # (!\tx|s_count76800\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count76800\(7),
	datad => VCC,
	cin => \tx|Add0~13\,
	combout => \tx|Add0~14_combout\,
	cout => \tx|Add0~15\);

-- Location: LCCOMB_X37_Y10_N6
\tx|s_count76800~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count76800~1_combout\ = (\tx|Add0~14_combout\ & !\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add0~14_combout\,
	datad => \tx|Equal0~2_combout\,
	combout => \tx|s_count76800~1_combout\);

-- Location: FF_X37_Y10_N7
\tx|s_count76800[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count76800~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(7));

-- Location: LCCOMB_X37_Y10_N28
\tx|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~16_combout\ = (\tx|s_count76800\(8) & (\tx|Add0~15\ $ (GND))) # (!\tx|s_count76800\(8) & (!\tx|Add0~15\ & VCC))
-- \tx|Add0~17\ = CARRY((\tx|s_count76800\(8) & !\tx|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count76800\(8),
	datad => VCC,
	cin => \tx|Add0~15\,
	combout => \tx|Add0~16_combout\,
	cout => \tx|Add0~17\);

-- Location: FF_X37_Y10_N29
\tx|s_count76800[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(8));

-- Location: LCCOMB_X37_Y10_N30
\tx|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add0~18_combout\ = \tx|s_count76800\(9) $ (\tx|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count76800\(9),
	cin => \tx|Add0~17\,
	combout => \tx|Add0~18_combout\);

-- Location: LCCOMB_X37_Y10_N8
\tx|s_count76800~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count76800~0_combout\ = (\tx|Add0~18_combout\ & !\tx|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add0~18_combout\,
	datad => \tx|Equal0~2_combout\,
	combout => \tx|s_count76800~0_combout\);

-- Location: FF_X37_Y10_N9
\tx|s_count76800[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count76800~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count76800\(9));

-- Location: LCCOMB_X37_Y10_N4
\tx|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal0~0_combout\ = (\tx|s_count76800\(7) & (!\tx|s_count76800\(6) & (\tx|s_count76800\(9) & !\tx|s_count76800\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count76800\(7),
	datab => \tx|s_count76800\(6),
	datac => \tx|s_count76800\(9),
	datad => \tx|s_count76800\(8),
	combout => \tx|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y10_N0
\tx|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal0~1_combout\ = (\tx|s_count76800\(3) & (!\tx|s_count76800\(2) & (!\tx|s_count76800\(4) & !\tx|s_count76800\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count76800\(3),
	datab => \tx|s_count76800\(2),
	datac => \tx|s_count76800\(4),
	datad => \tx|s_count76800\(5),
	combout => \tx|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y10_N18
\tx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal0~2_combout\ = (\tx|Equal0~0_combout\ & (!\tx|s_count76800\(0) & (\tx|s_count76800\(1) & \tx|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal0~0_combout\,
	datab => \tx|s_count76800\(0),
	datac => \tx|s_count76800\(1),
	datad => \tx|Equal0~1_combout\,
	combout => \tx|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y10_N28
\tx|s_clk76800~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_clk76800~feeder_combout\ = \tx|Equal0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|Equal0~2_combout\,
	combout => \tx|s_clk76800~feeder_combout\);

-- Location: FF_X36_Y10_N29
\tx|s_clk76800\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_clk76800~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_clk76800~q\);

-- Location: CLKCTRL_G15
\tx|s_clk76800~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tx|s_clk76800~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tx|s_clk76800~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y16_N22
\tx|s_count4800[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count4800[0]~2_combout\ = !\tx|s_count4800\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|s_count4800\(0),
	combout => \tx|s_count4800[0]~2_combout\);

-- Location: FF_X1_Y16_N23
\tx|s_count4800[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk76800~clkctrl_outclk\,
	d => \tx|s_count4800[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count4800\(0));

-- Location: LCCOMB_X1_Y16_N10
\tx|s_count4800[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count4800[1]~1_combout\ = \tx|s_count4800\(1) $ (\tx|s_count4800\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|s_count4800\(1),
	datad => \tx|s_count4800\(0),
	combout => \tx|s_count4800[1]~1_combout\);

-- Location: FF_X1_Y16_N11
\tx|s_count4800[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk76800~clkctrl_outclk\,
	d => \tx|s_count4800[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count4800\(1));

-- Location: LCCOMB_X1_Y16_N26
\tx|s_count4800[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count4800[2]~0_combout\ = \tx|s_count4800\(2) $ (((\tx|s_count4800\(1) & \tx|s_count4800\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count4800\(1),
	datac => \tx|s_count4800\(2),
	datad => \tx|s_count4800\(0),
	combout => \tx|s_count4800[2]~0_combout\);

-- Location: FF_X1_Y16_N27
\tx|s_count4800[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk76800~clkctrl_outclk\,
	d => \tx|s_count4800[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count4800\(2));

-- Location: LCCOMB_X1_Y16_N20
\tx|s_clk4800~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_clk4800~0_combout\ = \tx|s_clk4800~q\ $ (((\tx|s_count4800\(2) & (\tx|s_count4800\(0) & \tx|s_count4800\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count4800\(2),
	datab => \tx|s_clk4800~q\,
	datac => \tx|s_count4800\(0),
	datad => \tx|s_count4800\(1),
	combout => \tx|s_clk4800~0_combout\);

-- Location: LCCOMB_X1_Y16_N24
\tx|s_clk4800~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_clk4800~feeder_combout\ = \tx|s_clk4800~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|s_clk4800~0_combout\,
	combout => \tx|s_clk4800~feeder_combout\);

-- Location: FF_X1_Y16_N25
\tx|s_clk4800\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk76800~clkctrl_outclk\,
	d => \tx|s_clk4800~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_clk4800~q\);

-- Location: CLKCTRL_G4
\tx|s_clk4800~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tx|s_clk4800~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tx|s_clk4800~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y19_N14
\tx|trame[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[39]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \tx|trame[39]~feeder_combout\);

-- Location: LCCOMB_X12_Y21_N6
\tx|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~0_combout\ = \tx|s_count1\(0) $ (VCC)
-- \tx|Add2~1\ = CARRY(\tx|s_count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(0),
	datad => VCC,
	combout => \tx|Add2~0_combout\,
	cout => \tx|Add2~1\);

-- Location: LCCOMB_X12_Y21_N4
\tx|s_count1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~12_combout\ = (\tx|Add2~0_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add2~0_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~12_combout\);

-- Location: FF_X12_Y21_N5
\tx|s_count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(0));

-- Location: LCCOMB_X12_Y21_N8
\tx|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~2_combout\ = (\tx|s_count1\(1) & (!\tx|Add2~1\)) # (!\tx|s_count1\(1) & ((\tx|Add2~1\) # (GND)))
-- \tx|Add2~3\ = CARRY((!\tx|Add2~1\) # (!\tx|s_count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(1),
	datad => VCC,
	cin => \tx|Add2~1\,
	combout => \tx|Add2~2_combout\,
	cout => \tx|Add2~3\);

-- Location: FF_X12_Y21_N9
\tx|s_count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(1));

-- Location: LCCOMB_X12_Y21_N10
\tx|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~4_combout\ = (\tx|s_count1\(2) & (\tx|Add2~3\ $ (GND))) # (!\tx|s_count1\(2) & (!\tx|Add2~3\ & VCC))
-- \tx|Add2~5\ = CARRY((\tx|s_count1\(2) & !\tx|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(2),
	datad => VCC,
	cin => \tx|Add2~3\,
	combout => \tx|Add2~4_combout\,
	cout => \tx|Add2~5\);

-- Location: FF_X12_Y21_N11
\tx|s_count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(2));

-- Location: LCCOMB_X12_Y21_N12
\tx|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~6_combout\ = (\tx|s_count1\(3) & (!\tx|Add2~5\)) # (!\tx|s_count1\(3) & ((\tx|Add2~5\) # (GND)))
-- \tx|Add2~7\ = CARRY((!\tx|Add2~5\) # (!\tx|s_count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(3),
	datad => VCC,
	cin => \tx|Add2~5\,
	combout => \tx|Add2~6_combout\,
	cout => \tx|Add2~7\);

-- Location: FF_X12_Y21_N13
\tx|s_count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(3));

-- Location: LCCOMB_X12_Y21_N14
\tx|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~8_combout\ = (\tx|s_count1\(4) & (\tx|Add2~7\ $ (GND))) # (!\tx|s_count1\(4) & (!\tx|Add2~7\ & VCC))
-- \tx|Add2~9\ = CARRY((\tx|s_count1\(4) & !\tx|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(4),
	datad => VCC,
	cin => \tx|Add2~7\,
	combout => \tx|Add2~8_combout\,
	cout => \tx|Add2~9\);

-- Location: FF_X12_Y21_N15
\tx|s_count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(4));

-- Location: LCCOMB_X12_Y21_N16
\tx|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~10_combout\ = (\tx|s_count1\(5) & (!\tx|Add2~9\)) # (!\tx|s_count1\(5) & ((\tx|Add2~9\) # (GND)))
-- \tx|Add2~11\ = CARRY((!\tx|Add2~9\) # (!\tx|s_count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(5),
	datad => VCC,
	cin => \tx|Add2~9\,
	combout => \tx|Add2~10_combout\,
	cout => \tx|Add2~11\);

-- Location: FF_X12_Y21_N17
\tx|s_count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(5));

-- Location: LCCOMB_X12_Y21_N18
\tx|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~12_combout\ = (\tx|s_count1\(6) & (\tx|Add2~11\ $ (GND))) # (!\tx|s_count1\(6) & (!\tx|Add2~11\ & VCC))
-- \tx|Add2~13\ = CARRY((\tx|s_count1\(6) & !\tx|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(6),
	datad => VCC,
	cin => \tx|Add2~11\,
	combout => \tx|Add2~12_combout\,
	cout => \tx|Add2~13\);

-- Location: FF_X12_Y21_N19
\tx|s_count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(6));

-- Location: LCCOMB_X12_Y21_N20
\tx|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~14_combout\ = (\tx|s_count1\(7) & (!\tx|Add2~13\)) # (!\tx|s_count1\(7) & ((\tx|Add2~13\) # (GND)))
-- \tx|Add2~15\ = CARRY((!\tx|Add2~13\) # (!\tx|s_count1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(7),
	datad => VCC,
	cin => \tx|Add2~13\,
	combout => \tx|Add2~14_combout\,
	cout => \tx|Add2~15\);

-- Location: LCCOMB_X12_Y21_N2
\tx|s_count1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~11_combout\ = (\tx|Add2~14_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|Add2~14_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~11_combout\);

-- Location: FF_X12_Y21_N3
\tx|s_count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(7));

-- Location: LCCOMB_X12_Y21_N22
\tx|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~16_combout\ = (\tx|s_count1\(8) & (\tx|Add2~15\ $ (GND))) # (!\tx|s_count1\(8) & (!\tx|Add2~15\ & VCC))
-- \tx|Add2~17\ = CARRY((\tx|s_count1\(8) & !\tx|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(8),
	datad => VCC,
	cin => \tx|Add2~15\,
	combout => \tx|Add2~16_combout\,
	cout => \tx|Add2~17\);

-- Location: FF_X12_Y21_N23
\tx|s_count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(8));

-- Location: LCCOMB_X12_Y21_N24
\tx|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~18_combout\ = (\tx|s_count1\(9) & (!\tx|Add2~17\)) # (!\tx|s_count1\(9) & ((\tx|Add2~17\) # (GND)))
-- \tx|Add2~19\ = CARRY((!\tx|Add2~17\) # (!\tx|s_count1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(9),
	datad => VCC,
	cin => \tx|Add2~17\,
	combout => \tx|Add2~18_combout\,
	cout => \tx|Add2~19\);

-- Location: FF_X12_Y21_N25
\tx|s_count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(9));

-- Location: LCCOMB_X11_Y21_N28
\tx|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal2~5_combout\ = (\tx|s_count1\(7) & (!\tx|s_count1\(8) & (!\tx|s_count1\(6) & !\tx|s_count1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(7),
	datab => \tx|s_count1\(8),
	datac => \tx|s_count1\(6),
	datad => \tx|s_count1\(9),
	combout => \tx|Equal2~5_combout\);

-- Location: LCCOMB_X12_Y19_N2
\tx|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal2~7_combout\ = (!\tx|s_count1\(0) & !\tx|s_count1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(0),
	datad => \tx|s_count1\(1),
	combout => \tx|Equal2~7_combout\);

-- Location: LCCOMB_X11_Y21_N26
\tx|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal2~6_combout\ = (!\tx|s_count1\(2) & (!\tx|s_count1\(3) & (!\tx|s_count1\(4) & !\tx|s_count1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(2),
	datab => \tx|s_count1\(3),
	datac => \tx|s_count1\(4),
	datad => \tx|s_count1\(5),
	combout => \tx|Equal2~6_combout\);

-- Location: LCCOMB_X12_Y21_N26
\tx|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~20_combout\ = (\tx|s_count1\(10) & (\tx|Add2~19\ $ (GND))) # (!\tx|s_count1\(10) & (!\tx|Add2~19\ & VCC))
-- \tx|Add2~21\ = CARRY((\tx|s_count1\(10) & !\tx|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(10),
	datad => VCC,
	cin => \tx|Add2~19\,
	combout => \tx|Add2~20_combout\,
	cout => \tx|Add2~21\);

-- Location: FF_X12_Y21_N27
\tx|s_count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(10));

-- Location: LCCOMB_X12_Y21_N28
\tx|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~22_combout\ = (\tx|s_count1\(11) & (!\tx|Add2~21\)) # (!\tx|s_count1\(11) & ((\tx|Add2~21\) # (GND)))
-- \tx|Add2~23\ = CARRY((!\tx|Add2~21\) # (!\tx|s_count1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(11),
	datad => VCC,
	cin => \tx|Add2~21\,
	combout => \tx|Add2~22_combout\,
	cout => \tx|Add2~23\);

-- Location: FF_X12_Y21_N29
\tx|s_count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(11));

-- Location: LCCOMB_X12_Y21_N30
\tx|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~24_combout\ = (\tx|s_count1\(12) & (\tx|Add2~23\ $ (GND))) # (!\tx|s_count1\(12) & (!\tx|Add2~23\ & VCC))
-- \tx|Add2~25\ = CARRY((\tx|s_count1\(12) & !\tx|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(12),
	datad => VCC,
	cin => \tx|Add2~23\,
	combout => \tx|Add2~24_combout\,
	cout => \tx|Add2~25\);

-- Location: LCCOMB_X12_Y21_N0
\tx|s_count1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~10_combout\ = (\tx|Add2~24_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add2~24_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~10_combout\);

-- Location: FF_X12_Y21_N1
\tx|s_count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(12));

-- Location: LCCOMB_X12_Y20_N0
\tx|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~26_combout\ = (\tx|s_count1\(13) & (!\tx|Add2~25\)) # (!\tx|s_count1\(13) & ((\tx|Add2~25\) # (GND)))
-- \tx|Add2~27\ = CARRY((!\tx|Add2~25\) # (!\tx|s_count1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(13),
	datad => VCC,
	cin => \tx|Add2~25\,
	combout => \tx|Add2~26_combout\,
	cout => \tx|Add2~27\);

-- Location: LCCOMB_X11_Y20_N10
\tx|s_count1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~9_combout\ = (\tx|Add2~26_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add2~26_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~9_combout\);

-- Location: FF_X11_Y20_N11
\tx|s_count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(13));

-- Location: LCCOMB_X12_Y20_N2
\tx|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~28_combout\ = (\tx|s_count1\(14) & (\tx|Add2~27\ $ (GND))) # (!\tx|s_count1\(14) & (!\tx|Add2~27\ & VCC))
-- \tx|Add2~29\ = CARRY((\tx|s_count1\(14) & !\tx|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(14),
	datad => VCC,
	cin => \tx|Add2~27\,
	combout => \tx|Add2~28_combout\,
	cout => \tx|Add2~29\);

-- Location: LCCOMB_X11_Y20_N26
\tx|s_count1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~8_combout\ = (\tx|Add2~28_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add2~28_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~8_combout\);

-- Location: FF_X11_Y20_N27
\tx|s_count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(14));

-- Location: LCCOMB_X12_Y20_N4
\tx|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~30_combout\ = (\tx|s_count1\(15) & (!\tx|Add2~29\)) # (!\tx|s_count1\(15) & ((\tx|Add2~29\) # (GND)))
-- \tx|Add2~31\ = CARRY((!\tx|Add2~29\) # (!\tx|s_count1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(15),
	datad => VCC,
	cin => \tx|Add2~29\,
	combout => \tx|Add2~30_combout\,
	cout => \tx|Add2~31\);

-- Location: LCCOMB_X11_Y20_N16
\tx|s_count1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~7_combout\ = (\tx|Add2~30_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Add2~30_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~7_combout\);

-- Location: FF_X11_Y20_N17
\tx|s_count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(15));

-- Location: LCCOMB_X12_Y20_N6
\tx|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~32_combout\ = (\tx|s_count1\(16) & (\tx|Add2~31\ $ (GND))) # (!\tx|s_count1\(16) & (!\tx|Add2~31\ & VCC))
-- \tx|Add2~33\ = CARRY((\tx|s_count1\(16) & !\tx|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(16),
	datad => VCC,
	cin => \tx|Add2~31\,
	combout => \tx|Add2~32_combout\,
	cout => \tx|Add2~33\);

-- Location: FF_X12_Y20_N7
\tx|s_count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(16));

-- Location: LCCOMB_X12_Y20_N8
\tx|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~34_combout\ = (\tx|s_count1\(17) & (!\tx|Add2~33\)) # (!\tx|s_count1\(17) & ((\tx|Add2~33\) # (GND)))
-- \tx|Add2~35\ = CARRY((!\tx|Add2~33\) # (!\tx|s_count1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(17),
	datad => VCC,
	cin => \tx|Add2~33\,
	combout => \tx|Add2~34_combout\,
	cout => \tx|Add2~35\);

-- Location: LCCOMB_X12_Y20_N30
\tx|s_count1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~6_combout\ = (\tx|Add2~34_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add2~34_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~6_combout\);

-- Location: FF_X12_Y20_N31
\tx|s_count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(17));

-- Location: LCCOMB_X11_Y20_N20
\tx|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal2~2_combout\ = (\tx|s_count1\(14) & (\tx|s_count1\(15) & (\tx|s_count1\(17) & !\tx|s_count1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(14),
	datab => \tx|s_count1\(15),
	datac => \tx|s_count1\(17),
	datad => \tx|s_count1\(16),
	combout => \tx|Equal2~2_combout\);

-- Location: LCCOMB_X12_Y19_N20
\tx|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal2~3_combout\ = (\tx|s_count1\(13) & (!\tx|s_count1\(11) & (!\tx|s_count1\(10) & \tx|s_count1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(13),
	datab => \tx|s_count1\(11),
	datac => \tx|s_count1\(10),
	datad => \tx|s_count1\(12),
	combout => \tx|Equal2~3_combout\);

-- Location: LCCOMB_X12_Y20_N10
\tx|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~36_combout\ = (\tx|s_count1\(18) & (\tx|Add2~35\ $ (GND))) # (!\tx|s_count1\(18) & (!\tx|Add2~35\ & VCC))
-- \tx|Add2~37\ = CARRY((\tx|s_count1\(18) & !\tx|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(18),
	datad => VCC,
	cin => \tx|Add2~35\,
	combout => \tx|Add2~36_combout\,
	cout => \tx|Add2~37\);

-- Location: FF_X12_Y20_N11
\tx|s_count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(18));

-- Location: LCCOMB_X12_Y20_N12
\tx|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~38_combout\ = (\tx|s_count1\(19) & (!\tx|Add2~37\)) # (!\tx|s_count1\(19) & ((\tx|Add2~37\) # (GND)))
-- \tx|Add2~39\ = CARRY((!\tx|Add2~37\) # (!\tx|s_count1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(19),
	datad => VCC,
	cin => \tx|Add2~37\,
	combout => \tx|Add2~38_combout\,
	cout => \tx|Add2~39\);

-- Location: LCCOMB_X11_Y20_N28
\tx|s_count1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~5_combout\ = (\tx|Add2~38_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add2~38_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~5_combout\);

-- Location: FF_X11_Y20_N29
\tx|s_count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(19));

-- Location: LCCOMB_X12_Y20_N14
\tx|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~40_combout\ = (\tx|s_count1\(20) & (\tx|Add2~39\ $ (GND))) # (!\tx|s_count1\(20) & (!\tx|Add2~39\ & VCC))
-- \tx|Add2~41\ = CARRY((\tx|s_count1\(20) & !\tx|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(20),
	datad => VCC,
	cin => \tx|Add2~39\,
	combout => \tx|Add2~40_combout\,
	cout => \tx|Add2~41\);

-- Location: LCCOMB_X11_Y20_N22
\tx|s_count1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~4_combout\ = (\tx|Add2~40_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add2~40_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~4_combout\);

-- Location: FF_X11_Y20_N23
\tx|s_count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(20));

-- Location: LCCOMB_X12_Y20_N16
\tx|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~42_combout\ = (\tx|s_count1\(21) & (!\tx|Add2~41\)) # (!\tx|s_count1\(21) & ((\tx|Add2~41\) # (GND)))
-- \tx|Add2~43\ = CARRY((!\tx|Add2~41\) # (!\tx|s_count1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(21),
	datad => VCC,
	cin => \tx|Add2~41\,
	combout => \tx|Add2~42_combout\,
	cout => \tx|Add2~43\);

-- Location: LCCOMB_X12_Y20_N28
\tx|s_count1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~3_combout\ = (!\tx|Equal2~8_combout\ & \tx|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Equal2~8_combout\,
	datad => \tx|Add2~42_combout\,
	combout => \tx|s_count1~3_combout\);

-- Location: FF_X12_Y20_N29
\tx|s_count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(21));

-- Location: LCCOMB_X11_Y20_N30
\tx|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal2~1_combout\ = (\tx|s_count1\(20) & (\tx|s_count1\(19) & (!\tx|s_count1\(18) & \tx|s_count1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(20),
	datab => \tx|s_count1\(19),
	datac => \tx|s_count1\(18),
	datad => \tx|s_count1\(21),
	combout => \tx|Equal2~1_combout\);

-- Location: LCCOMB_X12_Y20_N18
\tx|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~44_combout\ = (\tx|s_count1\(22) & (\tx|Add2~43\ $ (GND))) # (!\tx|s_count1\(22) & (!\tx|Add2~43\ & VCC))
-- \tx|Add2~45\ = CARRY((\tx|s_count1\(22) & !\tx|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(22),
	datad => VCC,
	cin => \tx|Add2~43\,
	combout => \tx|Add2~44_combout\,
	cout => \tx|Add2~45\);

-- Location: LCCOMB_X12_Y20_N26
\tx|s_count1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~2_combout\ = (!\tx|Equal2~8_combout\ & \tx|Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Equal2~8_combout\,
	datad => \tx|Add2~44_combout\,
	combout => \tx|s_count1~2_combout\);

-- Location: FF_X12_Y20_N27
\tx|s_count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(22));

-- Location: LCCOMB_X12_Y20_N20
\tx|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~46_combout\ = (\tx|s_count1\(23) & (!\tx|Add2~45\)) # (!\tx|s_count1\(23) & ((\tx|Add2~45\) # (GND)))
-- \tx|Add2~47\ = CARRY((!\tx|Add2~45\) # (!\tx|s_count1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(23),
	datad => VCC,
	cin => \tx|Add2~45\,
	combout => \tx|Add2~46_combout\,
	cout => \tx|Add2~47\);

-- Location: LCCOMB_X11_Y20_N6
\tx|s_count1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~1_combout\ = (\tx|Add2~46_combout\ & !\tx|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Add2~46_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|s_count1~1_combout\);

-- Location: FF_X11_Y20_N7
\tx|s_count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(23));

-- Location: LCCOMB_X12_Y20_N22
\tx|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~48_combout\ = (\tx|s_count1\(24) & (\tx|Add2~47\ $ (GND))) # (!\tx|s_count1\(24) & (!\tx|Add2~47\ & VCC))
-- \tx|Add2~49\ = CARRY((\tx|s_count1\(24) & !\tx|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(24),
	datad => VCC,
	cin => \tx|Add2~47\,
	combout => \tx|Add2~48_combout\,
	cout => \tx|Add2~49\);

-- Location: FF_X12_Y20_N23
\tx|s_count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(24));

-- Location: LCCOMB_X12_Y20_N24
\tx|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Add2~50_combout\ = \tx|s_count1\(25) $ (\tx|Add2~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|s_count1\(25),
	cin => \tx|Add2~49\,
	combout => \tx|Add2~50_combout\);

-- Location: LCCOMB_X11_Y20_N4
\tx|s_count1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|s_count1~0_combout\ = (!\tx|Equal2~8_combout\ & \tx|Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|Equal2~8_combout\,
	datad => \tx|Add2~50_combout\,
	combout => \tx|s_count1~0_combout\);

-- Location: FF_X11_Y20_N5
\tx|s_count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|s_count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|s_count1\(25));

-- Location: LCCOMB_X11_Y20_N0
\tx|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal2~0_combout\ = (\tx|s_count1\(23) & (\tx|s_count1\(25) & (\tx|s_count1\(22) & !\tx|s_count1\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|s_count1\(23),
	datab => \tx|s_count1\(25),
	datac => \tx|s_count1\(22),
	datad => \tx|s_count1\(24),
	combout => \tx|Equal2~0_combout\);

-- Location: LCCOMB_X12_Y19_N18
\tx|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal2~4_combout\ = (\tx|Equal2~2_combout\ & (\tx|Equal2~3_combout\ & (\tx|Equal2~1_combout\ & \tx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal2~2_combout\,
	datab => \tx|Equal2~3_combout\,
	datac => \tx|Equal2~1_combout\,
	datad => \tx|Equal2~0_combout\,
	combout => \tx|Equal2~4_combout\);

-- Location: LCCOMB_X12_Y19_N12
\tx|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Equal2~8_combout\ = (\tx|Equal2~5_combout\ & (\tx|Equal2~7_combout\ & (\tx|Equal2~6_combout\ & \tx|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|Equal2~5_combout\,
	datab => \tx|Equal2~7_combout\,
	datac => \tx|Equal2~6_combout\,
	datad => \tx|Equal2~4_combout\,
	combout => \tx|Equal2~8_combout\);

-- Location: LCCOMB_X12_Y19_N30
\tx|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Mux0~0_combout\ = (\tx|done~q\) # (((\tx|etat_nios\(1) & !\tx|Equal2~8_combout\)) # (!\tx|start_stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|done~q\,
	datab => \tx|start_stop~q\,
	datac => \tx|etat_nios\(1),
	datad => \tx|Equal2~8_combout\,
	combout => \tx|Mux0~0_combout\);

-- Location: FF_X12_Y19_N31
\tx|etat_nios[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|etat_nios\(1));

-- Location: LCCOMB_X14_Y19_N18
\tx|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|LessThan0~0_combout\ = (!\tx|count_bit\(3) & (((!\tx|count_bit\(1)) # (!\tx|count_bit\(0))) # (!\tx|count_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|count_bit\(2),
	datab => \tx|count_bit\(0),
	datac => \tx|count_bit\(1),
	datad => \tx|count_bit\(3),
	combout => \tx|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y19_N14
\tx|count_bit[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|count_bit[4]~11_combout\ = (\tx|count_bit\(4) & (!\tx|count_bit[3]~10\)) # (!\tx|count_bit\(4) & ((\tx|count_bit[3]~10\) # (GND)))
-- \tx|count_bit[4]~12\ = CARRY((!\tx|count_bit[3]~10\) # (!\tx|count_bit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx|count_bit\(4),
	datad => VCC,
	cin => \tx|count_bit[3]~10\,
	combout => \tx|count_bit[4]~11_combout\,
	cout => \tx|count_bit[4]~12\);

-- Location: LCCOMB_X14_Y19_N16
\tx|count_bit[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|count_bit[5]~13_combout\ = \tx|count_bit[4]~12\ $ (!\tx|count_bit\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tx|count_bit\(5),
	cin => \tx|count_bit[4]~12\,
	combout => \tx|count_bit[5]~13_combout\);

-- Location: LCCOMB_X14_Y19_N24
\tx|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|LessThan0~1_combout\ = ((!\tx|count_bit\(4) & \tx|LessThan0~0_combout\)) # (!\tx|count_bit\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx|count_bit\(5),
	datac => \tx|count_bit\(4),
	datad => \tx|LessThan0~0_combout\,
	combout => \tx|LessThan0~1_combout\);

-- Location: FF_X14_Y19_N17
\tx|count_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|count_bit[5]~13_combout\,
	clrn => \tx|done~q\,
	ena => \tx|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|count_bit\(5));

-- Location: LCCOMB_X14_Y19_N28
\tx|count_bit[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|count_bit[0]~15_combout\ = \tx|count_bit\(0) $ ((((\tx|LessThan0~0_combout\ & !\tx|count_bit\(4))) # (!\tx|count_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|LessThan0~0_combout\,
	datab => \tx|count_bit\(4),
	datac => \tx|count_bit\(0),
	datad => \tx|count_bit\(5),
	combout => \tx|count_bit[0]~15_combout\);

-- Location: FF_X14_Y19_N29
\tx|count_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|count_bit[0]~15_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|count_bit\(0));

-- Location: LCCOMB_X14_Y19_N8
\tx|count_bit[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|count_bit[1]~5_combout\ = (\tx|count_bit\(1) & (\tx|count_bit\(0) $ (VCC))) # (!\tx|count_bit\(1) & (\tx|count_bit\(0) & VCC))
-- \tx|count_bit[1]~6\ = CARRY((\tx|count_bit\(1) & \tx|count_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|count_bit\(1),
	datab => \tx|count_bit\(0),
	datad => VCC,
	combout => \tx|count_bit[1]~5_combout\,
	cout => \tx|count_bit[1]~6\);

-- Location: FF_X14_Y19_N9
\tx|count_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|count_bit[1]~5_combout\,
	clrn => \tx|done~q\,
	ena => \tx|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|count_bit\(1));

-- Location: LCCOMB_X14_Y19_N10
\tx|count_bit[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|count_bit[2]~7_combout\ = (\tx|count_bit\(2) & (!\tx|count_bit[1]~6\)) # (!\tx|count_bit\(2) & ((\tx|count_bit[1]~6\) # (GND)))
-- \tx|count_bit[2]~8\ = CARRY((!\tx|count_bit[1]~6\) # (!\tx|count_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|count_bit\(2),
	datad => VCC,
	cin => \tx|count_bit[1]~6\,
	combout => \tx|count_bit[2]~7_combout\,
	cout => \tx|count_bit[2]~8\);

-- Location: FF_X14_Y19_N11
\tx|count_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|count_bit[2]~7_combout\,
	clrn => \tx|done~q\,
	ena => \tx|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|count_bit\(2));

-- Location: LCCOMB_X14_Y19_N12
\tx|count_bit[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|count_bit[3]~9_combout\ = (\tx|count_bit\(3) & (\tx|count_bit[2]~8\ $ (GND))) # (!\tx|count_bit\(3) & (!\tx|count_bit[2]~8\ & VCC))
-- \tx|count_bit[3]~10\ = CARRY((\tx|count_bit\(3) & !\tx|count_bit[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx|count_bit\(3),
	datad => VCC,
	cin => \tx|count_bit[2]~8\,
	combout => \tx|count_bit[3]~9_combout\,
	cout => \tx|count_bit[3]~10\);

-- Location: FF_X14_Y19_N13
\tx|count_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|count_bit[3]~9_combout\,
	clrn => \tx|done~q\,
	ena => \tx|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|count_bit\(3));

-- Location: FF_X14_Y19_N15
\tx|count_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|count_bit[4]~11_combout\,
	clrn => \tx|done~q\,
	ena => \tx|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|count_bit\(4));

-- Location: LCCOMB_X12_Y19_N6
\tx|fin_tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|fin_tx~0_combout\ = (\tx|fin_tx~q\) # ((\tx|count_bit\(5) & ((\tx|count_bit\(4)) # (!\tx|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|count_bit\(4),
	datab => \tx|count_bit\(5),
	datac => \tx|fin_tx~q\,
	datad => \tx|LessThan0~0_combout\,
	combout => \tx|fin_tx~0_combout\);

-- Location: FF_X12_Y19_N7
\tx|fin_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|fin_tx~0_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|fin_tx~q\);

-- Location: LCCOMB_X12_Y19_N4
\tx|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Mux3~0_combout\ = (!\tx|start_stop~q\ & ((!\tx|fin_tx~q\) # (!\tx|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|done~q\,
	datac => \tx|start_stop~q\,
	datad => \tx|fin_tx~q\,
	combout => \tx|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y19_N8
\tx|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|Mux3~1_combout\ = (!\tx|Mux3~0_combout\ & (((\tx|done~q\) # (!\tx|Equal2~8_combout\)) # (!\tx|etat_nios\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|etat_nios\(1),
	datab => \tx|done~q\,
	datac => \tx|Mux3~0_combout\,
	datad => \tx|Equal2~8_combout\,
	combout => \tx|Mux3~1_combout\);

-- Location: FF_X12_Y19_N9
\tx|start_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|start_stop~q\);

-- Location: LCCOMB_X12_Y19_N16
\tx|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|done~0_combout\ = (\tx|done~q\ & (((!\tx|fin_tx~q\) # (!\tx|etat_nios\(1))))) # (!\tx|done~q\ & (!\tx|start_stop~q\ & (!\tx|etat_nios\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx|done~q\,
	datab => \tx|start_stop~q\,
	datac => \tx|etat_nios\(1),
	datad => \tx|fin_tx~q\,
	combout => \tx|done~0_combout\);

-- Location: LCCOMB_X11_Y19_N0
\tx|done~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|done~feeder_combout\ = \tx|done~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|done~0_combout\,
	combout => \tx|done~feeder_combout\);

-- Location: FF_X11_Y19_N1
\tx|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tx|done~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|done~q\);

-- Location: FF_X12_Y19_N15
\tx|trame[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[39]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(39));

-- Location: FF_X12_Y19_N3
\tx|trame[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	asdata => \tx|trame\(39),
	clrn => \tx|done~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(38));

-- Location: LCCOMB_X12_Y19_N24
\tx|trame[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[37]~feeder_combout\ = \tx|trame\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|trame\(38),
	combout => \tx|trame[37]~feeder_combout\);

-- Location: FF_X12_Y19_N25
\tx|trame[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[37]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(37));

-- Location: LCCOMB_X12_Y19_N28
\tx|trame[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[36]~feeder_combout\ = \tx|trame\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(37),
	combout => \tx|trame[36]~feeder_combout\);

-- Location: FF_X12_Y19_N29
\tx|trame[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[36]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(36));

-- Location: LCCOMB_X11_Y19_N10
\tx|trame[35]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[35]~22_combout\ = !\tx|trame\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(36),
	combout => \tx|trame[35]~22_combout\);

-- Location: FF_X11_Y19_N11
\tx|trame[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[35]~22_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(35));

-- Location: LCCOMB_X11_Y19_N28
\tx|trame[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[34]~feeder_combout\ = \tx|trame\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(35),
	combout => \tx|trame[34]~feeder_combout\);

-- Location: FF_X11_Y19_N29
\tx|trame[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[34]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(34));

-- Location: LCCOMB_X11_Y19_N22
\tx|trame[33]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[33]~21_combout\ = !\tx|trame\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(34),
	combout => \tx|trame[33]~21_combout\);

-- Location: FF_X11_Y19_N23
\tx|trame[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[33]~21_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(33));

-- Location: LCCOMB_X10_Y19_N16
\tx|trame[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[32]~feeder_combout\ = \tx|trame\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(33),
	combout => \tx|trame[32]~feeder_combout\);

-- Location: FF_X10_Y19_N17
\tx|trame[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[32]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(32));

-- Location: LCCOMB_X10_Y19_N10
\tx|trame[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[31]~feeder_combout\ = \tx|trame\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(32),
	combout => \tx|trame[31]~feeder_combout\);

-- Location: FF_X10_Y19_N11
\tx|trame[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[31]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(31));

-- Location: LCCOMB_X10_Y19_N20
\tx|trame[30]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[30]~20_combout\ = !\tx|trame\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(31),
	combout => \tx|trame[30]~20_combout\);

-- Location: FF_X10_Y19_N21
\tx|trame[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[30]~20_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(30));

-- Location: LCCOMB_X10_Y19_N6
\tx|trame[29]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[29]~19_combout\ = !\tx|trame\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(30),
	combout => \tx|trame[29]~19_combout\);

-- Location: FF_X10_Y19_N7
\tx|trame[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[29]~19_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(29));

-- Location: LCCOMB_X10_Y19_N8
\tx|trame[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[28]~feeder_combout\ = \tx|trame\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(29),
	combout => \tx|trame[28]~feeder_combout\);

-- Location: FF_X10_Y19_N9
\tx|trame[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[28]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(28));

-- Location: LCCOMB_X11_Y19_N4
\tx|trame[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[27]~feeder_combout\ = \tx|trame\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(28),
	combout => \tx|trame[27]~feeder_combout\);

-- Location: FF_X11_Y19_N5
\tx|trame[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[27]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(27));

-- Location: LCCOMB_X10_Y19_N14
\tx|trame[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[26]~feeder_combout\ = \tx|trame\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(27),
	combout => \tx|trame[26]~feeder_combout\);

-- Location: FF_X10_Y19_N15
\tx|trame[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[26]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(26));

-- Location: LCCOMB_X11_Y19_N14
\tx|trame[25]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[25]~18_combout\ = !\tx|trame\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(26),
	combout => \tx|trame[25]~18_combout\);

-- Location: FF_X11_Y19_N15
\tx|trame[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[25]~18_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(25));

-- Location: LCCOMB_X11_Y19_N24
\tx|trame[24]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[24]~17_combout\ = !\tx|trame\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|trame\(25),
	combout => \tx|trame[24]~17_combout\);

-- Location: FF_X11_Y19_N25
\tx|trame[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[24]~17_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(24));

-- Location: LCCOMB_X11_Y19_N2
\tx|trame[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[23]~16_combout\ = !\tx|trame\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(24),
	combout => \tx|trame[23]~16_combout\);

-- Location: FF_X11_Y19_N3
\tx|trame[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[23]~16_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(23));

-- Location: LCCOMB_X11_Y19_N12
\tx|trame[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[22]~feeder_combout\ = \tx|trame\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(23),
	combout => \tx|trame[22]~feeder_combout\);

-- Location: FF_X11_Y19_N13
\tx|trame[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[22]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(22));

-- Location: LCCOMB_X12_Y19_N26
\tx|trame[21]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[21]~15_combout\ = !\tx|trame\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(22),
	combout => \tx|trame[21]~15_combout\);

-- Location: FF_X12_Y19_N27
\tx|trame[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[21]~15_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(21));

-- Location: LCCOMB_X14_Y19_N26
\tx|trame[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[20]~14_combout\ = !\tx|trame\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(21),
	combout => \tx|trame[20]~14_combout\);

-- Location: FF_X14_Y19_N27
\tx|trame[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[20]~14_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(20));

-- Location: LCCOMB_X14_Y19_N2
\tx|trame[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[19]~13_combout\ = !\tx|trame\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|trame\(20),
	combout => \tx|trame[19]~13_combout\);

-- Location: FF_X14_Y19_N3
\tx|trame[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[19]~13_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(19));

-- Location: LCCOMB_X11_Y19_N6
\tx|trame[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[18]~feeder_combout\ = \tx|trame\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(19),
	combout => \tx|trame[18]~feeder_combout\);

-- Location: FF_X11_Y19_N7
\tx|trame[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[18]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(18));

-- Location: LCCOMB_X10_Y19_N24
\tx|trame[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[17]~feeder_combout\ = \tx|trame\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(18),
	combout => \tx|trame[17]~feeder_combout\);

-- Location: FF_X10_Y19_N25
\tx|trame[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[17]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(17));

-- Location: LCCOMB_X11_Y19_N20
\tx|trame[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[16]~feeder_combout\ = \tx|trame\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(17),
	combout => \tx|trame[16]~feeder_combout\);

-- Location: FF_X11_Y19_N21
\tx|trame[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[16]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(16));

-- Location: LCCOMB_X11_Y19_N18
\tx|trame[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[15]~12_combout\ = !\tx|trame\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(16),
	combout => \tx|trame[15]~12_combout\);

-- Location: FF_X11_Y19_N19
\tx|trame[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[15]~12_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(15));

-- Location: LCCOMB_X11_Y19_N16
\tx|trame[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[14]~11_combout\ = !\tx|trame\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(15),
	combout => \tx|trame[14]~11_combout\);

-- Location: FF_X11_Y19_N17
\tx|trame[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[14]~11_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(14));

-- Location: LCCOMB_X11_Y19_N30
\tx|trame[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[13]~10_combout\ = !\tx|trame\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(14),
	combout => \tx|trame[13]~10_combout\);

-- Location: FF_X11_Y19_N31
\tx|trame[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[13]~10_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(13));

-- Location: LCCOMB_X12_Y19_N10
\tx|trame[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[12]~9_combout\ = !\tx|trame\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(13),
	combout => \tx|trame[12]~9_combout\);

-- Location: FF_X12_Y19_N11
\tx|trame[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[12]~9_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(12));

-- Location: LCCOMB_X12_Y19_N0
\tx|trame[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[11]~feeder_combout\ = \tx|trame\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(12),
	combout => \tx|trame[11]~feeder_combout\);

-- Location: FF_X12_Y19_N1
\tx|trame[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[11]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(11));

-- Location: LCCOMB_X12_Y19_N22
\tx|trame[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[10]~8_combout\ = !\tx|trame\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(11),
	combout => \tx|trame[10]~8_combout\);

-- Location: FF_X12_Y19_N23
\tx|trame[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[10]~8_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(10));

-- Location: LCCOMB_X11_Y19_N8
\tx|trame[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[9]~feeder_combout\ = \tx|trame\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(10),
	combout => \tx|trame[9]~feeder_combout\);

-- Location: FF_X11_Y19_N9
\tx|trame[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[9]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(9));

-- Location: LCCOMB_X10_Y19_N2
\tx|trame[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[8]~7_combout\ = !\tx|trame\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|trame\(9),
	combout => \tx|trame[8]~7_combout\);

-- Location: FF_X10_Y19_N3
\tx|trame[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[8]~7_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(8));

-- Location: LCCOMB_X10_Y19_N28
\tx|trame[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[7]~6_combout\ = !\tx|trame\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(8),
	combout => \tx|trame[7]~6_combout\);

-- Location: FF_X10_Y19_N29
\tx|trame[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[7]~6_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(7));

-- Location: LCCOMB_X11_Y19_N26
\tx|trame[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[6]~5_combout\ = !\tx|trame\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(7),
	combout => \tx|trame[6]~5_combout\);

-- Location: FF_X11_Y19_N27
\tx|trame[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[6]~5_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(6));

-- Location: LCCOMB_X10_Y19_N22
\tx|trame[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[5]~4_combout\ = !\tx|trame\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(6),
	combout => \tx|trame[5]~4_combout\);

-- Location: FF_X10_Y19_N23
\tx|trame[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[5]~4_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(5));

-- Location: LCCOMB_X10_Y19_N12
\tx|trame[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[4]~3_combout\ = !\tx|trame\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|trame\(5),
	combout => \tx|trame[4]~3_combout\);

-- Location: FF_X10_Y19_N13
\tx|trame[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[4]~3_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(4));

-- Location: LCCOMB_X10_Y19_N26
\tx|trame[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[3]~2_combout\ = !\tx|trame\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(4),
	combout => \tx|trame[3]~2_combout\);

-- Location: FF_X10_Y19_N27
\tx|trame[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[3]~2_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(3));

-- Location: LCCOMB_X10_Y19_N4
\tx|trame[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[2]~1_combout\ = !\tx|trame\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|trame\(3),
	combout => \tx|trame[2]~1_combout\);

-- Location: FF_X10_Y19_N5
\tx|trame[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[2]~1_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(2));

-- Location: LCCOMB_X10_Y19_N18
\tx|trame[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[1]~feeder_combout\ = \tx|trame\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx|trame\(2),
	combout => \tx|trame[1]~feeder_combout\);

-- Location: FF_X10_Y19_N19
\tx|trame[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[1]~feeder_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(1));

-- Location: LCCOMB_X10_Y19_N0
\tx|trame[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx|trame[0]~0_combout\ = !\tx|trame\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tx|trame\(1),
	combout => \tx|trame[0]~0_combout\);

-- Location: FF_X10_Y19_N1
\tx|trame[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tx|s_clk4800~clkctrl_outclk\,
	d => \tx|trame[0]~0_combout\,
	clrn => \tx|done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx|trame\(0));

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

-- Location: IOIBUF_X53_Y11_N8
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

ww_txd <= \txd~output_o\;

ww_rxd_out <= \rxd_out~output_o\;
END structure;


