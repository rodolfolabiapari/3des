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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "12/05/2015 08:56:01"

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

ENTITY 	interface_3des IS
    PORT (
	clock : IN std_logic;
	barramentoIn : IN std_logic_vector(63 DOWNTO 0);
	inStable : IN std_logic;
	reset : IN std_logic;
	done : OUT std_logic
	);
END interface_3des;

-- Design Ports Information
-- barramentoIn[10]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[11]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[12]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[13]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[14]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[15]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[16]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[17]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[18]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[19]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[20]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[21]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[22]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[23]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[24]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[25]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[26]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[27]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[28]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[29]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[30]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[31]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[32]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[33]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[34]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[35]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[36]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[37]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[38]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[39]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[40]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[41]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[42]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[43]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[44]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[45]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[46]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[47]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[48]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[49]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[50]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[51]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[52]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[53]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[54]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[55]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[56]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[57]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[58]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[59]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[60]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[61]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[62]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[63]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inStable	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[9]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[8]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[7]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[6]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[5]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[4]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[3]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[2]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[1]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoIn[0]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF interface_3des IS
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
SIGNAL ww_barramentoIn : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_inStable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i[6]~22_combout\ : std_logic;
SIGNAL \i[8]~26_combout\ : std_logic;
SIGNAL \estado.state_carregando_texto~q\ : std_logic;
SIGNAL \Selector217~0_combout\ : std_logic;
SIGNAL \Selector218~0_combout\ : std_logic;
SIGNAL \Selector219~0_combout\ : std_logic;
SIGNAL \Selector220~0_combout\ : std_logic;
SIGNAL \Selector221~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector211~0_combout\ : std_logic;
SIGNAL \maptdes|estado.des1Opera~q\ : std_logic;
SIGNAL \maptdes|estado.des2Opera~q\ : std_logic;
SIGNAL \maptdes|WideOr0~0_combout\ : std_logic;
SIGNAL \maptdes|Selector2~0_combout\ : std_logic;
SIGNAL \maptdes|estado.des2Carrega~q\ : std_logic;
SIGNAL \maptdes|Selector5~0_combout\ : std_logic;
SIGNAL \maptdes|estado.des1SalvaInformacao~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fb_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f3_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|WideOr36~2_combout\ : std_logic;
SIGNAL \maptdes|Selector3~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_ff_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f2_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|WideOr36~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector6~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fa_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fb_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector38~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f7_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f0_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f8_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f1_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f3_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector14~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f6_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f9_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fd_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fc_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fe_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f7_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f0_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f8_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f1_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_ff_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector50~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f2_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector11~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pronto~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fa_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fd_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fb_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector34~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fc_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector37~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f8_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector25~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f1_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector4~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f9_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector28~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector7~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f4_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector13~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector22~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector53~3_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector53~4_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector53~5_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector31~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fc_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector43~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fb_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector40~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector46~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f6_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector25~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector4~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f7_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector28~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f0_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector7~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f3_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f4_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector49~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f5_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f1_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector10~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector53~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector53~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector53~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_g~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pronto~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector36~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector36~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector36~3_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector48~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector45~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector45~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector45~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector39~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector39~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector39~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector42~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector42~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector42~3_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector30~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector30~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector30~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector9~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector9~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector9~3_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector33~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector33~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector33~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector33~3_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector12~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector18~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector18~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector42~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector42~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector42~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector39~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector39~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector39~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector45~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector33~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector36~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector24~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector24~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector24~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector27~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector27~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector27~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector6~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector6~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector6~4_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector15~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector15~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector15~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector18~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector18~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector18~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector48~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector12~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector21~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector21~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector9~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector9~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector9~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|state.op_sbox~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaog_1~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|Selector0~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_f~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|state.espera~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|state.espera~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaof_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|Selector0~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|state.liberaSbox~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|Selector0~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_e~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaoe_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_d~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaod_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_c~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaoc_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_b~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaob_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_a~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaoa_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_9~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao9_1~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_8~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao8_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_7~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao7_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_6~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao6_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_5~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao5_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_4~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao4_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_3~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao3_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_2~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao2_1~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_1~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao1_1~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc1~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao1_1~0_combout\ : std_logic;
SIGNAL \barramentoIn[10]~input_o\ : std_logic;
SIGNAL \barramentoIn[11]~input_o\ : std_logic;
SIGNAL \barramentoIn[12]~input_o\ : std_logic;
SIGNAL \barramentoIn[13]~input_o\ : std_logic;
SIGNAL \barramentoIn[14]~input_o\ : std_logic;
SIGNAL \barramentoIn[15]~input_o\ : std_logic;
SIGNAL \barramentoIn[16]~input_o\ : std_logic;
SIGNAL \barramentoIn[17]~input_o\ : std_logic;
SIGNAL \barramentoIn[18]~input_o\ : std_logic;
SIGNAL \barramentoIn[19]~input_o\ : std_logic;
SIGNAL \barramentoIn[20]~input_o\ : std_logic;
SIGNAL \barramentoIn[21]~input_o\ : std_logic;
SIGNAL \barramentoIn[22]~input_o\ : std_logic;
SIGNAL \barramentoIn[23]~input_o\ : std_logic;
SIGNAL \barramentoIn[24]~input_o\ : std_logic;
SIGNAL \barramentoIn[25]~input_o\ : std_logic;
SIGNAL \barramentoIn[26]~input_o\ : std_logic;
SIGNAL \barramentoIn[27]~input_o\ : std_logic;
SIGNAL \barramentoIn[28]~input_o\ : std_logic;
SIGNAL \barramentoIn[29]~input_o\ : std_logic;
SIGNAL \barramentoIn[30]~input_o\ : std_logic;
SIGNAL \barramentoIn[31]~input_o\ : std_logic;
SIGNAL \barramentoIn[32]~input_o\ : std_logic;
SIGNAL \barramentoIn[33]~input_o\ : std_logic;
SIGNAL \barramentoIn[34]~input_o\ : std_logic;
SIGNAL \barramentoIn[35]~input_o\ : std_logic;
SIGNAL \barramentoIn[36]~input_o\ : std_logic;
SIGNAL \barramentoIn[37]~input_o\ : std_logic;
SIGNAL \barramentoIn[38]~input_o\ : std_logic;
SIGNAL \barramentoIn[39]~input_o\ : std_logic;
SIGNAL \barramentoIn[40]~input_o\ : std_logic;
SIGNAL \barramentoIn[41]~input_o\ : std_logic;
SIGNAL \barramentoIn[42]~input_o\ : std_logic;
SIGNAL \barramentoIn[43]~input_o\ : std_logic;
SIGNAL \barramentoIn[44]~input_o\ : std_logic;
SIGNAL \barramentoIn[45]~input_o\ : std_logic;
SIGNAL \barramentoIn[46]~input_o\ : std_logic;
SIGNAL \barramentoIn[47]~input_o\ : std_logic;
SIGNAL \barramentoIn[48]~input_o\ : std_logic;
SIGNAL \barramentoIn[49]~input_o\ : std_logic;
SIGNAL \barramentoIn[50]~input_o\ : std_logic;
SIGNAL \barramentoIn[51]~input_o\ : std_logic;
SIGNAL \barramentoIn[52]~input_o\ : std_logic;
SIGNAL \barramentoIn[53]~input_o\ : std_logic;
SIGNAL \barramentoIn[54]~input_o\ : std_logic;
SIGNAL \barramentoIn[55]~input_o\ : std_logic;
SIGNAL \barramentoIn[56]~input_o\ : std_logic;
SIGNAL \barramentoIn[57]~input_o\ : std_logic;
SIGNAL \barramentoIn[58]~input_o\ : std_logic;
SIGNAL \barramentoIn[59]~input_o\ : std_logic;
SIGNAL \barramentoIn[60]~input_o\ : std_logic;
SIGNAL \barramentoIn[61]~input_o\ : std_logic;
SIGNAL \barramentoIn[62]~input_o\ : std_logic;
SIGNAL \barramentoIn[63]~input_o\ : std_logic;
SIGNAL \barramentoIn[8]~input_o\ : std_logic;
SIGNAL \barramentoIn[4]~input_o\ : std_logic;
SIGNAL \barramentoIn[3]~input_o\ : std_logic;
SIGNAL \barramentoIn[2]~input_o\ : std_logic;
SIGNAL \barramentoIn[1]~input_o\ : std_logic;
SIGNAL \maptdes|estado.des2Carrega~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_g~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaog_1~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_f~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaof_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_e~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaoe_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_d~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaod_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_c~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaoc_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_b~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaob_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_a~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacaoa_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_9~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao9_1~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_8~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao8_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_7~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao7_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_6~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao6_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_5~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao5_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_4~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao4_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_3~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_2~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao2_1~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc2_1~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.rotacao1_1~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|state.liberaSbox~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|state.pc1~feeder_combout\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \i[0]~11\ : std_logic;
SIGNAL \i[1]~13\ : std_logic;
SIGNAL \i[2]~14_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc1~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|state.op_xor~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector49~0_combout\ : std_logic;
SIGNAL \maptundes|estado.un_des2Carrega~feeder_combout\ : std_logic;
SIGNAL \estado.state_decripta_recebe_resultado~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado.state_decripta_recebe_resultado~q\ : std_logic;
SIGNAL \inStable~input_o\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|done~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector19~0_combout\ : std_logic;
SIGNAL \maptdes|Selector6~0_combout\ : std_logic;
SIGNAL \i[9]~34_combout\ : std_logic;
SIGNAL \estado.state_encripta_recebe_ram~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \estado.state_encripta_opera~q\ : std_logic;
SIGNAL \Selector222~0_combout\ : std_logic;
SIGNAL \Selector222~1_combout\ : std_logic;
SIGNAL \s_tdes_reset~q\ : std_logic;
SIGNAL \maptdes|estado.des2SalvaInformacao~q\ : std_logic;
SIGNAL \maptdes|estado.state_reset~2_combout\ : std_logic;
SIGNAL \maptdes|estado.state_reset~q\ : std_logic;
SIGNAL \maptdes|estado.des3Carrega~feeder_combout\ : std_logic;
SIGNAL \maptdes|estado.des3Carrega~q\ : std_logic;
SIGNAL \maptdes|Selector12~1_combout\ : std_logic;
SIGNAL \maptdes|Selector1~0_combout\ : std_logic;
SIGNAL \maptdes|Selector1~1_combout\ : std_logic;
SIGNAL \maptdes|estado.des1Carrega~q\ : std_logic;
SIGNAL \maptdes|Selector12~0_combout\ : std_logic;
SIGNAL \maptdes|Selector12~2_combout\ : std_logic;
SIGNAL \maptdes|sig_des_reset~q\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f5_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector20~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f5_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector16~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f4_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector17~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f4_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector12~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|sig_reset~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|state.op_xor~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector41~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fc_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector47~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fe_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector33~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector34~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fa_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector35~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fa_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector33~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector33~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f9_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector29~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f8_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector30~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector5~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f0_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector26~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f7_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector9~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector37~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fb_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector38~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fb_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector32~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f9_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector36~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|WideOr36~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector18~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector12~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector12~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f2_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector13~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f3_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector14~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f3_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector22~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f6_working~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector23~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f6_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector6~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector6~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector30~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector30~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f8_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector36~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector36~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fa_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector53~4_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector44~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fd_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector45~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector42~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector45~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fd_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector51~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector51~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector51~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_ff_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector48~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector48~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_fe_clean~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector53~5_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector2~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_ip~q\ : std_logic;
SIGNAL \maptdes|mapDes|WideOr36~4_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector53~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector53~6_combout\ : std_logic;
SIGNAL \maptdes|mapDes|sig_f_reset~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|state.op_xor~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|sig_reset_sbox~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|sig_reset_sbox~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|sig_reset~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto~feeder_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|mapSbox1|Selector0~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|mapSbox1|done~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|state.pronto~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|state.pronto~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|done~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|mapSbox|done~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|state~12_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|state.op_p_box~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|state.pronto~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|state.pronto~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|done~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|mapF|done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector8~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_f1_done~q\ : std_logic;
SIGNAL \maptdes|mapDes|WideOr36~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector3~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector0~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_reset_key~q\ : std_logic;
SIGNAL \maptdes|mapDes|sig_k_reset~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|sig_k_reset~q\ : std_logic;
SIGNAL \maptdes|mapDes|mapK|done~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector1~3_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_process_key~q\ : std_logic;
SIGNAL \maptdes|mapDes|Selector1~2_combout\ : std_logic;
SIGNAL \maptdes|mapDes|Selector3~1_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.op_ip_final~q\ : std_logic;
SIGNAL \maptdes|mapDes|WideOr36~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|state.pronto~q\ : std_logic;
SIGNAL \maptdes|mapDes|done~0_combout\ : std_logic;
SIGNAL \maptdes|mapDes|done~q\ : std_logic;
SIGNAL \maptdes|Selector8~0_combout\ : std_logic;
SIGNAL \maptdes|estado.des3Opera~q\ : std_logic;
SIGNAL \maptdes|Selector9~0_combout\ : std_logic;
SIGNAL \maptdes|estado.des3SalvaInformacao~q\ : std_logic;
SIGNAL \maptdes|estado.pronto~0_combout\ : std_logic;
SIGNAL \maptdes|estado.pronto~q\ : std_logic;
SIGNAL \maptdes|Selector11~0_combout\ : std_logic;
SIGNAL \maptdes|done~q\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \estado.state_carregando_chave0~q\ : std_logic;
SIGNAL \estado.state_carregando_chave1~q\ : std_logic;
SIGNAL \estado.state_carregando_chave2~q\ : std_logic;
SIGNAL \estado.state_carregando_quantidade_blocos~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \controle_recebido~q\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \i[0]~10_combout\ : std_logic;
SIGNAL \i[9]~31_combout\ : std_logic;
SIGNAL \i[9]~32_combout\ : std_logic;
SIGNAL \i[9]~33_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \estado.preparacao_operacao~q\ : std_logic;
SIGNAL \WideOr17~0_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Selector14~4_combout\ : std_logic;
SIGNAL \Selector14~5_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \estado.state_carregando_funcao~q\ : std_logic;
SIGNAL \barramentoIn[0]~input_o\ : std_logic;
SIGNAL \Selector211~1_combout\ : std_logic;
SIGNAL \encripta~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \estado.state_decripta_seleciona_bloco~q\ : std_logic;
SIGNAL \Selector223~0_combout\ : std_logic;
SIGNAL \Selector223~1_combout\ : std_logic;
SIGNAL \s_tundes_reset~q\ : std_logic;
SIGNAL \maptundes|estado.un_des2Carrega~q\ : std_logic;
SIGNAL \maptundes|Selector5~0_combout\ : std_logic;
SIGNAL \maptundes|estado.un_des2Opera~q\ : std_logic;
SIGNAL \maptundes|WideOr0~0_combout\ : std_logic;
SIGNAL \maptundes|estado.state_reset~2_combout\ : std_logic;
SIGNAL \maptundes|estado.state_reset~q\ : std_logic;
SIGNAL \maptundes|Selector7~0_combout\ : std_logic;
SIGNAL \maptundes|Selector7~1_combout\ : std_logic;
SIGNAL \maptundes|estado.un_des3Carrega~q\ : std_logic;
SIGNAL \maptundes|Selector8~0_combout\ : std_logic;
SIGNAL \maptundes|estado.un_des3Opera~q\ : std_logic;
SIGNAL \maptundes|Selector9~0_combout\ : std_logic;
SIGNAL \maptundes|estado.un_des3SalvaInformacao~q\ : std_logic;
SIGNAL \maptundes|Selector12~1_combout\ : std_logic;
SIGNAL \maptundes|Selector6~0_combout\ : std_logic;
SIGNAL \maptundes|estado.un_des2SalvaInformacao~q\ : std_logic;
SIGNAL \maptundes|estado.un_des1Carrega~feeder_combout\ : std_logic;
SIGNAL \maptundes|estado.un_des1Carrega~q\ : std_logic;
SIGNAL \maptundes|Selector12~0_combout\ : std_logic;
SIGNAL \maptundes|Selector12~2_combout\ : std_logic;
SIGNAL \maptundes|sig_undes_reset~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_ff_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector50~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_ff_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector23~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f6_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector15~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector8~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f1_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector35~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fa_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector40~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fc_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector41~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fc_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector31~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f9_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector32~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f9_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector26~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f7_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector5~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f0_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector29~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f8_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector9~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|WideOr36~3_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector42~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector48~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector48~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fe_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector43~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fd_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector44~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fd_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector51~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector51~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector51~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_ff_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector46~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fe_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector47~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_fe_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector36~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|WideOr36~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector18~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector15~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector15~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f3_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector10~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f2_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector11~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f2_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector18~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector21~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector21~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f5_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector16~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f4_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector17~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f4_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector19~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f5_working~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector20~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f5_done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector12~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector6~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector6~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector6~3_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector6~4_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f0_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector12~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector12~3_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f2_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector53~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector27~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector27~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector27~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f7_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector24~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector24~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector24~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_f6_clean~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector53~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector2~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_ip~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|WideOr36~4_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector53~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector53~6_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|sig_f_reset~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|state.op_xor~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|sig_reset_sbox~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|sig_reset_sbox~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|Selector0~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|state.pronto~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|state.pronto~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|done~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|mapSbox|done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|Selector0~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|state.op_sbox~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|state~12_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|state.op_p_box~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|state.pronto~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|state.pronto~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|done~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapF|done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector3~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector0~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_reset_key~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|sig_k_reset~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|sig_k_reset~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc1~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao1_1~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao1_1~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_1~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_1~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao2_1~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao2_1~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao3_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao3_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_3~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_3~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao4_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao4_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_4~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_4~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao5_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao5_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_5~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_5~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao6_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao6_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_6~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_6~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao7_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao7_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_7~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_7~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao8_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao8_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_8~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_8~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao9_1~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacao9_1~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_9~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_9~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaoa_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaoa_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_a~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_a~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaob_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaob_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_b~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_b~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaoc_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaoc_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_c~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_c~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaod_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaod_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_d~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_d~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaoe_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaoe_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_e~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_e~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaof_2~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaof_2~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_f~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_f~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaog_1~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.rotacaog_1~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_g~feeder_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pc2_g~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pronto~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|state.pronto~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|done~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|mapK|done~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector1~3_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_process_key~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector1~2_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|Selector3~1_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.op_ip_final~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|WideOr36~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|state.pronto~q\ : std_logic;
SIGNAL \maptundes|mapUN_Des|done~0_combout\ : std_logic;
SIGNAL \maptundes|mapUN_Des|done~q\ : std_logic;
SIGNAL \maptundes|Selector2~0_combout\ : std_logic;
SIGNAL \maptundes|estado.un_des1Opera~q\ : std_logic;
SIGNAL \maptundes|Selector3~0_combout\ : std_logic;
SIGNAL \maptundes|estado.un_des1SalvaInformacao~q\ : std_logic;
SIGNAL \maptundes|estado.pronto~0_combout\ : std_logic;
SIGNAL \maptundes|estado.pronto~q\ : std_logic;
SIGNAL \maptundes|Selector11~0_combout\ : std_logic;
SIGNAL \maptundes|done~q\ : std_logic;
SIGNAL \estado.state_reset~2_combout\ : std_logic;
SIGNAL \estado.state_reset~q\ : std_logic;
SIGNAL \i[9]~30_combout\ : std_logic;
SIGNAL \i[2]~15\ : std_logic;
SIGNAL \i[3]~16_combout\ : std_logic;
SIGNAL \i[3]~17\ : std_logic;
SIGNAL \i[4]~18_combout\ : std_logic;
SIGNAL \i[4]~19\ : std_logic;
SIGNAL \i[5]~20_combout\ : std_logic;
SIGNAL \i[5]~21\ : std_logic;
SIGNAL \i[6]~23\ : std_logic;
SIGNAL \i[7]~24_combout\ : std_logic;
SIGNAL \i[7]~25\ : std_logic;
SIGNAL \i[8]~27\ : std_logic;
SIGNAL \i[9]~28_combout\ : std_logic;
SIGNAL \barramentoIn[9]~input_o\ : std_logic;
SIGNAL \Selector212~0_combout\ : std_logic;
SIGNAL \Selector221~0_combout\ : std_logic;
SIGNAL \Selector213~0_combout\ : std_logic;
SIGNAL \barramentoIn[7]~input_o\ : std_logic;
SIGNAL \Selector214~0_combout\ : std_logic;
SIGNAL \barramentoIn[6]~input_o\ : std_logic;
SIGNAL \Selector215~0_combout\ : std_logic;
SIGNAL \barramentoIn[5]~input_o\ : std_logic;
SIGNAL \Selector216~0_combout\ : std_logic;
SIGNAL \i[1]~12_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \i[9]~35_combout\ : std_logic;
SIGNAL \estado.state_decripta_recebe_ram~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \estado.state_decripta_opera~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \estado.state_encripta_recebe_resultado~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \estado.state_encripta_seleciona_bloco~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \estado.pronto~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \done~reg0_q\ : std_logic;
SIGNAL quantidade_blocos : std_logic_vector(9 DOWNTO 0);
SIGNAL i : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_inStable~input_o\ : std_logic;
SIGNAL \maptdes|ALT_INV_sig_des_reset~q\ : std_logic;
SIGNAL \maptundes|ALT_INV_sig_undes_reset~q\ : std_logic;
SIGNAL \ALT_INV_s_tdes_reset~q\ : std_logic;
SIGNAL \ALT_INV_s_tundes_reset~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_barramentoIn <= barramentoIn;
ww_inStable <= inStable;
ww_reset <= reset;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_inStable~input_o\ <= NOT \inStable~input_o\;
\maptdes|ALT_INV_sig_des_reset~q\ <= NOT \maptdes|sig_des_reset~q\;
\maptundes|ALT_INV_sig_undes_reset~q\ <= NOT \maptundes|sig_undes_reset~q\;
\ALT_INV_s_tdes_reset~q\ <= NOT \s_tdes_reset~q\;
\ALT_INV_s_tundes_reset~q\ <= NOT \s_tundes_reset~q\;

-- Location: FF_X112_Y50_N27
\i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[8]~26_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(8));

-- Location: FF_X112_Y50_N23
\i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[6]~22_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(6));

-- Location: FF_X111_Y50_N15
\quantidade_blocos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector217~0_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	sload => VCC,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(4));

-- Location: FF_X111_Y50_N13
\quantidade_blocos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector218~0_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	sload => VCC,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(3));

-- Location: FF_X111_Y50_N11
\quantidade_blocos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector219~0_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	sload => VCC,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(2));

-- Location: FF_X111_Y50_N9
\quantidade_blocos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector220~0_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	sload => VCC,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(1));

-- Location: FF_X111_Y50_N7
\quantidade_blocos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector221~1_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	sload => VCC,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(0));

-- Location: LCCOMB_X112_Y50_N22
\i[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[6]~22_combout\ = (i(6) & (\i[5]~21\ $ (GND))) # (!i(6) & (!\i[5]~21\ & VCC))
-- \i[6]~23\ = CARRY((i(6) & !\i[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datad => VCC,
	cin => \i[5]~21\,
	combout => \i[6]~22_combout\,
	cout => \i[6]~23\);

-- Location: LCCOMB_X112_Y50_N26
\i[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[8]~26_combout\ = (i(8) & (\i[7]~25\ $ (GND))) # (!i(8) & (!\i[7]~25\ & VCC))
-- \i[8]~27\ = CARRY((i(8) & !\i[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(8),
	datad => VCC,
	cin => \i[7]~25\,
	combout => \i[8]~26_combout\,
	cout => \i[8]~27\);

-- Location: FF_X110_Y50_N7
\estado.state_carregando_texto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_carregando_texto~q\);

-- Location: LCCOMB_X114_Y50_N12
\Selector217~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector217~0_combout\ = (\estado.state_carregando_quantidade_blocos~q\ & \barramentoIn[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.state_carregando_quantidade_blocos~q\,
	datad => \barramentoIn[4]~input_o\,
	combout => \Selector217~0_combout\);

-- Location: LCCOMB_X114_Y50_N6
\Selector218~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector218~0_combout\ = (\estado.state_carregando_quantidade_blocos~q\ & \barramentoIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.state_carregando_quantidade_blocos~q\,
	datad => \barramentoIn[3]~input_o\,
	combout => \Selector218~0_combout\);

-- Location: LCCOMB_X111_Y50_N2
\Selector219~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector219~0_combout\ = (\estado.state_carregando_quantidade_blocos~q\ & \barramentoIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_carregando_quantidade_blocos~q\,
	datad => \barramentoIn[2]~input_o\,
	combout => \Selector219~0_combout\);

-- Location: LCCOMB_X111_Y50_N0
\Selector220~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector220~0_combout\ = (\barramentoIn[1]~input_o\ & \estado.state_carregando_quantidade_blocos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \barramentoIn[1]~input_o\,
	datad => \estado.state_carregando_quantidade_blocos~q\,
	combout => \Selector220~0_combout\);

-- Location: LCCOMB_X110_Y50_N26
\Selector221~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector221~1_combout\ = (\estado.state_carregando_quantidade_blocos~q\ & \barramentoIn[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_carregando_quantidade_blocos~q\,
	datab => \barramentoIn[0]~input_o\,
	combout => \Selector221~1_combout\);

-- Location: LCCOMB_X110_Y50_N8
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\reset~input_o\ & !\estado.state_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \estado.state_reset~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X110_Y50_N16
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\controle_recebido~q\ & ((\inStable~input_o\ & (\estado.state_carregando_texto~q\)) # (!\inStable~input_o\ & ((\estado.state_carregando_quantidade_blocos~q\))))) # (!\controle_recebido~q\ & (\estado.state_carregando_texto~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_carregando_texto~q\,
	datab => \controle_recebido~q\,
	datac => \estado.state_carregando_quantidade_blocos~q\,
	datad => \inStable~input_o\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X110_Y50_N6
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((!\LessThan1~2_combout\ & (\estado.state_carregando_texto~q\ & \LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \Selector6~0_combout\,
	datac => \estado.state_carregando_texto~q\,
	datad => \LessThan0~18_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X109_Y49_N12
\Selector211~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector211~0_combout\ = (\encripta~q\ & ((\estado.state_carregando_funcao~q\ & ((!\inStable~input_o\))) # (!\estado.state_carregando_funcao~q\ & (\estado.state_reset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_reset~q\,
	datab => \encripta~q\,
	datac => \estado.state_carregando_funcao~q\,
	datad => \inStable~input_o\,
	combout => \Selector211~0_combout\);

-- Location: FF_X107_Y50_N29
\maptdes|estado.des1Opera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|Selector2~0_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.des1Opera~q\);

-- Location: FF_X107_Y50_N27
\maptdes|estado.des2Opera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|Selector5~0_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.des2Opera~q\);

-- Location: LCCOMB_X107_Y50_N22
\maptdes|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|WideOr0~0_combout\ = (!\maptdes|estado.des2Opera~q\ & (!\maptdes|estado.des1Opera~q\ & !\maptdes|estado.des3Opera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|estado.des2Opera~q\,
	datab => \maptdes|estado.des1Opera~q\,
	datac => \maptdes|estado.des3Opera~q\,
	combout => \maptdes|WideOr0~0_combout\);

-- Location: LCCOMB_X107_Y50_N28
\maptdes|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector2~0_combout\ = (\maptdes|estado.des1Carrega~q\) # ((!\maptdes|mapDes|done~q\ & \maptdes|estado.des1Opera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptdes|mapDes|done~q\,
	datac => \maptdes|estado.des1Opera~q\,
	datad => \maptdes|estado.des1Carrega~q\,
	combout => \maptdes|Selector2~0_combout\);

-- Location: FF_X107_Y50_N31
\maptdes|estado.des2Carrega\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|estado.des2Carrega~feeder_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.des2Carrega~q\);

-- Location: LCCOMB_X107_Y50_N26
\maptdes|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector5~0_combout\ = (\maptdes|estado.des2Carrega~q\) # ((!\maptdes|mapDes|done~q\ & \maptdes|estado.des2Opera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|estado.des2Carrega~q\,
	datab => \maptdes|mapDes|done~q\,
	datac => \maptdes|estado.des2Opera~q\,
	combout => \maptdes|Selector5~0_combout\);

-- Location: FF_X107_Y50_N7
\maptdes|estado.des1SalvaInformacao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|Selector3~0_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.des1SalvaInformacao~q\);

-- Location: FF_X67_Y49_N23
\maptundes|mapUN_Des|state.op_fb_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \maptundes|mapUN_Des|Selector38~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fb_done~q\);

-- Location: FF_X65_Y49_N31
\maptundes|mapUN_Des|state.op_f3_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector14~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f3_done~q\);

-- Location: LCCOMB_X66_Y48_N12
\maptundes|mapUN_Des|WideOr36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|WideOr36~2_combout\ = (!\maptundes|mapUN_Des|state.op_f6_done~q\ & (!\maptundes|mapUN_Des|state.op_f1_done~q\ & (!\maptundes|mapUN_Des|state.op_f2_done~q\ & !\maptundes|mapUN_Des|state.op_f3_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f6_done~q\,
	datab => \maptundes|mapUN_Des|state.op_f1_done~q\,
	datac => \maptundes|mapUN_Des|state.op_f2_done~q\,
	datad => \maptundes|mapUN_Des|state.op_f3_done~q\,
	combout => \maptundes|mapUN_Des|WideOr36~2_combout\);

-- Location: LCCOMB_X107_Y50_N6
\maptdes|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector3~0_combout\ = (\maptdes|mapDes|done~q\ & \maptdes|estado.des1Opera~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|done~q\,
	datad => \maptdes|estado.des1Opera~q\,
	combout => \maptdes|Selector3~0_combout\);

-- Location: FF_X106_Y48_N27
\maptdes|mapDes|state.op_ff_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector50~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_ff_done~q\);

-- Location: FF_X106_Y48_N5
\maptdes|mapDes|state.op_f2_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector11~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f2_done~q\);

-- Location: LCCOMB_X106_Y48_N10
\maptdes|mapDes|WideOr36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|WideOr36~2_combout\ = (!\maptdes|mapDes|state.op_f6_done~q\ & (!\maptdes|mapDes|state.op_f2_done~q\ & (!\maptdes|mapDes|state.op_ff_done~q\ & !\maptdes|mapDes|state.op_f3_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f6_done~q\,
	datab => \maptdes|mapDes|state.op_f2_done~q\,
	datac => \maptdes|mapDes|state.op_ff_done~q\,
	datad => \maptdes|mapDes|state.op_f3_done~q\,
	combout => \maptdes|mapDes|WideOr36~2_combout\);

-- Location: LCCOMB_X69_Y49_N26
\maptundes|mapUN_Des|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector6~2_combout\ = (\maptundes|mapUN_Des|mapF|done~q\ & ((\maptundes|mapUN_Des|state.op_f0_done~q\) # ((\maptundes|mapUN_Des|state.op_f0_clean~q\ & \maptundes|mapUN_Des|Selector1~2_combout\)))) # 
-- (!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_f0_clean~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f0_clean~q\,
	datab => \maptundes|mapUN_Des|state.op_f0_done~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|mapF|done~q\,
	combout => \maptundes|mapUN_Des|Selector6~2_combout\);

-- Location: FF_X66_Y49_N13
\maptundes|mapUN_Des|state.op_fa_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector34~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fa_working~q\);

-- Location: FF_X67_Y49_N25
\maptundes|mapUN_Des|state.op_fb_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector37~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fb_working~q\);

-- Location: LCCOMB_X68_Y49_N10
\maptundes|mapUN_Des|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector38~0_combout\ = (\maptundes|mapUN_Des|state.op_fb_working~q\) # ((\maptundes|mapUN_Des|state.op_fb_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_fb_done~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|state.op_fb_working~q\,
	combout => \maptundes|mapUN_Des|Selector38~0_combout\);

-- Location: FF_X66_Y49_N7
\maptundes|mapUN_Des|state.op_f7_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector25~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f7_working~q\);

-- Location: FF_X66_Y49_N21
\maptundes|mapUN_Des|state.op_f0_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector4~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f0_working~q\);

-- Location: FF_X66_Y49_N15
\maptundes|mapUN_Des|state.op_f8_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector28~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f8_working~q\);

-- Location: FF_X66_Y48_N3
\maptundes|mapUN_Des|state.op_f1_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector7~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f1_working~q\);

-- Location: FF_X65_Y49_N15
\maptundes|mapUN_Des|state.op_f3_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector13~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f3_working~q\);

-- Location: LCCOMB_X65_Y49_N30
\maptundes|mapUN_Des|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector14~0_combout\ = (\maptundes|mapUN_Des|state.op_f3_working~q\) # ((\maptundes|mapUN_Des|state.op_f3_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_f3_working~q\,
	datac => \maptundes|mapUN_Des|state.op_f3_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector14~0_combout\);

-- Location: FF_X65_Y49_N29
\maptundes|mapUN_Des|state.op_f6_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector22~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f6_working~q\);

-- Location: FF_X110_Y48_N5
\maptdes|mapDes|state.op_f9_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector31~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f9_working~q\);

-- Location: FF_X106_Y48_N1
\maptdes|mapDes|state.op_fd_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector43~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fd_working~q\);

-- Location: FF_X110_Y48_N7
\maptdes|mapDes|state.op_fc_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector40~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fc_working~q\);

-- Location: FF_X106_Y48_N15
\maptdes|mapDes|state.op_fe_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector46~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fe_working~q\);

-- Location: FF_X106_Y48_N21
\maptdes|mapDes|state.op_f7_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector25~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f7_working~q\);

-- Location: FF_X107_Y48_N7
\maptdes|mapDes|state.op_f0_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector4~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f0_working~q\);

-- Location: FF_X105_Y48_N25
\maptdes|mapDes|state.op_f8_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector28~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f8_working~q\);

-- Location: FF_X107_Y48_N17
\maptdes|mapDes|state.op_f1_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector7~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f1_working~q\);

-- Location: FF_X106_Y48_N31
\maptdes|mapDes|state.op_ff_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector49~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_ff_working~q\);

-- Location: LCCOMB_X106_Y48_N26
\maptdes|mapDes|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector50~0_combout\ = (\maptdes|mapDes|state.op_ff_working~q\) # ((\maptdes|mapDes|state.op_ff_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_ff_done~q\,
	datad => \maptdes|mapDes|state.op_ff_working~q\,
	combout => \maptdes|mapDes|Selector50~0_combout\);

-- Location: FF_X107_Y48_N21
\maptdes|mapDes|state.op_f2_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector10~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f2_working~q\);

-- Location: LCCOMB_X106_Y48_N4
\maptdes|mapDes|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector11~0_combout\ = (\maptdes|mapDes|state.op_f2_working~q\) # ((\maptdes|mapDes|state.op_f2_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f2_done~q\,
	datad => \maptdes|mapDes|state.op_f2_working~q\,
	combout => \maptdes|mapDes|Selector11~0_combout\);

-- Location: FF_X107_Y49_N31
\maptdes|mapDes|mapK|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pronto~0_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pronto~q\);

-- Location: FF_X67_Y49_N27
\maptundes|mapUN_Des|state.op_fa_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector36~3_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fa_clean~q\);

-- Location: FF_X68_Y49_N13
\maptundes|mapUN_Des|state.op_fd_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector45~2_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fd_clean~q\);

-- Location: FF_X66_Y49_N25
\maptundes|mapUN_Des|state.op_fb_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector39~2_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fb_clean~q\);

-- Location: LCCOMB_X66_Y49_N12
\maptundes|mapUN_Des|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector34~0_combout\ = (\maptundes|mapUN_Des|state.op_fb_clean~q\) # ((\maptundes|mapUN_Des|state.op_fa_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_fb_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_fa_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector34~0_combout\);

-- Location: FF_X67_Y49_N31
\maptundes|mapUN_Des|state.op_fc_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector42~3_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fc_clean~q\);

-- Location: LCCOMB_X67_Y49_N24
\maptundes|mapUN_Des|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector37~0_combout\ = (\maptundes|mapUN_Des|state.op_fc_clean~q\) # ((\maptundes|mapUN_Des|state.op_fb_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_fc_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_fb_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector37~0_combout\);

-- Location: FF_X69_Y49_N13
\maptundes|mapUN_Des|state.op_f8_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector30~2_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f8_clean~q\);

-- Location: LCCOMB_X66_Y49_N6
\maptundes|mapUN_Des|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector25~0_combout\ = (\maptundes|mapUN_Des|state.op_f8_clean~q\) # ((\maptundes|mapUN_Des|state.op_f7_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_f8_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_f7_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector25~0_combout\);

-- Location: FF_X69_Y49_N3
\maptundes|mapUN_Des|state.op_f1_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector9~3_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f1_clean~q\);

-- Location: LCCOMB_X66_Y49_N20
\maptundes|mapUN_Des|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector4~0_combout\ = (\maptundes|mapUN_Des|state.op_f1_clean~q\) # ((\maptundes|mapUN_Des|state.op_f0_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_f1_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_f0_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector4~0_combout\);

-- Location: FF_X68_Y49_N27
\maptundes|mapUN_Des|state.op_f9_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector33~3_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f9_clean~q\);

-- Location: LCCOMB_X66_Y49_N14
\maptundes|mapUN_Des|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector28~0_combout\ = (\maptundes|mapUN_Des|state.op_f9_clean~q\) # ((\maptundes|mapUN_Des|state.op_f8_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_f9_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_f8_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector28~0_combout\);

-- Location: LCCOMB_X66_Y48_N2
\maptundes|mapUN_Des|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector7~0_combout\ = (\maptundes|mapUN_Des|state.op_f2_clean~q\) # ((\maptundes|mapUN_Des|state.op_f1_working~q\ & ((\maptundes|mapUN_Des|Selector3~0_combout\) # (\maptundes|mapUN_Des|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f2_clean~q\,
	datab => \maptundes|mapUN_Des|Selector3~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_f1_working~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector7~0_combout\);

-- Location: FF_X65_Y49_N1
\maptundes|mapUN_Des|state.op_f4_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector18~3_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f4_clean~q\);

-- Location: LCCOMB_X65_Y49_N14
\maptundes|mapUN_Des|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector13~0_combout\ = (\maptundes|mapUN_Des|state.op_f4_clean~q\) # ((\maptundes|mapUN_Des|state.op_f3_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_f4_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_f3_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector13~0_combout\);

-- Location: LCCOMB_X65_Y49_N28
\maptundes|mapUN_Des|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector22~0_combout\ = (\maptundes|mapUN_Des|state.op_f7_clean~q\) # ((\maptundes|mapUN_Des|state.op_f6_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f7_clean~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|state.op_f6_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector22~0_combout\);

-- Location: LCCOMB_X68_Y49_N28
\maptundes|mapUN_Des|Selector53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector53~3_combout\ = (\maptundes|mapUN_Des|state.op_f9_clean~q\) # ((\maptundes|mapUN_Des|state.op_f8_clean~q\) # ((\maptundes|mapUN_Des|state.op_fa_clean~q\) # (\maptundes|mapUN_Des|state.op_fb_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f9_clean~q\,
	datab => \maptundes|mapUN_Des|state.op_f8_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_fa_clean~q\,
	datad => \maptundes|mapUN_Des|state.op_fb_clean~q\,
	combout => \maptundes|mapUN_Des|Selector53~3_combout\);

-- Location: LCCOMB_X68_Y48_N10
\maptundes|mapUN_Des|Selector53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector53~4_combout\ = (\maptundes|mapUN_Des|state.op_fc_clean~q\) # (\maptundes|mapUN_Des|state.op_fd_clean~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|state.op_fc_clean~q\,
	datad => \maptundes|mapUN_Des|state.op_fd_clean~q\,
	combout => \maptundes|mapUN_Des|Selector53~4_combout\);

-- Location: LCCOMB_X67_Y48_N10
\maptundes|mapUN_Des|Selector53~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector53~5_combout\ = (\maptundes|mapUN_Des|state.op_ff_clean~q\) # ((\maptundes|mapUN_Des|Selector53~4_combout\) # ((\maptundes|mapUN_Des|state.op_fe_clean~q\) # (\maptundes|mapUN_Des|Selector53~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_ff_clean~q\,
	datab => \maptundes|mapUN_Des|Selector53~4_combout\,
	datac => \maptundes|mapUN_Des|state.op_fe_clean~q\,
	datad => \maptundes|mapUN_Des|Selector53~3_combout\,
	combout => \maptundes|mapUN_Des|Selector53~5_combout\);

-- Location: LCCOMB_X110_Y48_N4
\maptdes|mapDes|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector31~0_combout\ = (\maptdes|mapDes|state.op_f8_clean~q\) # ((\maptdes|mapDes|state.op_f9_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector1~2_combout\,
	datab => \maptdes|mapDes|state.op_f8_clean~q\,
	datac => \maptdes|mapDes|state.op_f9_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector31~0_combout\);

-- Location: FF_X110_Y48_N27
\maptdes|mapDes|state.op_fc_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector42~3_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fc_clean~q\);

-- Location: LCCOMB_X106_Y48_N0
\maptdes|mapDes|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector43~0_combout\ = (\maptdes|mapDes|state.op_fc_clean~q\) # ((\maptdes|mapDes|state.op_fd_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fc_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_fd_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector43~0_combout\);

-- Location: FF_X111_Y48_N13
\maptdes|mapDes|state.op_fb_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector39~2_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fb_clean~q\);

-- Location: LCCOMB_X110_Y48_N6
\maptdes|mapDes|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector40~0_combout\ = (\maptdes|mapDes|state.op_fb_clean~q\) # ((\maptdes|mapDes|state.op_fc_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector1~2_combout\,
	datab => \maptdes|mapDes|state.op_fb_clean~q\,
	datac => \maptdes|mapDes|state.op_fc_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector40~0_combout\);

-- Location: LCCOMB_X106_Y48_N14
\maptdes|mapDes|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector46~0_combout\ = (\maptdes|mapDes|state.op_fd_clean~q\) # ((\maptdes|mapDes|state.op_fe_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector1~2_combout\,
	datab => \maptdes|mapDes|state.op_fd_clean~q\,
	datac => \maptdes|mapDes|state.op_fe_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector46~0_combout\);

-- Location: FF_X108_Y48_N31
\maptdes|mapDes|state.op_f6_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector24~2_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f6_clean~q\);

-- Location: LCCOMB_X106_Y48_N20
\maptdes|mapDes|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector25~0_combout\ = (\maptdes|mapDes|state.op_f6_clean~q\) # ((\maptdes|mapDes|state.op_f7_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f6_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f7_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector25~0_combout\);

-- Location: LCCOMB_X107_Y48_N6
\maptdes|mapDes|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector4~0_combout\ = (\maptdes|mapDes|state.op_ip~q\) # ((\maptdes|mapDes|state.op_f0_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector1~2_combout\,
	datab => \maptdes|mapDes|state.op_ip~q\,
	datac => \maptdes|mapDes|state.op_f0_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector4~0_combout\);

-- Location: FF_X105_Y48_N31
\maptdes|mapDes|state.op_f7_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector27~2_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f7_clean~q\);

-- Location: LCCOMB_X105_Y48_N24
\maptdes|mapDes|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector28~0_combout\ = (\maptdes|mapDes|state.op_f7_clean~q\) # ((\maptdes|mapDes|state.op_f8_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f7_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f8_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector28~0_combout\);

-- Location: FF_X108_Y48_N5
\maptdes|mapDes|state.op_f0_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector6~4_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f0_clean~q\);

-- Location: LCCOMB_X107_Y48_N16
\maptdes|mapDes|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector7~0_combout\ = (\maptdes|mapDes|state.op_f0_clean~q\) # ((\maptdes|mapDes|state.op_f1_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f0_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f1_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector7~0_combout\);

-- Location: FF_X106_Y48_N7
\maptdes|mapDes|state.op_f3_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector15~2_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f3_clean~q\);

-- Location: FF_X105_Y48_N13
\maptdes|mapDes|state.op_f4_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector18~3_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f4_clean~q\);

-- Location: LCCOMB_X106_Y48_N30
\maptdes|mapDes|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector49~0_combout\ = (\maptdes|mapDes|state.op_fe_clean~q\) # ((\maptdes|mapDes|state.op_ff_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fe_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_ff_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector49~0_combout\);

-- Location: FF_X105_Y48_N27
\maptdes|mapDes|state.op_f5_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector21~1_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f5_clean~q\);

-- Location: FF_X107_Y48_N27
\maptdes|mapDes|state.op_f1_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector9~3_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f1_clean~q\);

-- Location: LCCOMB_X107_Y48_N20
\maptdes|mapDes|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector10~0_combout\ = (\maptdes|mapDes|state.op_f1_clean~q\) # ((\maptdes|mapDes|state.op_f2_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f1_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f2_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector10~0_combout\);

-- Location: LCCOMB_X107_Y48_N28
\maptdes|mapDes|Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector53~1_combout\ = (\maptdes|mapDes|state.op_f1_clean~q\) # ((\maptdes|mapDes|state.op_f2_clean~q\) # ((\maptdes|mapDes|state.op_f3_clean~q\) # (\maptdes|mapDes|state.op_f0_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f1_clean~q\,
	datab => \maptdes|mapDes|state.op_f2_clean~q\,
	datac => \maptdes|mapDes|state.op_f3_clean~q\,
	datad => \maptdes|mapDes|state.op_f0_clean~q\,
	combout => \maptdes|mapDes|Selector53~1_combout\);

-- Location: LCCOMB_X105_Y48_N8
\maptdes|mapDes|Selector53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector53~2_combout\ = (\maptdes|mapDes|state.op_f4_clean~q\) # (\maptdes|mapDes|state.op_f5_clean~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f4_clean~q\,
	datac => \maptdes|mapDes|state.op_f5_clean~q\,
	combout => \maptdes|mapDes|Selector53~2_combout\);

-- Location: LCCOMB_X106_Y47_N8
\maptdes|mapDes|Selector53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector53~3_combout\ = (\maptdes|mapDes|Selector53~2_combout\) # ((\maptdes|mapDes|state.op_f7_clean~q\) # ((\maptdes|mapDes|state.op_f6_clean~q\) # (\maptdes|mapDes|Selector53~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector53~2_combout\,
	datab => \maptdes|mapDes|state.op_f7_clean~q\,
	datac => \maptdes|mapDes|state.op_f6_clean~q\,
	datad => \maptdes|mapDes|Selector53~1_combout\,
	combout => \maptdes|mapDes|Selector53~3_combout\);

-- Location: FF_X107_Y49_N23
\maptdes|mapDes|mapK|state.pc2_g\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_g~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_g~q\);

-- Location: LCCOMB_X107_Y49_N30
\maptdes|mapDes|mapK|state.pronto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pronto~0_combout\ = (\maptdes|mapDes|mapK|state.pc2_g~q\) # (\maptdes|mapDes|mapK|state.pronto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapK|state.pc2_g~q\,
	datac => \maptdes|mapDes|mapK|state.pronto~q\,
	combout => \maptdes|mapDes|mapK|state.pronto~0_combout\);

-- Location: LCCOMB_X68_Y49_N2
\maptundes|mapUN_Des|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector36~1_combout\ = (\maptundes|mapUN_Des|state.op_fa_clean~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # ((\maptundes|mapUN_Des|state.op_fa_done~q\)))) # (!\maptundes|mapUN_Des|state.op_fa_clean~q\ & 
-- (((\maptundes|mapUN_Des|state.op_fa_done~q\ & \maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fa_clean~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|state.op_fa_done~q\,
	datad => \maptundes|mapUN_Des|mapF|done~q\,
	combout => \maptundes|mapUN_Des|Selector36~1_combout\);

-- Location: LCCOMB_X67_Y49_N10
\maptundes|mapUN_Des|Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector36~2_combout\ = (\maptundes|mapUN_Des|state.op_fb_done~q\) # ((!\maptundes|mapUN_Des|WideOr36~3_combout\) # (!\maptundes|mapUN_Des|Selector36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fb_done~q\,
	datab => \maptundes|mapUN_Des|Selector36~0_combout\,
	datad => \maptundes|mapUN_Des|WideOr36~3_combout\,
	combout => \maptundes|mapUN_Des|Selector36~2_combout\);

-- Location: LCCOMB_X67_Y49_N26
\maptundes|mapUN_Des|Selector36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector36~3_combout\ = (\maptundes|mapUN_Des|Selector36~1_combout\) # ((\maptundes|mapUN_Des|Selector36~2_combout\ & (\maptundes|mapUN_Des|state.op_fa_clean~q\ & !\maptundes|mapUN_Des|mapF|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector36~1_combout\,
	datab => \maptundes|mapUN_Des|Selector36~2_combout\,
	datac => \maptundes|mapUN_Des|state.op_fa_clean~q\,
	datad => \maptundes|mapUN_Des|mapF|done~q\,
	combout => \maptundes|mapUN_Des|Selector36~3_combout\);

-- Location: LCCOMB_X67_Y49_N8
\maptundes|mapUN_Des|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector48~0_combout\ = (\maptundes|mapUN_Des|state.op_fe_clean~q\ & (((\maptundes|mapUN_Des|state.op_fe_done~q\) # (\maptundes|mapUN_Des|Selector1~2_combout\)))) # (!\maptundes|mapUN_Des|state.op_fe_clean~q\ & 
-- (\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_fe_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fe_clean~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_fe_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector48~0_combout\);

-- Location: LCCOMB_X68_Y49_N8
\maptundes|mapUN_Des|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector45~0_combout\ = (\maptundes|mapUN_Des|mapF|done~q\ & ((\maptundes|mapUN_Des|state.op_fd_done~q\) # ((\maptundes|mapUN_Des|state.op_fd_clean~q\ & \maptundes|mapUN_Des|Selector1~2_combout\)))) # 
-- (!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_fd_clean~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fd_clean~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|state.op_fd_done~q\,
	combout => \maptundes|mapUN_Des|Selector45~0_combout\);

-- Location: LCCOMB_X68_Y49_N22
\maptundes|mapUN_Des|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector45~1_combout\ = (\maptundes|mapUN_Des|state.op_fd_done~q\) # ((\maptundes|mapUN_Des|state.op_fe_done~q\) # (\maptundes|mapUN_Des|state.op_fc_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|state.op_fd_done~q\,
	datac => \maptundes|mapUN_Des|state.op_fe_done~q\,
	datad => \maptundes|mapUN_Des|state.op_fc_done~q\,
	combout => \maptundes|mapUN_Des|Selector45~1_combout\);

-- Location: LCCOMB_X68_Y49_N12
\maptundes|mapUN_Des|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector45~2_combout\ = (\maptundes|mapUN_Des|Selector45~0_combout\ & ((\maptundes|mapUN_Des|Selector45~1_combout\) # ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector45~1_combout\,
	datab => \maptundes|mapUN_Des|Selector45~0_combout\,
	datac => \maptundes|mapUN_Des|Selector42~0_combout\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector45~2_combout\);

-- Location: LCCOMB_X67_Y49_N22
\maptundes|mapUN_Des|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector39~0_combout\ = (\maptundes|mapUN_Des|state.op_fb_clean~q\ & (((\maptundes|mapUN_Des|state.op_fb_done~q\) # (\maptundes|mapUN_Des|Selector1~2_combout\)))) # (!\maptundes|mapUN_Des|state.op_fb_clean~q\ & 
-- (\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_fb_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fb_clean~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_fb_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector39~0_combout\);

-- Location: LCCOMB_X66_Y49_N18
\maptundes|mapUN_Des|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector39~1_combout\ = (\maptundes|mapUN_Des|state.op_fa_done~q\) # ((!\maptundes|mapUN_Des|WideOr36~3_combout\) # (!\maptundes|mapUN_Des|Selector36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fa_done~q\,
	datac => \maptundes|mapUN_Des|Selector36~0_combout\,
	datad => \maptundes|mapUN_Des|WideOr36~3_combout\,
	combout => \maptundes|mapUN_Des|Selector39~1_combout\);

-- Location: LCCOMB_X66_Y49_N24
\maptundes|mapUN_Des|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector39~2_combout\ = (\maptundes|mapUN_Des|Selector39~0_combout\) # ((!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_fb_clean~q\ & \maptundes|mapUN_Des|Selector39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|Selector39~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_fb_clean~q\,
	datad => \maptundes|mapUN_Des|Selector39~1_combout\,
	combout => \maptundes|mapUN_Des|Selector39~2_combout\);

-- Location: LCCOMB_X68_Y49_N4
\maptundes|mapUN_Des|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector42~1_combout\ = (\maptundes|mapUN_Des|state.op_fc_clean~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # ((\maptundes|mapUN_Des|state.op_fc_done~q\)))) # (!\maptundes|mapUN_Des|state.op_fc_clean~q\ & 
-- (((\maptundes|mapUN_Des|mapF|done~q\ & \maptundes|mapUN_Des|state.op_fc_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fc_clean~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|mapF|done~q\,
	datad => \maptundes|mapUN_Des|state.op_fc_done~q\,
	combout => \maptundes|mapUN_Des|Selector42~1_combout\);

-- Location: LCCOMB_X67_Y49_N6
\maptundes|mapUN_Des|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector42~2_combout\ = (\maptundes|mapUN_Des|state.op_fd_done~q\) # ((\maptundes|mapUN_Des|state.op_fe_done~q\) # (!\maptundes|mapUN_Des|Selector42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|state.op_fd_done~q\,
	datac => \maptundes|mapUN_Des|state.op_fe_done~q\,
	datad => \maptundes|mapUN_Des|Selector42~0_combout\,
	combout => \maptundes|mapUN_Des|Selector42~2_combout\);

-- Location: LCCOMB_X67_Y49_N30
\maptundes|mapUN_Des|Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector42~3_combout\ = (\maptundes|mapUN_Des|Selector42~1_combout\) # ((!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_fc_clean~q\ & \maptundes|mapUN_Des|Selector42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector42~1_combout\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_fc_clean~q\,
	datad => \maptundes|mapUN_Des|Selector42~2_combout\,
	combout => \maptundes|mapUN_Des|Selector42~3_combout\);

-- Location: LCCOMB_X69_Y49_N10
\maptundes|mapUN_Des|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector30~0_combout\ = (\maptundes|mapUN_Des|state.op_f8_clean~q\ & (((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|state.op_f8_done~q\)))) # (!\maptundes|mapUN_Des|state.op_f8_clean~q\ & 
-- (\maptundes|mapUN_Des|mapF|done~q\ & ((\maptundes|mapUN_Des|state.op_f8_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f8_clean~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|state.op_f8_done~q\,
	combout => \maptundes|mapUN_Des|Selector30~0_combout\);

-- Location: LCCOMB_X69_Y49_N16
\maptundes|mapUN_Des|Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector30~1_combout\ = (\maptundes|mapUN_Des|state.op_f0_done~q\) # ((\maptundes|mapUN_Des|state.op_f7_done~q\) # (!\maptundes|mapUN_Des|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|state.op_f0_done~q\,
	datac => \maptundes|mapUN_Des|Selector6~1_combout\,
	datad => \maptundes|mapUN_Des|state.op_f7_done~q\,
	combout => \maptundes|mapUN_Des|Selector30~1_combout\);

-- Location: LCCOMB_X69_Y49_N12
\maptundes|mapUN_Des|Selector30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector30~2_combout\ = (\maptundes|mapUN_Des|Selector30~0_combout\) # ((!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_f8_clean~q\ & \maptundes|mapUN_Des|Selector30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector30~0_combout\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_f8_clean~q\,
	datad => \maptundes|mapUN_Des|Selector30~1_combout\,
	combout => \maptundes|mapUN_Des|Selector30~2_combout\);

-- Location: LCCOMB_X69_Y49_N18
\maptundes|mapUN_Des|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector9~1_combout\ = (\maptundes|mapUN_Des|state.op_f1_done~q\ & ((\maptundes|mapUN_Des|mapF|done~q\) # ((\maptundes|mapUN_Des|state.op_f1_clean~q\)))) # (!\maptundes|mapUN_Des|state.op_f1_done~q\ & 
-- (((\maptundes|mapUN_Des|Selector1~2_combout\ & \maptundes|mapUN_Des|state.op_f1_clean~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f1_done~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|state.op_f1_clean~q\,
	combout => \maptundes|mapUN_Des|Selector9~1_combout\);

-- Location: LCCOMB_X70_Y49_N6
\maptundes|mapUN_Des|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector9~2_combout\ = (\maptundes|mapUN_Des|state.op_ff_done~q\) # (((!\maptundes|mapUN_Des|Selector6~0_combout\) # (!\maptundes|mapUN_Des|WideOr36~1_combout\)) # (!\maptundes|mapUN_Des|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_ff_done~q\,
	datab => \maptundes|mapUN_Des|Selector9~0_combout\,
	datac => \maptundes|mapUN_Des|WideOr36~1_combout\,
	datad => \maptundes|mapUN_Des|Selector6~0_combout\,
	combout => \maptundes|mapUN_Des|Selector9~2_combout\);

-- Location: LCCOMB_X69_Y49_N2
\maptundes|mapUN_Des|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector9~3_combout\ = (\maptundes|mapUN_Des|Selector9~1_combout\) # ((\maptundes|mapUN_Des|Selector9~2_combout\ & (!\maptundes|mapUN_Des|mapF|done~q\ & \maptundes|mapUN_Des|state.op_f1_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector9~2_combout\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_f1_clean~q\,
	datad => \maptundes|mapUN_Des|Selector9~1_combout\,
	combout => \maptundes|mapUN_Des|Selector9~3_combout\);

-- Location: LCCOMB_X68_Y49_N18
\maptundes|mapUN_Des|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector33~0_combout\ = (\maptundes|mapUN_Des|state.op_f9_clean~q\ & (((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|state.op_f9_done~q\)))) # (!\maptundes|mapUN_Des|state.op_f9_clean~q\ & 
-- (\maptundes|mapUN_Des|mapF|done~q\ & ((\maptundes|mapUN_Des|state.op_f9_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f9_clean~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|state.op_f9_done~q\,
	combout => \maptundes|mapUN_Des|Selector33~0_combout\);

-- Location: LCCOMB_X68_Y49_N16
\maptundes|mapUN_Des|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector33~1_combout\ = (!\maptundes|mapUN_Des|state.op_fc_done~q\ & (!\maptundes|mapUN_Des|state.op_fe_done~q\ & !\maptundes|mapUN_Des|state.op_fd_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fc_done~q\,
	datac => \maptundes|mapUN_Des|state.op_fe_done~q\,
	datad => \maptundes|mapUN_Des|state.op_fd_done~q\,
	combout => \maptundes|mapUN_Des|Selector33~1_combout\);

-- Location: LCCOMB_X68_Y49_N6
\maptundes|mapUN_Des|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector33~2_combout\ = (((\maptundes|mapUN_Des|state.op_fa_done~q\) # (\maptundes|mapUN_Des|state.op_fb_done~q\)) # (!\maptundes|mapUN_Des|Selector33~1_combout\)) # (!\maptundes|mapUN_Des|WideOr36~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|WideOr36~3_combout\,
	datab => \maptundes|mapUN_Des|Selector33~1_combout\,
	datac => \maptundes|mapUN_Des|state.op_fa_done~q\,
	datad => \maptundes|mapUN_Des|state.op_fb_done~q\,
	combout => \maptundes|mapUN_Des|Selector33~2_combout\);

-- Location: LCCOMB_X68_Y49_N26
\maptundes|mapUN_Des|Selector33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector33~3_combout\ = (\maptundes|mapUN_Des|Selector33~0_combout\) # ((!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_f9_clean~q\ & \maptundes|mapUN_Des|Selector33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|Selector33~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_f9_clean~q\,
	datad => \maptundes|mapUN_Des|Selector33~2_combout\,
	combout => \maptundes|mapUN_Des|Selector33~3_combout\);

-- Location: LCCOMB_X66_Y48_N30
\maptundes|mapUN_Des|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector12~2_combout\ = (\maptundes|mapUN_Des|state.op_f3_done~q\) # (((\maptundes|mapUN_Des|state.op_f6_done~q\) # (!\maptundes|mapUN_Des|Selector18~0_combout\)) # (!\maptundes|mapUN_Des|Selector12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f3_done~q\,
	datab => \maptundes|mapUN_Des|Selector12~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_f6_done~q\,
	datad => \maptundes|mapUN_Des|Selector18~0_combout\,
	combout => \maptundes|mapUN_Des|Selector12~2_combout\);

-- Location: LCCOMB_X65_Y49_N10
\maptundes|mapUN_Des|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector18~2_combout\ = (\maptundes|mapUN_Des|mapF|done~q\) # ((!\maptundes|mapUN_Des|state.op_f5_done~q\ & (!\maptundes|mapUN_Des|state.op_f4_done~q\ & \maptundes|mapUN_Des|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f5_done~q\,
	datab => \maptundes|mapUN_Des|state.op_f4_done~q\,
	datac => \maptundes|mapUN_Des|mapF|done~q\,
	datad => \maptundes|mapUN_Des|Selector18~1_combout\,
	combout => \maptundes|mapUN_Des|Selector18~2_combout\);

-- Location: LCCOMB_X65_Y49_N0
\maptundes|mapUN_Des|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector18~3_combout\ = (\maptundes|mapUN_Des|Selector18~2_combout\ & ((\maptundes|mapUN_Des|state.op_f4_done~q\) # ((\maptundes|mapUN_Des|Selector1~2_combout\ & \maptundes|mapUN_Des|state.op_f4_clean~q\)))) # 
-- (!\maptundes|mapUN_Des|Selector18~2_combout\ & (((\maptundes|mapUN_Des|state.op_f4_clean~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_f4_done~q\,
	datac => \maptundes|mapUN_Des|state.op_f4_clean~q\,
	datad => \maptundes|mapUN_Des|Selector18~2_combout\,
	combout => \maptundes|mapUN_Des|Selector18~3_combout\);

-- Location: LCCOMB_X110_Y48_N18
\maptdes|mapDes|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector42~0_combout\ = (\maptdes|mapDes|state.op_fc_clean~q\ & ((\maptdes|mapDes|state.op_fc_done~q\) # ((\maptdes|mapDes|Selector1~2_combout\)))) # (!\maptdes|mapDes|state.op_fc_clean~q\ & (\maptdes|mapDes|state.op_fc_done~q\ & 
-- (\maptdes|mapDes|mapF|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fc_clean~q\,
	datab => \maptdes|mapDes|state.op_fc_done~q\,
	datac => \maptdes|mapDes|mapF|done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector42~0_combout\);

-- Location: LCCOMB_X110_Y48_N2
\maptdes|mapDes|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector42~2_combout\ = (\maptdes|mapDes|state.op_fe_done~q\) # ((\maptdes|mapDes|state.op_fd_done~q\) # (!\maptdes|mapDes|Selector42~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fe_done~q\,
	datab => \maptdes|mapDes|state.op_fd_done~q\,
	datad => \maptdes|mapDes|Selector42~1_combout\,
	combout => \maptdes|mapDes|Selector42~2_combout\);

-- Location: LCCOMB_X110_Y48_N26
\maptdes|mapDes|Selector42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector42~3_combout\ = (\maptdes|mapDes|Selector42~0_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_fc_clean~q\ & \maptdes|mapDes|Selector42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector42~0_combout\,
	datac => \maptdes|mapDes|state.op_fc_clean~q\,
	datad => \maptdes|mapDes|Selector42~2_combout\,
	combout => \maptdes|mapDes|Selector42~3_combout\);

-- Location: LCCOMB_X111_Y48_N26
\maptdes|mapDes|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector39~0_combout\ = (\maptdes|mapDes|state.op_fb_done~q\ & ((\maptdes|mapDes|mapF|done~q\) # ((\maptdes|mapDes|state.op_fb_clean~q\)))) # (!\maptdes|mapDes|state.op_fb_done~q\ & (((\maptdes|mapDes|Selector1~2_combout\ & 
-- \maptdes|mapDes|state.op_fb_clean~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fb_done~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|Selector1~2_combout\,
	datad => \maptdes|mapDes|state.op_fb_clean~q\,
	combout => \maptdes|mapDes|Selector39~0_combout\);

-- Location: LCCOMB_X111_Y48_N0
\maptdes|mapDes|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector39~1_combout\ = ((\maptdes|mapDes|state.op_fa_done~q\) # (!\maptdes|mapDes|WideOr36~3_combout\)) # (!\maptdes|mapDes|Selector36~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector36~0_combout\,
	datab => \maptdes|mapDes|state.op_fa_done~q\,
	datad => \maptdes|mapDes|WideOr36~3_combout\,
	combout => \maptdes|mapDes|Selector39~1_combout\);

-- Location: LCCOMB_X111_Y48_N12
\maptdes|mapDes|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector39~2_combout\ = (\maptdes|mapDes|Selector39~0_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_fb_clean~q\ & \maptdes|mapDes|Selector39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector39~0_combout\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_fb_clean~q\,
	datad => \maptdes|mapDes|Selector39~1_combout\,
	combout => \maptdes|mapDes|Selector39~2_combout\);

-- Location: LCCOMB_X110_Y48_N10
\maptdes|mapDes|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector45~1_combout\ = (\maptdes|mapDes|state.op_fe_done~q\) # ((\maptdes|mapDes|state.op_fc_done~q\) # (\maptdes|mapDes|state.op_fd_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fe_done~q\,
	datab => \maptdes|mapDes|state.op_fc_done~q\,
	datad => \maptdes|mapDes|state.op_fd_done~q\,
	combout => \maptdes|mapDes|Selector45~1_combout\);

-- Location: LCCOMB_X109_Y48_N2
\maptdes|mapDes|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector33~0_combout\ = (\maptdes|mapDes|state.op_f9_clean~q\ & (((\maptdes|mapDes|state.op_f9_done~q\) # (\maptdes|mapDes|Selector1~2_combout\)))) # (!\maptdes|mapDes|state.op_f9_clean~q\ & (\maptdes|mapDes|mapF|done~q\ & 
-- (\maptdes|mapDes|state.op_f9_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f9_clean~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f9_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector33~0_combout\);

-- Location: LCCOMB_X111_Y48_N10
\maptdes|mapDes|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector36~1_combout\ = (\maptdes|mapDes|state.op_fa_clean~q\ & (((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|state.op_fa_done~q\)))) # (!\maptdes|mapDes|state.op_fa_clean~q\ & (\maptdes|mapDes|mapF|done~q\ & 
-- ((\maptdes|mapDes|state.op_fa_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fa_clean~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|Selector1~2_combout\,
	datad => \maptdes|mapDes|state.op_fa_done~q\,
	combout => \maptdes|mapDes|Selector36~1_combout\);

-- Location: LCCOMB_X108_Y48_N2
\maptdes|mapDes|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector24~0_combout\ = (\maptdes|mapDes|state.op_f6_done~q\ & ((\maptdes|mapDes|state.op_f6_clean~q\) # ((\maptdes|mapDes|mapF|done~q\)))) # (!\maptdes|mapDes|state.op_f6_done~q\ & (\maptdes|mapDes|state.op_f6_clean~q\ & 
-- ((\maptdes|mapDes|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f6_done~q\,
	datab => \maptdes|mapDes|state.op_f6_clean~q\,
	datac => \maptdes|mapDes|mapF|done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector24~0_combout\);

-- Location: LCCOMB_X108_Y48_N10
\maptdes|mapDes|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector24~1_combout\ = ((\maptdes|mapDes|state.op_f2_done~q\) # ((\maptdes|mapDes|state.op_f3_done~q\) # (!\maptdes|mapDes|Selector18~0_combout\))) # (!\maptdes|mapDes|Selector12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector12~0_combout\,
	datab => \maptdes|mapDes|state.op_f2_done~q\,
	datac => \maptdes|mapDes|Selector18~0_combout\,
	datad => \maptdes|mapDes|state.op_f3_done~q\,
	combout => \maptdes|mapDes|Selector24~1_combout\);

-- Location: LCCOMB_X108_Y48_N30
\maptdes|mapDes|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector24~2_combout\ = (\maptdes|mapDes|Selector24~0_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_f6_clean~q\ & \maptdes|mapDes|Selector24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector24~0_combout\,
	datac => \maptdes|mapDes|state.op_f6_clean~q\,
	datad => \maptdes|mapDes|Selector24~1_combout\,
	combout => \maptdes|mapDes|Selector24~2_combout\);

-- Location: LCCOMB_X105_Y48_N14
\maptdes|mapDes|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector27~0_combout\ = (\maptdes|mapDes|state.op_f7_done~q\ & ((\maptdes|mapDes|mapF|done~q\) # ((\maptdes|mapDes|state.op_f7_clean~q\)))) # (!\maptdes|mapDes|state.op_f7_done~q\ & (((\maptdes|mapDes|state.op_f7_clean~q\ & 
-- \maptdes|mapDes|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|state.op_f7_done~q\,
	datac => \maptdes|mapDes|state.op_f7_clean~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector27~0_combout\);

-- Location: LCCOMB_X109_Y48_N16
\maptdes|mapDes|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector27~1_combout\ = (\maptdes|mapDes|state.op_f0_done~q\) # ((\maptdes|mapDes|state.op_f8_done~q\) # (!\maptdes|mapDes|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptdes|mapDes|state.op_f0_done~q\,
	datac => \maptdes|mapDes|state.op_f8_done~q\,
	datad => \maptdes|mapDes|Selector6~1_combout\,
	combout => \maptdes|mapDes|Selector27~1_combout\);

-- Location: LCCOMB_X105_Y48_N30
\maptdes|mapDes|Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector27~2_combout\ = (\maptdes|mapDes|Selector27~0_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_f7_clean~q\ & \maptdes|mapDes|Selector27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector27~0_combout\,
	datac => \maptdes|mapDes|state.op_f7_clean~q\,
	datad => \maptdes|mapDes|Selector27~1_combout\,
	combout => \maptdes|mapDes|Selector27~2_combout\);

-- Location: LCCOMB_X108_Y48_N24
\maptdes|mapDes|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector6~2_combout\ = (\maptdes|mapDes|state.op_f0_clean~q\ & (((\maptdes|mapDes|state.op_f0_done~q\) # (\maptdes|mapDes|Selector1~2_combout\)))) # (!\maptdes|mapDes|state.op_f0_clean~q\ & (\maptdes|mapDes|mapF|done~q\ & 
-- (\maptdes|mapDes|state.op_f0_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f0_clean~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f0_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector6~2_combout\);

-- Location: LCCOMB_X109_Y48_N22
\maptdes|mapDes|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector6~3_combout\ = (\maptdes|mapDes|state.op_f7_done~q\) # ((\maptdes|mapDes|state.op_f8_done~q\) # (!\maptdes|mapDes|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f7_done~q\,
	datac => \maptdes|mapDes|state.op_f8_done~q\,
	datad => \maptdes|mapDes|Selector6~1_combout\,
	combout => \maptdes|mapDes|Selector6~3_combout\);

-- Location: LCCOMB_X108_Y48_N4
\maptdes|mapDes|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector6~4_combout\ = (\maptdes|mapDes|Selector6~2_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_f0_clean~q\ & \maptdes|mapDes|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector6~2_combout\,
	datac => \maptdes|mapDes|state.op_f0_clean~q\,
	datad => \maptdes|mapDes|Selector6~3_combout\,
	combout => \maptdes|mapDes|Selector6~4_combout\);

-- Location: LCCOMB_X105_Y48_N20
\maptdes|mapDes|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector15~0_combout\ = (\maptdes|mapDes|state.op_f3_clean~q\ & ((\maptdes|mapDes|state.op_f3_done~q\) # ((\maptdes|mapDes|Selector1~2_combout\)))) # (!\maptdes|mapDes|state.op_f3_clean~q\ & (\maptdes|mapDes|state.op_f3_done~q\ & 
-- (\maptdes|mapDes|mapF|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f3_clean~q\,
	datab => \maptdes|mapDes|state.op_f3_done~q\,
	datac => \maptdes|mapDes|mapF|done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector15~0_combout\);

-- Location: LCCOMB_X106_Y48_N18
\maptdes|mapDes|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector15~1_combout\ = (\maptdes|mapDes|state.op_f6_done~q\) # ((\maptdes|mapDes|state.op_f2_done~q\) # ((!\maptdes|mapDes|Selector18~0_combout\) # (!\maptdes|mapDes|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f6_done~q\,
	datab => \maptdes|mapDes|state.op_f2_done~q\,
	datac => \maptdes|mapDes|Selector12~0_combout\,
	datad => \maptdes|mapDes|Selector18~0_combout\,
	combout => \maptdes|mapDes|Selector15~1_combout\);

-- Location: LCCOMB_X106_Y48_N6
\maptdes|mapDes|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector15~2_combout\ = (\maptdes|mapDes|Selector15~0_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_f3_clean~q\ & \maptdes|mapDes|Selector15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector15~0_combout\,
	datac => \maptdes|mapDes|state.op_f3_clean~q\,
	datad => \maptdes|mapDes|Selector15~1_combout\,
	combout => \maptdes|mapDes|Selector15~2_combout\);

-- Location: LCCOMB_X105_Y48_N6
\maptdes|mapDes|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector18~1_combout\ = (!\maptdes|mapDes|state.op_f2_done~q\ & (!\maptdes|mapDes|state.op_f3_done~q\ & (\maptdes|mapDes|Selector18~0_combout\ & !\maptdes|mapDes|state.op_f6_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f2_done~q\,
	datab => \maptdes|mapDes|state.op_f3_done~q\,
	datac => \maptdes|mapDes|Selector18~0_combout\,
	datad => \maptdes|mapDes|state.op_f6_done~q\,
	combout => \maptdes|mapDes|Selector18~1_combout\);

-- Location: LCCOMB_X105_Y48_N28
\maptdes|mapDes|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector18~2_combout\ = (\maptdes|mapDes|mapF|done~q\) # ((!\maptdes|mapDes|state.op_f4_done~q\ & (!\maptdes|mapDes|state.op_f5_done~q\ & \maptdes|mapDes|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|state.op_f4_done~q\,
	datac => \maptdes|mapDes|state.op_f5_done~q\,
	datad => \maptdes|mapDes|Selector18~1_combout\,
	combout => \maptdes|mapDes|Selector18~2_combout\);

-- Location: LCCOMB_X105_Y48_N12
\maptdes|mapDes|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector18~3_combout\ = (\maptdes|mapDes|Selector18~2_combout\ & ((\maptdes|mapDes|state.op_f4_done~q\) # ((\maptdes|mapDes|Selector1~2_combout\ & \maptdes|mapDes|state.op_f4_clean~q\)))) # (!\maptdes|mapDes|Selector18~2_combout\ & 
-- (((\maptdes|mapDes|state.op_f4_clean~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector1~2_combout\,
	datab => \maptdes|mapDes|state.op_f4_done~q\,
	datac => \maptdes|mapDes|state.op_f4_clean~q\,
	datad => \maptdes|mapDes|Selector18~2_combout\,
	combout => \maptdes|mapDes|Selector18~3_combout\);

-- Location: LCCOMB_X110_Y48_N22
\maptdes|mapDes|Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector48~1_combout\ = (\maptdes|mapDes|state.op_fe_done~q\) # ((\maptdes|mapDes|state.op_fc_done~q\) # (\maptdes|mapDes|state.op_fd_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fe_done~q\,
	datab => \maptdes|mapDes|state.op_fc_done~q\,
	datad => \maptdes|mapDes|state.op_fd_done~q\,
	combout => \maptdes|mapDes|Selector48~1_combout\);

-- Location: LCCOMB_X108_Y48_N18
\maptdes|mapDes|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector12~1_combout\ = (\maptdes|mapDes|state.op_f2_clean~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # ((\maptdes|mapDes|state.op_f2_done~q\)))) # (!\maptdes|mapDes|state.op_f2_clean~q\ & (((\maptdes|mapDes|mapF|done~q\ & 
-- \maptdes|mapDes|state.op_f2_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector1~2_combout\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f2_clean~q\,
	datad => \maptdes|mapDes|state.op_f2_done~q\,
	combout => \maptdes|mapDes|Selector12~1_combout\);

-- Location: LCCOMB_X105_Y48_N10
\maptdes|mapDes|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector21~0_combout\ = (\maptdes|mapDes|mapF|done~q\) # ((!\maptdes|mapDes|state.op_f4_done~q\ & (!\maptdes|mapDes|state.op_f5_done~q\ & \maptdes|mapDes|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|state.op_f4_done~q\,
	datac => \maptdes|mapDes|state.op_f5_done~q\,
	datad => \maptdes|mapDes|Selector18~1_combout\,
	combout => \maptdes|mapDes|Selector21~0_combout\);

-- Location: LCCOMB_X105_Y48_N26
\maptdes|mapDes|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector21~1_combout\ = (\maptdes|mapDes|Selector21~0_combout\ & ((\maptdes|mapDes|state.op_f5_done~q\) # ((\maptdes|mapDes|Selector1~2_combout\ & \maptdes|mapDes|state.op_f5_clean~q\)))) # (!\maptdes|mapDes|Selector21~0_combout\ & 
-- (((\maptdes|mapDes|state.op_f5_clean~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f5_done~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f5_clean~q\,
	datad => \maptdes|mapDes|Selector21~0_combout\,
	combout => \maptdes|mapDes|Selector21~1_combout\);

-- Location: LCCOMB_X107_Y48_N22
\maptdes|mapDes|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector9~1_combout\ = (\maptdes|mapDes|state.op_f1_clean~q\ & (((\maptdes|mapDes|state.op_f1_done~q\) # (\maptdes|mapDes|Selector1~2_combout\)))) # (!\maptdes|mapDes|state.op_f1_clean~q\ & (\maptdes|mapDes|mapF|done~q\ & 
-- (\maptdes|mapDes|state.op_f1_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f1_clean~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f1_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector9~1_combout\);

-- Location: LCCOMB_X108_Y48_N6
\maptdes|mapDes|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector9~2_combout\ = (\maptdes|mapDes|state.op_ff_done~q\) # (((!\maptdes|mapDes|Selector9~0_combout\) # (!\maptdes|mapDes|Selector6~0_combout\)) # (!\maptdes|mapDes|WideOr36~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_ff_done~q\,
	datab => \maptdes|mapDes|WideOr36~1_combout\,
	datac => \maptdes|mapDes|Selector6~0_combout\,
	datad => \maptdes|mapDes|Selector9~0_combout\,
	combout => \maptdes|mapDes|Selector9~2_combout\);

-- Location: LCCOMB_X107_Y48_N26
\maptdes|mapDes|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector9~3_combout\ = (\maptdes|mapDes|Selector9~1_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_f1_clean~q\ & \maptdes|mapDes|Selector9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector9~1_combout\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f1_clean~q\,
	datad => \maptdes|mapDes|Selector9~2_combout\,
	combout => \maptdes|mapDes|Selector9~3_combout\);

-- Location: FF_X107_Y47_N13
\maptdes|mapDes|mapF|state.op_sbox\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|Selector0~0_combout\,
	clrn => \maptdes|mapDes|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|state.op_sbox~q\);

-- Location: FF_X107_Y49_N1
\maptdes|mapDes|mapK|state.rotacaog_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacaog_1~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacaog_1~q\);

-- Location: LCCOMB_X107_Y47_N12
\maptdes|mapDes|mapF|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|Selector0~0_combout\ = ((\maptdes|mapDes|mapF|state.op_sbox~q\ & !\maptdes|mapDes|mapF|mapSbox|done~q\)) # (!\maptdes|mapDes|mapF|state.op_xor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptdes|mapDes|mapF|state.op_xor~q\,
	datac => \maptdes|mapDes|mapF|state.op_sbox~q\,
	datad => \maptdes|mapDes|mapF|mapSbox|done~q\,
	combout => \maptdes|mapDes|mapF|Selector0~0_combout\);

-- Location: FF_X107_Y49_N27
\maptdes|mapDes|mapK|state.pc2_f\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_f~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_f~q\);

-- Location: FF_X67_Y48_N23
\maptundes|mapUN_Des|mapF|mapSbox|state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|mapSbox|Selector0~0_combout\,
	clrn => \maptundes|mapUN_Des|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|mapSbox|state.espera~q\);

-- Location: FF_X108_Y47_N11
\maptdes|mapDes|mapF|mapSbox|state.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|mapSbox|Selector0~0_combout\,
	clrn => \maptdes|mapDes|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|mapSbox|state.espera~q\);

-- Location: FF_X108_Y49_N5
\maptdes|mapDes|mapK|state.rotacaof_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacaof_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacaof_2~q\);

-- Location: FF_X68_Y48_N7
\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam~0_combout\,
	clrn => \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam~q\);

-- Location: LCCOMB_X67_Y48_N22
\maptundes|mapUN_Des|mapF|mapSbox|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|mapSbox|Selector0~0_combout\ = ((\maptundes|mapUN_Des|mapF|mapSbox|state.espera~q\ & !\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|done~q\)) # (!\maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~q\,
	datac => \maptundes|mapUN_Des|mapF|mapSbox|state.espera~q\,
	datad => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|done~q\,
	combout => \maptundes|mapUN_Des|mapF|mapSbox|Selector0~0_combout\);

-- Location: FF_X108_Y47_N23
\maptdes|mapDes|mapF|mapSbox|state.liberaSbox\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|mapSbox|state.liberaSbox~feeder_combout\,
	clrn => \maptdes|mapDes|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|mapSbox|state.liberaSbox~q\);

-- Location: LCCOMB_X108_Y47_N10
\maptdes|mapDes|mapF|mapSbox|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|mapSbox|Selector0~0_combout\ = ((\maptdes|mapDes|mapF|mapSbox|state.espera~q\ & !\maptdes|mapDes|mapF|mapSbox|mapSbox1|done~q\)) # (!\maptdes|mapDes|mapF|mapSbox|state.liberaSbox~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|mapSbox|state.liberaSbox~q\,
	datac => \maptdes|mapDes|mapF|mapSbox|state.espera~q\,
	datad => \maptdes|mapDes|mapF|mapSbox|mapSbox1|done~q\,
	combout => \maptdes|mapDes|mapF|mapSbox|Selector0~0_combout\);

-- Location: FF_X108_Y49_N3
\maptdes|mapDes|mapK|state.pc2_e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_e~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_e~q\);

-- Location: FF_X108_Y49_N25
\maptdes|mapDes|mapK|state.rotacaoe_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacaoe_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacaoe_2~q\);

-- Location: FF_X108_Y49_N15
\maptdes|mapDes|mapK|state.pc2_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_d~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_d~q\);

-- Location: FF_X108_Y49_N13
\maptdes|mapDes|mapK|state.rotacaod_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacaod_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacaod_2~q\);

-- Location: FF_X108_Y49_N31
\maptdes|mapDes|mapK|state.pc2_c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_c~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_c~q\);

-- Location: FF_X108_Y49_N29
\maptdes|mapDes|mapK|state.rotacaoc_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacaoc_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacaoc_2~q\);

-- Location: FF_X108_Y49_N23
\maptdes|mapDes|mapK|state.pc2_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_b~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_b~q\);

-- Location: FF_X108_Y49_N1
\maptdes|mapDes|mapK|state.rotacaob_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacaob_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacaob_2~q\);

-- Location: FF_X108_Y49_N27
\maptdes|mapDes|mapK|state.pc2_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_a~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_a~q\);

-- Location: FF_X108_Y49_N21
\maptdes|mapDes|mapK|state.rotacaoa_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacaoa_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacaoa_2~q\);

-- Location: FF_X108_Y49_N7
\maptdes|mapDes|mapK|state.pc2_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_9~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_9~q\);

-- Location: FF_X108_Y49_N9
\maptdes|mapDes|mapK|state.rotacao9_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacao9_1~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacao9_1~q\);

-- Location: FF_X108_Y49_N11
\maptdes|mapDes|mapK|state.pc2_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_8~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_8~q\);

-- Location: FF_X108_Y49_N17
\maptdes|mapDes|mapK|state.rotacao8_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacao8_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacao8_2~q\);

-- Location: FF_X108_Y49_N19
\maptdes|mapDes|mapK|state.pc2_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_7~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_7~q\);

-- Location: FF_X107_Y49_N21
\maptdes|mapDes|mapK|state.rotacao7_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacao7_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacao7_2~q\);

-- Location: FF_X107_Y49_N7
\maptdes|mapDes|mapK|state.pc2_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_6~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_6~q\);

-- Location: FF_X107_Y49_N17
\maptdes|mapDes|mapK|state.rotacao6_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacao6_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacao6_2~q\);

-- Location: FF_X107_Y49_N11
\maptdes|mapDes|mapK|state.pc2_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_5~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_5~q\);

-- Location: FF_X107_Y49_N25
\maptdes|mapDes|mapK|state.rotacao5_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacao5_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacao5_2~q\);

-- Location: FF_X107_Y49_N3
\maptdes|mapDes|mapK|state.pc2_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_4~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_4~q\);

-- Location: FF_X107_Y49_N9
\maptdes|mapDes|mapK|state.rotacao4_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacao4_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacao4_2~q\);

-- Location: FF_X107_Y49_N19
\maptdes|mapDes|mapK|state.pc2_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_3~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_3~q\);

-- Location: FF_X107_Y49_N5
\maptdes|mapDes|mapK|state.rotacao3_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \maptdes|mapDes|mapK|state.pc2_2~q\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacao3_2~q\);

-- Location: FF_X106_Y49_N17
\maptdes|mapDes|mapK|state.pc2_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_2~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_2~q\);

-- Location: FF_X106_Y49_N3
\maptdes|mapDes|mapK|state.rotacao2_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacao2_1~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacao2_1~q\);

-- Location: FF_X106_Y49_N1
\maptdes|mapDes|mapK|state.pc2_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc2_1~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc2_1~q\);

-- Location: FF_X106_Y49_N19
\maptdes|mapDes|mapK|state.rotacao1_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.rotacao1_1~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.rotacao1_1~q\);

-- Location: FF_X107_Y49_N15
\maptdes|mapDes|mapK|state.pc1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|state.pc1~feeder_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|state.pc1~q\);

-- Location: LCCOMB_X68_Y48_N6
\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam~0_combout\ = !\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~q\,
	combout => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam~0_combout\);

-- Location: LCCOMB_X107_Y49_N4
\maptdes|mapDes|mapK|state.rotacao1_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacao1_1~0_combout\ = !\maptdes|mapDes|mapK|state.pc1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptdes|mapDes|mapK|state.pc1~q\,
	combout => \maptdes|mapDes|mapK|state.rotacao1_1~0_combout\);

-- Location: IOIBUF_X115_Y47_N15
\barramentoIn[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(8),
	o => \barramentoIn[8]~input_o\);

-- Location: IOIBUF_X115_Y48_N1
\barramentoIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(4),
	o => \barramentoIn[4]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\barramentoIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(3),
	o => \barramentoIn[3]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\barramentoIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(2),
	o => \barramentoIn[2]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\barramentoIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(1),
	o => \barramentoIn[1]~input_o\);

-- Location: LCCOMB_X107_Y50_N30
\maptdes|estado.des2Carrega~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|estado.des2Carrega~feeder_combout\ = \maptdes|estado.des1SalvaInformacao~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|estado.des1SalvaInformacao~q\,
	combout => \maptdes|estado.des2Carrega~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N22
\maptdes|mapDes|mapK|state.pc2_g~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_g~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacaog_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacaog_1~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_g~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N0
\maptdes|mapDes|mapK|state.rotacaog_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacaog_1~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_f~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapK|state.pc2_f~q\,
	combout => \maptdes|mapDes|mapK|state.rotacaog_1~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N26
\maptdes|mapDes|mapK|state.pc2_f~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_f~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacaof_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacaof_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_f~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N4
\maptdes|mapDes|mapK|state.rotacaof_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacaof_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_e~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.pc2_e~q\,
	combout => \maptdes|mapDes|mapK|state.rotacaof_2~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N2
\maptdes|mapDes|mapK|state.pc2_e~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_e~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacaoe_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacaoe_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_e~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N24
\maptdes|mapDes|mapK|state.rotacaoe_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacaoe_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapK|state.pc2_d~q\,
	combout => \maptdes|mapDes|mapK|state.rotacaoe_2~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N14
\maptdes|mapDes|mapK|state.pc2_d~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_d~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacaod_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacaod_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_d~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N12
\maptdes|mapDes|mapK|state.rotacaod_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacaod_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_c~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapK|state.pc2_c~q\,
	combout => \maptdes|mapDes|mapK|state.rotacaod_2~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N30
\maptdes|mapDes|mapK|state.pc2_c~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_c~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacaoc_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacaoc_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_c~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N28
\maptdes|mapDes|mapK|state.rotacaoc_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacaoc_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_b~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapK|state.pc2_b~q\,
	combout => \maptdes|mapDes|mapK|state.rotacaoc_2~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N22
\maptdes|mapDes|mapK|state.pc2_b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_b~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacaob_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacaob_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_b~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N0
\maptdes|mapDes|mapK|state.rotacaob_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacaob_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapK|state.pc2_a~q\,
	combout => \maptdes|mapDes|mapK|state.rotacaob_2~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N26
\maptdes|mapDes|mapK|state.pc2_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_a~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacaoa_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacaoa_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_a~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N20
\maptdes|mapDes|mapK|state.rotacaoa_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacaoa_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.pc2_9~q\,
	combout => \maptdes|mapDes|mapK|state.rotacaoa_2~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N6
\maptdes|mapDes|mapK|state.pc2_9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_9~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao9_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapK|state.rotacao9_1~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_9~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N8
\maptdes|mapDes|mapK|state.rotacao9_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacao9_1~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.pc2_8~q\,
	combout => \maptdes|mapDes|mapK|state.rotacao9_1~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N10
\maptdes|mapDes|mapK|state.pc2_8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_8~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao8_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacao8_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_8~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N16
\maptdes|mapDes|mapK|state.rotacao8_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacao8_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.pc2_7~q\,
	combout => \maptdes|mapDes|mapK|state.rotacao8_2~feeder_combout\);

-- Location: LCCOMB_X108_Y49_N18
\maptdes|mapDes|mapK|state.pc2_7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_7~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao7_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacao7_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_7~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N20
\maptdes|mapDes|mapK|state.rotacao7_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacao7_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.pc2_6~q\,
	combout => \maptdes|mapDes|mapK|state.rotacao7_2~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N6
\maptdes|mapDes|mapK|state.pc2_6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_6~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao6_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacao6_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_6~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N16
\maptdes|mapDes|mapK|state.rotacao6_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacao6_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.pc2_5~q\,
	combout => \maptdes|mapDes|mapK|state.rotacao6_2~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N10
\maptdes|mapDes|mapK|state.pc2_5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_5~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao5_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacao5_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_5~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N24
\maptdes|mapDes|mapK|state.rotacao5_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacao5_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.pc2_4~q\,
	combout => \maptdes|mapDes|mapK|state.rotacao5_2~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N2
\maptdes|mapDes|mapK|state.pc2_4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_4~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao4_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapK|state.rotacao4_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_4~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N8
\maptdes|mapDes|mapK|state.rotacao4_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacao4_2~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.pc2_3~q\,
	combout => \maptdes|mapDes|mapK|state.rotacao4_2~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N18
\maptdes|mapDes|mapK|state.pc2_3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_3~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao3_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapK|state.rotacao3_2~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_3~feeder_combout\);

-- Location: LCCOMB_X106_Y49_N16
\maptdes|mapDes|mapK|state.pc2_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_2~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao2_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacao2_1~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_2~feeder_combout\);

-- Location: LCCOMB_X106_Y49_N2
\maptdes|mapDes|mapK|state.rotacao2_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacao2_1~feeder_combout\ = \maptdes|mapDes|mapK|state.pc2_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.pc2_1~q\,
	combout => \maptdes|mapDes|mapK|state.rotacao2_1~feeder_combout\);

-- Location: LCCOMB_X106_Y49_N0
\maptdes|mapDes|mapK|state.pc2_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc2_1~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao1_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacao1_1~q\,
	combout => \maptdes|mapDes|mapK|state.pc2_1~feeder_combout\);

-- Location: LCCOMB_X106_Y49_N18
\maptdes|mapDes|mapK|state.rotacao1_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.rotacao1_1~feeder_combout\ = \maptdes|mapDes|mapK|state.rotacao1_1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapK|state.rotacao1_1~0_combout\,
	combout => \maptdes|mapDes|mapK|state.rotacao1_1~feeder_combout\);

-- Location: LCCOMB_X108_Y47_N22
\maptdes|mapDes|mapF|mapSbox|state.liberaSbox~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|mapSbox|state.liberaSbox~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \maptdes|mapDes|mapF|mapSbox|state.liberaSbox~feeder_combout\);

-- Location: LCCOMB_X107_Y49_N14
\maptdes|mapDes|mapK|state.pc1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|state.pc1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \maptdes|mapDes|mapK|state.pc1~feeder_combout\);

-- Location: IOOBUF_X115_Y52_N2
\done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~reg0_q\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X112_Y50_N10
\i[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[0]~10_combout\ = i(0) $ (VCC)
-- \i[0]~11\ = CARRY(i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datad => VCC,
	combout => \i[0]~10_combout\,
	cout => \i[0]~11\);

-- Location: LCCOMB_X112_Y50_N12
\i[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[1]~12_combout\ = (i(1) & (!\i[0]~11\)) # (!i(1) & ((\i[0]~11\) # (GND)))
-- \i[1]~13\ = CARRY((!\i[0]~11\) # (!i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datad => VCC,
	cin => \i[0]~11\,
	combout => \i[1]~12_combout\,
	cout => \i[1]~13\);

-- Location: LCCOMB_X112_Y50_N14
\i[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[2]~14_combout\ = (i(2) & (\i[1]~13\ $ (GND))) # (!i(2) & (!\i[1]~13\ & VCC))
-- \i[2]~15\ = CARRY((i(2) & !\i[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \i[1]~13\,
	combout => \i[2]~14_combout\,
	cout => \i[2]~15\);

-- Location: LCCOMB_X61_Y49_N18
\maptundes|mapUN_Des|mapK|state.pc1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \maptundes|mapUN_Des|mapK|state.pc1~feeder_combout\);

-- Location: LCCOMB_X68_Y48_N16
\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~feeder_combout\);

-- Location: LCCOMB_X67_Y48_N2
\maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~feeder_combout\);

-- Location: LCCOMB_X68_Y48_N0
\maptundes|mapUN_Des|mapF|state.op_xor~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|state.op_xor~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \maptundes|mapUN_Des|mapF|state.op_xor~feeder_combout\);

-- Location: LCCOMB_X69_Y49_N24
\maptundes|mapUN_Des|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector49~0_combout\ = (\maptundes|mapUN_Des|state.op_ip~q\) # ((\maptundes|mapUN_Des|state.op_ff_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_ip~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|state.op_ff_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector49~0_combout\);

-- Location: LCCOMB_X76_Y49_N10
\maptundes|estado.un_des2Carrega~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|estado.un_des2Carrega~feeder_combout\ = \maptundes|estado.un_des3SalvaInformacao~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|estado.un_des3SalvaInformacao~q\,
	combout => \maptundes|estado.un_des2Carrega~feeder_combout\);

-- Location: LCCOMB_X109_Y50_N30
\estado.state_decripta_recebe_resultado~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.state_decripta_recebe_resultado~feeder_combout\ = \Selector14~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector14~0_combout\,
	combout => \estado.state_decripta_recebe_resultado~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X109_Y50_N31
\estado.state_decripta_recebe_resultado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \estado.state_decripta_recebe_resultado~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_decripta_recebe_resultado~q\);

-- Location: IOIBUF_X115_Y49_N1
\inStable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inStable,
	o => \inStable~input_o\);

-- Location: LCCOMB_X107_Y49_N12
\maptdes|mapDes|mapK|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapK|done~0_combout\ = (\maptdes|mapDes|mapK|state.pronto~q\) # (\maptdes|mapDes|mapK|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapK|state.pronto~q\,
	datac => \maptdes|mapDes|mapK|done~q\,
	combout => \maptdes|mapDes|mapK|done~0_combout\);

-- Location: LCCOMB_X105_Y48_N0
\maptdes|mapDes|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector19~0_combout\ = (\maptdes|mapDes|state.op_f4_clean~q\) # ((\maptdes|mapDes|state.op_f5_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f4_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f5_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector19~0_combout\);

-- Location: LCCOMB_X107_Y50_N0
\maptdes|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector6~0_combout\ = (\maptdes|estado.des2Opera~q\ & \maptdes|mapDes|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|estado.des2Opera~q\,
	datac => \maptdes|mapDes|done~q\,
	combout => \maptdes|Selector6~0_combout\);

-- Location: LCCOMB_X110_Y50_N0
\i[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[9]~34_combout\ = (\estado.state_encripta_seleciona_bloco~q\ & \LessThan0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.state_encripta_seleciona_bloco~q\,
	datad => \LessThan0~18_combout\,
	combout => \i[9]~34_combout\);

-- Location: FF_X110_Y50_N1
\estado.state_encripta_recebe_ram\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[9]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_encripta_recebe_ram~q\);

-- Location: LCCOMB_X109_Y50_N14
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\estado.state_encripta_recebe_ram~q\) # ((!\maptdes|done~q\ & \estado.state_encripta_opera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|done~q\,
	datab => \estado.state_encripta_recebe_ram~q\,
	datac => \estado.state_encripta_opera~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X109_Y50_N15
\estado.state_encripta_opera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_encripta_opera~q\);

-- Location: LCCOMB_X108_Y50_N6
\Selector222~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector222~0_combout\ = ((!\estado.state_encripta_opera~q\ & (!\estado.state_encripta_recebe_resultado~q\ & \s_tdes_reset~q\))) # (!\estado.state_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_reset~q\,
	datab => \estado.state_encripta_opera~q\,
	datac => \estado.state_encripta_recebe_resultado~q\,
	datad => \s_tdes_reset~q\,
	combout => \Selector222~0_combout\);

-- Location: LCCOMB_X107_Y50_N18
\Selector222~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector222~1_combout\ = (\estado.state_encripta_seleciona_bloco~q\) # (\Selector222~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_encripta_seleciona_bloco~q\,
	datad => \Selector222~0_combout\,
	combout => \Selector222~1_combout\);

-- Location: FF_X107_Y50_N19
s_tdes_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector222~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tdes_reset~q\);

-- Location: FF_X107_Y50_N1
\maptdes|estado.des2SalvaInformacao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|Selector6~0_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.des2SalvaInformacao~q\);

-- Location: LCCOMB_X107_Y50_N14
\maptdes|estado.state_reset~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|estado.state_reset~2_combout\ = (\maptdes|estado.state_reset~q\) # (((!\maptdes|WideOr0~0_combout\ & \maptdes|mapDes|done~q\)) # (!\s_tdes_reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|WideOr0~0_combout\,
	datab => \maptdes|mapDes|done~q\,
	datac => \maptdes|estado.state_reset~q\,
	datad => \s_tdes_reset~q\,
	combout => \maptdes|estado.state_reset~2_combout\);

-- Location: FF_X107_Y50_N15
\maptdes|estado.state_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|estado.state_reset~2_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.state_reset~q\);

-- Location: LCCOMB_X107_Y50_N16
\maptdes|estado.des3Carrega~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|estado.des3Carrega~feeder_combout\ = \maptdes|estado.des2SalvaInformacao~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|estado.des2SalvaInformacao~q\,
	combout => \maptdes|estado.des3Carrega~feeder_combout\);

-- Location: FF_X107_Y50_N17
\maptdes|estado.des3Carrega\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|estado.des3Carrega~feeder_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.des3Carrega~q\);

-- Location: LCCOMB_X107_Y50_N8
\maptdes|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector12~1_combout\ = ((\maptdes|sig_des_reset~q\ & ((\maptdes|estado.des2Carrega~q\) # (\maptdes|estado.des3Carrega~q\)))) # (!\maptdes|estado.state_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|estado.des2Carrega~q\,
	datab => \maptdes|estado.state_reset~q\,
	datac => \maptdes|sig_des_reset~q\,
	datad => \maptdes|estado.des3Carrega~q\,
	combout => \maptdes|Selector12~1_combout\);

-- Location: LCCOMB_X107_Y50_N10
\maptdes|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector1~0_combout\ = (\maptdes|WideOr0~0_combout\ & (((\maptdes|estado.pronto~q\)) # (!\maptdes|estado.state_reset~q\))) # (!\maptdes|WideOr0~0_combout\ & (((!\maptdes|mapDes|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|WideOr0~0_combout\,
	datab => \maptdes|estado.state_reset~q\,
	datac => \maptdes|mapDes|done~q\,
	datad => \maptdes|estado.pronto~q\,
	combout => \maptdes|Selector1~0_combout\);

-- Location: LCCOMB_X107_Y50_N20
\maptdes|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector1~1_combout\ = (\s_tdes_reset~q\ & (((\maptdes|estado.des1Carrega~q\ & \maptdes|Selector1~0_combout\)))) # (!\s_tdes_reset~q\ & (((\maptdes|estado.des1Carrega~q\ & \maptdes|Selector1~0_combout\)) # (!\maptdes|estado.state_reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tdes_reset~q\,
	datab => \maptdes|estado.state_reset~q\,
	datac => \maptdes|estado.des1Carrega~q\,
	datad => \maptdes|Selector1~0_combout\,
	combout => \maptdes|Selector1~1_combout\);

-- Location: FF_X107_Y50_N21
\maptdes|estado.des1Carrega\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|Selector1~1_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.des1Carrega~q\);

-- Location: LCCOMB_X107_Y50_N2
\maptdes|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector12~0_combout\ = (\maptdes|sig_des_reset~q\ & ((\maptdes|estado.des3SalvaInformacao~q\) # ((\maptdes|estado.des1Carrega~q\) # (\maptdes|estado.pronto~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|estado.des3SalvaInformacao~q\,
	datab => \maptdes|estado.des1Carrega~q\,
	datac => \maptdes|sig_des_reset~q\,
	datad => \maptdes|estado.pronto~q\,
	combout => \maptdes|Selector12~0_combout\);

-- Location: LCCOMB_X107_Y48_N0
\maptdes|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector12~2_combout\ = (\maptdes|estado.des1SalvaInformacao~q\) # ((\maptdes|estado.des2SalvaInformacao~q\) # ((\maptdes|Selector12~1_combout\) # (\maptdes|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|estado.des1SalvaInformacao~q\,
	datab => \maptdes|estado.des2SalvaInformacao~q\,
	datac => \maptdes|Selector12~1_combout\,
	datad => \maptdes|Selector12~0_combout\,
	combout => \maptdes|Selector12~2_combout\);

-- Location: FF_X107_Y48_N1
\maptdes|sig_des_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|sig_des_reset~q\);

-- Location: FF_X105_Y48_N1
\maptdes|mapDes|state.op_f5_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector19~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f5_working~q\);

-- Location: LCCOMB_X105_Y48_N22
\maptdes|mapDes|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector20~0_combout\ = (\maptdes|mapDes|state.op_f5_working~q\) # ((\maptdes|mapDes|state.op_f5_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|state.op_f5_working~q\,
	datac => \maptdes|mapDes|state.op_f5_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector20~0_combout\);

-- Location: FF_X105_Y48_N23
\maptdes|mapDes|state.op_f5_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector20~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f5_done~q\);

-- Location: LCCOMB_X105_Y48_N18
\maptdes|mapDes|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector16~0_combout\ = (\maptdes|mapDes|state.op_f3_clean~q\) # ((\maptdes|mapDes|state.op_f4_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f3_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f4_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector16~0_combout\);

-- Location: FF_X105_Y48_N19
\maptdes|mapDes|state.op_f4_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector16~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f4_working~q\);

-- Location: LCCOMB_X105_Y48_N16
\maptdes|mapDes|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector17~0_combout\ = (\maptdes|mapDes|state.op_f4_working~q\) # ((\maptdes|mapDes|state.op_f4_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|state.op_f4_working~q\,
	datac => \maptdes|mapDes|state.op_f4_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector17~0_combout\);

-- Location: FF_X105_Y48_N17
\maptdes|mapDes|state.op_f4_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector17~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f4_done~q\);

-- Location: LCCOMB_X105_Y48_N4
\maptdes|mapDes|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector12~0_combout\ = (!\maptdes|mapDes|state.op_f5_done~q\ & !\maptdes|mapDes|state.op_f4_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|state.op_f5_done~q\,
	datad => \maptdes|mapDes|state.op_f4_done~q\,
	combout => \maptdes|mapDes|Selector12~0_combout\);

-- Location: LCCOMB_X108_Y47_N20
\maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~feeder_combout\);

-- Location: LCCOMB_X108_Y47_N0
\maptdes|mapDes|mapF|mapSbox|sig_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|mapSbox|sig_reset~0_combout\ = (\maptdes|mapDes|mapF|mapSbox|sig_reset~q\) # (!\maptdes|mapDes|mapF|mapSbox|state.liberaSbox~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|mapSbox|state.liberaSbox~q\,
	datac => \maptdes|mapDes|mapF|mapSbox|sig_reset~q\,
	combout => \maptdes|mapDes|mapF|mapSbox|sig_reset~0_combout\);

-- Location: LCCOMB_X107_Y47_N20
\maptdes|mapDes|mapF|state.op_xor~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|state.op_xor~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \maptdes|mapDes|mapF|state.op_xor~feeder_combout\);

-- Location: LCCOMB_X109_Y48_N20
\maptdes|mapDes|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector41~0_combout\ = (\maptdes|mapDes|state.op_fc_working~q\) # ((\maptdes|mapDes|state.op_fc_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fc_working~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_fc_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector41~0_combout\);

-- Location: FF_X109_Y48_N21
\maptdes|mapDes|state.op_fc_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector41~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fc_done~q\);

-- Location: LCCOMB_X109_Y48_N10
\maptdes|mapDes|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector47~0_combout\ = (\maptdes|mapDes|state.op_fe_working~q\) # ((\maptdes|mapDes|state.op_fe_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fe_working~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_fe_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector47~0_combout\);

-- Location: FF_X109_Y48_N11
\maptdes|mapDes|state.op_fe_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector47~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fe_done~q\);

-- Location: LCCOMB_X109_Y48_N26
\maptdes|mapDes|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector33~1_combout\ = (!\maptdes|mapDes|state.op_fd_done~q\ & (!\maptdes|mapDes|state.op_fc_done~q\ & !\maptdes|mapDes|state.op_fe_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fd_done~q\,
	datab => \maptdes|mapDes|state.op_fc_done~q\,
	datad => \maptdes|mapDes|state.op_fe_done~q\,
	combout => \maptdes|mapDes|Selector33~1_combout\);

-- Location: LCCOMB_X107_Y48_N4
\maptdes|mapDes|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector34~0_combout\ = (\maptdes|mapDes|state.op_f9_clean~q\) # ((\maptdes|mapDes|state.op_fa_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector1~2_combout\,
	datab => \maptdes|mapDes|state.op_f9_clean~q\,
	datac => \maptdes|mapDes|state.op_fa_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector34~0_combout\);

-- Location: FF_X107_Y48_N5
\maptdes|mapDes|state.op_fa_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector34~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fa_working~q\);

-- Location: LCCOMB_X108_Y48_N22
\maptdes|mapDes|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector35~0_combout\ = (\maptdes|mapDes|state.op_fa_working~q\) # ((\maptdes|mapDes|state.op_fa_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|state.op_fa_working~q\,
	datac => \maptdes|mapDes|state.op_fa_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector35~0_combout\);

-- Location: FF_X108_Y48_N23
\maptdes|mapDes|state.op_fa_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector35~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fa_done~q\);

-- Location: LCCOMB_X108_Y48_N28
\maptdes|mapDes|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector33~2_combout\ = (\maptdes|mapDes|state.op_fb_done~q\) # (((\maptdes|mapDes|state.op_fa_done~q\) # (!\maptdes|mapDes|WideOr36~3_combout\)) # (!\maptdes|mapDes|Selector33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fb_done~q\,
	datab => \maptdes|mapDes|Selector33~1_combout\,
	datac => \maptdes|mapDes|state.op_fa_done~q\,
	datad => \maptdes|mapDes|WideOr36~3_combout\,
	combout => \maptdes|mapDes|Selector33~2_combout\);

-- Location: LCCOMB_X108_Y48_N12
\maptdes|mapDes|Selector33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector33~3_combout\ = (\maptdes|mapDes|Selector33~0_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_f9_clean~q\ & \maptdes|mapDes|Selector33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector33~0_combout\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f9_clean~q\,
	datad => \maptdes|mapDes|Selector33~2_combout\,
	combout => \maptdes|mapDes|Selector33~3_combout\);

-- Location: FF_X108_Y48_N13
\maptdes|mapDes|state.op_f9_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector33~3_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f9_clean~q\);

-- Location: LCCOMB_X109_Y48_N14
\maptdes|mapDes|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector29~0_combout\ = (\maptdes|mapDes|state.op_f8_working~q\) # ((\maptdes|mapDes|state.op_f8_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f8_working~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f8_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector29~0_combout\);

-- Location: FF_X109_Y48_N15
\maptdes|mapDes|state.op_f8_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector29~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f8_done~q\);

-- Location: LCCOMB_X110_Y48_N8
\maptdes|mapDes|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector30~0_combout\ = (\maptdes|mapDes|state.op_f8_clean~q\ & (((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|state.op_f8_done~q\)))) # (!\maptdes|mapDes|state.op_f8_clean~q\ & (\maptdes|mapDes|mapF|done~q\ & 
-- ((\maptdes|mapDes|state.op_f8_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|state.op_f8_clean~q\,
	datac => \maptdes|mapDes|Selector1~2_combout\,
	datad => \maptdes|mapDes|state.op_f8_done~q\,
	combout => \maptdes|mapDes|Selector30~0_combout\);

-- Location: LCCOMB_X109_Y48_N8
\maptdes|mapDes|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector5~0_combout\ = (\maptdes|mapDes|state.op_f0_working~q\) # ((\maptdes|mapDes|state.op_f0_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f0_working~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f0_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector5~0_combout\);

-- Location: FF_X109_Y48_N9
\maptdes|mapDes|state.op_f0_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector5~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f0_done~q\);

-- Location: LCCOMB_X109_Y48_N6
\maptdes|mapDes|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector26~0_combout\ = (\maptdes|mapDes|state.op_f7_working~q\) # ((\maptdes|mapDes|state.op_f7_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f7_working~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f7_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector26~0_combout\);

-- Location: FF_X109_Y48_N7
\maptdes|mapDes|state.op_f7_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector26~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f7_done~q\);

-- Location: LCCOMB_X109_Y48_N24
\maptdes|mapDes|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector9~0_combout\ = (!\maptdes|mapDes|state.op_f0_done~q\ & (!\maptdes|mapDes|state.op_f8_done~q\ & !\maptdes|mapDes|state.op_f7_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptdes|mapDes|state.op_f0_done~q\,
	datac => \maptdes|mapDes|state.op_f8_done~q\,
	datad => \maptdes|mapDes|state.op_f7_done~q\,
	combout => \maptdes|mapDes|Selector9~0_combout\);

-- Location: LCCOMB_X110_Y48_N0
\maptdes|mapDes|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector37~0_combout\ = (\maptdes|mapDes|state.op_fa_clean~q\) # ((\maptdes|mapDes|state.op_fb_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fa_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_fb_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector37~0_combout\);

-- Location: FF_X110_Y48_N1
\maptdes|mapDes|state.op_fb_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector37~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fb_working~q\);

-- Location: LCCOMB_X110_Y48_N30
\maptdes|mapDes|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector38~0_combout\ = (\maptdes|mapDes|state.op_fb_working~q\) # ((\maptdes|mapDes|state.op_fb_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fb_done~q\,
	datab => \maptdes|mapDes|state.op_fb_working~q\,
	datac => \maptdes|mapDes|mapF|done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector38~0_combout\);

-- Location: FF_X109_Y48_N27
\maptdes|mapDes|state.op_fb_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \maptdes|mapDes|Selector38~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fb_done~q\);

-- Location: LCCOMB_X109_Y48_N4
\maptdes|mapDes|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector32~0_combout\ = (\maptdes|mapDes|state.op_f9_working~q\) # ((\maptdes|mapDes|state.op_f9_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f9_working~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f9_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector32~0_combout\);

-- Location: FF_X109_Y48_N5
\maptdes|mapDes|state.op_f9_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector32~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f9_done~q\);

-- Location: LCCOMB_X109_Y48_N0
\maptdes|mapDes|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector36~0_combout\ = (!\maptdes|mapDes|state.op_fd_done~q\ & (!\maptdes|mapDes|state.op_fc_done~q\ & (!\maptdes|mapDes|state.op_f9_done~q\ & !\maptdes|mapDes|state.op_fe_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fd_done~q\,
	datab => \maptdes|mapDes|state.op_fc_done~q\,
	datac => \maptdes|mapDes|state.op_f9_done~q\,
	datad => \maptdes|mapDes|state.op_fe_done~q\,
	combout => \maptdes|mapDes|Selector36~0_combout\);

-- Location: LCCOMB_X109_Y48_N28
\maptdes|mapDes|WideOr36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|WideOr36~1_combout\ = (!\maptdes|mapDes|state.op_fa_done~q\ & (!\maptdes|mapDes|state.op_fb_done~q\ & \maptdes|mapDes|Selector36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptdes|mapDes|state.op_fa_done~q\,
	datac => \maptdes|mapDes|state.op_fb_done~q\,
	datad => \maptdes|mapDes|Selector36~0_combout\,
	combout => \maptdes|mapDes|WideOr36~1_combout\);

-- Location: LCCOMB_X108_Y48_N8
\maptdes|mapDes|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector18~0_combout\ = (!\maptdes|mapDes|state.op_ff_done~q\ & (!\maptdes|mapDes|state.op_f1_done~q\ & (\maptdes|mapDes|Selector9~0_combout\ & \maptdes|mapDes|WideOr36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_ff_done~q\,
	datab => \maptdes|mapDes|state.op_f1_done~q\,
	datac => \maptdes|mapDes|Selector9~0_combout\,
	datad => \maptdes|mapDes|WideOr36~1_combout\,
	combout => \maptdes|mapDes|Selector18~0_combout\);

-- Location: LCCOMB_X108_Y48_N16
\maptdes|mapDes|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector12~2_combout\ = (\maptdes|mapDes|state.op_f6_done~q\) # ((\maptdes|mapDes|state.op_f3_done~q\) # ((!\maptdes|mapDes|Selector12~0_combout\) # (!\maptdes|mapDes|Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f6_done~q\,
	datab => \maptdes|mapDes|state.op_f3_done~q\,
	datac => \maptdes|mapDes|Selector18~0_combout\,
	datad => \maptdes|mapDes|Selector12~0_combout\,
	combout => \maptdes|mapDes|Selector12~2_combout\);

-- Location: LCCOMB_X108_Y48_N26
\maptdes|mapDes|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector12~3_combout\ = (\maptdes|mapDes|Selector12~1_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_f2_clean~q\ & \maptdes|mapDes|Selector12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector12~1_combout\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_f2_clean~q\,
	datad => \maptdes|mapDes|Selector12~2_combout\,
	combout => \maptdes|mapDes|Selector12~3_combout\);

-- Location: FF_X108_Y48_N27
\maptdes|mapDes|state.op_f2_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector12~3_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f2_clean~q\);

-- Location: LCCOMB_X107_Y48_N2
\maptdes|mapDes|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector13~0_combout\ = (\maptdes|mapDes|state.op_f2_clean~q\) # ((\maptdes|mapDes|state.op_f3_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector1~2_combout\,
	datab => \maptdes|mapDes|state.op_f2_clean~q\,
	datac => \maptdes|mapDes|state.op_f3_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector13~0_combout\);

-- Location: FF_X107_Y48_N3
\maptdes|mapDes|state.op_f3_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector13~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f3_working~q\);

-- Location: LCCOMB_X106_Y48_N28
\maptdes|mapDes|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector14~0_combout\ = (\maptdes|mapDes|state.op_f3_working~q\) # ((\maptdes|mapDes|state.op_f3_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f3_done~q\,
	datad => \maptdes|mapDes|state.op_f3_working~q\,
	combout => \maptdes|mapDes|Selector14~0_combout\);

-- Location: FF_X106_Y48_N29
\maptdes|mapDes|state.op_f3_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector14~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f3_done~q\);

-- Location: LCCOMB_X106_Y48_N8
\maptdes|mapDes|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector22~0_combout\ = (\maptdes|mapDes|state.op_f5_clean~q\) # ((\maptdes|mapDes|state.op_f6_working~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f5_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f6_working~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector22~0_combout\);

-- Location: FF_X106_Y48_N9
\maptdes|mapDes|state.op_f6_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector22~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f6_working~q\);

-- Location: LCCOMB_X106_Y48_N22
\maptdes|mapDes|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector23~0_combout\ = (\maptdes|mapDes|state.op_f6_working~q\) # ((\maptdes|mapDes|state.op_f6_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f6_done~q\,
	datad => \maptdes|mapDes|state.op_f6_working~q\,
	combout => \maptdes|mapDes|Selector23~0_combout\);

-- Location: FF_X106_Y48_N23
\maptdes|mapDes|state.op_f6_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector23~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f6_done~q\);

-- Location: LCCOMB_X105_Y48_N2
\maptdes|mapDes|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector6~0_combout\ = (!\maptdes|mapDes|state.op_f2_done~q\ & (!\maptdes|mapDes|state.op_f3_done~q\ & (\maptdes|mapDes|Selector12~0_combout\ & !\maptdes|mapDes|state.op_f6_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f2_done~q\,
	datab => \maptdes|mapDes|state.op_f3_done~q\,
	datac => \maptdes|mapDes|Selector12~0_combout\,
	datad => \maptdes|mapDes|state.op_f6_done~q\,
	combout => \maptdes|mapDes|Selector6~0_combout\);

-- Location: LCCOMB_X109_Y48_N18
\maptdes|mapDes|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector6~1_combout\ = (!\maptdes|mapDes|state.op_ff_done~q\ & (!\maptdes|mapDes|state.op_f1_done~q\ & (\maptdes|mapDes|Selector6~0_combout\ & \maptdes|mapDes|WideOr36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_ff_done~q\,
	datab => \maptdes|mapDes|state.op_f1_done~q\,
	datac => \maptdes|mapDes|Selector6~0_combout\,
	datad => \maptdes|mapDes|WideOr36~1_combout\,
	combout => \maptdes|mapDes|Selector6~1_combout\);

-- Location: LCCOMB_X109_Y48_N12
\maptdes|mapDes|Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector30~1_combout\ = (\maptdes|mapDes|state.op_f7_done~q\) # ((\maptdes|mapDes|state.op_f0_done~q\) # (!\maptdes|mapDes|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f7_done~q\,
	datac => \maptdes|mapDes|state.op_f0_done~q\,
	datad => \maptdes|mapDes|Selector6~1_combout\,
	combout => \maptdes|mapDes|Selector30~1_combout\);

-- Location: LCCOMB_X110_Y48_N16
\maptdes|mapDes|Selector30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector30~2_combout\ = (\maptdes|mapDes|Selector30~0_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_f8_clean~q\ & \maptdes|mapDes|Selector30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector30~0_combout\,
	datac => \maptdes|mapDes|state.op_f8_clean~q\,
	datad => \maptdes|mapDes|Selector30~1_combout\,
	combout => \maptdes|mapDes|Selector30~2_combout\);

-- Location: FF_X110_Y48_N17
\maptdes|mapDes|state.op_f8_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector30~2_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f8_clean~q\);

-- Location: LCCOMB_X111_Y48_N16
\maptdes|mapDes|Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector36~2_combout\ = (\maptdes|mapDes|state.op_fb_done~q\) # ((!\maptdes|mapDes|Selector36~0_combout\) # (!\maptdes|mapDes|WideOr36~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fb_done~q\,
	datab => \maptdes|mapDes|WideOr36~3_combout\,
	datad => \maptdes|mapDes|Selector36~0_combout\,
	combout => \maptdes|mapDes|Selector36~2_combout\);

-- Location: LCCOMB_X111_Y48_N6
\maptdes|mapDes|Selector36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector36~3_combout\ = (\maptdes|mapDes|Selector36~1_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|state.op_fa_clean~q\ & \maptdes|mapDes|Selector36~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector36~1_combout\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_fa_clean~q\,
	datad => \maptdes|mapDes|Selector36~2_combout\,
	combout => \maptdes|mapDes|Selector36~3_combout\);

-- Location: FF_X111_Y48_N7
\maptdes|mapDes|state.op_fa_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector36~3_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fa_clean~q\);

-- Location: LCCOMB_X111_Y48_N4
\maptdes|mapDes|Selector53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector53~4_combout\ = (\maptdes|mapDes|state.op_fb_clean~q\) # ((\maptdes|mapDes|state.op_f9_clean~q\) # ((\maptdes|mapDes|state.op_f8_clean~q\) # (\maptdes|mapDes|state.op_fa_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fb_clean~q\,
	datab => \maptdes|mapDes|state.op_f9_clean~q\,
	datac => \maptdes|mapDes|state.op_f8_clean~q\,
	datad => \maptdes|mapDes|state.op_fa_clean~q\,
	combout => \maptdes|mapDes|Selector53~4_combout\);

-- Location: LCCOMB_X109_Y48_N30
\maptdes|mapDes|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector44~0_combout\ = (\maptdes|mapDes|state.op_fd_working~q\) # ((\maptdes|mapDes|state.op_fd_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fd_working~q\,
	datab => \maptdes|mapDes|mapF|done~q\,
	datac => \maptdes|mapDes|state.op_fd_done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector44~0_combout\);

-- Location: FF_X109_Y48_N31
\maptdes|mapDes|state.op_fd_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector44~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fd_done~q\);

-- Location: LCCOMB_X110_Y48_N24
\maptdes|mapDes|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector45~0_combout\ = (\maptdes|mapDes|mapF|done~q\ & ((\maptdes|mapDes|state.op_fd_done~q\) # ((\maptdes|mapDes|Selector1~2_combout\ & \maptdes|mapDes|state.op_fd_clean~q\)))) # (!\maptdes|mapDes|mapF|done~q\ & 
-- (((\maptdes|mapDes|state.op_fd_clean~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|state.op_fd_done~q\,
	datac => \maptdes|mapDes|Selector1~2_combout\,
	datad => \maptdes|mapDes|state.op_fd_clean~q\,
	combout => \maptdes|mapDes|Selector45~0_combout\);

-- Location: LCCOMB_X110_Y48_N12
\maptdes|mapDes|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector42~1_combout\ = (!\maptdes|mapDes|state.op_fb_done~q\ & (!\maptdes|mapDes|state.op_f9_done~q\ & (\maptdes|mapDes|WideOr36~3_combout\ & !\maptdes|mapDes|state.op_fa_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fb_done~q\,
	datab => \maptdes|mapDes|state.op_f9_done~q\,
	datac => \maptdes|mapDes|WideOr36~3_combout\,
	datad => \maptdes|mapDes|state.op_fa_done~q\,
	combout => \maptdes|mapDes|Selector42~1_combout\);

-- Location: LCCOMB_X110_Y48_N20
\maptdes|mapDes|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector45~2_combout\ = (\maptdes|mapDes|Selector45~0_combout\ & ((\maptdes|mapDes|Selector45~1_combout\) # ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|Selector42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector45~1_combout\,
	datab => \maptdes|mapDes|Selector45~0_combout\,
	datac => \maptdes|mapDes|Selector1~2_combout\,
	datad => \maptdes|mapDes|Selector42~1_combout\,
	combout => \maptdes|mapDes|Selector45~2_combout\);

-- Location: FF_X110_Y48_N21
\maptdes|mapDes|state.op_fd_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector45~2_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fd_clean~q\);

-- Location: LCCOMB_X108_Y48_N14
\maptdes|mapDes|Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector51~1_combout\ = (\maptdes|mapDes|state.op_f1_done~q\) # (((!\maptdes|mapDes|WideOr36~1_combout\) # (!\maptdes|mapDes|Selector6~0_combout\)) # (!\maptdes|mapDes|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f1_done~q\,
	datab => \maptdes|mapDes|Selector9~0_combout\,
	datac => \maptdes|mapDes|Selector6~0_combout\,
	datad => \maptdes|mapDes|WideOr36~1_combout\,
	combout => \maptdes|mapDes|Selector51~1_combout\);

-- Location: LCCOMB_X108_Y48_N0
\maptdes|mapDes|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector51~0_combout\ = (\maptdes|mapDes|state.op_ff_done~q\ & ((\maptdes|mapDes|state.op_ff_clean~q\) # ((\maptdes|mapDes|mapF|done~q\)))) # (!\maptdes|mapDes|state.op_ff_done~q\ & (\maptdes|mapDes|state.op_ff_clean~q\ & 
-- ((\maptdes|mapDes|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_ff_done~q\,
	datab => \maptdes|mapDes|state.op_ff_clean~q\,
	datac => \maptdes|mapDes|mapF|done~q\,
	datad => \maptdes|mapDes|Selector1~2_combout\,
	combout => \maptdes|mapDes|Selector51~0_combout\);

-- Location: LCCOMB_X108_Y48_N20
\maptdes|mapDes|Selector51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector51~2_combout\ = (\maptdes|mapDes|Selector51~0_combout\) # ((!\maptdes|mapDes|mapF|done~q\ & (\maptdes|mapDes|Selector51~1_combout\ & \maptdes|mapDes|state.op_ff_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|Selector51~1_combout\,
	datac => \maptdes|mapDes|state.op_ff_clean~q\,
	datad => \maptdes|mapDes|Selector51~0_combout\,
	combout => \maptdes|mapDes|Selector51~2_combout\);

-- Location: FF_X108_Y48_N21
\maptdes|mapDes|state.op_ff_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector51~2_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_ff_clean~q\);

-- Location: LCCOMB_X110_Y48_N28
\maptdes|mapDes|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector48~0_combout\ = (\maptdes|mapDes|mapF|done~q\ & ((\maptdes|mapDes|state.op_fe_done~q\) # ((\maptdes|mapDes|state.op_fe_clean~q\ & \maptdes|mapDes|Selector1~2_combout\)))) # (!\maptdes|mapDes|mapF|done~q\ & 
-- (\maptdes|mapDes|state.op_fe_clean~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|state.op_fe_clean~q\,
	datac => \maptdes|mapDes|Selector1~2_combout\,
	datad => \maptdes|mapDes|state.op_fe_done~q\,
	combout => \maptdes|mapDes|Selector48~0_combout\);

-- Location: LCCOMB_X110_Y48_N14
\maptdes|mapDes|Selector48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector48~2_combout\ = (\maptdes|mapDes|Selector48~0_combout\ & ((\maptdes|mapDes|Selector48~1_combout\) # ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|Selector42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector48~1_combout\,
	datab => \maptdes|mapDes|Selector48~0_combout\,
	datac => \maptdes|mapDes|Selector1~2_combout\,
	datad => \maptdes|mapDes|Selector42~1_combout\,
	combout => \maptdes|mapDes|Selector48~2_combout\);

-- Location: FF_X110_Y48_N15
\maptdes|mapDes|state.op_fe_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector48~2_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_fe_clean~q\);

-- Location: LCCOMB_X106_Y48_N12
\maptdes|mapDes|Selector53~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector53~5_combout\ = (\maptdes|mapDes|state.op_fc_clean~q\) # ((\maptdes|mapDes|state.op_fd_clean~q\) # ((\maptdes|mapDes|state.op_ff_clean~q\) # (\maptdes|mapDes|state.op_fe_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_fc_clean~q\,
	datab => \maptdes|mapDes|state.op_fd_clean~q\,
	datac => \maptdes|mapDes|state.op_ff_clean~q\,
	datad => \maptdes|mapDes|state.op_fe_clean~q\,
	combout => \maptdes|mapDes|Selector53~5_combout\);

-- Location: LCCOMB_X107_Y48_N24
\maptdes|mapDes|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector2~0_combout\ = (\maptdes|mapDes|state.op_process_key~q\ & ((\maptdes|mapDes|mapK|done~q\) # ((\maptdes|mapDes|state.op_ip~q\)))) # (!\maptdes|mapDes|state.op_process_key~q\ & (((\maptdes|mapDes|state.op_ip~q\ & 
-- \maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapK|done~q\,
	datab => \maptdes|mapDes|state.op_process_key~q\,
	datac => \maptdes|mapDes|state.op_ip~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector2~0_combout\);

-- Location: FF_X107_Y48_N25
\maptdes|mapDes|state.op_ip\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector2~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_ip~q\);

-- Location: LCCOMB_X107_Y47_N8
\maptdes|mapDes|WideOr36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|WideOr36~4_combout\ = ((\maptdes|mapDes|state.op_process_key~q\) # ((\maptdes|mapDes|WideOr36~0_combout\) # (\maptdes|mapDes|state.op_ip~q\))) # (!\maptdes|mapDes|state.op_reset_key~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_reset_key~q\,
	datab => \maptdes|mapDes|state.op_process_key~q\,
	datac => \maptdes|mapDes|WideOr36~0_combout\,
	datad => \maptdes|mapDes|state.op_ip~q\,
	combout => \maptdes|mapDes|WideOr36~4_combout\);

-- Location: LCCOMB_X107_Y47_N18
\maptdes|mapDes|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector53~0_combout\ = (!\maptdes|mapDes|sig_f_reset~q\ & (((\maptdes|mapDes|WideOr36~4_combout\) # (!\maptdes|mapDes|WideOr36~3_combout\)) # (!\maptdes|mapDes|WideOr36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|WideOr36~1_combout\,
	datab => \maptdes|mapDes|sig_f_reset~q\,
	datac => \maptdes|mapDes|WideOr36~4_combout\,
	datad => \maptdes|mapDes|WideOr36~3_combout\,
	combout => \maptdes|mapDes|Selector53~0_combout\);

-- Location: LCCOMB_X107_Y47_N4
\maptdes|mapDes|Selector53~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector53~6_combout\ = (!\maptdes|mapDes|Selector53~3_combout\ & (!\maptdes|mapDes|Selector53~4_combout\ & (!\maptdes|mapDes|Selector53~5_combout\ & !\maptdes|mapDes|Selector53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|Selector53~3_combout\,
	datab => \maptdes|mapDes|Selector53~4_combout\,
	datac => \maptdes|mapDes|Selector53~5_combout\,
	datad => \maptdes|mapDes|Selector53~0_combout\,
	combout => \maptdes|mapDes|Selector53~6_combout\);

-- Location: FF_X107_Y47_N5
\maptdes|mapDes|sig_f_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector53~6_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|sig_f_reset~q\);

-- Location: FF_X107_Y47_N21
\maptdes|mapDes|mapF|state.op_xor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|state.op_xor~feeder_combout\,
	clrn => \maptdes|mapDes|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|state.op_xor~q\);

-- Location: LCCOMB_X107_Y47_N6
\maptdes|mapDes|mapF|sig_reset_sbox~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|sig_reset_sbox~0_combout\ = (\maptdes|mapDes|mapF|sig_reset_sbox~q\) # (!\maptdes|mapDes|mapF|state.op_xor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapF|sig_reset_sbox~q\,
	datad => \maptdes|mapDes|mapF|state.op_xor~q\,
	combout => \maptdes|mapDes|mapF|sig_reset_sbox~0_combout\);

-- Location: FF_X107_Y47_N7
\maptdes|mapDes|mapF|sig_reset_sbox\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|sig_reset_sbox~0_combout\,
	clrn => \maptdes|mapDes|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|sig_reset_sbox~q\);

-- Location: FF_X108_Y47_N1
\maptdes|mapDes|mapF|mapSbox|sig_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|mapSbox|sig_reset~0_combout\,
	clrn => \maptdes|mapDes|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|mapSbox|sig_reset~q\);

-- Location: FF_X108_Y47_N21
\maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~feeder_combout\,
	clrn => \maptdes|mapDes|mapF|mapSbox|sig_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~q\);

-- Location: LCCOMB_X108_Y47_N24
\maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto~feeder_combout\ = \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~q\,
	combout => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto~feeder_combout\);

-- Location: FF_X108_Y47_N25
\maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto~feeder_combout\,
	clrn => \maptdes|mapDes|mapF|mapSbox|sig_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto~q\);

-- Location: LCCOMB_X108_Y47_N2
\maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam~0_combout\ = !\maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.inicia~q\,
	combout => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam~0_combout\);

-- Location: FF_X108_Y47_N3
\maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam~0_combout\,
	clrn => \maptdes|mapDes|mapF|mapSbox|sig_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam~q\);

-- Location: LCCOMB_X108_Y47_N12
\maptdes|mapDes|mapF|mapSbox|mapSbox1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|mapSbox|mapSbox1|Selector0~0_combout\ = (\maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto~q\) # ((\maptdes|mapDes|mapF|mapSbox|mapSbox1|done~q\ & \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.pronto~q\,
	datac => \maptdes|mapDes|mapF|mapSbox|mapSbox1|done~q\,
	datad => \maptdes|mapDes|mapF|mapSbox|mapSbox1|state.consultaRam~q\,
	combout => \maptdes|mapDes|mapF|mapSbox|mapSbox1|Selector0~0_combout\);

-- Location: FF_X108_Y47_N13
\maptdes|mapDes|mapF|mapSbox|mapSbox1|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|mapSbox|mapSbox1|Selector0~0_combout\,
	clrn => \maptdes|mapDes|mapF|mapSbox|sig_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|mapSbox|mapSbox1|done~q\);

-- Location: LCCOMB_X108_Y47_N18
\maptdes|mapDes|mapF|mapSbox|state.pronto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|mapSbox|state.pronto~0_combout\ = (\maptdes|mapDes|mapF|mapSbox|state.pronto~q\) # ((\maptdes|mapDes|mapF|mapSbox|state.espera~q\ & \maptdes|mapDes|mapF|mapSbox|mapSbox1|done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|mapSbox|state.espera~q\,
	datac => \maptdes|mapDes|mapF|mapSbox|state.pronto~q\,
	datad => \maptdes|mapDes|mapF|mapSbox|mapSbox1|done~q\,
	combout => \maptdes|mapDes|mapF|mapSbox|state.pronto~0_combout\);

-- Location: FF_X108_Y47_N19
\maptdes|mapDes|mapF|mapSbox|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|mapSbox|state.pronto~0_combout\,
	clrn => \maptdes|mapDes|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|mapSbox|state.pronto~q\);

-- Location: LCCOMB_X108_Y47_N28
\maptdes|mapDes|mapF|mapSbox|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|mapSbox|done~0_combout\ = (\maptdes|mapDes|mapF|mapSbox|done~q\) # (\maptdes|mapDes|mapF|mapSbox|state.pronto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapF|mapSbox|done~q\,
	datad => \maptdes|mapDes|mapF|mapSbox|state.pronto~q\,
	combout => \maptdes|mapDes|mapF|mapSbox|done~0_combout\);

-- Location: FF_X108_Y47_N29
\maptdes|mapDes|mapF|mapSbox|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|mapSbox|done~0_combout\,
	clrn => \maptdes|mapDes|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|mapSbox|done~q\);

-- Location: LCCOMB_X107_Y47_N2
\maptdes|mapDes|mapF|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|state~12_combout\ = (\maptdes|mapDes|mapF|state.op_sbox~q\ & \maptdes|mapDes|mapF|mapSbox|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|state.op_sbox~q\,
	datad => \maptdes|mapDes|mapF|mapSbox|done~q\,
	combout => \maptdes|mapDes|mapF|state~12_combout\);

-- Location: FF_X107_Y47_N3
\maptdes|mapDes|mapF|state.op_p_box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|state~12_combout\,
	clrn => \maptdes|mapDes|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|state.op_p_box~q\);

-- Location: LCCOMB_X107_Y47_N10
\maptdes|mapDes|mapF|state.pronto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|state.pronto~0_combout\ = (\maptdes|mapDes|mapF|state.pronto~q\) # (\maptdes|mapDes|mapF|state.op_p_box~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapF|state.pronto~q\,
	datad => \maptdes|mapDes|mapF|state.op_p_box~q\,
	combout => \maptdes|mapDes|mapF|state.pronto~0_combout\);

-- Location: FF_X107_Y47_N11
\maptdes|mapDes|mapF|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|state.pronto~0_combout\,
	clrn => \maptdes|mapDes|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|state.pronto~q\);

-- Location: LCCOMB_X107_Y47_N0
\maptdes|mapDes|mapF|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|mapF|done~0_combout\ = (\maptdes|mapDes|mapF|done~q\) # (\maptdes|mapDes|mapF|state.pronto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|mapF|done~q\,
	datad => \maptdes|mapDes|mapF|state.pronto~q\,
	combout => \maptdes|mapDes|mapF|done~0_combout\);

-- Location: FF_X107_Y47_N1
\maptdes|mapDes|mapF|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapF|done~0_combout\,
	clrn => \maptdes|mapDes|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapF|done~q\);

-- Location: LCCOMB_X107_Y48_N14
\maptdes|mapDes|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector8~0_combout\ = (\maptdes|mapDes|state.op_f1_working~q\) # ((\maptdes|mapDes|state.op_f1_done~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (!\maptdes|mapDes|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_f1_working~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_f1_done~q\,
	datad => \maptdes|mapDes|mapF|done~q\,
	combout => \maptdes|mapDes|Selector8~0_combout\);

-- Location: FF_X107_Y48_N15
\maptdes|mapDes|state.op_f1_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector8~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_f1_done~q\);

-- Location: LCCOMB_X106_Y48_N16
\maptdes|mapDes|WideOr36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|WideOr36~3_combout\ = (\maptdes|mapDes|WideOr36~2_combout\ & (\maptdes|mapDes|Selector12~0_combout\ & (!\maptdes|mapDes|state.op_f1_done~q\ & \maptdes|mapDes|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|WideOr36~2_combout\,
	datab => \maptdes|mapDes|Selector12~0_combout\,
	datac => \maptdes|mapDes|state.op_f1_done~q\,
	datad => \maptdes|mapDes|Selector9~0_combout\,
	combout => \maptdes|mapDes|WideOr36~3_combout\);

-- Location: LCCOMB_X106_Y48_N2
\maptdes|mapDes|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector3~0_combout\ = (!\maptdes|mapDes|mapF|done~q\ & ((!\maptdes|mapDes|WideOr36~1_combout\) # (!\maptdes|mapDes|WideOr36~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapF|done~q\,
	datab => \maptdes|mapDes|WideOr36~3_combout\,
	datad => \maptdes|mapDes|WideOr36~1_combout\,
	combout => \maptdes|mapDes|Selector3~0_combout\);

-- Location: LCCOMB_X107_Y48_N30
\maptdes|mapDes|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector0~2_combout\ = (\maptdes|mapDes|state.op_reset_key~q\) # ((!\maptdes|mapDes|Selector3~0_combout\ & ((\maptdes|mapDes|mapK|done~q\) # (!\maptdes|mapDes|state.op_process_key~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|mapK|done~q\,
	datab => \maptdes|mapDes|state.op_process_key~q\,
	datac => \maptdes|mapDes|state.op_reset_key~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector0~2_combout\);

-- Location: FF_X107_Y48_N31
\maptdes|mapDes|state.op_reset_key\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector0~2_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_reset_key~q\);

-- Location: LCCOMB_X107_Y49_N28
\maptdes|mapDes|sig_k_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|sig_k_reset~0_combout\ = (\maptdes|mapDes|sig_k_reset~q\) # (!\maptdes|mapDes|state.op_reset_key~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|sig_k_reset~q\,
	datad => \maptdes|mapDes|state.op_reset_key~q\,
	combout => \maptdes|mapDes|sig_k_reset~0_combout\);

-- Location: FF_X107_Y49_N29
\maptdes|mapDes|sig_k_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|sig_k_reset~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|sig_k_reset~q\);

-- Location: FF_X107_Y49_N13
\maptdes|mapDes|mapK|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|mapK|done~0_combout\,
	clrn => \maptdes|mapDes|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|mapK|done~q\);

-- Location: LCCOMB_X107_Y48_N8
\maptdes|mapDes|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector1~3_combout\ = ((\maptdes|mapDes|state.op_process_key~q\ & ((\maptdes|mapDes|Selector3~0_combout\) # (!\maptdes|mapDes|mapK|done~q\)))) # (!\maptdes|mapDes|state.op_reset_key~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_reset_key~q\,
	datab => \maptdes|mapDes|mapK|done~q\,
	datac => \maptdes|mapDes|state.op_process_key~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector1~3_combout\);

-- Location: FF_X107_Y48_N9
\maptdes|mapDes|state.op_process_key\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector1~3_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_process_key~q\);

-- Location: LCCOMB_X107_Y48_N10
\maptdes|mapDes|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector1~2_combout\ = (\maptdes|mapDes|state.op_process_key~q\ & !\maptdes|mapDes|mapK|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|state.op_process_key~q\,
	datad => \maptdes|mapDes|mapK|done~q\,
	combout => \maptdes|mapDes|Selector1~2_combout\);

-- Location: LCCOMB_X106_Y48_N24
\maptdes|mapDes|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|Selector3~1_combout\ = (\maptdes|mapDes|state.op_ff_clean~q\) # ((\maptdes|mapDes|state.op_ip_final~q\ & ((\maptdes|mapDes|Selector1~2_combout\) # (\maptdes|mapDes|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|mapDes|state.op_ff_clean~q\,
	datab => \maptdes|mapDes|Selector1~2_combout\,
	datac => \maptdes|mapDes|state.op_ip_final~q\,
	datad => \maptdes|mapDes|Selector3~0_combout\,
	combout => \maptdes|mapDes|Selector3~1_combout\);

-- Location: FF_X106_Y48_N25
\maptdes|mapDes|state.op_ip_final\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|Selector3~1_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.op_ip_final~q\);

-- Location: LCCOMB_X107_Y48_N18
\maptdes|mapDes|WideOr36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|WideOr36~0_combout\ = (\maptdes|mapDes|state.pronto~q\) # (\maptdes|mapDes|state.op_ip_final~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|state.pronto~q\,
	datad => \maptdes|mapDes|state.op_ip_final~q\,
	combout => \maptdes|mapDes|WideOr36~0_combout\);

-- Location: FF_X107_Y48_N19
\maptdes|mapDes|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|WideOr36~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|state.pronto~q\);

-- Location: LCCOMB_X107_Y48_N12
\maptdes|mapDes|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|mapDes|done~0_combout\ = (\maptdes|mapDes|done~q\) # (\maptdes|mapDes|state.pronto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|mapDes|done~q\,
	datad => \maptdes|mapDes|state.pronto~q\,
	combout => \maptdes|mapDes|done~0_combout\);

-- Location: FF_X107_Y48_N13
\maptdes|mapDes|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|mapDes|done~0_combout\,
	clrn => \maptdes|ALT_INV_sig_des_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|mapDes|done~q\);

-- Location: LCCOMB_X107_Y50_N4
\maptdes|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector8~0_combout\ = (\maptdes|estado.des3Carrega~q\) # ((!\maptdes|mapDes|done~q\ & \maptdes|estado.des3Opera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptdes|mapDes|done~q\,
	datac => \maptdes|estado.des3Opera~q\,
	datad => \maptdes|estado.des3Carrega~q\,
	combout => \maptdes|Selector8~0_combout\);

-- Location: FF_X107_Y50_N5
\maptdes|estado.des3Opera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|Selector8~0_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.des3Opera~q\);

-- Location: LCCOMB_X107_Y50_N12
\maptdes|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector9~0_combout\ = (\maptdes|estado.des3Opera~q\ & \maptdes|mapDes|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptdes|estado.des3Opera~q\,
	datac => \maptdes|mapDes|done~q\,
	combout => \maptdes|Selector9~0_combout\);

-- Location: FF_X107_Y50_N13
\maptdes|estado.des3SalvaInformacao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|Selector9~0_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.des3SalvaInformacao~q\);

-- Location: LCCOMB_X107_Y50_N24
\maptdes|estado.pronto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|estado.pronto~0_combout\ = (\maptdes|estado.pronto~q\) # (\maptdes|estado.des3SalvaInformacao~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptdes|estado.pronto~q\,
	datad => \maptdes|estado.des3SalvaInformacao~q\,
	combout => \maptdes|estado.pronto~0_combout\);

-- Location: FF_X107_Y50_N25
\maptdes|estado.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|estado.pronto~0_combout\,
	clrn => \ALT_INV_s_tdes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|estado.pronto~q\);

-- Location: LCCOMB_X108_Y50_N28
\maptdes|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptdes|Selector11~0_combout\ = (\maptdes|estado.pronto~q\) # ((\maptdes|estado.state_reset~q\ & \maptdes|done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptdes|estado.state_reset~q\,
	datac => \maptdes|done~q\,
	datad => \maptdes|estado.pronto~q\,
	combout => \maptdes|Selector11~0_combout\);

-- Location: FF_X108_Y50_N29
\maptdes|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptdes|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptdes|done~q\);

-- Location: LCCOMB_X110_Y50_N12
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\estado.state_encripta_opera~q\ & ((\maptdes|done~q\) # ((!\reset~input_o\ & !\estado.state_reset~q\)))) # (!\estado.state_encripta_opera~q\ & (!\reset~input_o\ & ((!\estado.state_reset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_encripta_opera~q\,
	datab => \reset~input_o\,
	datac => \maptdes|done~q\,
	datad => \estado.state_reset~q\,
	combout => \Selector14~1_combout\);

-- Location: FF_X110_Y50_N27
\estado.state_carregando_chave0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \estado.state_carregando_funcao~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_carregando_chave0~q\);

-- Location: FF_X110_Y50_N31
\estado.state_carregando_chave1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \estado.state_carregando_chave0~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_carregando_chave1~q\);

-- Location: FF_X110_Y50_N23
\estado.state_carregando_chave2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \estado.state_carregando_chave1~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_carregando_chave2~q\);

-- Location: FF_X110_Y50_N17
\estado.state_carregando_quantidade_blocos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \estado.state_carregando_chave2~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_carregando_quantidade_blocos~q\);

-- Location: LCCOMB_X110_Y50_N22
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\estado.state_carregando_chave1~q\ & (!\estado.state_carregando_chave0~q\ & (!\estado.state_carregando_chave2~q\ & !\estado.state_carregando_funcao~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_carregando_chave1~q\,
	datab => \estado.state_carregando_chave0~q\,
	datac => \estado.state_carregando_chave2~q\,
	datad => \estado.state_carregando_funcao~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X110_Y50_N14
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (!\estado.state_carregando_texto~q\ & (!\estado.state_carregando_quantidade_blocos~q\ & \Selector17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_carregando_texto~q\,
	datac => \estado.state_carregando_quantidade_blocos~q\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X109_Y50_N12
\Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\Selector17~1_combout\ & (!\estado.preparacao_operacao~q\ & ((\controle_recebido~q\)))) # (!\Selector17~1_combout\ & (((\inStable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.preparacao_operacao~q\,
	datab => \inStable~input_o\,
	datac => \controle_recebido~q\,
	datad => \Selector17~1_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X109_Y50_N13
controle_recebido : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector17~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle_recebido~q\);

-- Location: LCCOMB_X110_Y50_N28
\Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (!\inStable~input_o\ & \controle_recebido~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inStable~input_o\,
	datad => \controle_recebido~q\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X112_Y50_N30
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (i(6) & (i(4) & (i(5) & i(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datab => i(4),
	datac => i(5),
	datad => i(7),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X109_Y50_N6
\i[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[9]~31_combout\ = (!\estado.state_decripta_recebe_resultado~q\ & (\estado.state_reset~q\ & \WideOr17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_decripta_recebe_resultado~q\,
	datac => \estado.state_reset~q\,
	datad => \WideOr17~0_combout\,
	combout => \i[9]~31_combout\);

-- Location: LCCOMB_X109_Y50_N16
\i[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[9]~32_combout\ = (\estado.state_carregando_texto~q\ & (\inStable~input_o\)) # (!\estado.state_carregando_texto~q\ & ((\i[9]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_carregando_texto~q\,
	datac => \inStable~input_o\,
	datad => \i[9]~31_combout\,
	combout => \i[9]~32_combout\);

-- Location: LCCOMB_X112_Y50_N2
\i[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[9]~33_combout\ = (!\i[9]~32_combout\ & (((!\estado.state_decripta_seleciona_bloco~q\ & !\estado.state_encripta_seleciona_bloco~q\)) # (!\LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_decripta_seleciona_bloco~q\,
	datab => \estado.state_encripta_seleciona_bloco~q\,
	datac => \i[9]~32_combout\,
	datad => \LessThan0~18_combout\,
	combout => \i[9]~33_combout\);

-- Location: FF_X112_Y50_N11
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[0]~10_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LCCOMB_X112_Y50_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (i(1) & (i(3) & (i(2) & i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(3),
	datac => i(2),
	datad => i(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X112_Y50_N8
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (i(8) & (i(9) & (\LessThan1~1_combout\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(8),
	datab => i(9),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X111_Y50_N26
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\estado.state_carregando_texto~q\ & (\Selector14~2_combout\ & ((\LessThan1~2_combout\) # (!\LessThan0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_carregando_texto~q\,
	datab => \Selector14~2_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan0~18_combout\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X109_Y50_N22
\Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\Selector7~2_combout\ & (\Selector7~3_combout\ & ((!\maptundes|done~q\) # (!\estado.state_decripta_opera~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \estado.state_decripta_opera~q\,
	datac => \Selector7~3_combout\,
	datad => \maptundes|done~q\,
	combout => \Selector7~4_combout\);

-- Location: FF_X109_Y50_N23
\estado.preparacao_operacao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector7~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.preparacao_operacao~q\);

-- Location: LCCOMB_X109_Y50_N20
\WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr17~0_combout\ = (!\estado.state_decripta_seleciona_bloco~q\ & (!\estado.state_encripta_seleciona_bloco~q\ & (!\estado.preparacao_operacao~q\ & !\estado.state_encripta_recebe_resultado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_decripta_seleciona_bloco~q\,
	datab => \estado.state_encripta_seleciona_bloco~q\,
	datac => \estado.preparacao_operacao~q\,
	datad => \estado.state_encripta_recebe_resultado~q\,
	combout => \WideOr17~0_combout\);

-- Location: LCCOMB_X109_Y50_N26
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (!\estado.state_decripta_recebe_resultado~q\ & (\WideOr17~0_combout\ & (!\estado.state_encripta_recebe_ram~q\ & !\estado.state_decripta_recebe_ram~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_decripta_recebe_resultado~q\,
	datab => \WideOr17~0_combout\,
	datac => \estado.state_encripta_recebe_ram~q\,
	datad => \estado.state_decripta_recebe_ram~q\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X110_Y50_N30
\Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\estado.state_carregando_texto~q\ & ((\LessThan1~2_combout\) # (!\LessThan0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_carregando_texto~q\,
	datab => \LessThan1~2_combout\,
	datad => \LessThan0~18_combout\,
	combout => \Selector14~3_combout\);

-- Location: LCCOMB_X110_Y50_N10
\Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~4_combout\ = (!\estado.state_carregando_quantidade_blocos~q\ & (!\Selector14~3_combout\ & \Selector17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_carregando_quantidade_blocos~q\,
	datac => \Selector14~3_combout\,
	datad => \Selector17~0_combout\,
	combout => \Selector14~4_combout\);

-- Location: LCCOMB_X110_Y50_N2
\Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~5_combout\ = (\Selector14~1_combout\) # (((\Selector14~2_combout\ & !\Selector14~4_combout\)) # (!\Selector7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~2_combout\,
	datab => \Selector14~1_combout\,
	datac => \Selector7~2_combout\,
	datad => \Selector14~4_combout\,
	combout => \Selector14~5_combout\);

-- Location: LCCOMB_X110_Y50_N4
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Selector14~0_combout\ & ((\Selector14~5_combout\ & (\Selector1~0_combout\)) # (!\Selector14~5_combout\ & ((\estado.state_carregando_funcao~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector14~0_combout\,
	datac => \estado.state_carregando_funcao~q\,
	datad => \Selector14~5_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X110_Y50_N5
\estado.state_carregando_funcao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_carregando_funcao~q\);

-- Location: IOIBUF_X115_Y49_N8
\barramentoIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(0),
	o => \barramentoIn[0]~input_o\);

-- Location: LCCOMB_X109_Y49_N2
\Selector211~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector211~1_combout\ = (\Selector211~0_combout\) # ((\inStable~input_o\ & (\estado.state_carregando_funcao~q\ & \barramentoIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector211~0_combout\,
	datab => \inStable~input_o\,
	datac => \estado.state_carregando_funcao~q\,
	datad => \barramentoIn[0]~input_o\,
	combout => \Selector211~1_combout\);

-- Location: FF_X109_Y49_N3
encripta : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector211~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encripta~q\);

-- Location: LCCOMB_X109_Y50_N10
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\estado.state_decripta_recebe_resultado~q\) # ((\estado.preparacao_operacao~q\ & !\encripta~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.preparacao_operacao~q\,
	datac => \estado.state_decripta_recebe_resultado~q\,
	datad => \encripta~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X109_Y50_N11
\estado.state_decripta_seleciona_bloco\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_decripta_seleciona_bloco~q\);

-- Location: LCCOMB_X109_Y49_N14
\Selector223~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector223~0_combout\ = ((!\estado.state_decripta_opera~q\ & (!\estado.state_decripta_recebe_resultado~q\ & \s_tundes_reset~q\))) # (!\estado.state_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_reset~q\,
	datab => \estado.state_decripta_opera~q\,
	datac => \estado.state_decripta_recebe_resultado~q\,
	datad => \s_tundes_reset~q\,
	combout => \Selector223~0_combout\);

-- Location: LCCOMB_X76_Y49_N2
\Selector223~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector223~1_combout\ = (\estado.state_decripta_seleciona_bloco~q\) # (\Selector223~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.state_decripta_seleciona_bloco~q\,
	datad => \Selector223~0_combout\,
	combout => \Selector223~1_combout\);

-- Location: FF_X76_Y49_N3
s_tundes_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector223~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tundes_reset~q\);

-- Location: FF_X76_Y49_N11
\maptundes|estado.un_des2Carrega\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|estado.un_des2Carrega~feeder_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.un_des2Carrega~q\);

-- Location: LCCOMB_X76_Y49_N30
\maptundes|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector5~0_combout\ = (\maptundes|estado.un_des2Carrega~q\) # ((!\maptundes|mapUN_Des|done~q\ & \maptundes|estado.un_des2Opera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|done~q\,
	datac => \maptundes|estado.un_des2Opera~q\,
	datad => \maptundes|estado.un_des2Carrega~q\,
	combout => \maptundes|Selector5~0_combout\);

-- Location: FF_X76_Y49_N31
\maptundes|estado.un_des2Opera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|Selector5~0_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.un_des2Opera~q\);

-- Location: LCCOMB_X76_Y49_N6
\maptundes|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|WideOr0~0_combout\ = (!\maptundes|estado.un_des3Opera~q\ & (!\maptundes|estado.un_des1Opera~q\ & !\maptundes|estado.un_des2Opera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|estado.un_des3Opera~q\,
	datab => \maptundes|estado.un_des1Opera~q\,
	datad => \maptundes|estado.un_des2Opera~q\,
	combout => \maptundes|WideOr0~0_combout\);

-- Location: LCCOMB_X76_Y49_N22
\maptundes|estado.state_reset~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|estado.state_reset~2_combout\ = ((\maptundes|estado.state_reset~q\) # ((\maptundes|mapUN_Des|done~q\ & !\maptundes|WideOr0~0_combout\))) # (!\s_tundes_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tundes_reset~q\,
	datab => \maptundes|mapUN_Des|done~q\,
	datac => \maptundes|estado.state_reset~q\,
	datad => \maptundes|WideOr0~0_combout\,
	combout => \maptundes|estado.state_reset~2_combout\);

-- Location: FF_X76_Y49_N23
\maptundes|estado.state_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|estado.state_reset~2_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.state_reset~q\);

-- Location: LCCOMB_X76_Y49_N18
\maptundes|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector7~0_combout\ = (\maptundes|WideOr0~0_combout\ & (((\maptundes|estado.pronto~q\) # (!\maptundes|estado.state_reset~q\)))) # (!\maptundes|WideOr0~0_combout\ & (!\maptundes|mapUN_Des|done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|WideOr0~0_combout\,
	datab => \maptundes|mapUN_Des|done~q\,
	datac => \maptundes|estado.state_reset~q\,
	datad => \maptundes|estado.pronto~q\,
	combout => \maptundes|Selector7~0_combout\);

-- Location: LCCOMB_X76_Y49_N20
\maptundes|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector7~1_combout\ = (\s_tundes_reset~q\ & (((\maptundes|estado.un_des3Carrega~q\ & \maptundes|Selector7~0_combout\)))) # (!\s_tundes_reset~q\ & (((\maptundes|estado.un_des3Carrega~q\ & \maptundes|Selector7~0_combout\)) # 
-- (!\maptundes|estado.state_reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tundes_reset~q\,
	datab => \maptundes|estado.state_reset~q\,
	datac => \maptundes|estado.un_des3Carrega~q\,
	datad => \maptundes|Selector7~0_combout\,
	combout => \maptundes|Selector7~1_combout\);

-- Location: FF_X76_Y49_N21
\maptundes|estado.un_des3Carrega\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|Selector7~1_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.un_des3Carrega~q\);

-- Location: LCCOMB_X76_Y49_N12
\maptundes|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector8~0_combout\ = (\maptundes|estado.un_des3Carrega~q\) # ((!\maptundes|mapUN_Des|done~q\ & \maptundes|estado.un_des3Opera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|done~q\,
	datac => \maptundes|estado.un_des3Opera~q\,
	datad => \maptundes|estado.un_des3Carrega~q\,
	combout => \maptundes|Selector8~0_combout\);

-- Location: FF_X76_Y49_N13
\maptundes|estado.un_des3Opera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|Selector8~0_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.un_des3Opera~q\);

-- Location: LCCOMB_X76_Y49_N24
\maptundes|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector9~0_combout\ = (\maptundes|mapUN_Des|done~q\ & \maptundes|estado.un_des3Opera~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|done~q\,
	datad => \maptundes|estado.un_des3Opera~q\,
	combout => \maptundes|Selector9~0_combout\);

-- Location: FF_X76_Y49_N25
\maptundes|estado.un_des3SalvaInformacao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|Selector9~0_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.un_des3SalvaInformacao~q\);

-- Location: LCCOMB_X76_Y49_N16
\maptundes|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector12~1_combout\ = ((\maptundes|sig_undes_reset~q\ & ((\maptundes|estado.un_des2Carrega~q\) # (\maptundes|estado.un_des3Carrega~q\)))) # (!\maptundes|estado.state_reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|estado.state_reset~q\,
	datab => \maptundes|estado.un_des2Carrega~q\,
	datac => \maptundes|sig_undes_reset~q\,
	datad => \maptundes|estado.un_des3Carrega~q\,
	combout => \maptundes|Selector12~1_combout\);

-- Location: LCCOMB_X76_Y49_N26
\maptundes|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector6~0_combout\ = (\maptundes|mapUN_Des|done~q\ & \maptundes|estado.un_des2Opera~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|done~q\,
	datad => \maptundes|estado.un_des2Opera~q\,
	combout => \maptundes|Selector6~0_combout\);

-- Location: FF_X76_Y49_N27
\maptundes|estado.un_des2SalvaInformacao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|Selector6~0_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.un_des2SalvaInformacao~q\);

-- Location: LCCOMB_X76_Y49_N28
\maptundes|estado.un_des1Carrega~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|estado.un_des1Carrega~feeder_combout\ = \maptundes|estado.un_des2SalvaInformacao~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|estado.un_des2SalvaInformacao~q\,
	combout => \maptundes|estado.un_des1Carrega~feeder_combout\);

-- Location: FF_X76_Y49_N29
\maptundes|estado.un_des1Carrega\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|estado.un_des1Carrega~feeder_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.un_des1Carrega~q\);

-- Location: LCCOMB_X76_Y49_N14
\maptundes|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector12~0_combout\ = (\maptundes|sig_undes_reset~q\ & ((\maptundes|estado.un_des1Carrega~q\) # ((\maptundes|estado.un_des1SalvaInformacao~q\) # (\maptundes|estado.pronto~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|sig_undes_reset~q\,
	datab => \maptundes|estado.un_des1Carrega~q\,
	datac => \maptundes|estado.un_des1SalvaInformacao~q\,
	datad => \maptundes|estado.pronto~q\,
	combout => \maptundes|Selector12~0_combout\);

-- Location: LCCOMB_X66_Y49_N16
\maptundes|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector12~2_combout\ = (\maptundes|estado.un_des2SalvaInformacao~q\) # ((\maptundes|estado.un_des3SalvaInformacao~q\) # ((\maptundes|Selector12~1_combout\) # (\maptundes|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|estado.un_des2SalvaInformacao~q\,
	datab => \maptundes|estado.un_des3SalvaInformacao~q\,
	datac => \maptundes|Selector12~1_combout\,
	datad => \maptundes|Selector12~0_combout\,
	combout => \maptundes|Selector12~2_combout\);

-- Location: FF_X66_Y49_N17
\maptundes|sig_undes_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|sig_undes_reset~q\);

-- Location: FF_X69_Y49_N25
\maptundes|mapUN_Des|state.op_ff_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector49~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_ff_working~q\);

-- Location: LCCOMB_X66_Y49_N30
\maptundes|mapUN_Des|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector50~0_combout\ = (\maptundes|mapUN_Des|state.op_ff_working~q\) # ((\maptundes|mapUN_Des|state.op_ff_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_ff_working~q\,
	datac => \maptundes|mapUN_Des|state.op_ff_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector50~0_combout\);

-- Location: FF_X66_Y49_N31
\maptundes|mapUN_Des|state.op_ff_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector50~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_ff_done~q\);

-- Location: LCCOMB_X66_Y48_N10
\maptundes|mapUN_Des|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector23~0_combout\ = (\maptundes|mapUN_Des|state.op_f6_working~q\) # ((\maptundes|mapUN_Des|state.op_f6_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f6_working~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_f6_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector23~0_combout\);

-- Location: FF_X66_Y48_N11
\maptundes|mapUN_Des|state.op_f6_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector23~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f6_done~q\);

-- Location: LCCOMB_X66_Y49_N4
\maptundes|mapUN_Des|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector15~0_combout\ = (\maptundes|mapUN_Des|state.op_f3_done~q\ & ((\maptundes|mapUN_Des|state.op_f3_clean~q\) # ((\maptundes|mapUN_Des|mapF|done~q\)))) # (!\maptundes|mapUN_Des|state.op_f3_done~q\ & 
-- (\maptundes|mapUN_Des|state.op_f3_clean~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f3_done~q\,
	datab => \maptundes|mapUN_Des|state.op_f3_clean~q\,
	datac => \maptundes|mapUN_Des|mapF|done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector15~0_combout\);

-- Location: LCCOMB_X66_Y48_N4
\maptundes|mapUN_Des|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector8~0_combout\ = (\maptundes|mapUN_Des|state.op_f1_working~q\) # ((\maptundes|mapUN_Des|state.op_f1_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f1_working~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_f1_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector8~0_combout\);

-- Location: FF_X66_Y48_N5
\maptundes|mapUN_Des|state.op_f1_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector8~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f1_done~q\);

-- Location: LCCOMB_X67_Y49_N4
\maptundes|mapUN_Des|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector35~0_combout\ = (\maptundes|mapUN_Des|state.op_fa_working~q\) # ((\maptundes|mapUN_Des|state.op_fa_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fa_working~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_fa_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector35~0_combout\);

-- Location: FF_X67_Y49_N5
\maptundes|mapUN_Des|state.op_fa_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector35~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fa_done~q\);

-- Location: LCCOMB_X68_Y49_N24
\maptundes|mapUN_Des|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector40~0_combout\ = (\maptundes|mapUN_Des|state.op_fd_clean~q\) # ((\maptundes|mapUN_Des|state.op_fc_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fd_clean~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|state.op_fc_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector40~0_combout\);

-- Location: FF_X68_Y49_N25
\maptundes|mapUN_Des|state.op_fc_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector40~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fc_working~q\);

-- Location: LCCOMB_X68_Y49_N14
\maptundes|mapUN_Des|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector41~0_combout\ = (\maptundes|mapUN_Des|state.op_fc_working~q\) # ((\maptundes|mapUN_Des|state.op_fc_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_fc_working~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|state.op_fc_done~q\,
	combout => \maptundes|mapUN_Des|Selector41~0_combout\);

-- Location: FF_X67_Y49_N3
\maptundes|mapUN_Des|state.op_fc_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \maptundes|mapUN_Des|Selector41~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fc_done~q\);

-- Location: LCCOMB_X68_Y49_N20
\maptundes|mapUN_Des|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector31~0_combout\ = (\maptundes|mapUN_Des|state.op_fa_clean~q\) # ((\maptundes|mapUN_Des|state.op_f9_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fa_clean~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|state.op_f9_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector31~0_combout\);

-- Location: FF_X68_Y49_N21
\maptundes|mapUN_Des|state.op_f9_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector31~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f9_working~q\);

-- Location: LCCOMB_X68_Y49_N30
\maptundes|mapUN_Des|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector32~0_combout\ = (\maptundes|mapUN_Des|state.op_f9_working~q\) # ((\maptundes|mapUN_Des|state.op_f9_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_f9_done~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|state.op_f9_working~q\,
	combout => \maptundes|mapUN_Des|Selector32~0_combout\);

-- Location: FF_X67_Y49_N11
\maptundes|mapUN_Des|state.op_f9_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \maptundes|mapUN_Des|Selector32~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f9_done~q\);

-- Location: LCCOMB_X66_Y48_N8
\maptundes|mapUN_Des|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector26~0_combout\ = (\maptundes|mapUN_Des|state.op_f7_working~q\) # ((\maptundes|mapUN_Des|state.op_f7_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f7_working~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_f7_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector26~0_combout\);

-- Location: FF_X66_Y48_N9
\maptundes|mapUN_Des|state.op_f7_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector26~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f7_done~q\);

-- Location: LCCOMB_X66_Y48_N22
\maptundes|mapUN_Des|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector5~0_combout\ = (\maptundes|mapUN_Des|state.op_f0_working~q\) # ((\maptundes|mapUN_Des|state.op_f0_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f0_working~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_f0_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector5~0_combout\);

-- Location: FF_X66_Y48_N23
\maptundes|mapUN_Des|state.op_f0_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector5~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f0_done~q\);

-- Location: LCCOMB_X66_Y48_N16
\maptundes|mapUN_Des|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector29~0_combout\ = (\maptundes|mapUN_Des|state.op_f8_working~q\) # ((\maptundes|mapUN_Des|state.op_f8_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f8_working~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_f8_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector29~0_combout\);

-- Location: FF_X66_Y48_N17
\maptundes|mapUN_Des|state.op_f8_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector29~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f8_done~q\);

-- Location: LCCOMB_X66_Y48_N26
\maptundes|mapUN_Des|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector9~0_combout\ = (!\maptundes|mapUN_Des|state.op_f7_done~q\ & (!\maptundes|mapUN_Des|state.op_f0_done~q\ & !\maptundes|mapUN_Des|state.op_f8_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|state.op_f7_done~q\,
	datac => \maptundes|mapUN_Des|state.op_f0_done~q\,
	datad => \maptundes|mapUN_Des|state.op_f8_done~q\,
	combout => \maptundes|mapUN_Des|Selector9~0_combout\);

-- Location: LCCOMB_X66_Y48_N14
\maptundes|mapUN_Des|WideOr36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|WideOr36~3_combout\ = (\maptundes|mapUN_Des|WideOr36~2_combout\ & (!\maptundes|mapUN_Des|state.op_ff_done~q\ & (\maptundes|mapUN_Des|Selector9~0_combout\ & \maptundes|mapUN_Des|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|WideOr36~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_ff_done~q\,
	datac => \maptundes|mapUN_Des|Selector9~0_combout\,
	datad => \maptundes|mapUN_Des|Selector12~0_combout\,
	combout => \maptundes|mapUN_Des|WideOr36~3_combout\);

-- Location: LCCOMB_X67_Y49_N16
\maptundes|mapUN_Des|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector42~0_combout\ = (!\maptundes|mapUN_Des|state.op_fb_done~q\ & (!\maptundes|mapUN_Des|state.op_fa_done~q\ & (!\maptundes|mapUN_Des|state.op_f9_done~q\ & \maptundes|mapUN_Des|WideOr36~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fb_done~q\,
	datab => \maptundes|mapUN_Des|state.op_fa_done~q\,
	datac => \maptundes|mapUN_Des|state.op_f9_done~q\,
	datad => \maptundes|mapUN_Des|WideOr36~3_combout\,
	combout => \maptundes|mapUN_Des|Selector42~0_combout\);

-- Location: LCCOMB_X67_Y49_N2
\maptundes|mapUN_Des|Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector48~1_combout\ = (\maptundes|mapUN_Des|state.op_fd_done~q\) # ((\maptundes|mapUN_Des|state.op_fc_done~q\) # (!\maptundes|mapUN_Des|Selector42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|state.op_fd_done~q\,
	datac => \maptundes|mapUN_Des|state.op_fc_done~q\,
	datad => \maptundes|mapUN_Des|Selector42~0_combout\,
	combout => \maptundes|mapUN_Des|Selector48~1_combout\);

-- Location: LCCOMB_X67_Y49_N12
\maptundes|mapUN_Des|Selector48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector48~2_combout\ = (\maptundes|mapUN_Des|Selector48~0_combout\) # ((\maptundes|mapUN_Des|Selector48~1_combout\ & (\maptundes|mapUN_Des|state.op_fe_clean~q\ & !\maptundes|mapUN_Des|mapF|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector48~0_combout\,
	datab => \maptundes|mapUN_Des|Selector48~1_combout\,
	datac => \maptundes|mapUN_Des|state.op_fe_clean~q\,
	datad => \maptundes|mapUN_Des|mapF|done~q\,
	combout => \maptundes|mapUN_Des|Selector48~2_combout\);

-- Location: FF_X67_Y49_N13
\maptundes|mapUN_Des|state.op_fe_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector48~2_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fe_clean~q\);

-- Location: LCCOMB_X67_Y49_N28
\maptundes|mapUN_Des|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector43~0_combout\ = (\maptundes|mapUN_Des|state.op_fe_clean~q\) # ((\maptundes|mapUN_Des|state.op_fd_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_fe_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_fd_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector43~0_combout\);

-- Location: FF_X67_Y49_N29
\maptundes|mapUN_Des|state.op_fd_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector43~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fd_working~q\);

-- Location: LCCOMB_X67_Y49_N20
\maptundes|mapUN_Des|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector44~0_combout\ = (\maptundes|mapUN_Des|state.op_fd_working~q\) # ((\maptundes|mapUN_Des|state.op_fd_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_fd_done~q\,
	datad => \maptundes|mapUN_Des|state.op_fd_working~q\,
	combout => \maptundes|mapUN_Des|Selector44~0_combout\);

-- Location: FF_X67_Y49_N21
\maptundes|mapUN_Des|state.op_fd_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector44~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fd_done~q\);

-- Location: LCCOMB_X66_Y48_N18
\maptundes|mapUN_Des|Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector51~1_combout\ = ((\maptundes|mapUN_Des|state.op_f1_done~q\) # ((!\maptundes|mapUN_Des|WideOr36~1_combout\) # (!\maptundes|mapUN_Des|Selector6~0_combout\))) # (!\maptundes|mapUN_Des|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector9~0_combout\,
	datab => \maptundes|mapUN_Des|state.op_f1_done~q\,
	datac => \maptundes|mapUN_Des|Selector6~0_combout\,
	datad => \maptundes|mapUN_Des|WideOr36~1_combout\,
	combout => \maptundes|mapUN_Des|Selector51~1_combout\);

-- Location: LCCOMB_X67_Y48_N12
\maptundes|mapUN_Des|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector51~0_combout\ = (\maptundes|mapUN_Des|state.op_ff_done~q\ & ((\maptundes|mapUN_Des|mapF|done~q\) # ((\maptundes|mapUN_Des|state.op_ff_clean~q\)))) # (!\maptundes|mapUN_Des|state.op_ff_done~q\ & 
-- (((\maptundes|mapUN_Des|Selector1~2_combout\ & \maptundes|mapUN_Des|state.op_ff_clean~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_ff_done~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|state.op_ff_clean~q\,
	combout => \maptundes|mapUN_Des|Selector51~0_combout\);

-- Location: LCCOMB_X67_Y48_N6
\maptundes|mapUN_Des|Selector51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector51~2_combout\ = (\maptundes|mapUN_Des|Selector51~0_combout\) # ((!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|Selector51~1_combout\ & \maptundes|mapUN_Des|state.op_ff_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|Selector51~1_combout\,
	datac => \maptundes|mapUN_Des|state.op_ff_clean~q\,
	datad => \maptundes|mapUN_Des|Selector51~0_combout\,
	combout => \maptundes|mapUN_Des|Selector51~2_combout\);

-- Location: FF_X67_Y48_N7
\maptundes|mapUN_Des|state.op_ff_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector51~2_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_ff_clean~q\);

-- Location: LCCOMB_X67_Y49_N14
\maptundes|mapUN_Des|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector46~0_combout\ = (\maptundes|mapUN_Des|state.op_ff_clean~q\) # ((\maptundes|mapUN_Des|state.op_fe_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_ff_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_fe_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector46~0_combout\);

-- Location: FF_X67_Y49_N15
\maptundes|mapUN_Des|state.op_fe_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector46~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fe_working~q\);

-- Location: LCCOMB_X68_Y49_N0
\maptundes|mapUN_Des|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector47~0_combout\ = (\maptundes|mapUN_Des|state.op_fe_working~q\) # ((\maptundes|mapUN_Des|state.op_fe_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_fe_done~q\,
	datac => \maptundes|mapUN_Des|Selector1~2_combout\,
	datad => \maptundes|mapUN_Des|state.op_fe_working~q\,
	combout => \maptundes|mapUN_Des|Selector47~0_combout\);

-- Location: FF_X67_Y49_N9
\maptundes|mapUN_Des|state.op_fe_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \maptundes|mapUN_Des|Selector47~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_fe_done~q\);

-- Location: LCCOMB_X67_Y49_N18
\maptundes|mapUN_Des|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector36~0_combout\ = (!\maptundes|mapUN_Des|state.op_f9_done~q\ & (!\maptundes|mapUN_Des|state.op_fd_done~q\ & (!\maptundes|mapUN_Des|state.op_fe_done~q\ & !\maptundes|mapUN_Des|state.op_fc_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f9_done~q\,
	datab => \maptundes|mapUN_Des|state.op_fd_done~q\,
	datac => \maptundes|mapUN_Des|state.op_fe_done~q\,
	datad => \maptundes|mapUN_Des|state.op_fc_done~q\,
	combout => \maptundes|mapUN_Des|Selector36~0_combout\);

-- Location: LCCOMB_X67_Y49_N0
\maptundes|mapUN_Des|WideOr36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|WideOr36~1_combout\ = (!\maptundes|mapUN_Des|state.op_fb_done~q\ & (!\maptundes|mapUN_Des|state.op_fa_done~q\ & \maptundes|mapUN_Des|Selector36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_fb_done~q\,
	datab => \maptundes|mapUN_Des|state.op_fa_done~q\,
	datad => \maptundes|mapUN_Des|Selector36~0_combout\,
	combout => \maptundes|mapUN_Des|WideOr36~1_combout\);

-- Location: LCCOMB_X66_Y48_N0
\maptundes|mapUN_Des|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector18~0_combout\ = (\maptundes|mapUN_Des|Selector9~0_combout\ & (!\maptundes|mapUN_Des|state.op_f1_done~q\ & (!\maptundes|mapUN_Des|state.op_ff_done~q\ & \maptundes|mapUN_Des|WideOr36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector9~0_combout\,
	datab => \maptundes|mapUN_Des|state.op_f1_done~q\,
	datac => \maptundes|mapUN_Des|state.op_ff_done~q\,
	datad => \maptundes|mapUN_Des|WideOr36~1_combout\,
	combout => \maptundes|mapUN_Des|Selector18~0_combout\);

-- Location: LCCOMB_X66_Y49_N10
\maptundes|mapUN_Des|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector15~1_combout\ = (\maptundes|mapUN_Des|state.op_f6_done~q\) # (((\maptundes|mapUN_Des|state.op_f2_done~q\) # (!\maptundes|mapUN_Des|Selector18~0_combout\)) # (!\maptundes|mapUN_Des|Selector12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f6_done~q\,
	datab => \maptundes|mapUN_Des|Selector12~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_f2_done~q\,
	datad => \maptundes|mapUN_Des|Selector18~0_combout\,
	combout => \maptundes|mapUN_Des|Selector15~1_combout\);

-- Location: LCCOMB_X66_Y49_N28
\maptundes|mapUN_Des|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector15~2_combout\ = (\maptundes|mapUN_Des|Selector15~0_combout\) # ((!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_f3_clean~q\ & \maptundes|mapUN_Des|Selector15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|Selector15~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_f3_clean~q\,
	datad => \maptundes|mapUN_Des|Selector15~1_combout\,
	combout => \maptundes|mapUN_Des|Selector15~2_combout\);

-- Location: FF_X66_Y49_N29
\maptundes|mapUN_Des|state.op_f3_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector15~2_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f3_clean~q\);

-- Location: LCCOMB_X66_Y49_N22
\maptundes|mapUN_Des|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector10~0_combout\ = (\maptundes|mapUN_Des|state.op_f3_clean~q\) # ((\maptundes|mapUN_Des|state.op_f2_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_f3_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_f2_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector10~0_combout\);

-- Location: FF_X66_Y49_N23
\maptundes|mapUN_Des|state.op_f2_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector10~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f2_working~q\);

-- Location: LCCOMB_X65_Y49_N12
\maptundes|mapUN_Des|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector11~0_combout\ = (\maptundes|mapUN_Des|state.op_f2_working~q\) # ((\maptundes|mapUN_Des|state.op_f2_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_f2_working~q\,
	datac => \maptundes|mapUN_Des|state.op_f2_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector11~0_combout\);

-- Location: FF_X65_Y49_N13
\maptundes|mapUN_Des|state.op_f2_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector11~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f2_done~q\);

-- Location: LCCOMB_X66_Y48_N6
\maptundes|mapUN_Des|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector18~1_combout\ = (!\maptundes|mapUN_Des|state.op_f3_done~q\ & (!\maptundes|mapUN_Des|state.op_f6_done~q\ & (!\maptundes|mapUN_Des|state.op_f2_done~q\ & \maptundes|mapUN_Des|Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f3_done~q\,
	datab => \maptundes|mapUN_Des|state.op_f6_done~q\,
	datac => \maptundes|mapUN_Des|state.op_f2_done~q\,
	datad => \maptundes|mapUN_Des|Selector18~0_combout\,
	combout => \maptundes|mapUN_Des|Selector18~1_combout\);

-- Location: LCCOMB_X65_Y49_N16
\maptundes|mapUN_Des|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector21~0_combout\ = (\maptundes|mapUN_Des|mapF|done~q\) # ((!\maptundes|mapUN_Des|state.op_f5_done~q\ & (!\maptundes|mapUN_Des|state.op_f4_done~q\ & \maptundes|mapUN_Des|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f5_done~q\,
	datab => \maptundes|mapUN_Des|state.op_f4_done~q\,
	datac => \maptundes|mapUN_Des|mapF|done~q\,
	datad => \maptundes|mapUN_Des|Selector18~1_combout\,
	combout => \maptundes|mapUN_Des|Selector21~0_combout\);

-- Location: LCCOMB_X65_Y49_N18
\maptundes|mapUN_Des|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector21~1_combout\ = (\maptundes|mapUN_Des|Selector21~0_combout\ & ((\maptundes|mapUN_Des|state.op_f5_done~q\) # ((\maptundes|mapUN_Des|Selector1~2_combout\ & \maptundes|mapUN_Des|state.op_f5_clean~q\)))) # 
-- (!\maptundes|mapUN_Des|Selector21~0_combout\ & (((\maptundes|mapUN_Des|state.op_f5_clean~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f5_done~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|state.op_f5_clean~q\,
	datad => \maptundes|mapUN_Des|Selector21~0_combout\,
	combout => \maptundes|mapUN_Des|Selector21~1_combout\);

-- Location: FF_X65_Y49_N19
\maptundes|mapUN_Des|state.op_f5_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector21~1_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f5_clean~q\);

-- Location: LCCOMB_X65_Y49_N24
\maptundes|mapUN_Des|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector16~0_combout\ = (\maptundes|mapUN_Des|state.op_f5_clean~q\) # ((\maptundes|mapUN_Des|state.op_f4_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector1~2_combout\,
	datab => \maptundes|mapUN_Des|state.op_f5_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_f4_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector16~0_combout\);

-- Location: FF_X65_Y49_N25
\maptundes|mapUN_Des|state.op_f4_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector16~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f4_working~q\);

-- Location: LCCOMB_X65_Y49_N8
\maptundes|mapUN_Des|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector17~0_combout\ = (\maptundes|mapUN_Des|state.op_f4_working~q\) # ((\maptundes|mapUN_Des|state.op_f4_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_f4_working~q\,
	datac => \maptundes|mapUN_Des|state.op_f4_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector17~0_combout\);

-- Location: FF_X65_Y49_N9
\maptundes|mapUN_Des|state.op_f4_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector17~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f4_done~q\);

-- Location: LCCOMB_X66_Y49_N8
\maptundes|mapUN_Des|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector19~0_combout\ = (\maptundes|mapUN_Des|state.op_f6_clean~q\) # ((\maptundes|mapUN_Des|state.op_f5_working~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f6_clean~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|state.op_f5_working~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector19~0_combout\);

-- Location: FF_X66_Y49_N9
\maptundes|mapUN_Des|state.op_f5_working\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector19~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f5_working~q\);

-- Location: LCCOMB_X65_Y49_N6
\maptundes|mapUN_Des|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector20~0_combout\ = (\maptundes|mapUN_Des|state.op_f5_working~q\) # ((\maptundes|mapUN_Des|state.op_f5_done~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (!\maptundes|mapUN_Des|mapF|done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_f5_working~q\,
	datac => \maptundes|mapUN_Des|state.op_f5_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector20~0_combout\);

-- Location: FF_X65_Y49_N7
\maptundes|mapUN_Des|state.op_f5_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector20~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f5_done~q\);

-- Location: LCCOMB_X65_Y49_N20
\maptundes|mapUN_Des|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector12~0_combout\ = (!\maptundes|mapUN_Des|state.op_f4_done~q\ & !\maptundes|mapUN_Des|state.op_f5_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|state.op_f4_done~q\,
	datad => \maptundes|mapUN_Des|state.op_f5_done~q\,
	combout => \maptundes|mapUN_Des|Selector12~0_combout\);

-- Location: LCCOMB_X65_Y49_N22
\maptundes|mapUN_Des|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector6~0_combout\ = (!\maptundes|mapUN_Des|state.op_f3_done~q\ & (\maptundes|mapUN_Des|Selector12~0_combout\ & (!\maptundes|mapUN_Des|state.op_f2_done~q\ & !\maptundes|mapUN_Des|state.op_f6_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f3_done~q\,
	datab => \maptundes|mapUN_Des|Selector12~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_f2_done~q\,
	datad => \maptundes|mapUN_Des|state.op_f6_done~q\,
	combout => \maptundes|mapUN_Des|Selector6~0_combout\);

-- Location: LCCOMB_X69_Y49_N8
\maptundes|mapUN_Des|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector6~1_combout\ = (!\maptundes|mapUN_Des|state.op_f1_done~q\ & (!\maptundes|mapUN_Des|state.op_ff_done~q\ & (\maptundes|mapUN_Des|Selector6~0_combout\ & \maptundes|mapUN_Des|WideOr36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f1_done~q\,
	datab => \maptundes|mapUN_Des|state.op_ff_done~q\,
	datac => \maptundes|mapUN_Des|Selector6~0_combout\,
	datad => \maptundes|mapUN_Des|WideOr36~1_combout\,
	combout => \maptundes|mapUN_Des|Selector6~1_combout\);

-- Location: LCCOMB_X68_Y48_N14
\maptundes|mapUN_Des|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector6~3_combout\ = (\maptundes|mapUN_Des|state.op_f7_done~q\) # ((\maptundes|mapUN_Des|state.op_f0_done~q\) # (\maptundes|mapUN_Des|state.op_f8_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|state.op_f7_done~q\,
	datac => \maptundes|mapUN_Des|state.op_f0_done~q\,
	datad => \maptundes|mapUN_Des|state.op_f8_done~q\,
	combout => \maptundes|mapUN_Des|Selector6~3_combout\);

-- Location: LCCOMB_X69_Y49_N30
\maptundes|mapUN_Des|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector6~4_combout\ = (\maptundes|mapUN_Des|Selector6~2_combout\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # ((\maptundes|mapUN_Des|Selector6~3_combout\) # (!\maptundes|mapUN_Des|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector6~2_combout\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|Selector6~1_combout\,
	datad => \maptundes|mapUN_Des|Selector6~3_combout\,
	combout => \maptundes|mapUN_Des|Selector6~4_combout\);

-- Location: FF_X69_Y49_N31
\maptundes|mapUN_Des|state.op_f0_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector6~4_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f0_clean~q\);

-- Location: LCCOMB_X66_Y48_N28
\maptundes|mapUN_Des|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector12~1_combout\ = (\maptundes|mapUN_Des|state.op_f2_clean~q\ & (((\maptundes|mapUN_Des|state.op_f2_done~q\) # (\maptundes|mapUN_Des|Selector1~2_combout\)))) # (!\maptundes|mapUN_Des|state.op_f2_clean~q\ & 
-- (\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_f2_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f2_clean~q\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_f2_done~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector12~1_combout\);

-- Location: LCCOMB_X66_Y48_N24
\maptundes|mapUN_Des|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector12~3_combout\ = (\maptundes|mapUN_Des|Selector12~1_combout\) # ((\maptundes|mapUN_Des|Selector12~2_combout\ & (!\maptundes|mapUN_Des|mapF|done~q\ & \maptundes|mapUN_Des|state.op_f2_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector12~2_combout\,
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|state.op_f2_clean~q\,
	datad => \maptundes|mapUN_Des|Selector12~1_combout\,
	combout => \maptundes|mapUN_Des|Selector12~3_combout\);

-- Location: FF_X66_Y48_N25
\maptundes|mapUN_Des|state.op_f2_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector12~3_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f2_clean~q\);

-- Location: LCCOMB_X67_Y48_N0
\maptundes|mapUN_Des|Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector53~1_combout\ = (\maptundes|mapUN_Des|state.op_f1_clean~q\) # ((\maptundes|mapUN_Des|state.op_f0_clean~q\) # ((\maptundes|mapUN_Des|state.op_f3_clean~q\) # (\maptundes|mapUN_Des|state.op_f2_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f1_clean~q\,
	datab => \maptundes|mapUN_Des|state.op_f0_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_f3_clean~q\,
	datad => \maptundes|mapUN_Des|state.op_f2_clean~q\,
	combout => \maptundes|mapUN_Des|Selector53~1_combout\);

-- Location: LCCOMB_X65_Y49_N4
\maptundes|mapUN_Des|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector27~0_combout\ = (\maptundes|mapUN_Des|state.op_f7_done~q\ & ((\maptundes|mapUN_Des|mapF|done~q\) # ((\maptundes|mapUN_Des|state.op_f7_clean~q\)))) # (!\maptundes|mapUN_Des|state.op_f7_done~q\ & 
-- (((\maptundes|mapUN_Des|state.op_f7_clean~q\ & \maptundes|mapUN_Des|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|state.op_f7_done~q\,
	datac => \maptundes|mapUN_Des|state.op_f7_clean~q\,
	datad => \maptundes|mapUN_Des|Selector1~2_combout\,
	combout => \maptundes|mapUN_Des|Selector27~0_combout\);

-- Location: LCCOMB_X65_Y49_N2
\maptundes|mapUN_Des|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector27~1_combout\ = (\maptundes|mapUN_Des|state.op_f8_done~q\) # ((\maptundes|mapUN_Des|state.op_f0_done~q\) # (!\maptundes|mapUN_Des|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f8_done~q\,
	datab => \maptundes|mapUN_Des|state.op_f0_done~q\,
	datac => \maptundes|mapUN_Des|Selector6~1_combout\,
	combout => \maptundes|mapUN_Des|Selector27~1_combout\);

-- Location: LCCOMB_X65_Y49_N26
\maptundes|mapUN_Des|Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector27~2_combout\ = (\maptundes|mapUN_Des|Selector27~0_combout\) # ((!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_f7_clean~q\ & \maptundes|mapUN_Des|Selector27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|Selector27~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_f7_clean~q\,
	datad => \maptundes|mapUN_Des|Selector27~1_combout\,
	combout => \maptundes|mapUN_Des|Selector27~2_combout\);

-- Location: FF_X65_Y49_N27
\maptundes|mapUN_Des|state.op_f7_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector27~2_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f7_clean~q\);

-- Location: LCCOMB_X66_Y49_N0
\maptundes|mapUN_Des|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector24~0_combout\ = (\maptundes|mapUN_Des|state.op_f6_clean~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # ((\maptundes|mapUN_Des|state.op_f6_done~q\)))) # (!\maptundes|mapUN_Des|state.op_f6_clean~q\ & 
-- (((\maptundes|mapUN_Des|mapF|done~q\ & \maptundes|mapUN_Des|state.op_f6_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f6_clean~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|mapF|done~q\,
	datad => \maptundes|mapUN_Des|state.op_f6_done~q\,
	combout => \maptundes|mapUN_Des|Selector24~0_combout\);

-- Location: LCCOMB_X66_Y49_N2
\maptundes|mapUN_Des|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector24~1_combout\ = (\maptundes|mapUN_Des|state.op_f3_done~q\) # (((\maptundes|mapUN_Des|state.op_f2_done~q\) # (!\maptundes|mapUN_Des|Selector18~0_combout\)) # (!\maptundes|mapUN_Des|Selector12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f3_done~q\,
	datab => \maptundes|mapUN_Des|Selector12~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_f2_done~q\,
	datad => \maptundes|mapUN_Des|Selector18~0_combout\,
	combout => \maptundes|mapUN_Des|Selector24~1_combout\);

-- Location: LCCOMB_X66_Y49_N26
\maptundes|mapUN_Des|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector24~2_combout\ = (\maptundes|mapUN_Des|Selector24~0_combout\) # ((!\maptundes|mapUN_Des|mapF|done~q\ & (\maptundes|mapUN_Des|state.op_f6_clean~q\ & \maptundes|mapUN_Des|Selector24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|done~q\,
	datab => \maptundes|mapUN_Des|Selector24~0_combout\,
	datac => \maptundes|mapUN_Des|state.op_f6_clean~q\,
	datad => \maptundes|mapUN_Des|Selector24~1_combout\,
	combout => \maptundes|mapUN_Des|Selector24~2_combout\);

-- Location: FF_X66_Y49_N27
\maptundes|mapUN_Des|state.op_f6_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector24~2_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_f6_clean~q\);

-- Location: LCCOMB_X65_Y48_N24
\maptundes|mapUN_Des|Selector53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector53~2_combout\ = (\maptundes|mapUN_Des|state.op_f4_clean~q\) # ((\maptundes|mapUN_Des|state.op_f7_clean~q\) # ((\maptundes|mapUN_Des|state.op_f5_clean~q\) # (\maptundes|mapUN_Des|state.op_f6_clean~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f4_clean~q\,
	datab => \maptundes|mapUN_Des|state.op_f7_clean~q\,
	datac => \maptundes|mapUN_Des|state.op_f5_clean~q\,
	datad => \maptundes|mapUN_Des|state.op_f6_clean~q\,
	combout => \maptundes|mapUN_Des|Selector53~2_combout\);

-- Location: LCCOMB_X69_Y49_N20
\maptundes|mapUN_Des|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector2~0_combout\ = (\maptundes|mapUN_Des|state.op_process_key~q\ & ((\maptundes|mapUN_Des|mapK|done~q\) # ((\maptundes|mapUN_Des|state.op_ip~q\)))) # (!\maptundes|mapUN_Des|state.op_process_key~q\ & 
-- (((\maptundes|mapUN_Des|state.op_ip~q\ & \maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapK|done~q\,
	datab => \maptundes|mapUN_Des|state.op_process_key~q\,
	datac => \maptundes|mapUN_Des|state.op_ip~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector2~0_combout\);

-- Location: FF_X69_Y49_N21
\maptundes|mapUN_Des|state.op_ip\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector2~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_ip~q\);

-- Location: LCCOMB_X69_Y49_N28
\maptundes|mapUN_Des|WideOr36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|WideOr36~4_combout\ = ((\maptundes|mapUN_Des|state.op_process_key~q\) # ((\maptundes|mapUN_Des|WideOr36~0_combout\) # (\maptundes|mapUN_Des|state.op_ip~q\))) # (!\maptundes|mapUN_Des|state.op_reset_key~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_reset_key~q\,
	datab => \maptundes|mapUN_Des|state.op_process_key~q\,
	datac => \maptundes|mapUN_Des|WideOr36~0_combout\,
	datad => \maptundes|mapUN_Des|state.op_ip~q\,
	combout => \maptundes|mapUN_Des|WideOr36~4_combout\);

-- Location: LCCOMB_X68_Y48_N4
\maptundes|mapUN_Des|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector53~0_combout\ = (!\maptundes|mapUN_Des|sig_f_reset~q\ & (((\maptundes|mapUN_Des|WideOr36~4_combout\) # (!\maptundes|mapUN_Des|WideOr36~3_combout\)) # (!\maptundes|mapUN_Des|WideOr36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|WideOr36~1_combout\,
	datab => \maptundes|mapUN_Des|sig_f_reset~q\,
	datac => \maptundes|mapUN_Des|WideOr36~3_combout\,
	datad => \maptundes|mapUN_Des|WideOr36~4_combout\,
	combout => \maptundes|mapUN_Des|Selector53~0_combout\);

-- Location: LCCOMB_X67_Y48_N24
\maptundes|mapUN_Des|Selector53~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector53~6_combout\ = (!\maptundes|mapUN_Des|Selector53~5_combout\ & (!\maptundes|mapUN_Des|Selector53~1_combout\ & (!\maptundes|mapUN_Des|Selector53~2_combout\ & !\maptundes|mapUN_Des|Selector53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|Selector53~5_combout\,
	datab => \maptundes|mapUN_Des|Selector53~1_combout\,
	datac => \maptundes|mapUN_Des|Selector53~2_combout\,
	datad => \maptundes|mapUN_Des|Selector53~0_combout\,
	combout => \maptundes|mapUN_Des|Selector53~6_combout\);

-- Location: FF_X67_Y48_N25
\maptundes|mapUN_Des|sig_f_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector53~6_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|sig_f_reset~q\);

-- Location: FF_X68_Y48_N1
\maptundes|mapUN_Des|mapF|state.op_xor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|state.op_xor~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|state.op_xor~q\);

-- Location: LCCOMB_X68_Y48_N22
\maptundes|mapUN_Des|mapF|sig_reset_sbox~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|sig_reset_sbox~0_combout\ = (\maptundes|mapUN_Des|mapF|sig_reset_sbox~q\) # (!\maptundes|mapUN_Des|mapF|state.op_xor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapF|sig_reset_sbox~q\,
	datad => \maptundes|mapUN_Des|mapF|state.op_xor~q\,
	combout => \maptundes|mapUN_Des|mapF|sig_reset_sbox~0_combout\);

-- Location: FF_X68_Y48_N23
\maptundes|mapUN_Des|mapF|sig_reset_sbox\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|sig_reset_sbox~0_combout\,
	clrn => \maptundes|mapUN_Des|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|sig_reset_sbox~q\);

-- Location: FF_X67_Y48_N3
\maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~feeder_combout\,
	clrn => \maptundes|mapUN_Des|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~q\);

-- Location: LCCOMB_X67_Y48_N16
\maptundes|mapUN_Des|mapF|mapSbox|sig_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~0_combout\ = (\maptundes|mapUN_Des|mapF|mapSbox|sig_reset~q\) # (!\maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~q\,
	datad => \maptundes|mapUN_Des|mapF|mapSbox|state.liberaSbox~q\,
	combout => \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~0_combout\);

-- Location: FF_X67_Y48_N17
\maptundes|mapUN_Des|mapF|mapSbox|sig_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~0_combout\,
	clrn => \maptundes|mapUN_Des|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~q\);

-- Location: FF_X68_Y48_N17
\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~feeder_combout\,
	clrn => \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~q\);

-- Location: LCCOMB_X68_Y48_N20
\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto~feeder_combout\ = \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.inicia~q\,
	combout => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto~feeder_combout\);

-- Location: FF_X68_Y48_N21
\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto~feeder_combout\,
	clrn => \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto~q\);

-- Location: LCCOMB_X68_Y48_N26
\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|Selector0~0_combout\ = (\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto~q\) # ((\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam~q\ & \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.consultaRam~q\,
	datac => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|done~q\,
	datad => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|state.pronto~q\,
	combout => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|Selector0~0_combout\);

-- Location: FF_X68_Y48_N27
\maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|Selector0~0_combout\,
	clrn => \maptundes|mapUN_Des|mapF|mapSbox|sig_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|done~q\);

-- Location: LCCOMB_X67_Y48_N28
\maptundes|mapUN_Des|mapF|mapSbox|state.pronto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|mapSbox|state.pronto~0_combout\ = (\maptundes|mapUN_Des|mapF|mapSbox|state.pronto~q\) # ((\maptundes|mapUN_Des|mapF|mapSbox|state.espera~q\ & \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|mapSbox|state.espera~q\,
	datac => \maptundes|mapUN_Des|mapF|mapSbox|state.pronto~q\,
	datad => \maptundes|mapUN_Des|mapF|mapSbox|mapSbox1|done~q\,
	combout => \maptundes|mapUN_Des|mapF|mapSbox|state.pronto~0_combout\);

-- Location: FF_X67_Y48_N29
\maptundes|mapUN_Des|mapF|mapSbox|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|mapSbox|state.pronto~0_combout\,
	clrn => \maptundes|mapUN_Des|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|mapSbox|state.pronto~q\);

-- Location: LCCOMB_X67_Y48_N26
\maptundes|mapUN_Des|mapF|mapSbox|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|mapSbox|done~0_combout\ = (\maptundes|mapUN_Des|mapF|mapSbox|done~q\) # (\maptundes|mapUN_Des|mapF|mapSbox|state.pronto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapF|mapSbox|done~q\,
	datad => \maptundes|mapUN_Des|mapF|mapSbox|state.pronto~q\,
	combout => \maptundes|mapUN_Des|mapF|mapSbox|done~0_combout\);

-- Location: FF_X67_Y48_N27
\maptundes|mapUN_Des|mapF|mapSbox|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|mapSbox|done~0_combout\,
	clrn => \maptundes|mapUN_Des|mapF|sig_reset_sbox~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|mapSbox|done~q\);

-- Location: LCCOMB_X68_Y48_N24
\maptundes|mapUN_Des|mapF|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|Selector0~0_combout\ = ((!\maptundes|mapUN_Des|mapF|mapSbox|done~q\ & \maptundes|mapUN_Des|mapF|state.op_sbox~q\)) # (!\maptundes|mapUN_Des|mapF|state.op_xor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapF|mapSbox|done~q\,
	datac => \maptundes|mapUN_Des|mapF|state.op_sbox~q\,
	datad => \maptundes|mapUN_Des|mapF|state.op_xor~q\,
	combout => \maptundes|mapUN_Des|mapF|Selector0~0_combout\);

-- Location: FF_X68_Y48_N25
\maptundes|mapUN_Des|mapF|state.op_sbox\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|Selector0~0_combout\,
	clrn => \maptundes|mapUN_Des|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|state.op_sbox~q\);

-- Location: LCCOMB_X68_Y48_N18
\maptundes|mapUN_Des|mapF|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|state~12_combout\ = (\maptundes|mapUN_Des|mapF|mapSbox|done~q\ & \maptundes|mapUN_Des|mapF|state.op_sbox~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapF|mapSbox|done~q\,
	datad => \maptundes|mapUN_Des|mapF|state.op_sbox~q\,
	combout => \maptundes|mapUN_Des|mapF|state~12_combout\);

-- Location: FF_X68_Y48_N19
\maptundes|mapUN_Des|mapF|state.op_p_box\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|state~12_combout\,
	clrn => \maptundes|mapUN_Des|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|state.op_p_box~q\);

-- Location: LCCOMB_X68_Y48_N12
\maptundes|mapUN_Des|mapF|state.pronto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|state.pronto~0_combout\ = (\maptundes|mapUN_Des|mapF|state.pronto~q\) # (\maptundes|mapUN_Des|mapF|state.op_p_box~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapF|state.pronto~q\,
	datad => \maptundes|mapUN_Des|mapF|state.op_p_box~q\,
	combout => \maptundes|mapUN_Des|mapF|state.pronto~0_combout\);

-- Location: FF_X68_Y48_N13
\maptundes|mapUN_Des|mapF|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|state.pronto~0_combout\,
	clrn => \maptundes|mapUN_Des|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|state.pronto~q\);

-- Location: LCCOMB_X68_Y48_N28
\maptundes|mapUN_Des|mapF|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapF|done~0_combout\ = (\maptundes|mapUN_Des|mapF|done~q\) # (\maptundes|mapUN_Des|mapF|state.pronto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapF|done~q\,
	datad => \maptundes|mapUN_Des|mapF|state.pronto~q\,
	combout => \maptundes|mapUN_Des|mapF|done~0_combout\);

-- Location: FF_X68_Y48_N29
\maptundes|mapUN_Des|mapF|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapF|done~0_combout\,
	clrn => \maptundes|mapUN_Des|sig_f_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapF|done~q\);

-- Location: LCCOMB_X66_Y48_N20
\maptundes|mapUN_Des|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector3~0_combout\ = (!\maptundes|mapUN_Des|mapF|done~q\ & ((!\maptundes|mapUN_Des|WideOr36~1_combout\) # (!\maptundes|mapUN_Des|WideOr36~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|mapF|done~q\,
	datac => \maptundes|mapUN_Des|WideOr36~3_combout\,
	datad => \maptundes|mapUN_Des|WideOr36~1_combout\,
	combout => \maptundes|mapUN_Des|Selector3~0_combout\);

-- Location: LCCOMB_X69_Y49_N6
\maptundes|mapUN_Des|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector0~2_combout\ = (\maptundes|mapUN_Des|state.op_reset_key~q\) # ((!\maptundes|mapUN_Des|Selector3~0_combout\ & ((\maptundes|mapUN_Des|mapK|done~q\) # (!\maptundes|mapUN_Des|state.op_process_key~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|mapK|done~q\,
	datab => \maptundes|mapUN_Des|state.op_process_key~q\,
	datac => \maptundes|mapUN_Des|state.op_reset_key~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector0~2_combout\);

-- Location: FF_X69_Y49_N7
\maptundes|mapUN_Des|state.op_reset_key\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector0~2_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_reset_key~q\);

-- Location: LCCOMB_X62_Y49_N12
\maptundes|mapUN_Des|sig_k_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|sig_k_reset~0_combout\ = (\maptundes|mapUN_Des|sig_k_reset~q\) # (!\maptundes|mapUN_Des|state.op_reset_key~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|sig_k_reset~q\,
	datad => \maptundes|mapUN_Des|state.op_reset_key~q\,
	combout => \maptundes|mapUN_Des|sig_k_reset~0_combout\);

-- Location: FF_X62_Y49_N13
\maptundes|mapUN_Des|sig_k_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|sig_k_reset~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|sig_k_reset~q\);

-- Location: FF_X61_Y49_N19
\maptundes|mapUN_Des|mapK|state.pc1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc1~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc1~q\);

-- Location: LCCOMB_X61_Y49_N0
\maptundes|mapUN_Des|mapK|state.rotacao1_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacao1_1~0_combout\ = !\maptundes|mapUN_Des|mapK|state.pc1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc1~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacao1_1~0_combout\);

-- Location: FF_X61_Y49_N1
\maptundes|mapUN_Des|mapK|state.rotacao1_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacao1_1~0_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacao1_1~q\);

-- Location: LCCOMB_X61_Y49_N2
\maptundes|mapUN_Des|mapK|state.pc2_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_1~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacao1_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacao1_1~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_1~feeder_combout\);

-- Location: FF_X61_Y49_N3
\maptundes|mapUN_Des|mapK|state.pc2_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_1~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_1~q\);

-- Location: LCCOMB_X61_Y49_N12
\maptundes|mapUN_Des|mapK|state.rotacao2_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacao2_1~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_1~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacao2_1~feeder_combout\);

-- Location: FF_X61_Y49_N13
\maptundes|mapUN_Des|mapK|state.rotacao2_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacao2_1~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacao2_1~q\);

-- Location: LCCOMB_X62_Y49_N10
\maptundes|mapUN_Des|mapK|state.pc2_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacao2_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacao2_1~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_2~feeder_combout\);

-- Location: FF_X62_Y49_N11
\maptundes|mapUN_Des|mapK|state.pc2_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_2~q\);

-- Location: LCCOMB_X62_Y49_N16
\maptundes|mapUN_Des|mapK|state.rotacao3_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacao3_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacao3_2~feeder_combout\);

-- Location: FF_X62_Y49_N17
\maptundes|mapUN_Des|mapK|state.rotacao3_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacao3_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacao3_2~q\);

-- Location: LCCOMB_X62_Y49_N22
\maptundes|mapUN_Des|mapK|state.pc2_3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_3~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacao3_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacao3_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_3~feeder_combout\);

-- Location: FF_X62_Y49_N23
\maptundes|mapUN_Des|mapK|state.pc2_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_3~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_3~q\);

-- Location: LCCOMB_X62_Y49_N8
\maptundes|mapUN_Des|mapK|state.rotacao4_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacao4_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.pc2_3~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacao4_2~feeder_combout\);

-- Location: FF_X62_Y49_N9
\maptundes|mapUN_Des|mapK|state.rotacao4_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacao4_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacao4_2~q\);

-- Location: LCCOMB_X62_Y49_N18
\maptundes|mapUN_Des|mapK|state.pc2_4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_4~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacao4_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.rotacao4_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_4~feeder_combout\);

-- Location: FF_X62_Y49_N19
\maptundes|mapUN_Des|mapK|state.pc2_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_4~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_4~q\);

-- Location: LCCOMB_X62_Y49_N0
\maptundes|mapUN_Des|mapK|state.rotacao5_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacao5_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_4~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacao5_2~feeder_combout\);

-- Location: FF_X62_Y49_N1
\maptundes|mapUN_Des|mapK|state.rotacao5_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacao5_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacao5_2~q\);

-- Location: LCCOMB_X62_Y49_N6
\maptundes|mapUN_Des|mapK|state.pc2_5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_5~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacao5_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacao5_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_5~feeder_combout\);

-- Location: FF_X62_Y49_N7
\maptundes|mapUN_Des|mapK|state.pc2_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_5~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_5~q\);

-- Location: LCCOMB_X62_Y49_N20
\maptundes|mapUN_Des|mapK|state.rotacao6_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacao6_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_5~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacao6_2~feeder_combout\);

-- Location: FF_X62_Y49_N21
\maptundes|mapUN_Des|mapK|state.rotacao6_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacao6_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacao6_2~q\);

-- Location: LCCOMB_X62_Y49_N26
\maptundes|mapUN_Des|mapK|state.pc2_6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_6~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacao6_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacao6_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_6~feeder_combout\);

-- Location: FF_X62_Y49_N27
\maptundes|mapUN_Des|mapK|state.pc2_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_6~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_6~q\);

-- Location: LCCOMB_X62_Y49_N24
\maptundes|mapUN_Des|mapK|state.rotacao7_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacao7_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.pc2_6~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacao7_2~feeder_combout\);

-- Location: FF_X62_Y49_N25
\maptundes|mapUN_Des|mapK|state.rotacao7_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacao7_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacao7_2~q\);

-- Location: LCCOMB_X62_Y49_N2
\maptundes|mapUN_Des|mapK|state.pc2_7~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_7~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacao7_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacao7_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_7~feeder_combout\);

-- Location: FF_X62_Y49_N3
\maptundes|mapUN_Des|mapK|state.pc2_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_7~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_7~q\);

-- Location: LCCOMB_X62_Y49_N4
\maptundes|mapUN_Des|mapK|state.rotacao8_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacao8_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_7~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacao8_2~feeder_combout\);

-- Location: FF_X62_Y49_N5
\maptundes|mapUN_Des|mapK|state.rotacao8_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacao8_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacao8_2~q\);

-- Location: LCCOMB_X62_Y49_N30
\maptundes|mapUN_Des|mapK|state.pc2_8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_8~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacao8_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.rotacao8_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_8~feeder_combout\);

-- Location: FF_X62_Y49_N31
\maptundes|mapUN_Des|mapK|state.pc2_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_8~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_8~q\);

-- Location: LCCOMB_X62_Y49_N28
\maptundes|mapUN_Des|mapK|state.rotacao9_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacao9_1~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.pc2_8~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacao9_1~feeder_combout\);

-- Location: FF_X62_Y49_N29
\maptundes|mapUN_Des|mapK|state.rotacao9_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacao9_1~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacao9_1~q\);

-- Location: LCCOMB_X62_Y49_N14
\maptundes|mapUN_Des|mapK|state.pc2_9~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_9~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacao9_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacao9_1~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_9~feeder_combout\);

-- Location: FF_X62_Y49_N15
\maptundes|mapUN_Des|mapK|state.pc2_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_9~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_9~q\);

-- Location: LCCOMB_X63_Y49_N18
\maptundes|mapUN_Des|mapK|state.rotacaoa_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacaoa_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_9~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacaoa_2~feeder_combout\);

-- Location: FF_X63_Y49_N19
\maptundes|mapUN_Des|mapK|state.rotacaoa_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacaoa_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacaoa_2~q\);

-- Location: LCCOMB_X63_Y49_N20
\maptundes|mapUN_Des|mapK|state.pc2_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_a~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacaoa_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacaoa_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_a~feeder_combout\);

-- Location: FF_X63_Y49_N21
\maptundes|mapUN_Des|mapK|state.pc2_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_a~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_a~q\);

-- Location: LCCOMB_X63_Y49_N30
\maptundes|mapUN_Des|mapK|state.rotacaob_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacaob_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_a~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacaob_2~feeder_combout\);

-- Location: FF_X63_Y49_N31
\maptundes|mapUN_Des|mapK|state.rotacaob_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacaob_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacaob_2~q\);

-- Location: LCCOMB_X63_Y49_N12
\maptundes|mapUN_Des|mapK|state.pc2_b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_b~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacaob_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.rotacaob_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_b~feeder_combout\);

-- Location: FF_X63_Y49_N13
\maptundes|mapUN_Des|mapK|state.pc2_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_b~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_b~q\);

-- Location: LCCOMB_X63_Y49_N10
\maptundes|mapUN_Des|mapK|state.rotacaoc_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacaoc_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_b~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_b~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacaoc_2~feeder_combout\);

-- Location: FF_X63_Y49_N11
\maptundes|mapUN_Des|mapK|state.rotacaoc_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacaoc_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacaoc_2~q\);

-- Location: LCCOMB_X63_Y49_N0
\maptundes|mapUN_Des|mapK|state.pc2_c~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_c~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacaoc_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacaoc_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_c~feeder_combout\);

-- Location: FF_X63_Y49_N1
\maptundes|mapUN_Des|mapK|state.pc2_c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_c~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_c~q\);

-- Location: LCCOMB_X63_Y49_N6
\maptundes|mapUN_Des|mapK|state.rotacaod_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacaod_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_c~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_c~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacaod_2~feeder_combout\);

-- Location: FF_X63_Y49_N7
\maptundes|mapUN_Des|mapK|state.rotacaod_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacaod_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacaod_2~q\);

-- Location: LCCOMB_X63_Y49_N4
\maptundes|mapUN_Des|mapK|state.pc2_d~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_d~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacaod_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.rotacaod_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_d~feeder_combout\);

-- Location: FF_X63_Y49_N5
\maptundes|mapUN_Des|mapK|state.pc2_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_d~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_d~q\);

-- Location: LCCOMB_X63_Y49_N22
\maptundes|mapUN_Des|mapK|state.rotacaoe_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacaoe_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_d~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.pc2_d~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacaoe_2~feeder_combout\);

-- Location: FF_X63_Y49_N23
\maptundes|mapUN_Des|mapK|state.rotacaoe_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacaoe_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacaoe_2~q\);

-- Location: LCCOMB_X63_Y49_N16
\maptundes|mapUN_Des|mapK|state.pc2_e~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_e~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacaoe_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.rotacaoe_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_e~feeder_combout\);

-- Location: FF_X63_Y49_N17
\maptundes|mapUN_Des|mapK|state.pc2_e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_e~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_e~q\);

-- Location: LCCOMB_X63_Y49_N14
\maptundes|mapUN_Des|mapK|state.rotacaof_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacaof_2~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_e~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maptundes|mapUN_Des|mapK|state.pc2_e~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacaof_2~feeder_combout\);

-- Location: FF_X63_Y49_N15
\maptundes|mapUN_Des|mapK|state.rotacaof_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacaof_2~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacaof_2~q\);

-- Location: LCCOMB_X63_Y49_N8
\maptundes|mapUN_Des|mapK|state.pc2_f~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_f~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacaof_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.rotacaof_2~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_f~feeder_combout\);

-- Location: FF_X63_Y49_N9
\maptundes|mapUN_Des|mapK|state.pc2_f\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_f~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_f~q\);

-- Location: LCCOMB_X63_Y49_N26
\maptundes|mapUN_Des|mapK|state.rotacaog_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.rotacaog_1~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.pc2_f~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.pc2_f~q\,
	combout => \maptundes|mapUN_Des|mapK|state.rotacaog_1~feeder_combout\);

-- Location: FF_X63_Y49_N27
\maptundes|mapUN_Des|mapK|state.rotacaog_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.rotacaog_1~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.rotacaog_1~q\);

-- Location: LCCOMB_X63_Y49_N28
\maptundes|mapUN_Des|mapK|state.pc2_g~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pc2_g~feeder_combout\ = \maptundes|mapUN_Des|mapK|state.rotacaog_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.rotacaog_1~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pc2_g~feeder_combout\);

-- Location: FF_X63_Y49_N29
\maptundes|mapUN_Des|mapK|state.pc2_g\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pc2_g~feeder_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pc2_g~q\);

-- Location: LCCOMB_X63_Y49_N2
\maptundes|mapUN_Des|mapK|state.pronto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|state.pronto~0_combout\ = (\maptundes|mapUN_Des|mapK|state.pronto~q\) # (\maptundes|mapUN_Des|mapK|state.pc2_g~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|state.pronto~q\,
	datad => \maptundes|mapUN_Des|mapK|state.pc2_g~q\,
	combout => \maptundes|mapUN_Des|mapK|state.pronto~0_combout\);

-- Location: FF_X63_Y49_N3
\maptundes|mapUN_Des|mapK|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|state.pronto~0_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|state.pronto~q\);

-- Location: LCCOMB_X63_Y49_N24
\maptundes|mapUN_Des|mapK|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|mapK|done~0_combout\ = (\maptundes|mapUN_Des|mapK|done~q\) # (\maptundes|mapUN_Des|mapK|state.pronto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|mapK|done~q\,
	datad => \maptundes|mapUN_Des|mapK|state.pronto~q\,
	combout => \maptundes|mapUN_Des|mapK|done~0_combout\);

-- Location: FF_X63_Y49_N25
\maptundes|mapUN_Des|mapK|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|mapK|done~0_combout\,
	clrn => \maptundes|mapUN_Des|sig_k_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|mapK|done~q\);

-- Location: LCCOMB_X69_Y49_N0
\maptundes|mapUN_Des|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector1~3_combout\ = ((\maptundes|mapUN_Des|state.op_process_key~q\ & ((\maptundes|mapUN_Des|Selector3~0_combout\) # (!\maptundes|mapUN_Des|mapK|done~q\)))) # (!\maptundes|mapUN_Des|state.op_reset_key~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_reset_key~q\,
	datab => \maptundes|mapUN_Des|mapK|done~q\,
	datac => \maptundes|mapUN_Des|state.op_process_key~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector1~3_combout\);

-- Location: FF_X69_Y49_N1
\maptundes|mapUN_Des|state.op_process_key\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector1~3_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_process_key~q\);

-- Location: LCCOMB_X69_Y49_N14
\maptundes|mapUN_Des|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector1~2_combout\ = (\maptundes|mapUN_Des|state.op_process_key~q\ & !\maptundes|mapUN_Des|mapK|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|state.op_process_key~q\,
	datad => \maptundes|mapUN_Des|mapK|done~q\,
	combout => \maptundes|mapUN_Des|Selector1~2_combout\);

-- Location: LCCOMB_X69_Y49_N22
\maptundes|mapUN_Des|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|Selector3~1_combout\ = (\maptundes|mapUN_Des|state.op_f0_clean~q\) # ((\maptundes|mapUN_Des|state.op_ip_final~q\ & ((\maptundes|mapUN_Des|Selector1~2_combout\) # (\maptundes|mapUN_Des|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maptundes|mapUN_Des|state.op_f0_clean~q\,
	datab => \maptundes|mapUN_Des|Selector1~2_combout\,
	datac => \maptundes|mapUN_Des|state.op_ip_final~q\,
	datad => \maptundes|mapUN_Des|Selector3~0_combout\,
	combout => \maptundes|mapUN_Des|Selector3~1_combout\);

-- Location: FF_X69_Y49_N23
\maptundes|mapUN_Des|state.op_ip_final\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|mapUN_Des|Selector3~1_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.op_ip_final~q\);

-- Location: LCCOMB_X69_Y49_N4
\maptundes|mapUN_Des|WideOr36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|WideOr36~0_combout\ = (\maptundes|mapUN_Des|state.op_ip_final~q\) # (\maptundes|mapUN_Des|state.pronto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maptundes|mapUN_Des|state.op_ip_final~q\,
	datad => \maptundes|mapUN_Des|state.pronto~q\,
	combout => \maptundes|mapUN_Des|WideOr36~0_combout\);

-- Location: FF_X69_Y49_N29
\maptundes|mapUN_Des|state.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \maptundes|mapUN_Des|WideOr36~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|state.pronto~q\);

-- Location: LCCOMB_X70_Y49_N8
\maptundes|mapUN_Des|done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|mapUN_Des|done~0_combout\ = (\maptundes|mapUN_Des|state.pronto~q\) # (\maptundes|mapUN_Des|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|state.pronto~q\,
	datad => \maptundes|mapUN_Des|done~q\,
	combout => \maptundes|mapUN_Des|done~0_combout\);

-- Location: FF_X67_Y49_N1
\maptundes|mapUN_Des|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \maptundes|mapUN_Des|done~0_combout\,
	clrn => \maptundes|ALT_INV_sig_undes_reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|mapUN_Des|done~q\);

-- Location: LCCOMB_X76_Y49_N4
\maptundes|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector2~0_combout\ = (\maptundes|estado.un_des1Carrega~q\) # ((!\maptundes|mapUN_Des|done~q\ & \maptundes|estado.un_des1Opera~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|mapUN_Des|done~q\,
	datac => \maptundes|estado.un_des1Opera~q\,
	datad => \maptundes|estado.un_des1Carrega~q\,
	combout => \maptundes|Selector2~0_combout\);

-- Location: FF_X76_Y49_N5
\maptundes|estado.un_des1Opera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|Selector2~0_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.un_des1Opera~q\);

-- Location: LCCOMB_X76_Y49_N8
\maptundes|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector3~0_combout\ = (\maptundes|estado.un_des1Opera~q\ & \maptundes|mapUN_Des|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|estado.un_des1Opera~q\,
	datac => \maptundes|mapUN_Des|done~q\,
	combout => \maptundes|Selector3~0_combout\);

-- Location: FF_X76_Y49_N9
\maptundes|estado.un_des1SalvaInformacao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|Selector3~0_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.un_des1SalvaInformacao~q\);

-- Location: LCCOMB_X76_Y49_N0
\maptundes|estado.pronto~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|estado.pronto~0_combout\ = (\maptundes|estado.un_des1SalvaInformacao~q\) # (\maptundes|estado.pronto~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|estado.un_des1SalvaInformacao~q\,
	datac => \maptundes|estado.pronto~q\,
	combout => \maptundes|estado.pronto~0_combout\);

-- Location: FF_X76_Y49_N1
\maptundes|estado.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|estado.pronto~0_combout\,
	clrn => \ALT_INV_s_tundes_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|estado.pronto~q\);

-- Location: LCCOMB_X80_Y49_N12
\maptundes|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maptundes|Selector11~0_combout\ = (\maptundes|estado.pronto~q\) # ((\maptundes|done~q\ & \maptundes|estado.state_reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maptundes|estado.pronto~q\,
	datac => \maptundes|done~q\,
	datad => \maptundes|estado.state_reset~q\,
	combout => \maptundes|Selector11~0_combout\);

-- Location: FF_X80_Y49_N13
\maptundes|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \maptundes|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maptundes|done~q\);

-- Location: LCCOMB_X110_Y50_N20
\estado.state_reset~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado.state_reset~2_combout\ = (\estado.state_reset~q\) # ((\Selector14~5_combout\) # ((\estado.state_decripta_opera~q\ & \maptundes|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_decripta_opera~q\,
	datab => \maptundes|done~q\,
	datac => \estado.state_reset~q\,
	datad => \Selector14~5_combout\,
	combout => \estado.state_reset~2_combout\);

-- Location: FF_X110_Y50_N21
\estado.state_reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \estado.state_reset~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_reset~q\);

-- Location: LCCOMB_X109_Y50_N28
\i[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[9]~30_combout\ = (\estado.preparacao_operacao~q\) # ((\estado.state_encripta_seleciona_bloco~q\) # ((\estado.state_decripta_seleciona_bloco~q\) # (!\estado.state_reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.preparacao_operacao~q\,
	datab => \estado.state_encripta_seleciona_bloco~q\,
	datac => \estado.state_reset~q\,
	datad => \estado.state_decripta_seleciona_bloco~q\,
	combout => \i[9]~30_combout\);

-- Location: FF_X112_Y50_N15
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[2]~14_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LCCOMB_X112_Y50_N16
\i[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~16_combout\ = (i(3) & (!\i[2]~15\)) # (!i(3) & ((\i[2]~15\) # (GND)))
-- \i[3]~17\ = CARRY((!\i[2]~15\) # (!i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(3),
	datad => VCC,
	cin => \i[2]~15\,
	combout => \i[3]~16_combout\,
	cout => \i[3]~17\);

-- Location: FF_X112_Y50_N17
\i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[3]~16_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(3));

-- Location: LCCOMB_X112_Y50_N18
\i[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~18_combout\ = (i(4) & (\i[3]~17\ $ (GND))) # (!i(4) & (!\i[3]~17\ & VCC))
-- \i[4]~19\ = CARRY((i(4) & !\i[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(4),
	datad => VCC,
	cin => \i[3]~17\,
	combout => \i[4]~18_combout\,
	cout => \i[4]~19\);

-- Location: FF_X112_Y50_N19
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[4]~18_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: LCCOMB_X112_Y50_N20
\i[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[5]~20_combout\ = (i(5) & (!\i[4]~19\)) # (!i(5) & ((\i[4]~19\) # (GND)))
-- \i[5]~21\ = CARRY((!\i[4]~19\) # (!i(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(5),
	datad => VCC,
	cin => \i[4]~19\,
	combout => \i[5]~20_combout\,
	cout => \i[5]~21\);

-- Location: FF_X112_Y50_N21
\i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[5]~20_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(5));

-- Location: LCCOMB_X112_Y50_N24
\i[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[7]~24_combout\ = (i(7) & (!\i[6]~23\)) # (!i(7) & ((\i[6]~23\) # (GND)))
-- \i[7]~25\ = CARRY((!\i[6]~23\) # (!i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(7),
	datad => VCC,
	cin => \i[6]~23\,
	combout => \i[7]~24_combout\,
	cout => \i[7]~25\);

-- Location: FF_X112_Y50_N25
\i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[7]~24_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(7));

-- Location: LCCOMB_X112_Y50_N28
\i[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[9]~28_combout\ = \i[8]~27\ $ (i(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => i(9),
	cin => \i[8]~27\,
	combout => \i[9]~28_combout\);

-- Location: FF_X112_Y50_N29
\i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[9]~28_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(9));

-- Location: IOIBUF_X115_Y51_N1
\barramentoIn[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(9),
	o => \barramentoIn[9]~input_o\);

-- Location: LCCOMB_X114_Y50_N0
\Selector212~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector212~0_combout\ = (\estado.state_carregando_quantidade_blocos~q\ & \barramentoIn[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.state_carregando_quantidade_blocos~q\,
	datad => \barramentoIn[9]~input_o\,
	combout => \Selector212~0_combout\);

-- Location: LCCOMB_X110_Y50_N24
\Selector221~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector221~0_combout\ = (\estado.state_carregando_quantidade_blocos~q\ & (\inStable~input_o\)) # (!\estado.state_carregando_quantidade_blocos~q\ & ((!\estado.state_reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inStable~input_o\,
	datac => \estado.state_carregando_quantidade_blocos~q\,
	datad => \estado.state_reset~q\,
	combout => \Selector221~0_combout\);

-- Location: FF_X114_Y50_N1
\quantidade_blocos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector212~0_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(9));

-- Location: LCCOMB_X111_Y50_N4
\Selector213~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector213~0_combout\ = (\barramentoIn[8]~input_o\ & \estado.state_carregando_quantidade_blocos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \barramentoIn[8]~input_o\,
	datad => \estado.state_carregando_quantidade_blocos~q\,
	combout => \Selector213~0_combout\);

-- Location: FF_X111_Y50_N29
\quantidade_blocos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector213~0_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	sload => VCC,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(8));

-- Location: IOIBUF_X115_Y51_N8
\barramentoIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(7),
	o => \barramentoIn[7]~input_o\);

-- Location: LCCOMB_X111_Y50_N30
\Selector214~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector214~0_combout\ = (\barramentoIn[7]~input_o\ & \estado.state_carregando_quantidade_blocos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \barramentoIn[7]~input_o\,
	datad => \estado.state_carregando_quantidade_blocos~q\,
	combout => \Selector214~0_combout\);

-- Location: FF_X111_Y50_N3
\quantidade_blocos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector214~0_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	sload => VCC,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(7));

-- Location: IOIBUF_X115_Y47_N22
\barramentoIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(6),
	o => \barramentoIn[6]~input_o\);

-- Location: LCCOMB_X111_Y50_N28
\Selector215~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector215~0_combout\ = (\barramentoIn[6]~input_o\ & \estado.state_carregando_quantidade_blocos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \barramentoIn[6]~input_o\,
	datad => \estado.state_carregando_quantidade_blocos~q\,
	combout => \Selector215~0_combout\);

-- Location: FF_X111_Y50_N19
\quantidade_blocos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector215~0_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	sload => VCC,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(6));

-- Location: IOIBUF_X115_Y50_N1
\barramentoIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(5),
	o => \barramentoIn[5]~input_o\);

-- Location: LCCOMB_X114_Y50_N22
\Selector216~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector216~0_combout\ = (\estado.state_carregando_quantidade_blocos~q\ & \barramentoIn[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.state_carregando_quantidade_blocos~q\,
	datad => \barramentoIn[5]~input_o\,
	combout => \Selector216~0_combout\);

-- Location: FF_X111_Y50_N17
\quantidade_blocos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector216~0_combout\,
	sclr => \ALT_INV_inStable~input_o\,
	sload => VCC,
	ena => \Selector221~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => quantidade_blocos(5));

-- Location: FF_X112_Y50_N13
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[1]~12_combout\,
	sclr => \i[9]~30_combout\,
	ena => \i[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X111_Y50_N6
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((quantidade_blocos(0) & !i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => quantidade_blocos(0),
	datab => i(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X111_Y50_N8
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((quantidade_blocos(1) & (i(1) & !\LessThan0~1_cout\)) # (!quantidade_blocos(1) & ((i(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => quantidade_blocos(1),
	datab => i(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X111_Y50_N10
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((quantidade_blocos(2) & ((!\LessThan0~3_cout\) # (!i(2)))) # (!quantidade_blocos(2) & (!i(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => quantidade_blocos(2),
	datab => i(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X111_Y50_N12
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((quantidade_blocos(3) & (i(3) & !\LessThan0~5_cout\)) # (!quantidade_blocos(3) & ((i(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => quantidade_blocos(3),
	datab => i(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X111_Y50_N14
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((quantidade_blocos(4) & ((!\LessThan0~7_cout\) # (!i(4)))) # (!quantidade_blocos(4) & (!i(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => quantidade_blocos(4),
	datab => i(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X111_Y50_N16
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((i(5) & ((!\LessThan0~9_cout\) # (!quantidade_blocos(5)))) # (!i(5) & (!quantidade_blocos(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(5),
	datab => quantidade_blocos(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X111_Y50_N18
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((i(6) & (quantidade_blocos(6) & !\LessThan0~11_cout\)) # (!i(6) & ((quantidade_blocos(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datab => quantidade_blocos(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X111_Y50_N20
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((i(7) & ((!\LessThan0~13_cout\) # (!quantidade_blocos(7)))) # (!i(7) & (!quantidade_blocos(7) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(7),
	datab => quantidade_blocos(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X111_Y50_N22
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((i(8) & (quantidade_blocos(8) & !\LessThan0~15_cout\)) # (!i(8) & ((quantidade_blocos(8)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(8),
	datab => quantidade_blocos(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X111_Y50_N24
\LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = (i(9) & (\LessThan0~17_cout\ & quantidade_blocos(9))) # (!i(9) & ((\LessThan0~17_cout\) # (quantidade_blocos(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(9),
	datad => quantidade_blocos(9),
	cin => \LessThan0~17_cout\,
	combout => \LessThan0~18_combout\);

-- Location: LCCOMB_X109_Y50_N4
\i[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[9]~35_combout\ = (\LessThan0~18_combout\ & \estado.state_decripta_seleciona_bloco~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~18_combout\,
	datad => \estado.state_decripta_seleciona_bloco~q\,
	combout => \i[9]~35_combout\);

-- Location: FF_X109_Y50_N5
\estado.state_decripta_recebe_ram\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \i[9]~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_decripta_recebe_ram~q\);

-- Location: LCCOMB_X109_Y49_N0
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\estado.state_decripta_recebe_ram~q\) # ((\estado.state_decripta_opera~q\ & !\maptundes|done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.state_decripta_recebe_ram~q\,
	datac => \estado.state_decripta_opera~q\,
	datad => \maptundes|done~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X109_Y49_N1
\estado.state_decripta_opera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_decripta_opera~q\);

-- Location: LCCOMB_X109_Y50_N24
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\estado.state_decripta_opera~q\ & \maptundes|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.state_decripta_opera~q\,
	datad => \maptundes|done~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X110_Y50_N18
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\estado.state_encripta_opera~q\ & (!\Selector14~0_combout\ & (\maptdes|done~q\ & \Selector14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_encripta_opera~q\,
	datab => \Selector14~0_combout\,
	datac => \maptdes|done~q\,
	datad => \Selector14~5_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X110_Y50_N19
\estado.state_encripta_recebe_resultado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_encripta_recebe_resultado~q\);

-- Location: LCCOMB_X109_Y50_N8
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\estado.state_encripta_recebe_resultado~q\) # ((\estado.preparacao_operacao~q\ & \encripta~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.state_encripta_recebe_resultado~q\,
	datac => \estado.preparacao_operacao~q\,
	datad => \encripta~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X109_Y50_N9
\estado.state_encripta_seleciona_bloco\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.state_encripta_seleciona_bloco~q\);

-- Location: LCCOMB_X112_Y50_N6
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\estado.pronto~q\) # ((!\LessThan0~18_combout\ & ((\estado.state_decripta_seleciona_bloco~q\) # (\estado.state_encripta_seleciona_bloco~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_decripta_seleciona_bloco~q\,
	datab => \estado.state_encripta_seleciona_bloco~q\,
	datac => \estado.pronto~q\,
	datad => \LessThan0~18_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X112_Y50_N7
\estado.pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.pronto~q\);

-- Location: LCCOMB_X112_Y50_N4
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\estado.pronto~q\) # ((\estado.state_reset~q\ & \done~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.state_reset~q\,
	datac => \done~reg0_q\,
	datad => \estado.pronto~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X112_Y50_N5
\done~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done~reg0_q\);

-- Location: IOIBUF_X58_Y0_N8
\barramentoIn[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(10),
	o => \barramentoIn[10]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\barramentoIn[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(11),
	o => \barramentoIn[11]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\barramentoIn[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(12),
	o => \barramentoIn[12]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\barramentoIn[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(13),
	o => \barramentoIn[13]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\barramentoIn[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(14),
	o => \barramentoIn[14]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\barramentoIn[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(15),
	o => \barramentoIn[15]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\barramentoIn[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(16),
	o => \barramentoIn[16]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\barramentoIn[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(17),
	o => \barramentoIn[17]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\barramentoIn[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(18),
	o => \barramentoIn[18]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\barramentoIn[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(19),
	o => \barramentoIn[19]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\barramentoIn[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(20),
	o => \barramentoIn[20]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\barramentoIn[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(21),
	o => \barramentoIn[21]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\barramentoIn[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(22),
	o => \barramentoIn[22]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\barramentoIn[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(23),
	o => \barramentoIn[23]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\barramentoIn[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(24),
	o => \barramentoIn[24]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\barramentoIn[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(25),
	o => \barramentoIn[25]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\barramentoIn[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(26),
	o => \barramentoIn[26]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\barramentoIn[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(27),
	o => \barramentoIn[27]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\barramentoIn[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(28),
	o => \barramentoIn[28]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\barramentoIn[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(29),
	o => \barramentoIn[29]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\barramentoIn[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(30),
	o => \barramentoIn[30]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\barramentoIn[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(31),
	o => \barramentoIn[31]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\barramentoIn[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(32),
	o => \barramentoIn[32]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\barramentoIn[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(33),
	o => \barramentoIn[33]~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\barramentoIn[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(34),
	o => \barramentoIn[34]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\barramentoIn[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(35),
	o => \barramentoIn[35]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\barramentoIn[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(36),
	o => \barramentoIn[36]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\barramentoIn[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(37),
	o => \barramentoIn[37]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\barramentoIn[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(38),
	o => \barramentoIn[38]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\barramentoIn[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(39),
	o => \barramentoIn[39]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\barramentoIn[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(40),
	o => \barramentoIn[40]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\barramentoIn[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(41),
	o => \barramentoIn[41]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\barramentoIn[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(42),
	o => \barramentoIn[42]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\barramentoIn[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(43),
	o => \barramentoIn[43]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\barramentoIn[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(44),
	o => \barramentoIn[44]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\barramentoIn[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(45),
	o => \barramentoIn[45]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\barramentoIn[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(46),
	o => \barramentoIn[46]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\barramentoIn[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(47),
	o => \barramentoIn[47]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\barramentoIn[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(48),
	o => \barramentoIn[48]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\barramentoIn[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(49),
	o => \barramentoIn[49]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\barramentoIn[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(50),
	o => \barramentoIn[50]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\barramentoIn[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(51),
	o => \barramentoIn[51]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\barramentoIn[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(52),
	o => \barramentoIn[52]~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\barramentoIn[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(53),
	o => \barramentoIn[53]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\barramentoIn[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(54),
	o => \barramentoIn[54]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\barramentoIn[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(55),
	o => \barramentoIn[55]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\barramentoIn[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(56),
	o => \barramentoIn[56]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\barramentoIn[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(57),
	o => \barramentoIn[57]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\barramentoIn[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(58),
	o => \barramentoIn[58]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\barramentoIn[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(59),
	o => \barramentoIn[59]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\barramentoIn[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(60),
	o => \barramentoIn[60]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\barramentoIn[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(61),
	o => \barramentoIn[61]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\barramentoIn[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(62),
	o => \barramentoIn[62]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\barramentoIn[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_barramentoIn(63),
	o => \barramentoIn[63]~input_o\);

ww_done <= \done~output_o\;
END structure;


