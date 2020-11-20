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

-- DATE "11/20/2020 16:46:28"

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
	clk_50M : IN std_logic;
	chipselect : IN std_logic;
	write_n : IN std_logic;
	reset_n : IN std_logic;
	address : IN std_logic_vector(2 DOWNTO 0);
	writedata : IN std_logic_vector(31 DOWNTO 0);
	readdata : OUT std_logic_vector(31 DOWNTO 0);
	txd : OUT std_logic;
	done_probe : OUT std_logic;
	clk76800 : OUT std_logic
	);
END nmea_tx;

-- Design Ports Information
-- chipselect	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_n	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[8]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[9]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[11]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[12]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[14]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[16]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[17]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[18]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[19]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[20]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[21]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[22]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[23]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[24]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[25]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[26]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[27]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[28]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[29]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[30]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[31]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done_probe	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk76800	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk_50M : std_logic;
SIGNAL ww_chipselect : std_logic;
SIGNAL ww_write_n : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_txd : std_logic;
SIGNAL ww_done_probe : std_logic;
SIGNAL ww_clk76800 : std_logic;
SIGNAL \s_clk76800~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_clk4800~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \chipselect~input_o\ : std_logic;
SIGNAL \write_n~input_o\ : std_logic;
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
SIGNAL \reset_n~input_o\ : std_logic;
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
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \done_probe~output_o\ : std_logic;
SIGNAL \clk76800~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_count76800~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_count76800~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \s_count76800~2_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \s_count76800~1_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \s_count76800~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \s_clk76800~feeder_combout\ : std_logic;
SIGNAL \s_clk76800~q\ : std_logic;
SIGNAL \s_clk76800~clkctrl_outclk\ : std_logic;
SIGNAL \s_count4800[0]~2_combout\ : std_logic;
SIGNAL \s_count4800[1]~1_combout\ : std_logic;
SIGNAL \s_count4800[2]~0_combout\ : std_logic;
SIGNAL \s_clk4800~0_combout\ : std_logic;
SIGNAL \s_clk4800~q\ : std_logic;
SIGNAL \s_clk4800~clkctrl_outclk\ : std_logic;
SIGNAL \trame[39]~feeder_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \s_count1~12_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \s_count1~11_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \s_count1~10_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \s_count1~9_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \s_count1~8_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \s_count1~7_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \s_count1~6_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \s_count1~5_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \s_count1~4_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \s_count1~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \s_count1~2_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \s_count1~1_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \s_count1~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \count_bit[2]~8\ : std_logic;
SIGNAL \count_bit[3]~9_combout\ : std_logic;
SIGNAL \count_bit[4]~12\ : std_logic;
SIGNAL \count_bit[5]~13_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \count_bit[3]~10\ : std_logic;
SIGNAL \count_bit[4]~11_combout\ : std_logic;
SIGNAL \count_bit[0]~15_combout\ : std_logic;
SIGNAL \count_bit[1]~5_combout\ : std_logic;
SIGNAL \count_bit[1]~6\ : std_logic;
SIGNAL \count_bit[2]~7_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \fin_tx~0_combout\ : std_logic;
SIGNAL \fin_tx~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \start_stop~q\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \done~feeder_combout\ : std_logic;
SIGNAL \done~q\ : std_logic;
SIGNAL \trame[38]~24_combout\ : std_logic;
SIGNAL \trame[37]~feeder_combout\ : std_logic;
SIGNAL \trame[36]~23_combout\ : std_logic;
SIGNAL \trame[35]~feeder_combout\ : std_logic;
SIGNAL \trame[34]~22_combout\ : std_logic;
SIGNAL \trame[33]~feeder_combout\ : std_logic;
SIGNAL \trame[32]~feeder_combout\ : std_logic;
SIGNAL \trame[31]~21_combout\ : std_logic;
SIGNAL \trame[30]~20_combout\ : std_logic;
SIGNAL \trame[29]~19_combout\ : std_logic;
SIGNAL \trame[28]~18_combout\ : std_logic;
SIGNAL \trame[27]~feeder_combout\ : std_logic;
SIGNAL \trame[26]~17_combout\ : std_logic;
SIGNAL \trame[25]~feeder_combout\ : std_logic;
SIGNAL \trame[24]~16_combout\ : std_logic;
SIGNAL \trame[23]~feeder_combout\ : std_logic;
SIGNAL \trame[22]~15_combout\ : std_logic;
SIGNAL \trame[21]~feeder_combout\ : std_logic;
SIGNAL \trame[20]~14_combout\ : std_logic;
SIGNAL \trame[19]~13_combout\ : std_logic;
SIGNAL \trame[18]~12_combout\ : std_logic;
SIGNAL \trame[17]~feeder_combout\ : std_logic;
SIGNAL \trame[16]~11_combout\ : std_logic;
SIGNAL \trame[15]~feeder_combout\ : std_logic;
SIGNAL \trame[14]~10_combout\ : std_logic;
SIGNAL \trame[13]~9_combout\ : std_logic;
SIGNAL \trame[12]~8_combout\ : std_logic;
SIGNAL \trame[11]~7_combout\ : std_logic;
SIGNAL \trame[10]~6_combout\ : std_logic;
SIGNAL \trame[9]~5_combout\ : std_logic;
SIGNAL \trame[8]~4_combout\ : std_logic;
SIGNAL \trame[7]~feeder_combout\ : std_logic;
SIGNAL \trame[6]~3_combout\ : std_logic;
SIGNAL \trame[5]~feeder_combout\ : std_logic;
SIGNAL \trame[4]~2_combout\ : std_logic;
SIGNAL \trame[3]~1_combout\ : std_logic;
SIGNAL \trame[2]~feeder_combout\ : std_logic;
SIGNAL \trame[1]~feeder_combout\ : std_logic;
SIGNAL \trame[0]~0_combout\ : std_logic;
SIGNAL count_bit : std_logic_vector(5 DOWNTO 0);
SIGNAL trame : std_logic_vector(40 DOWNTO 0);
SIGNAL etat_nios : std_logic_vector(1 DOWNTO 0);
SIGNAL s_count76800 : std_logic_vector(9 DOWNTO 0);
SIGNAL s_count4800 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_count1 : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_done~q\ : std_logic;
SIGNAL ALT_INV_trame : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk_50M <= clk_50M;
ww_chipselect <= chipselect;
ww_write_n <= write_n;
ww_reset_n <= reset_n;
ww_address <= address;
ww_writedata <= writedata;
readdata <= ww_readdata;
txd <= ww_txd;
done_probe <= ww_done_probe;
clk76800 <= ww_clk76800;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\s_clk76800~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_clk76800~q\);

\s_clk4800~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_clk4800~q\);

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);
\ALT_INV_done~q\ <= NOT \done~q\;
ALT_INV_trame(0) <= NOT trame(0);

-- Location: IOOBUF_X0_Y7_N9
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

-- Location: IOOBUF_X53_Y11_N2
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

-- Location: IOOBUF_X0_Y24_N23
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

-- Location: IOOBUF_X49_Y34_N2
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

-- Location: IOOBUF_X51_Y34_N16
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X53_Y11_N9
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X0_Y26_N16
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

-- Location: IOOBUF_X53_Y10_N16
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

-- Location: IOOBUF_X45_Y34_N16
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

-- Location: IOOBUF_X34_Y34_N2
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

-- Location: IOOBUF_X36_Y0_N23
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

-- Location: IOOBUF_X43_Y34_N16
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X18_Y34_N23
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N16
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

-- Location: IOOBUF_X16_Y34_N16
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

-- Location: IOOBUF_X53_Y30_N9
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X18_Y34_N2
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

-- Location: IOOBUF_X40_Y34_N9
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X38_Y34_N16
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X53_Y9_N9
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

-- Location: IOOBUF_X53_Y13_N9
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

-- Location: IOOBUF_X1_Y34_N9
\txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_trame(0),
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\done_probe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_done~q\,
	devoe => ww_devoe,
	o => \done_probe~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\clk76800~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_clk76800~q\,
	devoe => ww_devoe,
	o => \clk76800~output_o\);

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

-- Location: LCCOMB_X23_Y33_N12
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

-- Location: LCCOMB_X23_Y33_N10
\s_count76800~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~4_combout\ = (\Add0~0_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count76800~4_combout\);

-- Location: FF_X23_Y33_N11
\s_count76800[0]\ : dffeas
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
	q => s_count76800(0));

-- Location: LCCOMB_X23_Y33_N14
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

-- Location: LCCOMB_X23_Y33_N0
\s_count76800~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~3_combout\ = (\Add0~2_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count76800~3_combout\);

-- Location: FF_X23_Y33_N1
\s_count76800[1]\ : dffeas
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
	q => s_count76800(1));

-- Location: LCCOMB_X23_Y33_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (s_count76800(2) & (\Add0~3\ $ (GND))) # (!s_count76800(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((s_count76800(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count76800(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X23_Y33_N17
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

-- Location: LCCOMB_X23_Y33_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_count76800(3) & (!\Add0~5\)) # (!s_count76800(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!s_count76800(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count76800(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y33_N2
\s_count76800~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~2_combout\ = (!\Equal0~2_combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datad => \Add0~6_combout\,
	combout => \s_count76800~2_combout\);

-- Location: FF_X23_Y33_N3
\s_count76800[3]\ : dffeas
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
	q => s_count76800(3));

-- Location: LCCOMB_X23_Y33_N20
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

-- Location: FF_X23_Y33_N21
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

-- Location: LCCOMB_X23_Y33_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (s_count76800(5) & (!\Add0~9\)) # (!s_count76800(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!s_count76800(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X23_Y33_N23
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

-- Location: LCCOMB_X23_Y33_N24
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

-- Location: FF_X23_Y33_N25
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

-- Location: LCCOMB_X23_Y33_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_count76800(7) & (!\Add0~13\)) # (!s_count76800(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!s_count76800(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X23_Y33_N6
\s_count76800~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~1_combout\ = (\Add0~14_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count76800~1_combout\);

-- Location: FF_X23_Y33_N7
\s_count76800[7]\ : dffeas
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
	q => s_count76800(7));

-- Location: LCCOMB_X23_Y33_N28
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

-- Location: FF_X23_Y33_N29
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

-- Location: LCCOMB_X23_Y33_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = s_count76800(9) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count76800(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X23_Y33_N8
\s_count76800~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count76800~0_combout\ = (\Add0~18_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal0~2_combout\,
	combout => \s_count76800~0_combout\);

-- Location: FF_X23_Y33_N9
\s_count76800[9]\ : dffeas
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
	q => s_count76800(9));

-- Location: LCCOMB_X23_Y33_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (s_count76800(7) & (!s_count76800(6) & (s_count76800(9) & !s_count76800(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(7),
	datab => s_count76800(6),
	datac => s_count76800(9),
	datad => s_count76800(8),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y33_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (s_count76800(3) & (!s_count76800(4) & (!s_count76800(2) & !s_count76800(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(3),
	datab => s_count76800(4),
	datac => s_count76800(2),
	datad => s_count76800(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y33_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!s_count76800(0) & (\Equal0~0_combout\ & (s_count76800(1) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count76800(0),
	datab => \Equal0~0_combout\,
	datac => s_count76800(1),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X24_Y33_N2
\s_clk76800~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_clk76800~feeder_combout\ = \Equal0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal0~2_combout\,
	combout => \s_clk76800~feeder_combout\);

-- Location: FF_X24_Y33_N3
s_clk76800 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_clk76800~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_clk76800~q\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X25_Y33_N26
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

-- Location: FF_X25_Y33_N27
\s_count4800[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \s_count4800[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count4800(0));

-- Location: LCCOMB_X25_Y33_N18
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

-- Location: FF_X25_Y33_N19
\s_count4800[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \s_count4800[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count4800(1));

-- Location: LCCOMB_X25_Y33_N30
\s_count4800[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count4800[2]~0_combout\ = s_count4800(2) $ (((s_count4800(1) & s_count4800(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_count4800(1),
	datac => s_count4800(2),
	datad => s_count4800(0),
	combout => \s_count4800[2]~0_combout\);

-- Location: FF_X25_Y33_N31
\s_count4800[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	d => \s_count4800[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count4800(2));

-- Location: LCCOMB_X25_Y33_N16
\s_clk4800~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_clk4800~0_combout\ = \s_clk4800~q\ $ (((s_count4800(2) & (s_count4800(0) & s_count4800(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count4800(2),
	datab => \s_clk4800~q\,
	datac => s_count4800(0),
	datad => s_count4800(1),
	combout => \s_clk4800~0_combout\);

-- Location: FF_X25_Y33_N13
s_clk4800 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk76800~clkctrl_outclk\,
	asdata => \s_clk4800~0_combout\,
	sload => VCC,
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

-- Location: LCCOMB_X8_Y33_N10
\trame[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[39]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \trame[39]~feeder_combout\);

-- Location: LCCOMB_X4_Y33_N6
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = s_count1(0) $ (VCC)
-- \Add2~1\ = CARRY(s_count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_count1(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X4_Y33_N2
\s_count1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~12_combout\ = (\Add2~0_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Equal2~8_combout\,
	combout => \s_count1~12_combout\);

-- Location: FF_X4_Y33_N3
\s_count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(0));

-- Location: LCCOMB_X4_Y33_N8
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (s_count1(1) & (!\Add2~1\)) # (!s_count1(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!s_count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X4_Y33_N9
\s_count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(1));

-- Location: LCCOMB_X4_Y33_N4
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!s_count1(0) & !s_count1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_count1(0),
	datad => s_count1(1),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X4_Y33_N10
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (s_count1(2) & (\Add2~3\ $ (GND))) # (!s_count1(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((s_count1(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X4_Y33_N11
\s_count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(2));

-- Location: LCCOMB_X4_Y33_N12
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (s_count1(3) & (!\Add2~5\)) # (!s_count1(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!s_count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X4_Y33_N13
\s_count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(3));

-- Location: LCCOMB_X4_Y33_N14
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (s_count1(4) & (\Add2~7\ $ (GND))) # (!s_count1(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((s_count1(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X4_Y33_N15
\s_count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(4));

-- Location: LCCOMB_X4_Y33_N16
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (s_count1(5) & (!\Add2~9\)) # (!s_count1(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!s_count1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X4_Y33_N17
\s_count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(5));

-- Location: LCCOMB_X4_Y33_N18
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (s_count1(6) & (\Add2~11\ $ (GND))) # (!s_count1(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((s_count1(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X4_Y33_N19
\s_count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(6));

-- Location: LCCOMB_X4_Y33_N20
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (s_count1(7) & (!\Add2~13\)) # (!s_count1(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!s_count1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X4_Y33_N0
\s_count1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~11_combout\ = (\Add2~14_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datac => \Equal2~8_combout\,
	combout => \s_count1~11_combout\);

-- Location: FF_X4_Y33_N1
\s_count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(7));

-- Location: LCCOMB_X4_Y33_N22
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (s_count1(8) & (\Add2~15\ $ (GND))) # (!s_count1(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((s_count1(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X4_Y33_N23
\s_count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(8));

-- Location: LCCOMB_X4_Y33_N24
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (s_count1(9) & (!\Add2~17\)) # (!s_count1(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!s_count1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X4_Y33_N25
\s_count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(9));

-- Location: LCCOMB_X5_Y33_N24
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (s_count1(7) & (!s_count1(6) & (!s_count1(8) & !s_count1(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(7),
	datab => s_count1(6),
	datac => s_count1(8),
	datad => s_count1(9),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X3_Y33_N28
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!s_count1(2) & (!s_count1(3) & (!s_count1(4) & !s_count1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(2),
	datab => s_count1(3),
	datac => s_count1(4),
	datad => s_count1(5),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X4_Y33_N26
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (s_count1(10) & (\Add2~19\ $ (GND))) # (!s_count1(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((s_count1(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X4_Y33_N27
\s_count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(10));

-- Location: LCCOMB_X4_Y33_N28
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (s_count1(11) & (!\Add2~21\)) # (!s_count1(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!s_count1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X4_Y33_N29
\s_count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(11));

-- Location: LCCOMB_X4_Y33_N30
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (s_count1(12) & (\Add2~23\ $ (GND))) # (!s_count1(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((s_count1(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X5_Y32_N4
\s_count1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~10_combout\ = (!\Equal2~8_combout\ & \Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add2~24_combout\,
	combout => \s_count1~10_combout\);

-- Location: FF_X5_Y32_N5
\s_count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(12));

-- Location: LCCOMB_X4_Y32_N0
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (s_count1(13) & (!\Add2~25\)) # (!s_count1(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!s_count1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X5_Y32_N30
\s_count1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~9_combout\ = (!\Equal2~8_combout\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datac => \Add2~26_combout\,
	combout => \s_count1~9_combout\);

-- Location: FF_X5_Y32_N31
\s_count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(13));

-- Location: LCCOMB_X4_Y32_N2
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (s_count1(14) & (\Add2~27\ $ (GND))) # (!s_count1(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((s_count1(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X5_Y32_N6
\s_count1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~8_combout\ = (!\Equal2~8_combout\ & \Add2~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add2~28_combout\,
	combout => \s_count1~8_combout\);

-- Location: FF_X5_Y32_N7
\s_count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(14));

-- Location: LCCOMB_X4_Y32_N4
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (s_count1(15) & (!\Add2~29\)) # (!s_count1(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!s_count1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X5_Y32_N28
\s_count1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~7_combout\ = (!\Equal2~8_combout\ & \Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datac => \Add2~30_combout\,
	combout => \s_count1~7_combout\);

-- Location: FF_X5_Y32_N29
\s_count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(15));

-- Location: LCCOMB_X4_Y32_N6
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (s_count1(16) & (\Add2~31\ $ (GND))) # (!s_count1(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((s_count1(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X4_Y32_N7
\s_count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(16));

-- Location: LCCOMB_X4_Y32_N8
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (s_count1(17) & (!\Add2~33\)) # (!s_count1(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!s_count1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X5_Y32_N14
\s_count1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~6_combout\ = (!\Equal2~8_combout\ & \Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add2~34_combout\,
	combout => \s_count1~6_combout\);

-- Location: FF_X5_Y32_N15
\s_count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(17));

-- Location: LCCOMB_X5_Y32_N12
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (s_count1(14) & (s_count1(17) & (!s_count1(16) & s_count1(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(14),
	datab => s_count1(17),
	datac => s_count1(16),
	datad => s_count1(15),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X4_Y32_N10
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (s_count1(18) & (\Add2~35\ $ (GND))) # (!s_count1(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((s_count1(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X4_Y32_N11
\s_count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(18));

-- Location: LCCOMB_X4_Y32_N12
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (s_count1(19) & (!\Add2~37\)) # (!s_count1(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!s_count1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X5_Y32_N18
\s_count1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~5_combout\ = (!\Equal2~8_combout\ & \Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add2~38_combout\,
	combout => \s_count1~5_combout\);

-- Location: FF_X5_Y32_N19
\s_count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(19));

-- Location: LCCOMB_X4_Y32_N14
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (s_count1(20) & (\Add2~39\ $ (GND))) # (!s_count1(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((s_count1(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X4_Y32_N30
\s_count1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~4_combout\ = (\Add2~40_combout\ & !\Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~40_combout\,
	datad => \Equal2~8_combout\,
	combout => \s_count1~4_combout\);

-- Location: FF_X4_Y32_N31
\s_count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(20));

-- Location: LCCOMB_X4_Y32_N16
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (s_count1(21) & (!\Add2~41\)) # (!s_count1(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!s_count1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X4_Y32_N28
\s_count1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~3_combout\ = (!\Equal2~8_combout\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~8_combout\,
	datad => \Add2~42_combout\,
	combout => \s_count1~3_combout\);

-- Location: FF_X4_Y32_N29
\s_count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(21));

-- Location: LCCOMB_X5_Y32_N8
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!s_count1(18) & (s_count1(21) & (s_count1(20) & s_count1(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(18),
	datab => s_count1(21),
	datac => s_count1(20),
	datad => s_count1(19),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X5_Y32_N26
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!s_count1(10) & (s_count1(12) & (!s_count1(11) & s_count1(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(10),
	datab => s_count1(12),
	datac => s_count1(11),
	datad => s_count1(13),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X4_Y32_N18
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (s_count1(22) & (\Add2~43\ $ (GND))) # (!s_count1(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((s_count1(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X4_Y32_N26
\s_count1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~2_combout\ = (!\Equal2~8_combout\ & \Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~8_combout\,
	datad => \Add2~44_combout\,
	combout => \s_count1~2_combout\);

-- Location: FF_X4_Y32_N27
\s_count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(22));

-- Location: LCCOMB_X4_Y32_N20
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (s_count1(23) & (!\Add2~45\)) # (!s_count1(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!s_count1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count1(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X5_Y32_N10
\s_count1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~1_combout\ = (!\Equal2~8_combout\ & \Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add2~46_combout\,
	combout => \s_count1~1_combout\);

-- Location: FF_X5_Y32_N11
\s_count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(23));

-- Location: LCCOMB_X4_Y32_N22
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (s_count1(24) & (\Add2~47\ $ (GND))) # (!s_count1(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((s_count1(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X4_Y32_N23
\s_count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(24));

-- Location: LCCOMB_X4_Y32_N24
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = \Add2~49\ $ (s_count1(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => s_count1(25),
	cin => \Add2~49\,
	combout => \Add2~50_combout\);

-- Location: LCCOMB_X5_Y32_N24
\s_count1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count1~0_combout\ = (!\Equal2~8_combout\ & \Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~8_combout\,
	datad => \Add2~50_combout\,
	combout => \s_count1~0_combout\);

-- Location: FF_X5_Y32_N25
\s_count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \s_count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count1(25));

-- Location: LCCOMB_X5_Y32_N20
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (s_count1(23) & (s_count1(25) & (s_count1(22) & !s_count1(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count1(23),
	datab => s_count1(25),
	datac => s_count1(22),
	datad => s_count1(24),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X5_Y32_N16
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~2_combout\ & (\Equal2~1_combout\ & (\Equal2~3_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X5_Y32_N22
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (\Equal2~7_combout\ & (\Equal2~5_combout\ & (\Equal2~6_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~7_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~6_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X6_Y33_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ((\done~q\) # ((etat_nios(1) & !\Equal2~8_combout\))) # (!\start_stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~q\,
	datab => \done~q\,
	datac => etat_nios(1),
	datad => \Equal2~8_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X6_Y33_N31
\etat_nios[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => etat_nios(1));

-- Location: LCCOMB_X5_Y33_N10
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

-- Location: LCCOMB_X5_Y33_N12
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

-- Location: LCCOMB_X5_Y33_N14
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

-- Location: LCCOMB_X5_Y33_N16
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

-- Location: FF_X5_Y33_N17
\count_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit[5]~13_combout\,
	clrn => \done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(5));

-- Location: LCCOMB_X5_Y33_N4
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

-- Location: FF_X5_Y33_N13
\count_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit[3]~9_combout\,
	clrn => \done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(3));

-- Location: FF_X5_Y33_N15
\count_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit[4]~11_combout\,
	clrn => \done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(4));

-- Location: LCCOMB_X5_Y33_N26
\count_bit[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit[0]~15_combout\ = count_bit(0) $ ((((\LessThan0~0_combout\ & !count_bit(4))) # (!count_bit(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => count_bit(4),
	datac => count_bit(0),
	datad => count_bit(5),
	combout => \count_bit[0]~15_combout\);

-- Location: FF_X5_Y33_N27
\count_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit[0]~15_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(0));

-- Location: LCCOMB_X5_Y33_N8
\count_bit[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_bit[1]~5_combout\ = (count_bit(0) & (count_bit(1) $ (VCC))) # (!count_bit(0) & (count_bit(1) & VCC))
-- \count_bit[1]~6\ = CARRY((count_bit(0) & count_bit(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_bit(0),
	datab => count_bit(1),
	datad => VCC,
	combout => \count_bit[1]~5_combout\,
	cout => \count_bit[1]~6\);

-- Location: FF_X5_Y33_N9
\count_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit[1]~5_combout\,
	clrn => \done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(1));

-- Location: FF_X5_Y33_N11
\count_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \count_bit[2]~7_combout\,
	clrn => \done~q\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_bit(2));

-- Location: LCCOMB_X5_Y33_N18
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

-- Location: LCCOMB_X5_Y33_N28
\fin_tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fin_tx~0_combout\ = (\fin_tx~q\) # ((count_bit(5) & ((count_bit(4)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => count_bit(4),
	datac => \fin_tx~q\,
	datad => count_bit(5),
	combout => \fin_tx~0_combout\);

-- Location: FF_X5_Y33_N29
fin_tx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \fin_tx~0_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fin_tx~q\);

-- Location: LCCOMB_X6_Y33_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\start_stop~q\ & ((!\fin_tx~q\) # (!\done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~q\,
	datab => \done~q\,
	datad => \fin_tx~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X6_Y33_N12
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\Mux3~0_combout\ & (((\done~q\) # (!\Equal2~8_combout\)) # (!etat_nios(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => etat_nios(1),
	datab => \done~q\,
	datac => \Equal2~8_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X6_Y33_N13
start_stop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_stop~q\);

-- Location: LCCOMB_X5_Y33_N30
\done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\done~q\ & (((!\fin_tx~q\) # (!etat_nios(1))))) # (!\done~q\ & (!\start_stop~q\ & (!etat_nios(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \done~q\,
	datab => \start_stop~q\,
	datac => etat_nios(1),
	datad => \fin_tx~q\,
	combout => \done~0_combout\);

-- Location: LCCOMB_X6_Y33_N2
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

-- Location: FF_X6_Y33_N3
done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \done~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~q\);

-- Location: FF_X8_Y33_N11
\trame[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[39]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(39));

-- Location: LCCOMB_X8_Y33_N24
\trame[38]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[38]~24_combout\ = !trame(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(39),
	combout => \trame[38]~24_combout\);

-- Location: FF_X8_Y33_N25
\trame[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[38]~24_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(38));

-- Location: LCCOMB_X8_Y33_N6
\trame[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[37]~feeder_combout\ = trame(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(38),
	combout => \trame[37]~feeder_combout\);

-- Location: FF_X8_Y33_N7
\trame[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[37]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(37));

-- Location: LCCOMB_X8_Y33_N0
\trame[36]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[36]~23_combout\ = !trame(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(37),
	combout => \trame[36]~23_combout\);

-- Location: FF_X8_Y33_N1
\trame[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[36]~23_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(36));

-- Location: LCCOMB_X8_Y33_N2
\trame[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[35]~feeder_combout\ = trame(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(36),
	combout => \trame[35]~feeder_combout\);

-- Location: FF_X8_Y33_N3
\trame[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[35]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(35));

-- Location: LCCOMB_X8_Y33_N28
\trame[34]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[34]~22_combout\ = !trame(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(35),
	combout => \trame[34]~22_combout\);

-- Location: FF_X8_Y33_N29
\trame[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[34]~22_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(34));

-- Location: LCCOMB_X8_Y33_N18
\trame[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[33]~feeder_combout\ = trame(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(34),
	combout => \trame[33]~feeder_combout\);

-- Location: FF_X8_Y33_N19
\trame[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[33]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(33));

-- Location: LCCOMB_X8_Y33_N16
\trame[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[32]~feeder_combout\ = trame(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(33),
	combout => \trame[32]~feeder_combout\);

-- Location: FF_X8_Y33_N17
\trame[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[32]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(32));

-- Location: LCCOMB_X8_Y33_N26
\trame[31]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[31]~21_combout\ = !trame(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(32),
	combout => \trame[31]~21_combout\);

-- Location: FF_X8_Y33_N27
\trame[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[31]~21_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(31));

-- Location: LCCOMB_X8_Y33_N20
\trame[30]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[30]~20_combout\ = !trame(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => trame(31),
	combout => \trame[30]~20_combout\);

-- Location: FF_X8_Y33_N21
\trame[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[30]~20_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(30));

-- Location: LCCOMB_X8_Y33_N14
\trame[29]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[29]~19_combout\ = !trame(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(30),
	combout => \trame[29]~19_combout\);

-- Location: FF_X8_Y33_N15
\trame[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[29]~19_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(29));

-- Location: LCCOMB_X8_Y33_N12
\trame[28]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[28]~18_combout\ = !trame(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => trame(29),
	combout => \trame[28]~18_combout\);

-- Location: FF_X8_Y33_N13
\trame[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[28]~18_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(28));

-- Location: LCCOMB_X8_Y33_N22
\trame[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[27]~feeder_combout\ = trame(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(28),
	combout => \trame[27]~feeder_combout\);

-- Location: FF_X8_Y33_N23
\trame[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[27]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(27));

-- Location: LCCOMB_X8_Y33_N4
\trame[26]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[26]~17_combout\ = !trame(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => trame(27),
	combout => \trame[26]~17_combout\);

-- Location: FF_X8_Y33_N5
\trame[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[26]~17_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(26));

-- Location: LCCOMB_X7_Y33_N20
\trame[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[25]~feeder_combout\ = trame(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(26),
	combout => \trame[25]~feeder_combout\);

-- Location: FF_X7_Y33_N21
\trame[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[25]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(25));

-- Location: LCCOMB_X7_Y33_N2
\trame[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[24]~16_combout\ = !trame(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(25),
	combout => \trame[24]~16_combout\);

-- Location: FF_X7_Y33_N3
\trame[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[24]~16_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(24));

-- Location: LCCOMB_X7_Y33_N24
\trame[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[23]~feeder_combout\ = trame(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(24),
	combout => \trame[23]~feeder_combout\);

-- Location: FF_X7_Y33_N25
\trame[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[23]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(23));

-- Location: LCCOMB_X7_Y33_N10
\trame[22]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[22]~15_combout\ = !trame(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(23),
	combout => \trame[22]~15_combout\);

-- Location: FF_X7_Y33_N11
\trame[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[22]~15_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(22));

-- Location: LCCOMB_X7_Y33_N12
\trame[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[21]~feeder_combout\ = trame(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(22),
	combout => \trame[21]~feeder_combout\);

-- Location: FF_X7_Y33_N13
\trame[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[21]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(21));

-- Location: LCCOMB_X7_Y33_N22
\trame[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[20]~14_combout\ = !trame(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(21),
	combout => \trame[20]~14_combout\);

-- Location: FF_X7_Y33_N23
\trame[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[20]~14_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(20));

-- Location: LCCOMB_X7_Y33_N16
\trame[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[19]~13_combout\ = !trame(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => trame(20),
	combout => \trame[19]~13_combout\);

-- Location: FF_X7_Y33_N17
\trame[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[19]~13_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(19));

-- Location: LCCOMB_X7_Y33_N6
\trame[18]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[18]~12_combout\ = !trame(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(19),
	combout => \trame[18]~12_combout\);

-- Location: FF_X7_Y33_N7
\trame[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[18]~12_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(18));

-- Location: LCCOMB_X7_Y33_N28
\trame[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[17]~feeder_combout\ = trame(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(18),
	combout => \trame[17]~feeder_combout\);

-- Location: FF_X7_Y33_N29
\trame[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[17]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(17));

-- Location: LCCOMB_X7_Y33_N18
\trame[16]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[16]~11_combout\ = !trame(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(17),
	combout => \trame[16]~11_combout\);

-- Location: FF_X7_Y33_N19
\trame[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[16]~11_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(16));

-- Location: LCCOMB_X7_Y33_N4
\trame[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[15]~feeder_combout\ = trame(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(16),
	combout => \trame[15]~feeder_combout\);

-- Location: FF_X7_Y33_N5
\trame[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[15]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(15));

-- Location: LCCOMB_X6_Y33_N16
\trame[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[14]~10_combout\ = !trame(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(15),
	combout => \trame[14]~10_combout\);

-- Location: FF_X6_Y33_N17
\trame[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[14]~10_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(14));

-- Location: LCCOMB_X6_Y33_N22
\trame[13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[13]~9_combout\ = !trame(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(14),
	combout => \trame[13]~9_combout\);

-- Location: FF_X6_Y33_N23
\trame[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[13]~9_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(13));

-- Location: LCCOMB_X6_Y33_N24
\trame[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[12]~8_combout\ = !trame(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => trame(13),
	combout => \trame[12]~8_combout\);

-- Location: FF_X6_Y33_N25
\trame[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[12]~8_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(12));

-- Location: LCCOMB_X6_Y33_N26
\trame[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[11]~7_combout\ = !trame(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(12),
	combout => \trame[11]~7_combout\);

-- Location: FF_X6_Y33_N27
\trame[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[11]~7_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(11));

-- Location: LCCOMB_X6_Y33_N4
\trame[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[10]~6_combout\ = !trame(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => trame(11),
	combout => \trame[10]~6_combout\);

-- Location: FF_X6_Y33_N5
\trame[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[10]~6_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(10));

-- Location: LCCOMB_X5_Y33_N20
\trame[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[9]~5_combout\ = !trame(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(10),
	combout => \trame[9]~5_combout\);

-- Location: FF_X5_Y33_N21
\trame[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[9]~5_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(9));

-- Location: LCCOMB_X5_Y33_N6
\trame[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[8]~4_combout\ = !trame(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(9),
	combout => \trame[8]~4_combout\);

-- Location: FF_X5_Y33_N7
\trame[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[8]~4_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(8));

-- Location: LCCOMB_X5_Y33_N0
\trame[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[7]~feeder_combout\ = trame(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(8),
	combout => \trame[7]~feeder_combout\);

-- Location: FF_X5_Y33_N1
\trame[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[7]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(7));

-- Location: LCCOMB_X5_Y33_N22
\trame[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[6]~3_combout\ = !trame(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(7),
	combout => \trame[6]~3_combout\);

-- Location: FF_X5_Y33_N23
\trame[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[6]~3_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(6));

-- Location: LCCOMB_X6_Y33_N18
\trame[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[5]~feeder_combout\ = trame(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(6),
	combout => \trame[5]~feeder_combout\);

-- Location: FF_X6_Y33_N19
\trame[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[5]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(5));

-- Location: LCCOMB_X6_Y33_N20
\trame[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[4]~2_combout\ = !trame(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(5),
	combout => \trame[4]~2_combout\);

-- Location: FF_X6_Y33_N21
\trame[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[4]~2_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(4));

-- Location: LCCOMB_X6_Y33_N10
\trame[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[3]~1_combout\ = !trame(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(4),
	combout => \trame[3]~1_combout\);

-- Location: FF_X6_Y33_N11
\trame[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[3]~1_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(3));

-- Location: LCCOMB_X6_Y33_N6
\trame[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[2]~feeder_combout\ = trame(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(3),
	combout => \trame[2]~feeder_combout\);

-- Location: FF_X6_Y33_N7
\trame[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[2]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(2));

-- Location: LCCOMB_X6_Y33_N28
\trame[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[1]~feeder_combout\ = trame(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(2),
	combout => \trame[1]~feeder_combout\);

-- Location: FF_X6_Y33_N29
\trame[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[1]~feeder_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(1));

-- Location: LCCOMB_X6_Y33_N8
\trame[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \trame[0]~0_combout\ = !trame(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => trame(1),
	combout => \trame[0]~0_combout\);

-- Location: FF_X6_Y33_N9
\trame[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_clk4800~clkctrl_outclk\,
	d => \trame[0]~0_combout\,
	clrn => \done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trame(0));

-- Location: IOIBUF_X1_Y0_N8
\chipselect~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chipselect,
	o => \chipselect~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\write_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_n,
	o => \write_n~input_o\);

-- Location: IOIBUF_X49_Y34_N8
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\writedata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\writedata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\writedata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\writedata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\writedata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\writedata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\writedata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\writedata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\writedata[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(8),
	o => \writedata[8]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\writedata[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(9),
	o => \writedata[9]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\writedata[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(10),
	o => \writedata[10]~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\writedata[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(11),
	o => \writedata[11]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\writedata[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(12),
	o => \writedata[12]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\writedata[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(13),
	o => \writedata[13]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\writedata[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(14),
	o => \writedata[14]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\writedata[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(15),
	o => \writedata[15]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\writedata[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(16),
	o => \writedata[16]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\writedata[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(17),
	o => \writedata[17]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\writedata[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(18),
	o => \writedata[18]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\writedata[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(19),
	o => \writedata[19]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\writedata[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(20),
	o => \writedata[20]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\writedata[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(21),
	o => \writedata[21]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\writedata[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(22),
	o => \writedata[22]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\writedata[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(23),
	o => \writedata[23]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\writedata[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(24),
	o => \writedata[24]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\writedata[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(25),
	o => \writedata[25]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\writedata[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(26),
	o => \writedata[26]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\writedata[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(27),
	o => \writedata[27]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\writedata[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(28),
	o => \writedata[28]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\writedata[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(29),
	o => \writedata[29]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\writedata[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(30),
	o => \writedata[30]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\writedata[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(31),
	o => \writedata[31]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

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

ww_txd <= \txd~output_o\;

ww_done_probe <= \done_probe~output_o\;

ww_clk76800 <= \clk76800~output_o\;
END structure;


