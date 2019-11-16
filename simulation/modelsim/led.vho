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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/16/2019 14:00:31"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	matrix_block IS
    PORT (
	clk : IN std_logic;
	b_on_off_in : IN std_logic;
	b_swich_in : IN std_logic;
	row_out : OUT std_logic_vector(31 DOWNTO 0);
	nR : OUT std_logic_vector(7 DOWNTO 0);
	nG : OUT std_logic_vector(7 DOWNTO 0);
	nB : OUT std_logic_vector(7 DOWNTO 0)
	);
END matrix_block;

-- Design Ports Information
-- b_on_off_in	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b_swich_in	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row_out[0]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[1]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[2]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[3]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[4]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[5]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[6]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[7]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[8]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[9]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[10]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[11]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[12]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[13]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[14]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[15]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[16]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[17]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[18]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[19]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[20]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[21]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[22]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[23]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[24]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[25]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[26]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[27]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[28]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[29]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[30]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row_out[31]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nR[0]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nR[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nR[2]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nR[3]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nR[4]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nR[5]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nR[6]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nR[7]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nG[0]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nG[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nG[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nG[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nG[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nG[5]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nG[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nG[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nB[0]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nB[1]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nB[2]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nB[3]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nB[4]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nB[5]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nB[6]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nB[7]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF matrix_block IS
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
SIGNAL ww_b_on_off_in : std_logic;
SIGNAL ww_b_swich_in : std_logic;
SIGNAL ww_row_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_nR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nB : std_logic_vector(7 DOWNTO 0);
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p1|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|Add0~4_combout\ : std_logic;
SIGNAL \p1|Add0~8_combout\ : std_logic;
SIGNAL \p1|Add0~26_combout\ : std_logic;
SIGNAL \p1|Add0~45\ : std_logic;
SIGNAL \p1|Add0~46_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[4]~regout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[2]~regout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[13]~regout\ : std_logic;
SIGNAL \p1|Equal0~3_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[23]~regout\ : std_logic;
SIGNAL \p1|counter~10_combout\ : std_logic;
SIGNAL \p1|counter~17_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \p1|Add0~0_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[0]~regout\ : std_logic;
SIGNAL \p1|Add0~1\ : std_logic;
SIGNAL \p1|Add0~3\ : std_logic;
SIGNAL \p1|Add0~5\ : std_logic;
SIGNAL \p1|Add0~6_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[3]~regout\ : std_logic;
SIGNAL \p1|Add0~7\ : std_logic;
SIGNAL \p1|Add0~9\ : std_logic;
SIGNAL \p1|Add0~10_combout\ : std_logic;
SIGNAL \p1|counter~8_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[5]~regout\ : std_logic;
SIGNAL \p1|Add0~11\ : std_logic;
SIGNAL \p1|Add0~13\ : std_logic;
SIGNAL \p1|Add0~14_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[7]~regout\ : std_logic;
SIGNAL \p1|Add0~15\ : std_logic;
SIGNAL \p1|Add0~16_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[8]~regout\ : std_logic;
SIGNAL \p1|Add0~17\ : std_logic;
SIGNAL \p1|Add0~18_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[9]~regout\ : std_logic;
SIGNAL \p1|Add0~19\ : std_logic;
SIGNAL \p1|Add0~20_combout\ : std_logic;
SIGNAL \p1|counter~7_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[10]~regout\ : std_logic;
SIGNAL \p1|Equal0~0_combout\ : std_logic;
SIGNAL \p1|Add0~12_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[6]~regout\ : std_logic;
SIGNAL \p1|Equal0~1_combout\ : std_logic;
SIGNAL \p1|Add0~2_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[1]~regout\ : std_logic;
SIGNAL \p1|Equal0~2_combout\ : std_logic;
SIGNAL \p1|Equal0~4_combout\ : std_logic;
SIGNAL \p1|Add0~21\ : std_logic;
SIGNAL \p1|Add0~22_combout\ : std_logic;
SIGNAL \p1|counter~6_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[11]~regout\ : std_logic;
SIGNAL \p1|Add0~23\ : std_logic;
SIGNAL \p1|Add0~24_combout\ : std_logic;
SIGNAL \p1|Add0~36_combout\ : std_logic;
SIGNAL \p1|counter~13_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[18]~regout\ : std_logic;
SIGNAL \p1|Equal0~5_combout\ : std_logic;
SIGNAL \p1|counter~9_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[12]~regout\ : std_logic;
SIGNAL \p1|Add0~25\ : std_logic;
SIGNAL \p1|Add0~27\ : std_logic;
SIGNAL \p1|Add0~28_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[14]~regout\ : std_logic;
SIGNAL \p1|Add0~29\ : std_logic;
SIGNAL \p1|Add0~30_combout\ : std_logic;
SIGNAL \p1|counter~11_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[15]~regout\ : std_logic;
SIGNAL \p1|Add0~31\ : std_logic;
SIGNAL \p1|Add0~32_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[16]~regout\ : std_logic;
SIGNAL \p1|Add0~33\ : std_logic;
SIGNAL \p1|Add0~34_combout\ : std_logic;
SIGNAL \p1|counter~12_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[17]~regout\ : std_logic;
SIGNAL \p1|Add0~35\ : std_logic;
SIGNAL \p1|Add0~37\ : std_logic;
SIGNAL \p1|Add0~38_combout\ : std_logic;
SIGNAL \p1|counter~14_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[19]~regout\ : std_logic;
SIGNAL \p1|Add0~39\ : std_logic;
SIGNAL \p1|Add0~40_combout\ : std_logic;
SIGNAL \p1|counter~15_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[20]~regout\ : std_logic;
SIGNAL \p1|Add0~41\ : std_logic;
SIGNAL \p1|Add0~43\ : std_logic;
SIGNAL \p1|Add0~44_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[22]~regout\ : std_logic;
SIGNAL \p1|Add0~42_combout\ : std_logic;
SIGNAL \p1|counter~16_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[21]~regout\ : std_logic;
SIGNAL \p1|Equal0~6_combout\ : std_logic;
SIGNAL \p1|temporal~0_combout\ : std_logic;
SIGNAL \p1|temporal~regout\ : std_logic;
SIGNAL \p1|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \p6|p1|cnt[0]~feeder_combout\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \p6|p1|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p6|p4|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p6|p4|ALT_INV_R\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_b_on_off_in <= b_on_off_in;
ww_b_swich_in <= b_swich_in;
row_out <= ww_row_out;
nR <= ww_nR;
nG <= ww_nG;
nB <= ww_nB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \p6|p1|cnt\(0);

\p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\p1|temporal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p1|temporal~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\p6|p4|ALT_INV_R\(7) <= NOT \p6|p4|R\(7);
\p6|p4|ALT_INV_R\(6) <= NOT \p6|p4|R\(6);
\p6|p4|ALT_INV_R\(5) <= NOT \p6|p4|R\(5);
\p6|p4|ALT_INV_R\(4) <= NOT \p6|p4|R\(4);
\p6|p4|ALT_INV_R\(3) <= NOT \p6|p4|R\(3);
\p6|p4|ALT_INV_R\(2) <= NOT \p6|p4|R\(2);
\p6|p4|ALT_INV_R\(1) <= NOT \p6|p4|R\(1);
\p6|p4|ALT_INV_R\(0) <= NOT \p6|p4|R\(0);

-- Location: LCCOMB_X25_Y7_N12
\p1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~4_combout\ = (\p1|frequency_divider:counter[2]~regout\ & (\p1|Add0~3\ $ (GND))) # (!\p1|frequency_divider:counter[2]~regout\ & (!\p1|Add0~3\ & VCC))
-- \p1|Add0~5\ = CARRY((\p1|frequency_divider:counter[2]~regout\ & !\p1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[2]~regout\,
	datad => VCC,
	cin => \p1|Add0~3\,
	combout => \p1|Add0~4_combout\,
	cout => \p1|Add0~5\);

-- Location: LCCOMB_X25_Y7_N16
\p1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~8_combout\ = (\p1|frequency_divider:counter[4]~regout\ & (\p1|Add0~7\ $ (GND))) # (!\p1|frequency_divider:counter[4]~regout\ & (!\p1|Add0~7\ & VCC))
-- \p1|Add0~9\ = CARRY((\p1|frequency_divider:counter[4]~regout\ & !\p1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[4]~regout\,
	datad => VCC,
	cin => \p1|Add0~7\,
	combout => \p1|Add0~8_combout\,
	cout => \p1|Add0~9\);

-- Location: LCCOMB_X25_Y6_N2
\p1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~26_combout\ = (\p1|frequency_divider:counter[13]~regout\ & (!\p1|Add0~25\)) # (!\p1|frequency_divider:counter[13]~regout\ & ((\p1|Add0~25\) # (GND)))
-- \p1|Add0~27\ = CARRY((!\p1|Add0~25\) # (!\p1|frequency_divider:counter[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[13]~regout\,
	datad => VCC,
	cin => \p1|Add0~25\,
	combout => \p1|Add0~26_combout\,
	cout => \p1|Add0~27\);

-- Location: LCCOMB_X25_Y6_N20
\p1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~44_combout\ = (\p1|frequency_divider:counter[22]~regout\ & (\p1|Add0~43\ $ (GND))) # (!\p1|frequency_divider:counter[22]~regout\ & (!\p1|Add0~43\ & VCC))
-- \p1|Add0~45\ = CARRY((\p1|frequency_divider:counter[22]~regout\ & !\p1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[22]~regout\,
	datad => VCC,
	cin => \p1|Add0~43\,
	combout => \p1|Add0~44_combout\,
	cout => \p1|Add0~45\);

-- Location: LCCOMB_X25_Y6_N22
\p1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~46_combout\ = \p1|Add0~45\ $ (\p1|frequency_divider:counter[23]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p1|frequency_divider:counter[23]~regout\,
	cin => \p1|Add0~45\,
	combout => \p1|Add0~46_combout\);

-- Location: LCFF_X25_Y7_N17
\p1|frequency_divider:counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[4]~regout\);

-- Location: LCFF_X25_Y7_N13
\p1|frequency_divider:counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[2]~regout\);

-- Location: LCFF_X24_Y6_N31
\p1|frequency_divider:counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[13]~regout\);

-- Location: LCCOMB_X24_Y6_N2
\p1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~3_combout\ = (!\p1|frequency_divider:counter[14]~regout\ & (\p1|frequency_divider:counter[13]~regout\ & (\p1|frequency_divider:counter[12]~regout\ & \p1|frequency_divider:counter[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[14]~regout\,
	datab => \p1|frequency_divider:counter[13]~regout\,
	datac => \p1|frequency_divider:counter[12]~regout\,
	datad => \p1|frequency_divider:counter[15]~regout\,
	combout => \p1|Equal0~3_combout\);

-- Location: LCFF_X25_Y6_N27
\p1|frequency_divider:counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[23]~regout\);

-- Location: LCCOMB_X24_Y6_N30
\p1|counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~10_combout\ = (\p1|Add0~26_combout\ & (((!\p1|Equal0~6_combout\) # (!\p1|Equal0~4_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|Equal0~6_combout\,
	datad => \p1|Add0~26_combout\,
	combout => \p1|counter~10_combout\);

-- Location: LCCOMB_X25_Y6_N26
\p1|counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~17_combout\ = (\p1|Add0~46_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~6_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~6_combout\,
	datac => \p1|Equal0~4_combout\,
	datad => \p1|Add0~46_combout\,
	combout => \p1|counter~17_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y7_N8
\p1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~0_combout\ = \p1|frequency_divider:counter[0]~regout\ $ (VCC)
-- \p1|Add0~1\ = CARRY(\p1|frequency_divider:counter[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[0]~regout\,
	datad => VCC,
	combout => \p1|Add0~0_combout\,
	cout => \p1|Add0~1\);

-- Location: LCFF_X25_Y7_N9
\p1|frequency_divider:counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[0]~regout\);

-- Location: LCCOMB_X25_Y7_N10
\p1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~2_combout\ = (\p1|frequency_divider:counter[1]~regout\ & (!\p1|Add0~1\)) # (!\p1|frequency_divider:counter[1]~regout\ & ((\p1|Add0~1\) # (GND)))
-- \p1|Add0~3\ = CARRY((!\p1|Add0~1\) # (!\p1|frequency_divider:counter[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[1]~regout\,
	datad => VCC,
	cin => \p1|Add0~1\,
	combout => \p1|Add0~2_combout\,
	cout => \p1|Add0~3\);

-- Location: LCCOMB_X25_Y7_N14
\p1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~6_combout\ = (\p1|frequency_divider:counter[3]~regout\ & (!\p1|Add0~5\)) # (!\p1|frequency_divider:counter[3]~regout\ & ((\p1|Add0~5\) # (GND)))
-- \p1|Add0~7\ = CARRY((!\p1|Add0~5\) # (!\p1|frequency_divider:counter[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[3]~regout\,
	datad => VCC,
	cin => \p1|Add0~5\,
	combout => \p1|Add0~6_combout\,
	cout => \p1|Add0~7\);

-- Location: LCFF_X25_Y7_N15
\p1|frequency_divider:counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[3]~regout\);

-- Location: LCCOMB_X25_Y7_N18
\p1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~10_combout\ = (\p1|frequency_divider:counter[5]~regout\ & (!\p1|Add0~9\)) # (!\p1|frequency_divider:counter[5]~regout\ & ((\p1|Add0~9\) # (GND)))
-- \p1|Add0~11\ = CARRY((!\p1|Add0~9\) # (!\p1|frequency_divider:counter[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[5]~regout\,
	datad => VCC,
	cin => \p1|Add0~9\,
	combout => \p1|Add0~10_combout\,
	cout => \p1|Add0~11\);

-- Location: LCCOMB_X25_Y7_N2
\p1|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~8_combout\ = (\p1|Add0~10_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~6_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Add0~10_combout\,
	datac => \p1|Equal0~6_combout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|counter~8_combout\);

-- Location: LCFF_X25_Y7_N3
\p1|frequency_divider:counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[5]~regout\);

-- Location: LCCOMB_X25_Y7_N20
\p1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~12_combout\ = (\p1|frequency_divider:counter[6]~regout\ & (\p1|Add0~11\ $ (GND))) # (!\p1|frequency_divider:counter[6]~regout\ & (!\p1|Add0~11\ & VCC))
-- \p1|Add0~13\ = CARRY((\p1|frequency_divider:counter[6]~regout\ & !\p1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[6]~regout\,
	datad => VCC,
	cin => \p1|Add0~11\,
	combout => \p1|Add0~12_combout\,
	cout => \p1|Add0~13\);

-- Location: LCCOMB_X25_Y7_N22
\p1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~14_combout\ = (\p1|frequency_divider:counter[7]~regout\ & (!\p1|Add0~13\)) # (!\p1|frequency_divider:counter[7]~regout\ & ((\p1|Add0~13\) # (GND)))
-- \p1|Add0~15\ = CARRY((!\p1|Add0~13\) # (!\p1|frequency_divider:counter[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[7]~regout\,
	datad => VCC,
	cin => \p1|Add0~13\,
	combout => \p1|Add0~14_combout\,
	cout => \p1|Add0~15\);

-- Location: LCFF_X25_Y7_N23
\p1|frequency_divider:counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[7]~regout\);

-- Location: LCCOMB_X25_Y7_N24
\p1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~16_combout\ = (\p1|frequency_divider:counter[8]~regout\ & (\p1|Add0~15\ $ (GND))) # (!\p1|frequency_divider:counter[8]~regout\ & (!\p1|Add0~15\ & VCC))
-- \p1|Add0~17\ = CARRY((\p1|frequency_divider:counter[8]~regout\ & !\p1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[8]~regout\,
	datad => VCC,
	cin => \p1|Add0~15\,
	combout => \p1|Add0~16_combout\,
	cout => \p1|Add0~17\);

-- Location: LCFF_X25_Y7_N25
\p1|frequency_divider:counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[8]~regout\);

-- Location: LCCOMB_X25_Y7_N26
\p1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~18_combout\ = (\p1|frequency_divider:counter[9]~regout\ & (!\p1|Add0~17\)) # (!\p1|frequency_divider:counter[9]~regout\ & ((\p1|Add0~17\) # (GND)))
-- \p1|Add0~19\ = CARRY((!\p1|Add0~17\) # (!\p1|frequency_divider:counter[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[9]~regout\,
	datad => VCC,
	cin => \p1|Add0~17\,
	combout => \p1|Add0~18_combout\,
	cout => \p1|Add0~19\);

-- Location: LCFF_X25_Y7_N27
\p1|frequency_divider:counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[9]~regout\);

-- Location: LCCOMB_X25_Y7_N28
\p1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~20_combout\ = (\p1|frequency_divider:counter[10]~regout\ & (\p1|Add0~19\ $ (GND))) # (!\p1|frequency_divider:counter[10]~regout\ & (!\p1|Add0~19\ & VCC))
-- \p1|Add0~21\ = CARRY((\p1|frequency_divider:counter[10]~regout\ & !\p1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[10]~regout\,
	datad => VCC,
	cin => \p1|Add0~19\,
	combout => \p1|Add0~20_combout\,
	cout => \p1|Add0~21\);

-- Location: LCCOMB_X25_Y7_N4
\p1|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~7_combout\ = (\p1|Add0~20_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~6_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Add0~20_combout\,
	datac => \p1|Equal0~6_combout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|counter~7_combout\);

-- Location: LCFF_X25_Y7_N5
\p1|frequency_divider:counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[10]~regout\);

-- Location: LCCOMB_X24_Y7_N18
\p1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~0_combout\ = (\p1|frequency_divider:counter[11]~regout\ & (!\p1|frequency_divider:counter[8]~regout\ & (!\p1|frequency_divider:counter[9]~regout\ & \p1|frequency_divider:counter[10]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[11]~regout\,
	datab => \p1|frequency_divider:counter[8]~regout\,
	datac => \p1|frequency_divider:counter[9]~regout\,
	datad => \p1|frequency_divider:counter[10]~regout\,
	combout => \p1|Equal0~0_combout\);

-- Location: LCFF_X25_Y7_N21
\p1|frequency_divider:counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[6]~regout\);

-- Location: LCCOMB_X25_Y7_N0
\p1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~1_combout\ = (\p1|frequency_divider:counter[4]~regout\ & (!\p1|frequency_divider:counter[5]~regout\ & (!\p1|frequency_divider:counter[6]~regout\ & !\p1|frequency_divider:counter[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[4]~regout\,
	datab => \p1|frequency_divider:counter[5]~regout\,
	datac => \p1|frequency_divider:counter[6]~regout\,
	datad => \p1|frequency_divider:counter[7]~regout\,
	combout => \p1|Equal0~1_combout\);

-- Location: LCFF_X25_Y7_N11
\p1|frequency_divider:counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[1]~regout\);

-- Location: LCCOMB_X25_Y7_N6
\p1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~2_combout\ = (\p1|frequency_divider:counter[2]~regout\ & (\p1|frequency_divider:counter[0]~regout\ & (\p1|frequency_divider:counter[3]~regout\ & \p1|frequency_divider:counter[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[2]~regout\,
	datab => \p1|frequency_divider:counter[0]~regout\,
	datac => \p1|frequency_divider:counter[3]~regout\,
	datad => \p1|frequency_divider:counter[1]~regout\,
	combout => \p1|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y6_N4
\p1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~4_combout\ = (\p1|Equal0~3_combout\ & (\p1|Equal0~0_combout\ & (\p1|Equal0~1_combout\ & \p1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~3_combout\,
	datab => \p1|Equal0~0_combout\,
	datac => \p1|Equal0~1_combout\,
	datad => \p1|Equal0~2_combout\,
	combout => \p1|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y7_N30
\p1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~22_combout\ = (\p1|frequency_divider:counter[11]~regout\ & (!\p1|Add0~21\)) # (!\p1|frequency_divider:counter[11]~regout\ & ((\p1|Add0~21\) # (GND)))
-- \p1|Add0~23\ = CARRY((!\p1|Add0~21\) # (!\p1|frequency_divider:counter[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[11]~regout\,
	datad => VCC,
	cin => \p1|Add0~21\,
	combout => \p1|Add0~22_combout\,
	cout => \p1|Add0~23\);

-- Location: LCCOMB_X24_Y7_N16
\p1|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~6_combout\ = (\p1|Add0~22_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~6_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Add0~22_combout\,
	datac => \p1|Equal0~6_combout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|counter~6_combout\);

-- Location: LCFF_X24_Y7_N17
\p1|frequency_divider:counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[11]~regout\);

-- Location: LCCOMB_X25_Y6_N0
\p1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~24_combout\ = (\p1|frequency_divider:counter[12]~regout\ & (\p1|Add0~23\ $ (GND))) # (!\p1|frequency_divider:counter[12]~regout\ & (!\p1|Add0~23\ & VCC))
-- \p1|Add0~25\ = CARRY((\p1|frequency_divider:counter[12]~regout\ & !\p1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[12]~regout\,
	datad => VCC,
	cin => \p1|Add0~23\,
	combout => \p1|Add0~24_combout\,
	cout => \p1|Add0~25\);

-- Location: LCCOMB_X25_Y6_N12
\p1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~36_combout\ = (\p1|frequency_divider:counter[18]~regout\ & (\p1|Add0~35\ $ (GND))) # (!\p1|frequency_divider:counter[18]~regout\ & (!\p1|Add0~35\ & VCC))
-- \p1|Add0~37\ = CARRY((\p1|frequency_divider:counter[18]~regout\ & !\p1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[18]~regout\,
	datad => VCC,
	cin => \p1|Add0~35\,
	combout => \p1|Add0~36_combout\,
	cout => \p1|Add0~37\);

-- Location: LCCOMB_X24_Y6_N12
\p1|counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~13_combout\ = (\p1|Add0~36_combout\ & (((!\p1|Equal0~5_combout\) # (!\p1|Equal0~4_combout\)) # (!\p1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~6_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|Add0~36_combout\,
	datad => \p1|Equal0~5_combout\,
	combout => \p1|counter~13_combout\);

-- Location: LCFF_X24_Y6_N13
\p1|frequency_divider:counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[18]~regout\);

-- Location: LCCOMB_X24_Y6_N10
\p1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~5_combout\ = (\p1|frequency_divider:counter[17]~regout\ & (\p1|frequency_divider:counter[19]~regout\ & (!\p1|frequency_divider:counter[16]~regout\ & \p1|frequency_divider:counter[18]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[17]~regout\,
	datab => \p1|frequency_divider:counter[19]~regout\,
	datac => \p1|frequency_divider:counter[16]~regout\,
	datad => \p1|frequency_divider:counter[18]~regout\,
	combout => \p1|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y6_N16
\p1|counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~9_combout\ = (\p1|Add0~24_combout\ & (((!\p1|Equal0~5_combout\) # (!\p1|Equal0~4_combout\)) # (!\p1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~6_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|Add0~24_combout\,
	datad => \p1|Equal0~5_combout\,
	combout => \p1|counter~9_combout\);

-- Location: LCFF_X24_Y6_N17
\p1|frequency_divider:counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[12]~regout\);

-- Location: LCCOMB_X25_Y6_N4
\p1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~28_combout\ = (\p1|frequency_divider:counter[14]~regout\ & (\p1|Add0~27\ $ (GND))) # (!\p1|frequency_divider:counter[14]~regout\ & (!\p1|Add0~27\ & VCC))
-- \p1|Add0~29\ = CARRY((\p1|frequency_divider:counter[14]~regout\ & !\p1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[14]~regout\,
	datad => VCC,
	cin => \p1|Add0~27\,
	combout => \p1|Add0~28_combout\,
	cout => \p1|Add0~29\);

-- Location: LCFF_X25_Y6_N5
\p1|frequency_divider:counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[14]~regout\);

-- Location: LCCOMB_X25_Y6_N6
\p1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~30_combout\ = (\p1|frequency_divider:counter[15]~regout\ & (!\p1|Add0~29\)) # (!\p1|frequency_divider:counter[15]~regout\ & ((\p1|Add0~29\) # (GND)))
-- \p1|Add0~31\ = CARRY((!\p1|Add0~29\) # (!\p1|frequency_divider:counter[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[15]~regout\,
	datad => VCC,
	cin => \p1|Add0~29\,
	combout => \p1|Add0~30_combout\,
	cout => \p1|Add0~31\);

-- Location: LCCOMB_X24_Y6_N28
\p1|counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~11_combout\ = (\p1|Add0~30_combout\ & (((!\p1|Equal0~6_combout\) # (!\p1|Equal0~4_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|Equal0~6_combout\,
	datad => \p1|Add0~30_combout\,
	combout => \p1|counter~11_combout\);

-- Location: LCFF_X24_Y6_N29
\p1|frequency_divider:counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[15]~regout\);

-- Location: LCCOMB_X25_Y6_N8
\p1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~32_combout\ = (\p1|frequency_divider:counter[16]~regout\ & (\p1|Add0~31\ $ (GND))) # (!\p1|frequency_divider:counter[16]~regout\ & (!\p1|Add0~31\ & VCC))
-- \p1|Add0~33\ = CARRY((\p1|frequency_divider:counter[16]~regout\ & !\p1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[16]~regout\,
	datad => VCC,
	cin => \p1|Add0~31\,
	combout => \p1|Add0~32_combout\,
	cout => \p1|Add0~33\);

-- Location: LCFF_X25_Y6_N9
\p1|frequency_divider:counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[16]~regout\);

-- Location: LCCOMB_X25_Y6_N10
\p1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~34_combout\ = (\p1|frequency_divider:counter[17]~regout\ & (!\p1|Add0~33\)) # (!\p1|frequency_divider:counter[17]~regout\ & ((\p1|Add0~33\) # (GND)))
-- \p1|Add0~35\ = CARRY((!\p1|Add0~33\) # (!\p1|frequency_divider:counter[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[17]~regout\,
	datad => VCC,
	cin => \p1|Add0~33\,
	combout => \p1|Add0~34_combout\,
	cout => \p1|Add0~35\);

-- Location: LCCOMB_X24_Y6_N6
\p1|counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~12_combout\ = (\p1|Add0~34_combout\ & (((!\p1|Equal0~5_combout\) # (!\p1|Equal0~4_combout\)) # (!\p1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~6_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|Add0~34_combout\,
	datad => \p1|Equal0~5_combout\,
	combout => \p1|counter~12_combout\);

-- Location: LCFF_X24_Y6_N7
\p1|frequency_divider:counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[17]~regout\);

-- Location: LCCOMB_X25_Y6_N14
\p1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~38_combout\ = (\p1|frequency_divider:counter[19]~regout\ & (!\p1|Add0~37\)) # (!\p1|frequency_divider:counter[19]~regout\ & ((\p1|Add0~37\) # (GND)))
-- \p1|Add0~39\ = CARRY((!\p1|Add0~37\) # (!\p1|frequency_divider:counter[19]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[19]~regout\,
	datad => VCC,
	cin => \p1|Add0~37\,
	combout => \p1|Add0~38_combout\,
	cout => \p1|Add0~39\);

-- Location: LCCOMB_X25_Y6_N28
\p1|counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~14_combout\ = (\p1|Add0~38_combout\ & (((!\p1|Equal0~6_combout\) # (!\p1|Equal0~4_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|Add0~38_combout\,
	datad => \p1|Equal0~6_combout\,
	combout => \p1|counter~14_combout\);

-- Location: LCFF_X25_Y6_N29
\p1|frequency_divider:counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[19]~regout\);

-- Location: LCCOMB_X25_Y6_N16
\p1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~40_combout\ = (\p1|frequency_divider:counter[20]~regout\ & (\p1|Add0~39\ $ (GND))) # (!\p1|frequency_divider:counter[20]~regout\ & (!\p1|Add0~39\ & VCC))
-- \p1|Add0~41\ = CARRY((\p1|frequency_divider:counter[20]~regout\ & !\p1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[20]~regout\,
	datad => VCC,
	cin => \p1|Add0~39\,
	combout => \p1|Add0~40_combout\,
	cout => \p1|Add0~41\);

-- Location: LCCOMB_X25_Y6_N30
\p1|counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~15_combout\ = (\p1|Add0~40_combout\ & (((!\p1|Equal0~6_combout\) # (!\p1|Equal0~4_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|Add0~40_combout\,
	datad => \p1|Equal0~6_combout\,
	combout => \p1|counter~15_combout\);

-- Location: LCFF_X25_Y6_N31
\p1|frequency_divider:counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[20]~regout\);

-- Location: LCCOMB_X25_Y6_N18
\p1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~42_combout\ = (\p1|frequency_divider:counter[21]~regout\ & (!\p1|Add0~41\)) # (!\p1|frequency_divider:counter[21]~regout\ & ((\p1|Add0~41\) # (GND)))
-- \p1|Add0~43\ = CARRY((!\p1|Add0~41\) # (!\p1|frequency_divider:counter[21]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[21]~regout\,
	datad => VCC,
	cin => \p1|Add0~41\,
	combout => \p1|Add0~42_combout\,
	cout => \p1|Add0~43\);

-- Location: LCFF_X25_Y6_N21
\p1|frequency_divider:counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[22]~regout\);

-- Location: LCCOMB_X25_Y6_N24
\p1|counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~16_combout\ = (\p1|Add0~42_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~6_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~6_combout\,
	datac => \p1|Equal0~4_combout\,
	datad => \p1|Add0~42_combout\,
	combout => \p1|counter~16_combout\);

-- Location: LCFF_X25_Y6_N25
\p1|frequency_divider:counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[21]~regout\);

-- Location: LCCOMB_X24_Y6_N24
\p1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~6_combout\ = (\p1|frequency_divider:counter[23]~regout\ & (!\p1|frequency_divider:counter[22]~regout\ & (\p1|frequency_divider:counter[21]~regout\ & \p1|frequency_divider:counter[20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[23]~regout\,
	datab => \p1|frequency_divider:counter[22]~regout\,
	datac => \p1|frequency_divider:counter[21]~regout\,
	datad => \p1|frequency_divider:counter[20]~regout\,
	combout => \p1|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y6_N18
\p1|temporal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|temporal~0_combout\ = \p1|temporal~regout\ $ (((\p1|Equal0~5_combout\ & (\p1|Equal0~6_combout\ & \p1|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~6_combout\,
	datac => \p1|temporal~regout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|temporal~0_combout\);

-- Location: LCFF_X32_Y6_N19
\p1|temporal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|temporal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|temporal~regout\);

-- Location: CLKCTRL_G13
\p1|temporal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p1|temporal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p1|temporal~clkctrl_outclk\);

-- Location: LCCOMB_X53_Y26_N24
\p6|p1|cnt[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|cnt[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \p6|p1|cnt[0]~feeder_combout\);

-- Location: LCFF_X53_Y26_N25
\p6|p1|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|temporal~clkctrl_outclk\,
	datain => \p6|p1|cnt[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p6|p1|cnt\(0));

-- Location: M4K_X52_Y26
\p6|p2|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"92AE",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/led.ram0_simple_dual_port_ram_single_clock_c2af7d2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "matrix_cntr:p6|simple_dual_port_ram_single_clock:p2|altsyncram:ram_rtl_0|altsyncram_d191:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 1,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \p1|temporal~clkctrl_outclk\,
	portaaddr => \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X53_Y26_N18
\p6|p4|R[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(0) = (\p6|p1|cnt\(0) & \p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|cnt\(0),
	datad => \p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \p6|p4|R\(0));

-- Location: LCCOMB_X53_Y26_N12
\p6|p4|R[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(1) = (\p6|p1|cnt\(0) & \p6|p2|ram_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|cnt\(0),
	datad => \p6|p2|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \p6|p4|R\(1));

-- Location: LCCOMB_X53_Y26_N6
\p6|p4|R[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(2) = (\p6|p1|cnt\(0) & \p6|p2|ram_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|cnt\(0),
	datad => \p6|p2|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \p6|p4|R\(2));

-- Location: LCCOMB_X53_Y26_N16
\p6|p4|R[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(3) = (\p6|p1|cnt\(0) & \p6|p2|ram_rtl_0|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|cnt\(0),
	datad => \p6|p2|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \p6|p4|R\(3));

-- Location: LCCOMB_X53_Y26_N10
\p6|p4|R[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(4) = (\p6|p1|cnt\(0) & \p6|p2|ram_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|cnt\(0),
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \p6|p4|R\(4));

-- Location: LCCOMB_X53_Y26_N28
\p6|p4|R[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(5) = (\p6|p1|cnt\(0) & \p6|p2|ram_rtl_0|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|cnt\(0),
	datad => \p6|p2|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \p6|p4|R\(5));

-- Location: LCCOMB_X53_Y26_N22
\p6|p4|R[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(6) = (\p6|p1|cnt\(0) & \p6|p2|ram_rtl_0|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|cnt\(0),
	datad => \p6|p2|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \p6|p4|R\(6));

-- Location: LCCOMB_X53_Y26_N0
\p6|p4|R[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(7) = (\p6|p1|cnt\(0) & \p6|p2|ram_rtl_0|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|cnt\(0),
	datad => \p6|p2|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \p6|p4|R\(7));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b_on_off_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b_on_off_in);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b_swich_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b_swich_in);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \p6|p1|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(0));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(1));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(2));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(3));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(4));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(5));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(6));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(7));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(8));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(9));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(10));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(11));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(12));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(13));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(14));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(15));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(16));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(17));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(18));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(19));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(20));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(21));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(22));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(23));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(24));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(25));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(26));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(27));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(28));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(29));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(30));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row_out[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row_out(31));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \p6|p4|ALT_INV_R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nR(0));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \p6|p4|ALT_INV_R\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nR(1));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \p6|p4|ALT_INV_R\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nR(2));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \p6|p4|ALT_INV_R\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nR(3));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \p6|p4|ALT_INV_R\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nR(4));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \p6|p4|ALT_INV_R\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nR(5));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \p6|p4|ALT_INV_R\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nR(6));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \p6|p4|ALT_INV_R\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nR(7));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nG(0));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nG(1));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nG(2));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nG(3));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nG(4));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nG(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nG(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nG(7));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(0));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(1));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(2));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(3));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nB[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(4));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nB[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(5));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nB[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(6));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nB[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(7));
END structure;


