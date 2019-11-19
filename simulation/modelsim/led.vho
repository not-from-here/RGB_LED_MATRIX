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

-- DATE "11/19/2019 13:46:21"

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
	clkX : OUT std_logic;
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
-- clkX	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL ww_clkX : std_logic;
SIGNAL ww_nB : std_logic_vector(7 DOWNTO 0);
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p6|p4|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p6|p1|Add1~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|Add0~0_combout\ : std_logic;
SIGNAL \p1|Add0~4_combout\ : std_logic;
SIGNAL \p1|Add0~8_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[4]~regout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[0]~regout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[2]~regout\ : std_logic;
SIGNAL \p1|Equal0~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \p6|p1|cnt[1]~6_combout\ : std_logic;
SIGNAL \p6|p1|cnt[1]~7\ : std_logic;
SIGNAL \p6|p1|cnt[2]~8_combout\ : std_logic;
SIGNAL \p6|p1|cnt[0]~18_combout\ : std_logic;
SIGNAL \p6|p1|Add1~1\ : std_logic;
SIGNAL \p6|p1|Add1~3\ : std_logic;
SIGNAL \p6|p1|Add1~4_combout\ : std_logic;
SIGNAL \p6|p3|Equal3~0_combout\ : std_logic;
SIGNAL \p6|p1|cnt[2]~9\ : std_logic;
SIGNAL \p6|p1|cnt[3]~10_combout\ : std_logic;
SIGNAL \p6|p1|cnt[3]~11\ : std_logic;
SIGNAL \p6|p1|cnt[4]~13\ : std_logic;
SIGNAL \p6|p1|cnt[5]~14_combout\ : std_logic;
SIGNAL \p6|p1|cnt[5]~15\ : std_logic;
SIGNAL \p6|p1|cnt[6]~16_combout\ : std_logic;
SIGNAL \p6|p1|Add1~5\ : std_logic;
SIGNAL \p6|p1|Add1~7\ : std_logic;
SIGNAL \p6|p1|Add1~9\ : std_logic;
SIGNAL \p6|p1|Add1~11\ : std_logic;
SIGNAL \p6|p1|Add1~12_combout\ : std_logic;
SIGNAL \p6|p1|Add1~8_combout\ : std_logic;
SIGNAL \p6|p1|Add1~10_combout\ : std_logic;
SIGNAL \p6|p3|Equal31~0_combout\ : std_logic;
SIGNAL \p6|p1|Add1~6_combout\ : std_logic;
SIGNAL \p6|p3|Equal12~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal30~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal1~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal29~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal0~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal28~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal27~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal2~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal26~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal25~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal24~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal23~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal6~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal22~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal21~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal20~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal19~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal18~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal17~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal16~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal15~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal14~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal13~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal12~1_combout\ : std_logic;
SIGNAL \p6|p3|Equal11~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal10~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal9~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal8~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal7~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal6~1_combout\ : std_logic;
SIGNAL \p6|p3|Equal5~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal4~0_combout\ : std_logic;
SIGNAL \p6|p3|Equal3~1_combout\ : std_logic;
SIGNAL \p6|p3|Equal2~1_combout\ : std_logic;
SIGNAL \p6|p3|Equal1~1_combout\ : std_logic;
SIGNAL \p6|p3|Equal0~1_combout\ : std_logic;
SIGNAL \p1|Add0~37\ : std_logic;
SIGNAL \p1|Add0~38_combout\ : std_logic;
SIGNAL \p1|counter~11_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[19]~regout\ : std_logic;
SIGNAL \p1|Add0~39\ : std_logic;
SIGNAL \p1|Add0~40_combout\ : std_logic;
SIGNAL \p1|counter~9_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[20]~regout\ : std_logic;
SIGNAL \p1|Add0~1\ : std_logic;
SIGNAL \p1|Add0~2_combout\ : std_logic;
SIGNAL \p1|counter~3_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[1]~regout\ : std_logic;
SIGNAL \p1|Add0~3\ : std_logic;
SIGNAL \p1|Add0~5\ : std_logic;
SIGNAL \p1|Add0~6_combout\ : std_logic;
SIGNAL \p1|counter~2_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[3]~regout\ : std_logic;
SIGNAL \p1|Add0~7\ : std_logic;
SIGNAL \p1|Add0~9\ : std_logic;
SIGNAL \p1|Add0~11\ : std_logic;
SIGNAL \p1|Add0~12_combout\ : std_logic;
SIGNAL \p1|counter~0_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[6]~regout\ : std_logic;
SIGNAL \p1|Add0~13\ : std_logic;
SIGNAL \p1|Add0~14_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[7]~regout\ : std_logic;
SIGNAL \p1|Add0~15\ : std_logic;
SIGNAL \p1|Add0~16_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[8]~regout\ : std_logic;
SIGNAL \p1|Add0~17\ : std_logic;
SIGNAL \p1|Add0~19\ : std_logic;
SIGNAL \p1|Add0~20_combout\ : std_logic;
SIGNAL \p1|counter~5_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[10]~regout\ : std_logic;
SIGNAL \p1|Add0~21\ : std_logic;
SIGNAL \p1|Add0~22_combout\ : std_logic;
SIGNAL \p1|counter~6_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[11]~regout\ : std_logic;
SIGNAL \p1|Add0~23\ : std_logic;
SIGNAL \p1|Add0~24_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[12]~regout\ : std_logic;
SIGNAL \p1|Add0~25\ : std_logic;
SIGNAL \p1|Add0~26_combout\ : std_logic;
SIGNAL \p1|counter~7_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[13]~regout\ : std_logic;
SIGNAL \p1|Add0~27\ : std_logic;
SIGNAL \p1|Add0~29\ : std_logic;
SIGNAL \p1|Add0~31\ : std_logic;
SIGNAL \p1|Add0~32_combout\ : std_logic;
SIGNAL \p1|counter~10_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[16]~regout\ : std_logic;
SIGNAL \p1|Add0~33\ : std_logic;
SIGNAL \p1|Add0~34_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[17]~regout\ : std_logic;
SIGNAL \p1|Add0~35\ : std_logic;
SIGNAL \p1|Add0~36_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[18]~regout\ : std_logic;
SIGNAL \p1|Equal0~5_combout\ : std_logic;
SIGNAL \p1|Add0~28_combout\ : std_logic;
SIGNAL \p1|counter~8_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[14]~regout\ : std_logic;
SIGNAL \p1|Add0~30_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[15]~regout\ : std_logic;
SIGNAL \p1|Equal0~3_combout\ : std_logic;
SIGNAL \p1|Add0~10_combout\ : std_logic;
SIGNAL \p1|counter~1_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[5]~regout\ : std_logic;
SIGNAL \p1|Equal0~0_combout\ : std_logic;
SIGNAL \p1|Add0~18_combout\ : std_logic;
SIGNAL \p1|counter~4_combout\ : std_logic;
SIGNAL \p1|frequency_divider:counter[9]~regout\ : std_logic;
SIGNAL \p1|Equal0~2_combout\ : std_logic;
SIGNAL \p1|Equal0~4_combout\ : std_logic;
SIGNAL \p1|temporal~0_combout\ : std_logic;
SIGNAL \p1|temporal~regout\ : std_logic;
SIGNAL \p1|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \p6|p1|cnt[4]~12_combout\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \p6|p1|Add1~2_combout\ : std_logic;
SIGNAL \p6|p1|Add1~0_combout\ : std_logic;
SIGNAL \p6|p4|Equal0~0_combout\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \p6|p4|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \p6|p4|R[6]~0_combout\ : std_logic;
SIGNAL \p6|p4|comb~0_combout\ : std_logic;
SIGNAL \p6|p4|B[7]~3_combout\ : std_logic;
SIGNAL \p6|p4|R[7]~1_combout\ : std_logic;
SIGNAL \p6|p4|Equal2~0_combout\ : std_logic;
SIGNAL \p6|p4|G[0]~5_combout\ : std_logic;
SIGNAL \p6|p1|Add1~2clkctrl_outclk\ : std_logic;
SIGNAL \p6|p4|G[0]~8_combout\ : std_logic;
SIGNAL \p6|p4|G[1]~6_combout\ : std_logic;
SIGNAL \p6|p4|G[1]~9_combout\ : std_logic;
SIGNAL \p6|p4|G[2]~7_combout\ : std_logic;
SIGNAL \p6|p4|G[2]~10_combout\ : std_logic;
SIGNAL \p6|p4|G[3]~0_combout\ : std_logic;
SIGNAL \p6|p4|G[4]~1_combout\ : std_logic;
SIGNAL \p6|p4|G[5]~2_combout\ : std_logic;
SIGNAL \p6|p4|G[6]~3_combout\ : std_logic;
SIGNAL \p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \p6|p4|G[7]~4_combout\ : std_logic;
SIGNAL \p6|p4|B[3]~0_combout\ : std_logic;
SIGNAL \p6|p4|B[4]~1_combout\ : std_logic;
SIGNAL \p6|p4|B[5]~2_combout\ : std_logic;
SIGNAL \p6|p4|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p6|p4|G\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p6|p4|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p6|p1|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p6|p4|ALT_INV_G\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \p6|p4|ALT_INV_R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p6|p4|ALT_INV_B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p6|p4|ALT_INV_B[5]~2_combout\ : std_logic;
SIGNAL \p6|p4|ALT_INV_B[4]~1_combout\ : std_logic;
SIGNAL \p6|p4|ALT_INV_B[3]~0_combout\ : std_logic;
SIGNAL \p6|p4|ALT_INV_G[7]~4_combout\ : std_logic;
SIGNAL \p6|p4|ALT_INV_G[6]~3_combout\ : std_logic;
SIGNAL \p6|p4|ALT_INV_G[5]~2_combout\ : std_logic;
SIGNAL \p6|p4|ALT_INV_G[4]~1_combout\ : std_logic;
SIGNAL \p6|p4|ALT_INV_G[3]~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_b_on_off_in <= b_on_off_in;
ww_b_swich_in <= b_swich_in;
row_out <= ww_row_out;
nR <= ww_nR;
nG <= ww_nG;
clkX <= ww_clkX;
nB <= ww_nB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\p6|p1|cnt\(6) & \p6|p1|cnt\(5) & \p6|p1|cnt\(4) & \p6|p1|cnt\(3) & \p6|p1|cnt\(2) & \p6|p1|cnt\(1) & \p6|p1|cnt\(0));

\p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ <= \p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\p6|p4|Equal0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p6|p4|Equal0~0_combout\);

\p6|p1|Add1~2clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p6|p1|Add1~2_combout\);

\p1|temporal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p1|temporal~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\p6|p4|ALT_INV_G\(2) <= NOT \p6|p4|G\(2);
\p6|p4|ALT_INV_G\(1) <= NOT \p6|p4|G\(1);
\p6|p4|ALT_INV_G\(0) <= NOT \p6|p4|G\(0);
\p6|p4|ALT_INV_R\(7) <= NOT \p6|p4|R\(7);
\p6|p4|ALT_INV_R\(6) <= NOT \p6|p4|R\(6);
\p6|p4|ALT_INV_R\(5) <= NOT \p6|p4|R\(5);
\p6|p4|ALT_INV_R\(4) <= NOT \p6|p4|R\(4);
\p6|p4|ALT_INV_R\(3) <= NOT \p6|p4|R\(3);
\p6|p4|ALT_INV_R\(2) <= NOT \p6|p4|R\(2);
\p6|p4|ALT_INV_R\(1) <= NOT \p6|p4|R\(1);
\p6|p4|ALT_INV_R\(0) <= NOT \p6|p4|R\(0);
\p6|p4|ALT_INV_B\(7) <= NOT \p6|p4|B\(7);
\p6|p4|ALT_INV_B\(6) <= NOT \p6|p4|B\(6);
\p6|p4|ALT_INV_B[5]~2_combout\ <= NOT \p6|p4|B[5]~2_combout\;
\p6|p4|ALT_INV_B[4]~1_combout\ <= NOT \p6|p4|B[4]~1_combout\;
\p6|p4|ALT_INV_B[3]~0_combout\ <= NOT \p6|p4|B[3]~0_combout\;
\p6|p4|ALT_INV_B\(2) <= NOT \p6|p4|B\(2);
\p6|p4|ALT_INV_B\(1) <= NOT \p6|p4|B\(1);
\p6|p4|ALT_INV_B\(0) <= NOT \p6|p4|B\(0);
\p6|p4|ALT_INV_G[7]~4_combout\ <= NOT \p6|p4|G[7]~4_combout\;
\p6|p4|ALT_INV_G[6]~3_combout\ <= NOT \p6|p4|G[6]~3_combout\;
\p6|p4|ALT_INV_G[5]~2_combout\ <= NOT \p6|p4|G[5]~2_combout\;
\p6|p4|ALT_INV_G[4]~1_combout\ <= NOT \p6|p4|G[4]~1_combout\;
\p6|p4|ALT_INV_G[3]~0_combout\ <= NOT \p6|p4|G[3]~0_combout\;

-- Location: LCCOMB_X63_Y35_N12
\p1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~0_combout\ = \p1|frequency_divider:counter[0]~regout\ $ (VCC)
-- \p1|Add0~1\ = CARRY(\p1|frequency_divider:counter[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[0]~regout\,
	datad => VCC,
	combout => \p1|Add0~0_combout\,
	cout => \p1|Add0~1\);

-- Location: LCCOMB_X63_Y35_N16
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

-- Location: LCCOMB_X63_Y35_N20
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

-- Location: LCFF_X63_Y35_N21
\p1|frequency_divider:counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[4]~regout\);

-- Location: LCFF_X63_Y35_N13
\p1|frequency_divider:counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[0]~regout\);

-- Location: LCFF_X63_Y35_N17
\p1|frequency_divider:counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[2]~regout\);

-- Location: LCCOMB_X63_Y35_N8
\p1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~1_combout\ = (\p1|frequency_divider:counter[0]~regout\ & (!\p1|frequency_divider:counter[1]~regout\ & (!\p1|frequency_divider:counter[2]~regout\ & \p1|frequency_divider:counter[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[0]~regout\,
	datab => \p1|frequency_divider:counter[1]~regout\,
	datac => \p1|frequency_divider:counter[2]~regout\,
	datad => \p1|frequency_divider:counter[3]~regout\,
	combout => \p1|Equal0~1_combout\);

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

-- Location: LCCOMB_X56_Y26_N18
\p6|p1|cnt[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|cnt[1]~6_combout\ = (\p6|p1|cnt\(0) & (\p6|p1|cnt\(1) $ (VCC))) # (!\p6|p1|cnt\(0) & (\p6|p1|cnt\(1) & VCC))
-- \p6|p1|cnt[1]~7\ = CARRY((\p6|p1|cnt\(0) & \p6|p1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|cnt\(0),
	datab => \p6|p1|cnt\(1),
	datad => VCC,
	combout => \p6|p1|cnt[1]~6_combout\,
	cout => \p6|p1|cnt[1]~7\);

-- Location: LCFF_X56_Y26_N19
\p6|p1|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|temporal~clkctrl_outclk\,
	datain => \p6|p1|cnt[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p6|p1|cnt\(1));

-- Location: LCCOMB_X56_Y26_N20
\p6|p1|cnt[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|cnt[2]~8_combout\ = (\p6|p1|cnt\(2) & (!\p6|p1|cnt[1]~7\)) # (!\p6|p1|cnt\(2) & ((\p6|p1|cnt[1]~7\) # (GND)))
-- \p6|p1|cnt[2]~9\ = CARRY((!\p6|p1|cnt[1]~7\) # (!\p6|p1|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|cnt\(2),
	datad => VCC,
	cin => \p6|p1|cnt[1]~7\,
	combout => \p6|p1|cnt[2]~8_combout\,
	cout => \p6|p1|cnt[2]~9\);

-- Location: LCFF_X56_Y26_N21
\p6|p1|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|temporal~clkctrl_outclk\,
	datain => \p6|p1|cnt[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p6|p1|cnt\(2));

-- Location: LCCOMB_X56_Y26_N16
\p6|p1|cnt[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|cnt[0]~18_combout\ = !\p6|p1|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|cnt\(0),
	combout => \p6|p1|cnt[0]~18_combout\);

-- Location: LCFF_X56_Y26_N17
\p6|p1|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|temporal~clkctrl_outclk\,
	datain => \p6|p1|cnt[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p6|p1|cnt\(0));

-- Location: LCCOMB_X56_Y26_N2
\p6|p1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|Add1~0_combout\ = \p6|p1|cnt\(0) $ (VCC)
-- \p6|p1|Add1~1\ = CARRY(\p6|p1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|cnt\(0),
	datad => VCC,
	combout => \p6|p1|Add1~0_combout\,
	cout => \p6|p1|Add1~1\);

-- Location: LCCOMB_X56_Y26_N4
\p6|p1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|Add1~2_combout\ = (\p6|p1|cnt\(1) & (\p6|p1|Add1~1\ & VCC)) # (!\p6|p1|cnt\(1) & (!\p6|p1|Add1~1\))
-- \p6|p1|Add1~3\ = CARRY((!\p6|p1|cnt\(1) & !\p6|p1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|cnt\(1),
	datad => VCC,
	cin => \p6|p1|Add1~1\,
	combout => \p6|p1|Add1~2_combout\,
	cout => \p6|p1|Add1~3\);

-- Location: LCCOMB_X56_Y26_N6
\p6|p1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|Add1~4_combout\ = (\p6|p1|cnt\(2) & ((GND) # (!\p6|p1|Add1~3\))) # (!\p6|p1|cnt\(2) & (\p6|p1|Add1~3\ $ (GND)))
-- \p6|p1|Add1~5\ = CARRY((\p6|p1|cnt\(2)) # (!\p6|p1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|cnt\(2),
	datad => VCC,
	cin => \p6|p1|Add1~3\,
	combout => \p6|p1|Add1~4_combout\,
	cout => \p6|p1|Add1~5\);

-- Location: LCCOMB_X64_Y22_N12
\p6|p3|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal3~0_combout\ = (!\p6|p1|Add1~6_combout\ & !\p6|p1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datad => \p6|p1|Add1~4_combout\,
	combout => \p6|p3|Equal3~0_combout\);

-- Location: LCCOMB_X56_Y26_N22
\p6|p1|cnt[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|cnt[3]~10_combout\ = (\p6|p1|cnt\(3) & (\p6|p1|cnt[2]~9\ $ (GND))) # (!\p6|p1|cnt\(3) & (!\p6|p1|cnt[2]~9\ & VCC))
-- \p6|p1|cnt[3]~11\ = CARRY((\p6|p1|cnt\(3) & !\p6|p1|cnt[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|cnt\(3),
	datad => VCC,
	cin => \p6|p1|cnt[2]~9\,
	combout => \p6|p1|cnt[3]~10_combout\,
	cout => \p6|p1|cnt[3]~11\);

-- Location: LCFF_X56_Y26_N23
\p6|p1|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|temporal~clkctrl_outclk\,
	datain => \p6|p1|cnt[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p6|p1|cnt\(3));

-- Location: LCCOMB_X56_Y26_N24
\p6|p1|cnt[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|cnt[4]~12_combout\ = (\p6|p1|cnt\(4) & (!\p6|p1|cnt[3]~11\)) # (!\p6|p1|cnt\(4) & ((\p6|p1|cnt[3]~11\) # (GND)))
-- \p6|p1|cnt[4]~13\ = CARRY((!\p6|p1|cnt[3]~11\) # (!\p6|p1|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|cnt\(4),
	datad => VCC,
	cin => \p6|p1|cnt[3]~11\,
	combout => \p6|p1|cnt[4]~12_combout\,
	cout => \p6|p1|cnt[4]~13\);

-- Location: LCCOMB_X56_Y26_N26
\p6|p1|cnt[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|cnt[5]~14_combout\ = (\p6|p1|cnt\(5) & (\p6|p1|cnt[4]~13\ $ (GND))) # (!\p6|p1|cnt\(5) & (!\p6|p1|cnt[4]~13\ & VCC))
-- \p6|p1|cnt[5]~15\ = CARRY((\p6|p1|cnt\(5) & !\p6|p1|cnt[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|cnt\(5),
	datad => VCC,
	cin => \p6|p1|cnt[4]~13\,
	combout => \p6|p1|cnt[5]~14_combout\,
	cout => \p6|p1|cnt[5]~15\);

-- Location: LCFF_X56_Y26_N27
\p6|p1|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|temporal~clkctrl_outclk\,
	datain => \p6|p1|cnt[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p6|p1|cnt\(5));

-- Location: LCCOMB_X56_Y26_N28
\p6|p1|cnt[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|cnt[6]~16_combout\ = \p6|p1|cnt[5]~15\ $ (\p6|p1|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p6|p1|cnt\(6),
	cin => \p6|p1|cnt[5]~15\,
	combout => \p6|p1|cnt[6]~16_combout\);

-- Location: LCFF_X56_Y26_N29
\p6|p1|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|temporal~clkctrl_outclk\,
	datain => \p6|p1|cnt[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p6|p1|cnt\(6));

-- Location: LCCOMB_X56_Y26_N8
\p6|p1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|Add1~6_combout\ = (\p6|p1|cnt\(3) & (\p6|p1|Add1~5\ & VCC)) # (!\p6|p1|cnt\(3) & (!\p6|p1|Add1~5\))
-- \p6|p1|Add1~7\ = CARRY((!\p6|p1|cnt\(3) & !\p6|p1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|cnt\(3),
	datad => VCC,
	cin => \p6|p1|Add1~5\,
	combout => \p6|p1|Add1~6_combout\,
	cout => \p6|p1|Add1~7\);

-- Location: LCCOMB_X56_Y26_N10
\p6|p1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|Add1~8_combout\ = (\p6|p1|cnt\(4) & ((GND) # (!\p6|p1|Add1~7\))) # (!\p6|p1|cnt\(4) & (\p6|p1|Add1~7\ $ (GND)))
-- \p6|p1|Add1~9\ = CARRY((\p6|p1|cnt\(4)) # (!\p6|p1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|cnt\(4),
	datad => VCC,
	cin => \p6|p1|Add1~7\,
	combout => \p6|p1|Add1~8_combout\,
	cout => \p6|p1|Add1~9\);

-- Location: LCCOMB_X56_Y26_N12
\p6|p1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|Add1~10_combout\ = (\p6|p1|cnt\(5) & (\p6|p1|Add1~9\ & VCC)) # (!\p6|p1|cnt\(5) & (!\p6|p1|Add1~9\))
-- \p6|p1|Add1~11\ = CARRY((!\p6|p1|cnt\(5) & !\p6|p1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|cnt\(5),
	datad => VCC,
	cin => \p6|p1|Add1~9\,
	combout => \p6|p1|Add1~10_combout\,
	cout => \p6|p1|Add1~11\);

-- Location: LCCOMB_X56_Y26_N14
\p6|p1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p1|Add1~12_combout\ = \p6|p1|Add1~11\ $ (\p6|p1|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p6|p1|cnt\(6),
	cin => \p6|p1|Add1~11\,
	combout => \p6|p1|Add1~12_combout\);

-- Location: LCCOMB_X64_Y25_N0
\p6|p3|Equal31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal31~0_combout\ = (\p6|p3|Equal3~0_combout\ & (!\p6|p1|Add1~12_combout\ & (!\p6|p1|Add1~8_combout\ & !\p6|p1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p3|Equal3~0_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p1|Add1~8_combout\,
	datad => \p6|p1|Add1~10_combout\,
	combout => \p6|p3|Equal31~0_combout\);

-- Location: LCCOMB_X64_Y21_N24
\p6|p3|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal12~0_combout\ = (!\p6|p1|Add1~8_combout\ & !\p6|p1|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~10_combout\,
	combout => \p6|p3|Equal12~0_combout\);

-- Location: LCCOMB_X64_Y22_N22
\p6|p3|Equal30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal30~0_combout\ = (!\p6|p1|Add1~6_combout\ & (!\p6|p1|Add1~12_combout\ & (\p6|p3|Equal12~0_combout\ & \p6|p1|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p3|Equal12~0_combout\,
	datad => \p6|p1|Add1~4_combout\,
	combout => \p6|p3|Equal30~0_combout\);

-- Location: LCCOMB_X64_Y22_N28
\p6|p3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal1~0_combout\ = (\p6|p1|Add1~6_combout\ & !\p6|p1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datad => \p6|p1|Add1~4_combout\,
	combout => \p6|p3|Equal1~0_combout\);

-- Location: LCCOMB_X64_Y25_N10
\p6|p3|Equal29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal29~0_combout\ = (!\p6|p1|Add1~8_combout\ & (!\p6|p1|Add1~10_combout\ & (\p6|p3|Equal1~0_combout\ & !\p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~8_combout\,
	datab => \p6|p1|Add1~10_combout\,
	datac => \p6|p3|Equal1~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal29~0_combout\);

-- Location: LCCOMB_X64_Y22_N26
\p6|p3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal0~0_combout\ = (\p6|p1|Add1~6_combout\ & \p6|p1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datad => \p6|p1|Add1~4_combout\,
	combout => \p6|p3|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y25_N24
\p6|p3|Equal28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal28~0_combout\ = (\p6|p3|Equal0~0_combout\ & (!\p6|p1|Add1~12_combout\ & (!\p6|p1|Add1~8_combout\ & !\p6|p1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p3|Equal0~0_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p1|Add1~8_combout\,
	datad => \p6|p1|Add1~10_combout\,
	combout => \p6|p3|Equal28~0_combout\);

-- Location: LCCOMB_X64_Y25_N22
\p6|p3|Equal27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal27~0_combout\ = (\p6|p3|Equal3~0_combout\ & (!\p6|p1|Add1~12_combout\ & (\p6|p1|Add1~8_combout\ & !\p6|p1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p3|Equal3~0_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p1|Add1~8_combout\,
	datad => \p6|p1|Add1~10_combout\,
	combout => \p6|p3|Equal27~0_combout\);

-- Location: LCCOMB_X64_Y22_N20
\p6|p3|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal2~0_combout\ = (\p6|p1|Add1~8_combout\ & \p6|p1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|Add1~8_combout\,
	datad => \p6|p1|Add1~4_combout\,
	combout => \p6|p3|Equal2~0_combout\);

-- Location: LCCOMB_X64_Y22_N2
\p6|p3|Equal26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal26~0_combout\ = (!\p6|p1|Add1~6_combout\ & (!\p6|p1|Add1~10_combout\ & (\p6|p3|Equal2~0_combout\ & !\p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datab => \p6|p1|Add1~10_combout\,
	datac => \p6|p3|Equal2~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal26~0_combout\);

-- Location: LCCOMB_X64_Y25_N20
\p6|p3|Equal25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal25~0_combout\ = (\p6|p1|Add1~8_combout\ & (!\p6|p1|Add1~10_combout\ & (\p6|p3|Equal1~0_combout\ & !\p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~8_combout\,
	datab => \p6|p1|Add1~10_combout\,
	datac => \p6|p3|Equal1~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal25~0_combout\);

-- Location: LCCOMB_X64_Y25_N2
\p6|p3|Equal24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal24~0_combout\ = (\p6|p3|Equal0~0_combout\ & (!\p6|p1|Add1~12_combout\ & (\p6|p1|Add1~8_combout\ & !\p6|p1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p3|Equal0~0_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p1|Add1~8_combout\,
	datad => \p6|p1|Add1~10_combout\,
	combout => \p6|p3|Equal24~0_combout\);

-- Location: LCCOMB_X64_Y21_N10
\p6|p3|Equal23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal23~0_combout\ = (!\p6|p1|Add1~12_combout\ & (!\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~10_combout\ & \p6|p3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~12_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~10_combout\,
	datad => \p6|p3|Equal3~0_combout\,
	combout => \p6|p3|Equal23~0_combout\);

-- Location: LCCOMB_X64_Y22_N24
\p6|p3|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal6~0_combout\ = (\p6|p1|Add1~10_combout\ & (!\p6|p1|Add1~8_combout\ & \p6|p1|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~10_combout\,
	datac => \p6|p1|Add1~8_combout\,
	datad => \p6|p1|Add1~4_combout\,
	combout => \p6|p3|Equal6~0_combout\);

-- Location: LCCOMB_X64_Y22_N10
\p6|p3|Equal22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal22~0_combout\ = (!\p6|p1|Add1~6_combout\ & (!\p6|p1|Add1~12_combout\ & \p6|p3|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p3|Equal6~0_combout\,
	combout => \p6|p3|Equal22~0_combout\);

-- Location: LCCOMB_X64_Y21_N8
\p6|p3|Equal21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal21~0_combout\ = (\p6|p1|Add1~10_combout\ & (!\p6|p1|Add1~8_combout\ & (\p6|p3|Equal1~0_combout\ & !\p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p3|Equal1~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal21~0_combout\);

-- Location: LCCOMB_X64_Y21_N26
\p6|p3|Equal20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal20~0_combout\ = (\p6|p1|Add1~10_combout\ & (!\p6|p1|Add1~8_combout\ & (!\p6|p1|Add1~12_combout\ & \p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~12_combout\,
	datad => \p6|p3|Equal0~0_combout\,
	combout => \p6|p3|Equal20~0_combout\);

-- Location: LCCOMB_X64_Y21_N12
\p6|p3|Equal19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal19~0_combout\ = (!\p6|p1|Add1~12_combout\ & (\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~10_combout\ & \p6|p3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~12_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~10_combout\,
	datad => \p6|p3|Equal3~0_combout\,
	combout => \p6|p3|Equal19~0_combout\);

-- Location: LCCOMB_X64_Y22_N4
\p6|p3|Equal18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal18~0_combout\ = (!\p6|p1|Add1~6_combout\ & (\p6|p1|Add1~10_combout\ & (\p6|p3|Equal2~0_combout\ & !\p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datab => \p6|p1|Add1~10_combout\,
	datac => \p6|p3|Equal2~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal18~0_combout\);

-- Location: LCCOMB_X64_Y21_N18
\p6|p3|Equal17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal17~0_combout\ = (\p6|p1|Add1~10_combout\ & (\p6|p1|Add1~8_combout\ & (\p6|p3|Equal1~0_combout\ & !\p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p3|Equal1~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal17~0_combout\);

-- Location: LCCOMB_X64_Y21_N4
\p6|p3|Equal16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal16~0_combout\ = (\p6|p1|Add1~10_combout\ & (\p6|p1|Add1~8_combout\ & (!\p6|p1|Add1~12_combout\ & \p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~12_combout\,
	datad => \p6|p3|Equal0~0_combout\,
	combout => \p6|p3|Equal16~0_combout\);

-- Location: LCCOMB_X64_Y22_N14
\p6|p3|Equal15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal15~0_combout\ = (!\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~12_combout\ & (!\p6|p1|Add1~10_combout\ & \p6|p3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~8_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p1|Add1~10_combout\,
	datad => \p6|p3|Equal3~0_combout\,
	combout => \p6|p3|Equal15~0_combout\);

-- Location: LCCOMB_X64_Y22_N0
\p6|p3|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal14~0_combout\ = (!\p6|p1|Add1~6_combout\ & (\p6|p1|Add1~12_combout\ & (\p6|p3|Equal12~0_combout\ & \p6|p1|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p3|Equal12~0_combout\,
	datad => \p6|p1|Add1~4_combout\,
	combout => \p6|p3|Equal14~0_combout\);

-- Location: LCCOMB_X64_Y22_N30
\p6|p3|Equal13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal13~0_combout\ = (!\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~12_combout\ & (!\p6|p1|Add1~10_combout\ & \p6|p3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~8_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p1|Add1~10_combout\,
	datad => \p6|p3|Equal1~0_combout\,
	combout => \p6|p3|Equal13~0_combout\);

-- Location: LCCOMB_X64_Y22_N16
\p6|p3|Equal12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal12~1_combout\ = (!\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~12_combout\ & (!\p6|p1|Add1~10_combout\ & \p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~8_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p1|Add1~10_combout\,
	datad => \p6|p3|Equal0~0_combout\,
	combout => \p6|p3|Equal12~1_combout\);

-- Location: LCCOMB_X64_Y21_N30
\p6|p3|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal11~0_combout\ = (\p6|p1|Add1~12_combout\ & (\p6|p1|Add1~8_combout\ & (!\p6|p1|Add1~10_combout\ & \p6|p3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~12_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~10_combout\,
	datad => \p6|p3|Equal3~0_combout\,
	combout => \p6|p3|Equal11~0_combout\);

-- Location: LCCOMB_X64_Y22_N6
\p6|p3|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal10~0_combout\ = (!\p6|p1|Add1~6_combout\ & (!\p6|p1|Add1~10_combout\ & (\p6|p3|Equal2~0_combout\ & \p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datab => \p6|p1|Add1~10_combout\,
	datac => \p6|p3|Equal2~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal10~0_combout\);

-- Location: LCCOMB_X64_Y21_N0
\p6|p3|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal9~0_combout\ = (!\p6|p1|Add1~10_combout\ & (\p6|p1|Add1~8_combout\ & (\p6|p3|Equal1~0_combout\ & \p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p3|Equal1~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal9~0_combout\);

-- Location: LCCOMB_X64_Y21_N14
\p6|p3|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal8~0_combout\ = (!\p6|p1|Add1~10_combout\ & (\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~12_combout\ & \p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~12_combout\,
	datad => \p6|p3|Equal0~0_combout\,
	combout => \p6|p3|Equal8~0_combout\);

-- Location: LCCOMB_X64_Y21_N16
\p6|p3|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal7~0_combout\ = (\p6|p1|Add1~12_combout\ & (!\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~10_combout\ & \p6|p3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~12_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~10_combout\,
	datad => \p6|p3|Equal3~0_combout\,
	combout => \p6|p3|Equal7~0_combout\);

-- Location: LCCOMB_X64_Y22_N8
\p6|p3|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal6~1_combout\ = (!\p6|p1|Add1~6_combout\ & (\p6|p1|Add1~12_combout\ & \p6|p3|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datab => \p6|p1|Add1~12_combout\,
	datac => \p6|p3|Equal6~0_combout\,
	combout => \p6|p3|Equal6~1_combout\);

-- Location: LCCOMB_X64_Y21_N6
\p6|p3|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal5~0_combout\ = (\p6|p1|Add1~10_combout\ & (!\p6|p1|Add1~8_combout\ & (\p6|p3|Equal1~0_combout\ & \p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p3|Equal1~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal5~0_combout\);

-- Location: LCCOMB_X64_Y21_N28
\p6|p3|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal4~0_combout\ = (\p6|p1|Add1~10_combout\ & (!\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~12_combout\ & \p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~12_combout\,
	datad => \p6|p3|Equal0~0_combout\,
	combout => \p6|p3|Equal4~0_combout\);

-- Location: LCCOMB_X64_Y21_N2
\p6|p3|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal3~1_combout\ = (\p6|p1|Add1~12_combout\ & (\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~10_combout\ & \p6|p3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~12_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~10_combout\,
	datad => \p6|p3|Equal3~0_combout\,
	combout => \p6|p3|Equal3~1_combout\);

-- Location: LCCOMB_X64_Y22_N18
\p6|p3|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal2~1_combout\ = (!\p6|p1|Add1~6_combout\ & (\p6|p1|Add1~10_combout\ & (\p6|p3|Equal2~0_combout\ & \p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~6_combout\,
	datab => \p6|p1|Add1~10_combout\,
	datac => \p6|p3|Equal2~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal2~1_combout\);

-- Location: LCCOMB_X64_Y21_N20
\p6|p3|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal1~1_combout\ = (\p6|p1|Add1~10_combout\ & (\p6|p1|Add1~8_combout\ & (\p6|p3|Equal1~0_combout\ & \p6|p1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p3|Equal1~0_combout\,
	datad => \p6|p1|Add1~12_combout\,
	combout => \p6|p3|Equal1~1_combout\);

-- Location: LCCOMB_X64_Y21_N22
\p6|p3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p3|Equal0~1_combout\ = (\p6|p1|Add1~10_combout\ & (\p6|p1|Add1~8_combout\ & (\p6|p1|Add1~12_combout\ & \p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~10_combout\,
	datab => \p6|p1|Add1~8_combout\,
	datac => \p6|p1|Add1~12_combout\,
	datad => \p6|p3|Equal0~0_combout\,
	combout => \p6|p3|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y34_N16
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

-- Location: LCCOMB_X63_Y34_N18
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

-- Location: LCCOMB_X63_Y34_N26
\p1|counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~11_combout\ = (\p1|Add0~38_combout\ & (((!\p1|Equal0~5_combout\) # (!\p1|frequency_divider:counter[20]~regout\)) # (!\p1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~4_combout\,
	datab => \p1|frequency_divider:counter[20]~regout\,
	datac => \p1|Equal0~5_combout\,
	datad => \p1|Add0~38_combout\,
	combout => \p1|counter~11_combout\);

-- Location: LCFF_X63_Y34_N27
\p1|frequency_divider:counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[19]~regout\);

-- Location: LCCOMB_X63_Y34_N20
\p1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~40_combout\ = \p1|Add0~39\ $ (!\p1|frequency_divider:counter[20]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p1|frequency_divider:counter[20]~regout\,
	cin => \p1|Add0~39\,
	combout => \p1|Add0~40_combout\);

-- Location: LCCOMB_X63_Y34_N22
\p1|counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~9_combout\ = (\p1|Add0~40_combout\ & (((!\p1|frequency_divider:counter[20]~regout\) # (!\p1|Equal0~5_combout\)) # (!\p1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~4_combout\,
	datab => \p1|Equal0~5_combout\,
	datac => \p1|frequency_divider:counter[20]~regout\,
	datad => \p1|Add0~40_combout\,
	combout => \p1|counter~9_combout\);

-- Location: LCFF_X63_Y34_N23
\p1|frequency_divider:counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[20]~regout\);

-- Location: LCCOMB_X63_Y35_N14
\p1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~2_combout\ = (\p1|frequency_divider:counter[1]~regout\ & (!\p1|Add0~1\)) # (!\p1|frequency_divider:counter[1]~regout\ & ((\p1|Add0~1\) # (GND)))
-- \p1|Add0~3\ = CARRY((!\p1|Add0~1\) # (!\p1|frequency_divider:counter[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[1]~regout\,
	datad => VCC,
	cin => \p1|Add0~1\,
	combout => \p1|Add0~2_combout\,
	cout => \p1|Add0~3\);

-- Location: LCCOMB_X63_Y35_N2
\p1|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~3_combout\ = (\p1|Add0~2_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~5_combout\)) # (!\p1|frequency_divider:counter[20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[20]~regout\,
	datab => \p1|Equal0~5_combout\,
	datac => \p1|Add0~2_combout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|counter~3_combout\);

-- Location: LCFF_X63_Y35_N3
\p1|frequency_divider:counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[1]~regout\);

-- Location: LCCOMB_X63_Y35_N18
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

-- Location: LCCOMB_X63_Y35_N0
\p1|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~2_combout\ = (\p1|Add0~6_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~5_combout\)) # (!\p1|frequency_divider:counter[20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[20]~regout\,
	datab => \p1|Add0~6_combout\,
	datac => \p1|Equal0~5_combout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|counter~2_combout\);

-- Location: LCFF_X63_Y35_N1
\p1|frequency_divider:counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[3]~regout\);

-- Location: LCCOMB_X63_Y35_N22
\p1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~10_combout\ = (\p1|frequency_divider:counter[5]~regout\ & (!\p1|Add0~9\)) # (!\p1|frequency_divider:counter[5]~regout\ & ((\p1|Add0~9\) # (GND)))
-- \p1|Add0~11\ = CARRY((!\p1|Add0~9\) # (!\p1|frequency_divider:counter[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[5]~regout\,
	datad => VCC,
	cin => \p1|Add0~9\,
	combout => \p1|Add0~10_combout\,
	cout => \p1|Add0~11\);

-- Location: LCCOMB_X63_Y35_N24
\p1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~12_combout\ = (\p1|frequency_divider:counter[6]~regout\ & (\p1|Add0~11\ $ (GND))) # (!\p1|frequency_divider:counter[6]~regout\ & (!\p1|Add0~11\ & VCC))
-- \p1|Add0~13\ = CARRY((\p1|frequency_divider:counter[6]~regout\ & !\p1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[6]~regout\,
	datad => VCC,
	cin => \p1|Add0~11\,
	combout => \p1|Add0~12_combout\,
	cout => \p1|Add0~13\);

-- Location: LCCOMB_X63_Y35_N4
\p1|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~0_combout\ = (\p1|Add0~12_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~5_combout\)) # (!\p1|frequency_divider:counter[20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[20]~regout\,
	datab => \p1|Equal0~5_combout\,
	datac => \p1|Add0~12_combout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|counter~0_combout\);

-- Location: LCFF_X63_Y35_N5
\p1|frequency_divider:counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[6]~regout\);

-- Location: LCCOMB_X63_Y35_N26
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

-- Location: LCFF_X63_Y35_N27
\p1|frequency_divider:counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[7]~regout\);

-- Location: LCCOMB_X63_Y35_N28
\p1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~16_combout\ = (\p1|frequency_divider:counter[8]~regout\ & (\p1|Add0~15\ $ (GND))) # (!\p1|frequency_divider:counter[8]~regout\ & (!\p1|Add0~15\ & VCC))
-- \p1|Add0~17\ = CARRY((\p1|frequency_divider:counter[8]~regout\ & !\p1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[8]~regout\,
	datad => VCC,
	cin => \p1|Add0~15\,
	combout => \p1|Add0~16_combout\,
	cout => \p1|Add0~17\);

-- Location: LCFF_X63_Y35_N29
\p1|frequency_divider:counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[8]~regout\);

-- Location: LCCOMB_X63_Y35_N30
\p1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~18_combout\ = (\p1|frequency_divider:counter[9]~regout\ & (!\p1|Add0~17\)) # (!\p1|frequency_divider:counter[9]~regout\ & ((\p1|Add0~17\) # (GND)))
-- \p1|Add0~19\ = CARRY((!\p1|Add0~17\) # (!\p1|frequency_divider:counter[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[9]~regout\,
	datad => VCC,
	cin => \p1|Add0~17\,
	combout => \p1|Add0~18_combout\,
	cout => \p1|Add0~19\);

-- Location: LCCOMB_X63_Y34_N0
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

-- Location: LCCOMB_X64_Y34_N10
\p1|counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~5_combout\ = (\p1|Add0~20_combout\ & (((!\p1|frequency_divider:counter[20]~regout\) # (!\p1|Equal0~4_combout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|Add0~20_combout\,
	datad => \p1|frequency_divider:counter[20]~regout\,
	combout => \p1|counter~5_combout\);

-- Location: LCFF_X64_Y34_N11
\p1|frequency_divider:counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[10]~regout\);

-- Location: LCCOMB_X63_Y34_N2
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

-- Location: LCCOMB_X64_Y34_N14
\p1|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~6_combout\ = (\p1|Add0~22_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|frequency_divider:counter[20]~regout\)) # (!\p1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|frequency_divider:counter[20]~regout\,
	datac => \p1|Equal0~4_combout\,
	datad => \p1|Add0~22_combout\,
	combout => \p1|counter~6_combout\);

-- Location: LCFF_X64_Y34_N15
\p1|frequency_divider:counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[11]~regout\);

-- Location: LCCOMB_X63_Y34_N4
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

-- Location: LCFF_X63_Y34_N5
\p1|frequency_divider:counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[12]~regout\);

-- Location: LCCOMB_X63_Y34_N6
\p1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~26_combout\ = (\p1|frequency_divider:counter[13]~regout\ & (!\p1|Add0~25\)) # (!\p1|frequency_divider:counter[13]~regout\ & ((\p1|Add0~25\) # (GND)))
-- \p1|Add0~27\ = CARRY((!\p1|Add0~25\) # (!\p1|frequency_divider:counter[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|frequency_divider:counter[13]~regout\,
	datad => VCC,
	cin => \p1|Add0~25\,
	combout => \p1|Add0~26_combout\,
	cout => \p1|Add0~27\);

-- Location: LCCOMB_X63_Y34_N30
\p1|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~7_combout\ = (\p1|Add0~26_combout\ & (((!\p1|Equal0~5_combout\) # (!\p1|frequency_divider:counter[20]~regout\)) # (!\p1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~4_combout\,
	datab => \p1|frequency_divider:counter[20]~regout\,
	datac => \p1|Equal0~5_combout\,
	datad => \p1|Add0~26_combout\,
	combout => \p1|counter~7_combout\);

-- Location: LCFF_X63_Y34_N31
\p1|frequency_divider:counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[13]~regout\);

-- Location: LCCOMB_X63_Y34_N8
\p1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~28_combout\ = (\p1|frequency_divider:counter[14]~regout\ & (\p1|Add0~27\ $ (GND))) # (!\p1|frequency_divider:counter[14]~regout\ & (!\p1|Add0~27\ & VCC))
-- \p1|Add0~29\ = CARRY((\p1|frequency_divider:counter[14]~regout\ & !\p1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[14]~regout\,
	datad => VCC,
	cin => \p1|Add0~27\,
	combout => \p1|Add0~28_combout\,
	cout => \p1|Add0~29\);

-- Location: LCCOMB_X63_Y34_N10
\p1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Add0~30_combout\ = (\p1|frequency_divider:counter[15]~regout\ & (!\p1|Add0~29\)) # (!\p1|frequency_divider:counter[15]~regout\ & ((\p1|Add0~29\) # (GND)))
-- \p1|Add0~31\ = CARRY((!\p1|Add0~29\) # (!\p1|frequency_divider:counter[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[15]~regout\,
	datad => VCC,
	cin => \p1|Add0~29\,
	combout => \p1|Add0~30_combout\,
	cout => \p1|Add0~31\);

-- Location: LCCOMB_X63_Y34_N12
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

-- Location: LCCOMB_X63_Y34_N28
\p1|counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~10_combout\ = (\p1|Add0~32_combout\ & (((!\p1|Equal0~5_combout\) # (!\p1|frequency_divider:counter[20]~regout\)) # (!\p1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~4_combout\,
	datab => \p1|frequency_divider:counter[20]~regout\,
	datac => \p1|Equal0~5_combout\,
	datad => \p1|Add0~32_combout\,
	combout => \p1|counter~10_combout\);

-- Location: LCFF_X63_Y34_N29
\p1|frequency_divider:counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[16]~regout\);

-- Location: LCCOMB_X63_Y34_N14
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

-- Location: LCFF_X63_Y34_N15
\p1|frequency_divider:counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[17]~regout\);

-- Location: LCFF_X63_Y34_N17
\p1|frequency_divider:counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[18]~regout\);

-- Location: LCCOMB_X64_Y34_N12
\p1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~5_combout\ = (!\p1|frequency_divider:counter[17]~regout\ & (!\p1|frequency_divider:counter[18]~regout\ & (\p1|frequency_divider:counter[19]~regout\ & \p1|frequency_divider:counter[16]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[17]~regout\,
	datab => \p1|frequency_divider:counter[18]~regout\,
	datac => \p1|frequency_divider:counter[19]~regout\,
	datad => \p1|frequency_divider:counter[16]~regout\,
	combout => \p1|Equal0~5_combout\);

-- Location: LCCOMB_X63_Y34_N24
\p1|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~8_combout\ = (\p1|Add0~28_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~5_combout\)) # (!\p1|frequency_divider:counter[20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[20]~regout\,
	datab => \p1|Equal0~5_combout\,
	datac => \p1|Add0~28_combout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|counter~8_combout\);

-- Location: LCFF_X63_Y34_N25
\p1|frequency_divider:counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[14]~regout\);

-- Location: LCFF_X63_Y34_N11
\p1|frequency_divider:counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[15]~regout\);

-- Location: LCCOMB_X64_Y34_N26
\p1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~3_combout\ = (\p1|frequency_divider:counter[13]~regout\ & (\p1|frequency_divider:counter[14]~regout\ & (!\p1|frequency_divider:counter[12]~regout\ & !\p1|frequency_divider:counter[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[13]~regout\,
	datab => \p1|frequency_divider:counter[14]~regout\,
	datac => \p1|frequency_divider:counter[12]~regout\,
	datad => \p1|frequency_divider:counter[15]~regout\,
	combout => \p1|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y35_N6
\p1|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~1_combout\ = (\p1|Add0~10_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~5_combout\)) # (!\p1|frequency_divider:counter[20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[20]~regout\,
	datab => \p1|Add0~10_combout\,
	datac => \p1|Equal0~5_combout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|counter~1_combout\);

-- Location: LCFF_X63_Y35_N7
\p1|frequency_divider:counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[5]~regout\);

-- Location: LCCOMB_X64_Y35_N16
\p1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~0_combout\ = (!\p1|frequency_divider:counter[4]~regout\ & (\p1|frequency_divider:counter[5]~regout\ & (\p1|frequency_divider:counter[6]~regout\ & !\p1|frequency_divider:counter[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[4]~regout\,
	datab => \p1|frequency_divider:counter[5]~regout\,
	datac => \p1|frequency_divider:counter[6]~regout\,
	datad => \p1|frequency_divider:counter[7]~regout\,
	combout => \p1|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y35_N10
\p1|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|counter~4_combout\ = (\p1|Add0~18_combout\ & (((!\p1|Equal0~4_combout\) # (!\p1|Equal0~5_combout\)) # (!\p1|frequency_divider:counter[20]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[20]~regout\,
	datab => \p1|Add0~18_combout\,
	datac => \p1|Equal0~5_combout\,
	datad => \p1|Equal0~4_combout\,
	combout => \p1|counter~4_combout\);

-- Location: LCFF_X63_Y35_N11
\p1|frequency_divider:counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|frequency_divider:counter[9]~regout\);

-- Location: LCCOMB_X64_Y34_N6
\p1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~2_combout\ = (\p1|frequency_divider:counter[10]~regout\ & (\p1|frequency_divider:counter[9]~regout\ & (\p1|frequency_divider:counter[11]~regout\ & !\p1|frequency_divider:counter[8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|frequency_divider:counter[10]~regout\,
	datab => \p1|frequency_divider:counter[9]~regout\,
	datac => \p1|frequency_divider:counter[11]~regout\,
	datad => \p1|frequency_divider:counter[8]~regout\,
	combout => \p1|Equal0~2_combout\);

-- Location: LCCOMB_X64_Y34_N4
\p1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|Equal0~4_combout\ = (\p1|Equal0~1_combout\ & (\p1|Equal0~3_combout\ & (\p1|Equal0~0_combout\ & \p1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~1_combout\,
	datab => \p1|Equal0~3_combout\,
	datac => \p1|Equal0~0_combout\,
	datad => \p1|Equal0~2_combout\,
	combout => \p1|Equal0~4_combout\);

-- Location: LCCOMB_X64_Y34_N0
\p1|temporal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|temporal~0_combout\ = \p1|temporal~regout\ $ (((\p1|Equal0~5_combout\ & (\p1|Equal0~4_combout\ & \p1|frequency_divider:counter[20]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|Equal0~5_combout\,
	datab => \p1|Equal0~4_combout\,
	datac => \p1|temporal~regout\,
	datad => \p1|frequency_divider:counter[20]~regout\,
	combout => \p1|temporal~0_combout\);

-- Location: LCFF_X64_Y34_N1
\p1|temporal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|temporal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|temporal~regout\);

-- Location: CLKCTRL_G5
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

-- Location: LCFF_X56_Y26_N25
\p6|p1|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|temporal~clkctrl_outclk\,
	datain => \p6|p1|cnt[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p6|p1|cnt\(4));

-- Location: M4K_X52_Y26
\p6|p2|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000008140201008040281814020100804028181402010080402818140201008040281FF40201008040201A05020100804020080402010080402018040201008040200FF40201008040201FF50201008040200FF40201008040201FF50201008040200",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/led.ram0_simple_dual_port_ram_single_clock_c2af7d2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "matrix_cntr:p6|simple_dual_port_ram_single_clock:p2|altsyncram:ram_rtl_0|altsyncram_d191:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
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

-- Location: LCCOMB_X64_Y26_N4
\p6|p4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|Equal0~0_combout\ = (\p6|p1|Add1~2_combout\) # (\p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p1|Add1~2_combout\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y25_N12
\p6|p4|R[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(0) = (\p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\p6|p4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \p6|p4|Equal0~0_combout\,
	datad => \p6|p4|R\(0),
	combout => \p6|p4|R\(0));

-- Location: LCCOMB_X64_Y26_N26
\p6|p4|R[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(1) = (!\p6|p4|Equal0~0_combout\ & \p6|p2|ram_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|Equal0~0_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \p6|p4|R\(1),
	combout => \p6|p4|R\(1));

-- Location: LCCOMB_X64_Y26_N12
\p6|p4|R[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(2) = (!\p6|p4|Equal0~0_combout\ & \p6|p2|ram_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|Equal0~0_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \p6|p4|R\(2),
	combout => \p6|p4|R\(2));

-- Location: LCCOMB_X64_Y26_N18
\p6|p4|R[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(3) = (!\p6|p4|Equal0~0_combout\ & \p6|p2|ram_rtl_0|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|Equal0~0_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \p6|p4|R\(3),
	combout => \p6|p4|R\(3));

-- Location: LCCOMB_X64_Y26_N28
\p6|p4|R[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(4) = (!\p6|p4|Equal0~0_combout\ & \p6|p2|ram_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|Equal0~0_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \p6|p4|R\(4),
	combout => \p6|p4|R\(4));

-- Location: LCCOMB_X64_Y26_N10
\p6|p4|R[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(5) = (!\p6|p4|Equal0~0_combout\ & \p6|p2|ram_rtl_0|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|Equal0~0_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \p6|p4|R\(5),
	combout => \p6|p4|R\(5));

-- Location: CLKCTRL_G6
\p6|p4|Equal0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p6|p4|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p6|p4|Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X63_Y26_N10
\p6|p4|R[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R[6]~0_combout\ = (GLOBAL(\p6|p4|Equal0~0clkctrl_outclk\) & ((\p6|p4|R\(6)))) # (!GLOBAL(\p6|p4|Equal0~0clkctrl_outclk\) & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p2|ram_rtl_0|auto_generated|ram_block1a6\,
	datac => \p6|p4|Equal0~0clkctrl_outclk\,
	datad => \p6|p4|R\(6),
	combout => \p6|p4|R[6]~0_combout\);

-- Location: LCCOMB_X63_Y26_N16
\p6|p4|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|comb~0_combout\ = \p6|p1|Add1~2_combout\ $ (!\p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~2_combout\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|comb~0_combout\);

-- Location: LCCOMB_X63_Y26_N2
\p6|p4|B[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|B[7]~3_combout\ = (!\p6|p1|Add1~0_combout\) # (!\p6|p1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~2_combout\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|B[7]~3_combout\);

-- Location: LCCOMB_X63_Y26_N12
\p6|p4|R[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(6) = (\p6|p4|comb~0_combout\ & ((\p6|p4|R[6]~0_combout\) # (!\p6|p4|B[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p4|R[6]~0_combout\,
	datac => \p6|p4|comb~0_combout\,
	datad => \p6|p4|B[7]~3_combout\,
	combout => \p6|p4|R\(6));

-- Location: LCCOMB_X63_Y26_N18
\p6|p4|R[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R[7]~1_combout\ = (GLOBAL(\p6|p4|Equal0~0clkctrl_outclk\) & ((\p6|p4|R\(7)))) # (!GLOBAL(\p6|p4|Equal0~0clkctrl_outclk\) & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p2|ram_rtl_0|auto_generated|ram_block1a7\,
	datac => \p6|p4|Equal0~0clkctrl_outclk\,
	datad => \p6|p4|R\(7),
	combout => \p6|p4|R[7]~1_combout\);

-- Location: LCCOMB_X63_Y26_N28
\p6|p4|R[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|R\(7) = (\p6|p4|comb~0_combout\ & ((\p6|p4|R[7]~1_combout\) # (!\p6|p4|B[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|R[7]~1_combout\,
	datac => \p6|p4|comb~0_combout\,
	datad => \p6|p4|B[7]~3_combout\,
	combout => \p6|p4|R\(7));

-- Location: LCCOMB_X64_Y27_N0
\p6|p4|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|Equal2~0_combout\ = (\p6|p1|Add1~2_combout\ & !\p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~2_combout\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|Equal2~0_combout\);

-- Location: LCCOMB_X64_Y27_N2
\p6|p4|G[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[0]~5_combout\ = (\p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & \p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|G[0]~5_combout\);

-- Location: CLKCTRL_G4
\p6|p1|Add1~2clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p6|p1|Add1~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p6|p1|Add1~2clkctrl_outclk\);

-- Location: LCCOMB_X64_Y27_N12
\p6|p4|G[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[0]~8_combout\ = (GLOBAL(\p6|p1|Add1~2clkctrl_outclk\) & ((\p6|p4|G\(0)))) # (!GLOBAL(\p6|p1|Add1~2clkctrl_outclk\) & (\p6|p4|G[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|G[0]~5_combout\,
	datac => \p6|p1|Add1~2clkctrl_outclk\,
	datad => \p6|p4|G\(0),
	combout => \p6|p4|G[0]~8_combout\);

-- Location: LCCOMB_X64_Y27_N10
\p6|p4|G[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G\(0) = (!\p6|p4|Equal2~0_combout\ & ((\p6|p4|G[0]~8_combout\) # (!\p6|p4|B[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|Equal2~0_combout\,
	datac => \p6|p4|B[7]~3_combout\,
	datad => \p6|p4|G[0]~8_combout\,
	combout => \p6|p4|G\(0));

-- Location: LCCOMB_X64_Y26_N2
\p6|p4|G[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[1]~6_combout\ = (\p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ & \p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|G[1]~6_combout\);

-- Location: LCCOMB_X64_Y27_N28
\p6|p4|G[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[1]~9_combout\ = (GLOBAL(\p6|p1|Add1~2clkctrl_outclk\) & ((\p6|p4|G\(1)))) # (!GLOBAL(\p6|p1|Add1~2clkctrl_outclk\) & (\p6|p4|G[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|G[1]~6_combout\,
	datac => \p6|p1|Add1~2clkctrl_outclk\,
	datad => \p6|p4|G\(1),
	combout => \p6|p4|G[1]~9_combout\);

-- Location: LCCOMB_X64_Y27_N26
\p6|p4|G[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G\(1) = (!\p6|p4|Equal2~0_combout\ & ((\p6|p4|G[1]~9_combout\) # (!\p6|p4|B[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|Equal2~0_combout\,
	datac => \p6|p4|B[7]~3_combout\,
	datad => \p6|p4|G[1]~9_combout\,
	combout => \p6|p4|G\(1));

-- Location: LCCOMB_X64_Y26_N0
\p6|p4|G[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[2]~7_combout\ = (\p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ & \p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|G[2]~7_combout\);

-- Location: LCCOMB_X64_Y27_N24
\p6|p4|G[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[2]~10_combout\ = (GLOBAL(\p6|p1|Add1~2clkctrl_outclk\) & ((\p6|p4|G\(2)))) # (!GLOBAL(\p6|p1|Add1~2clkctrl_outclk\) & (\p6|p4|G[2]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p4|G[2]~7_combout\,
	datac => \p6|p1|Add1~2clkctrl_outclk\,
	datad => \p6|p4|G\(2),
	combout => \p6|p4|G[2]~10_combout\);

-- Location: LCCOMB_X64_Y27_N22
\p6|p4|G[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G\(2) = (!\p6|p4|Equal2~0_combout\ & ((\p6|p4|G[2]~10_combout\) # (!\p6|p4|B[7]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p4|G[2]~10_combout\,
	datab => \p6|p4|Equal2~0_combout\,
	datac => \p6|p4|B[7]~3_combout\,
	combout => \p6|p4|G\(2));

-- Location: LCCOMB_X64_Y26_N8
\p6|p4|G[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[3]~0_combout\ = (!\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ & \p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|G[3]~0_combout\);

-- Location: LCCOMB_X64_Y26_N22
\p6|p4|G[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[4]~1_combout\ = (!\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ & \p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|G[4]~1_combout\);

-- Location: LCCOMB_X64_Y26_N24
\p6|p4|G[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[5]~2_combout\ = (!\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ & \p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|G[5]~2_combout\);

-- Location: LCCOMB_X63_Y26_N24
\p6|p4|G[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[6]~3_combout\ = (!\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ & \p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|G[6]~3_combout\);

-- Location: LCCOMB_X63_Y26_N26
\p6|p4|G[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|G[7]~4_combout\ = (!\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ & \p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|G[7]~4_combout\);

-- Location: LCCOMB_X64_Y27_N16
\p6|p4|B[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|B\(0) = (\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|B\(0));

-- Location: LCCOMB_X64_Y26_N6
\p6|p4|B[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|B\(1) = (\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ & !\p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|B\(1));

-- Location: LCCOMB_X64_Y26_N16
\p6|p4|B[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|B\(2) = (\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ & !\p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|B\(2));

-- Location: LCCOMB_X64_Y26_N30
\p6|p4|B[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|B[3]~0_combout\ = (\p6|p1|Add1~2_combout\ & ((\p6|p2|ram_rtl_0|auto_generated|ram_block1a3\) # (\p6|p1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|B[3]~0_combout\);

-- Location: LCCOMB_X64_Y26_N20
\p6|p4|B[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|B[4]~1_combout\ = (\p6|p1|Add1~2_combout\ & ((\p6|p2|ram_rtl_0|auto_generated|ram_block1a4\) # (\p6|p1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|B[4]~1_combout\);

-- Location: LCCOMB_X64_Y26_N14
\p6|p4|B[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|B[5]~2_combout\ = (\p6|p1|Add1~2_combout\ & ((\p6|p2|ram_rtl_0|auto_generated|ram_block1a5\) # (\p6|p1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|B[5]~2_combout\);

-- Location: LCCOMB_X63_Y26_N0
\p6|p4|B[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|B\(6) = (\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ & !\p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|B\(6));

-- Location: LCCOMB_X63_Y26_N22
\p6|p4|B[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p6|p4|B\(7) = (\p6|p1|Add1~2_combout\ & (\p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ & !\p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p6|p1|Add1~2_combout\,
	datac => \p6|p2|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \p6|p1|Add1~0_combout\,
	combout => \p6|p4|B\(7));

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
	datain => \p6|p3|Equal31~0_combout\,
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
	datain => \p6|p3|Equal30~0_combout\,
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
	datain => \p6|p3|Equal29~0_combout\,
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
	datain => \p6|p3|Equal28~0_combout\,
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
	datain => \p6|p3|Equal27~0_combout\,
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
	datain => \p6|p3|Equal26~0_combout\,
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
	datain => \p6|p3|Equal25~0_combout\,
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
	datain => \p6|p3|Equal24~0_combout\,
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
	datain => \p6|p3|Equal23~0_combout\,
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
	datain => \p6|p3|Equal22~0_combout\,
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
	datain => \p6|p3|Equal21~0_combout\,
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
	datain => \p6|p3|Equal20~0_combout\,
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
	datain => \p6|p3|Equal19~0_combout\,
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
	datain => \p6|p3|Equal18~0_combout\,
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
	datain => \p6|p3|Equal17~0_combout\,
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
	datain => \p6|p3|Equal16~0_combout\,
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
	datain => \p6|p3|Equal15~0_combout\,
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
	datain => \p6|p3|Equal14~0_combout\,
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
	datain => \p6|p3|Equal13~0_combout\,
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
	datain => \p6|p3|Equal12~1_combout\,
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
	datain => \p6|p3|Equal11~0_combout\,
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
	datain => \p6|p3|Equal10~0_combout\,
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
	datain => \p6|p3|Equal9~0_combout\,
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
	datain => \p6|p3|Equal8~0_combout\,
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
	datain => \p6|p3|Equal7~0_combout\,
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
	datain => \p6|p3|Equal6~1_combout\,
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
	datain => \p6|p3|Equal5~0_combout\,
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
	datain => \p6|p3|Equal4~0_combout\,
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
	datain => \p6|p3|Equal3~1_combout\,
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
	datain => \p6|p3|Equal2~1_combout\,
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
	datain => \p6|p3|Equal1~1_combout\,
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
	datain => \p6|p3|Equal0~1_combout\,
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
	datain => \p6|p4|ALT_INV_G\(0),
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
	datain => \p6|p4|ALT_INV_G\(1),
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
	datain => \p6|p4|ALT_INV_G\(2),
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
	datain => \p6|p4|ALT_INV_G[3]~0_combout\,
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
	datain => \p6|p4|ALT_INV_G[4]~1_combout\,
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
	datain => \p6|p4|ALT_INV_G[5]~2_combout\,
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
	datain => \p6|p4|ALT_INV_G[6]~3_combout\,
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
	datain => \p6|p4|ALT_INV_G[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nG(7));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clkX~I\ : cycloneii_io
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
	datain => \p1|temporal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clkX);

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
	datain => \p6|p4|ALT_INV_B\(0),
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
	datain => \p6|p4|ALT_INV_B\(1),
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
	datain => \p6|p4|ALT_INV_B\(2),
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
	datain => \p6|p4|ALT_INV_B[3]~0_combout\,
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
	datain => \p6|p4|ALT_INV_B[4]~1_combout\,
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
	datain => \p6|p4|ALT_INV_B[5]~2_combout\,
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
	datain => \p6|p4|ALT_INV_B\(6),
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
	datain => \p6|p4|ALT_INV_B\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(7));
END structure;


