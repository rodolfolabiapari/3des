-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/10/2015 23:45:53"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	sbox1 IS
    PORT (
	clk : IN std_logic;
	address16 : IN std_logic_vector(3 DOWNTO 0);
	address4 : IN std_logic_vector(1 DOWNTO 0);
	data_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END sbox1;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address4[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address4[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address16[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address16[0]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address16[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address16[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sbox1 IS
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
SIGNAL ww_address16 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_address4 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \address16[2]~input_o\ : std_logic;
SIGNAL \address4[1]~input_o\ : std_logic;
SIGNAL \address4[0]~input_o\ : std_logic;
SIGNAL \address16[0]~input_o\ : std_logic;
SIGNAL \address16[1]~input_o\ : std_logic;
SIGNAL \data_out~1_combout\ : std_logic;
SIGNAL \data_out~2_combout\ : std_logic;
SIGNAL \address16[3]~input_o\ : std_logic;
SIGNAL \data_out~3_combout\ : std_logic;
SIGNAL \data_out~4_combout\ : std_logic;
SIGNAL \data_out~0_combout\ : std_logic;
SIGNAL \data_out~5_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \data_out~10_combout\ : std_logic;
SIGNAL \data_out~7_combout\ : std_logic;
SIGNAL \data_out~8_combout\ : std_logic;
SIGNAL \data_out~9_combout\ : std_logic;
SIGNAL \data_out~6_combout\ : std_logic;
SIGNAL \data_out~11_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \data_out~14_combout\ : std_logic;
SIGNAL \data_out~13_combout\ : std_logic;
SIGNAL \data_out~15_combout\ : std_logic;
SIGNAL \data_out~12_combout\ : std_logic;
SIGNAL \data_out~16_combout\ : std_logic;
SIGNAL \data_out~17_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \data_out~18_combout\ : std_logic;
SIGNAL \data_out~19_combout\ : std_logic;
SIGNAL \data_out~20_combout\ : std_logic;
SIGNAL \data_out~21_combout\ : std_logic;
SIGNAL \data_out~22_combout\ : std_logic;
SIGNAL \data_out~23_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_address16 <= address16;
ww_address4 <= address4;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y35_N16
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X0_Y26_N15
\address16[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address16(2),
	o => \address16[2]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\address4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address4(1),
	o => \address4[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\address4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address4(0),
	o => \address4[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\address16[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address16(0),
	o => \address16[0]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\address16[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address16(1),
	o => \address16[1]~input_o\);

-- Location: LCCOMB_X2_Y29_N14
\data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~1_combout\ = (\address4[0]~input_o\ & (\address4[1]~input_o\ $ (((!\address16[1]~input_o\) # (!\address16[0]~input_o\))))) # (!\address4[0]~input_o\ & ((\address16[1]~input_o\ & (!\address4[1]~input_o\)) # (!\address16[1]~input_o\ & 
-- ((\address16[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~1_combout\);

-- Location: LCCOMB_X2_Y29_N8
\data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~2_combout\ = (\address4[1]~input_o\ & (!\address16[1]~input_o\ & (\address4[0]~input_o\ $ (\address16[0]~input_o\)))) # (!\address4[1]~input_o\ & (\address16[1]~input_o\ $ (((\address4[0]~input_o\ & \address16[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~2_combout\);

-- Location: IOIBUF_X0_Y32_N22
\address16[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address16(3),
	o => \address16[3]~input_o\);

-- Location: LCCOMB_X2_Y29_N10
\data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~3_combout\ = (\address16[2]~input_o\ & (((\address16[3]~input_o\)))) # (!\address16[2]~input_o\ & ((\address16[3]~input_o\ & (!\data_out~1_combout\)) # (!\address16[3]~input_o\ & ((\data_out~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address16[2]~input_o\,
	datab => \data_out~1_combout\,
	datac => \data_out~2_combout\,
	datad => \address16[3]~input_o\,
	combout => \data_out~3_combout\);

-- Location: LCCOMB_X2_Y29_N28
\data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~4_combout\ = (\address16[1]~input_o\ & (\address4[1]~input_o\ $ (\address4[0]~input_o\ $ (!\address16[0]~input_o\)))) # (!\address16[1]~input_o\ & (\address4[1]~input_o\ & ((\address4[0]~input_o\) # (\address16[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~4_combout\);

-- Location: LCCOMB_X2_Y29_N12
\data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~0_combout\ = (\address4[0]~input_o\ & (!\address16[1]~input_o\ & ((!\address16[0]~input_o\) # (!\address4[1]~input_o\)))) # (!\address4[0]~input_o\ & (\address4[1]~input_o\ $ (\address16[0]~input_o\ $ (!\address16[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~0_combout\);

-- Location: LCCOMB_X2_Y29_N0
\data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~5_combout\ = (\data_out~3_combout\ & (((!\address16[2]~input_o\)) # (!\data_out~4_combout\))) # (!\data_out~3_combout\ & (((\address16[2]~input_o\ & !\data_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~3_combout\,
	datab => \data_out~4_combout\,
	datac => \address16[2]~input_o\,
	datad => \data_out~0_combout\,
	combout => \data_out~5_combout\);

-- Location: FF_X2_Y29_N1
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: LCCOMB_X2_Y29_N30
\data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~10_combout\ = (\address4[1]~input_o\ & ((\address4[0]~input_o\ & (\address16[0]~input_o\)) # (!\address4[0]~input_o\ & ((\address16[1]~input_o\))))) # (!\address4[1]~input_o\ & ((\address4[0]~input_o\ $ (!\address16[0]~input_o\)) # 
-- (!\address16[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~10_combout\);

-- Location: LCCOMB_X2_Y29_N16
\data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~7_combout\ = (\address4[1]~input_o\ & ((\address4[0]~input_o\ & (!\address16[0]~input_o\ & !\address16[1]~input_o\)) # (!\address4[0]~input_o\ & (\address16[0]~input_o\ $ (\address16[1]~input_o\))))) # (!\address4[1]~input_o\ & 
-- (\address16[1]~input_o\ & (\address4[0]~input_o\ $ (\address16[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~7_combout\);

-- Location: LCCOMB_X2_Y29_N18
\data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~8_combout\ = (\address4[0]~input_o\ & (\address4[1]~input_o\ $ (\address16[0]~input_o\ $ (\address16[1]~input_o\)))) # (!\address4[0]~input_o\ & (!\address16[0]~input_o\ & (\address4[1]~input_o\ $ (!\address16[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~8_combout\);

-- Location: LCCOMB_X2_Y29_N20
\data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~9_combout\ = (\address16[3]~input_o\ & (((\address16[2]~input_o\)) # (!\data_out~7_combout\))) # (!\address16[3]~input_o\ & (((!\address16[2]~input_o\ & \data_out~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address16[3]~input_o\,
	datab => \data_out~7_combout\,
	datac => \address16[2]~input_o\,
	datad => \data_out~8_combout\,
	combout => \data_out~9_combout\);

-- Location: LCCOMB_X2_Y29_N22
\data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~6_combout\ = (\address16[1]~input_o\ & ((\address16[0]~input_o\ & (\address4[1]~input_o\)) # (!\address16[0]~input_o\ & ((!\address4[0]~input_o\))))) # (!\address16[1]~input_o\ & (((!\address4[0]~input_o\ & \address16[0]~input_o\)) # 
-- (!\address4[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~6_combout\);

-- Location: LCCOMB_X2_Y29_N26
\data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~11_combout\ = (\data_out~9_combout\ & (((!\address16[2]~input_o\)) # (!\data_out~10_combout\))) # (!\data_out~9_combout\ & (((\data_out~6_combout\ & \address16[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~10_combout\,
	datab => \data_out~9_combout\,
	datac => \data_out~6_combout\,
	datad => \address16[2]~input_o\,
	combout => \data_out~11_combout\);

-- Location: FF_X2_Y29_N27
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: LCCOMB_X2_Y29_N4
\data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~14_combout\ = (\address4[0]~input_o\ & ((\address4[1]~input_o\ & ((\address16[1]~input_o\))) # (!\address4[1]~input_o\ & (!\address16[0]~input_o\ & !\address16[1]~input_o\)))) # (!\address4[0]~input_o\ & (\address16[0]~input_o\ & 
-- ((\address4[1]~input_o\) # (\address16[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~14_combout\);

-- Location: LCCOMB_X2_Y29_N2
\data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~13_combout\ = (\address4[1]~input_o\ & ((\address16[0]~input_o\ & (\address4[0]~input_o\ & !\address16[1]~input_o\)) # (!\address16[0]~input_o\ & ((\address16[1]~input_o\))))) # (!\address4[1]~input_o\ & (\address16[1]~input_o\ $ 
-- (((!\address16[0]~input_o\) # (!\address4[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~13_combout\);

-- Location: LCCOMB_X1_Y29_N12
\data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~15_combout\ = (\address16[3]~input_o\ & (((\address16[2]~input_o\) # (!\data_out~13_combout\)))) # (!\address16[3]~input_o\ & (!\data_out~14_combout\ & (!\address16[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~14_combout\,
	datab => \address16[3]~input_o\,
	datac => \address16[2]~input_o\,
	datad => \data_out~13_combout\,
	combout => \data_out~15_combout\);

-- Location: LCCOMB_X2_Y29_N24
\data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~12_combout\ = (\address4[0]~input_o\ & (\address16[0]~input_o\ $ (((\address4[1]~input_o\ & \address16[1]~input_o\))))) # (!\address4[0]~input_o\ & ((\address16[1]~input_o\) # ((!\address4[1]~input_o\ & !\address16[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~12_combout\);

-- Location: LCCOMB_X2_Y29_N6
\data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~16_combout\ = (\address16[1]~input_o\ & (\address4[1]~input_o\ $ (((!\address4[0]~input_o\ & \address16[0]~input_o\))))) # (!\address16[1]~input_o\ & (!\address4[1]~input_o\ & (\address4[0]~input_o\ $ (!\address16[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[1]~input_o\,
	datab => \address4[0]~input_o\,
	datac => \address16[0]~input_o\,
	datad => \address16[1]~input_o\,
	combout => \data_out~16_combout\);

-- Location: LCCOMB_X1_Y29_N24
\data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~17_combout\ = (\data_out~15_combout\ & (((\data_out~16_combout\) # (!\address16[2]~input_o\)))) # (!\data_out~15_combout\ & (!\data_out~12_combout\ & (\address16[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~15_combout\,
	datab => \data_out~12_combout\,
	datac => \address16[2]~input_o\,
	datad => \data_out~16_combout\,
	combout => \data_out~17_combout\);

-- Location: FF_X1_Y29_N25
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: LCCOMB_X1_Y29_N22
\data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~18_combout\ = \address4[0]~input_o\ $ (\address16[0]~input_o\ $ (((\address16[3]~input_o\) # (!\address4[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[0]~input_o\,
	datab => \address16[0]~input_o\,
	datac => \address16[3]~input_o\,
	datad => \address4[1]~input_o\,
	combout => \data_out~18_combout\);

-- Location: LCCOMB_X1_Y29_N0
\data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~19_combout\ = (\address4[0]~input_o\ & (\address16[3]~input_o\ $ (((\address16[0]~input_o\) # (!\address4[1]~input_o\))))) # (!\address4[0]~input_o\ & ((\address16[0]~input_o\ & (\address16[3]~input_o\ $ (!\address4[1]~input_o\))) # 
-- (!\address16[0]~input_o\ & (\address16[3]~input_o\ & !\address4[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[0]~input_o\,
	datab => \address16[0]~input_o\,
	datac => \address16[3]~input_o\,
	datad => \address4[1]~input_o\,
	combout => \data_out~19_combout\);

-- Location: LCCOMB_X1_Y29_N2
\data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~20_combout\ = (\address16[0]~input_o\ & ((\address4[0]~input_o\ & ((\address4[1]~input_o\) # (!\address16[3]~input_o\))) # (!\address4[0]~input_o\ & (\address16[3]~input_o\)))) # (!\address16[0]~input_o\ & (\address4[0]~input_o\ $ 
-- (\address16[3]~input_o\ $ (!\address4[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[0]~input_o\,
	datab => \address16[0]~input_o\,
	datac => \address16[3]~input_o\,
	datad => \address4[1]~input_o\,
	combout => \data_out~20_combout\);

-- Location: LCCOMB_X1_Y29_N28
\data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~21_combout\ = (\address16[1]~input_o\ & (((\address16[2]~input_o\)) # (!\data_out~19_combout\))) # (!\address16[1]~input_o\ & (((!\address16[2]~input_o\ & \data_out~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address16[1]~input_o\,
	datab => \data_out~19_combout\,
	datac => \address16[2]~input_o\,
	datad => \data_out~20_combout\,
	combout => \data_out~21_combout\);

-- Location: LCCOMB_X1_Y29_N6
\data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~22_combout\ = (\address16[0]~input_o\ & (\address4[0]~input_o\ $ ((!\address16[3]~input_o\)))) # (!\address16[0]~input_o\ & (((!\address16[3]~input_o\ & !\address4[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address4[0]~input_o\,
	datab => \address16[0]~input_o\,
	datac => \address16[3]~input_o\,
	datad => \address4[1]~input_o\,
	combout => \data_out~22_combout\);

-- Location: LCCOMB_X1_Y29_N18
\data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out~23_combout\ = (\data_out~21_combout\ & (((\data_out~22_combout\) # (!\address16[2]~input_o\)))) # (!\data_out~21_combout\ & (!\data_out~18_combout\ & (\address16[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~18_combout\,
	datab => \data_out~21_combout\,
	datac => \address16[2]~input_o\,
	datad => \data_out~22_combout\,
	combout => \data_out~23_combout\);

-- Location: FF_X1_Y29_N19
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;
END structure;


