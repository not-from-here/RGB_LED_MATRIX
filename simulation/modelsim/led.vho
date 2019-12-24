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

-- DATE "12/24/2019 13:57:07"

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

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	data_in : IN std_logic_vector(31 DOWNTO 0);
	row_out : OUT std_logic_vector(31 DOWNTO 0);
	nR : OUT std_logic_vector(7 DOWNTO 0);
	nG : OUT std_logic_vector(7 DOWNTO 0);
	nB : OUT std_logic_vector(7 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- data_in[1]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[16]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[17]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[18]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[19]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[20]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[21]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[22]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[23]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[24]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[25]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[26]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[27]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[28]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[29]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[30]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[31]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- data_in[0]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_row_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_nR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nB : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|p1|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p2|p1|Add0~2_combout\ : std_logic;
SIGNAL \p2|p1|Add0~8_combout\ : std_logic;
SIGNAL \p2|p5|we~regout\ : std_logic;
SIGNAL \p2|p1|frequency_divider:counter[4]~regout\ : std_logic;
SIGNAL \p2|p5|Selector0~0_combout\ : std_logic;
SIGNAL \p2|p4|rom~0_combout\ : std_logic;
SIGNAL \p2|p4|rom~2_combout\ : std_logic;
SIGNAL \p2|p4|rom~3_combout\ : std_logic;
SIGNAL \p2|p4|rom~4_combout\ : std_logic;
SIGNAL \p2|p4|rom~8_combout\ : std_logic;
SIGNAL \p2|p4|rom~9_combout\ : std_logic;
SIGNAL \p2|p4|rom~10_combout\ : std_logic;
SIGNAL \p2|p4|rom~16_combout\ : std_logic;
SIGNAL \p2|p4|rom~17_combout\ : std_logic;
SIGNAL \p2|p4|rom~18_combout\ : std_logic;
SIGNAL \p2|p4|rom~29_combout\ : std_logic;
SIGNAL \p2|p4|rom~30_combout\ : std_logic;
SIGNAL \p2|p4|rom~31_combout\ : std_logic;
SIGNAL \p2|p4|rom~33_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \p2|p6|p1|cnt[0]~7_combout\ : std_logic;
SIGNAL \p2|p6|p1|cnt[0]~8\ : std_logic;
SIGNAL \p2|p6|p1|cnt[1]~9_combout\ : std_logic;
SIGNAL \p2|p6|p1|cnt[1]~10\ : std_logic;
SIGNAL \p2|p6|p1|cnt[2]~12\ : std_logic;
SIGNAL \p2|p6|p1|cnt[3]~13_combout\ : std_logic;
SIGNAL \p2|p6|p1|cnt[3]~14\ : std_logic;
SIGNAL \p2|p6|p1|cnt[4]~16\ : std_logic;
SIGNAL \p2|p6|p1|cnt[5]~17_combout\ : std_logic;
SIGNAL \p2|p6|p1|cnt[5]~18\ : std_logic;
SIGNAL \p2|p6|p1|cnt[6]~19_combout\ : std_logic;
SIGNAL \p2|p6|p1|LessThan0~0_combout\ : std_logic;
SIGNAL \p2|p6|p1|Add1~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal3~0_combout\ : std_logic;
SIGNAL \p2|p6|p1|cnt[2]~11_combout\ : std_logic;
SIGNAL \p2|p6|p1|Add1~1\ : std_logic;
SIGNAL \p2|p6|p1|Add1~3\ : std_logic;
SIGNAL \p2|p6|p1|Add1~5\ : std_logic;
SIGNAL \p2|p6|p1|Add1~6_combout\ : std_logic;
SIGNAL \p2|p6|p1|Add1~4_combout\ : std_logic;
SIGNAL \p2|p6|p1|Add1~7\ : std_logic;
SIGNAL \p2|p6|p1|Add1~8_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal31~0_combout\ : std_logic;
SIGNAL \p2|p6|p1|Add1~2_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal12~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal30~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal1~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal29~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal0~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal28~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal27~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal2~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal26~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal25~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal24~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal23~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal6~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal22~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal21~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal20~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal19~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal18~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal17~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal16~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal15~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal14~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal13~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal12~1_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal11~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal10~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal9~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal8~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal7~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal6~1_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal5~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal4~0_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal3~1_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal2~1_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal1~1_combout\ : std_logic;
SIGNAL \p2|p6|p3|Equal0~1_combout\ : std_logic;
SIGNAL \p2|p6|p1|Add1~9\ : std_logic;
SIGNAL \p2|p6|p1|Add1~10_combout\ : std_logic;
SIGNAL \p2|p1|Add0~6_combout\ : std_logic;
SIGNAL \p2|p1|frequency_divider:counter[3]~regout\ : std_logic;
SIGNAL \p2|p1|Equal0~0_combout\ : std_logic;
SIGNAL \p2|p1|counter~1_combout\ : std_logic;
SIGNAL \p2|p1|frequency_divider:counter[1]~regout\ : std_logic;
SIGNAL \p2|p1|Add0~0_combout\ : std_logic;
SIGNAL \p2|p1|frequency_divider:counter[0]~regout\ : std_logic;
SIGNAL \p2|p1|Add0~1\ : std_logic;
SIGNAL \p2|p1|Add0~3\ : std_logic;
SIGNAL \p2|p1|Add0~4_combout\ : std_logic;
SIGNAL \p2|p1|counter~0_combout\ : std_logic;
SIGNAL \p2|p1|frequency_divider:counter[2]~regout\ : std_logic;
SIGNAL \p2|p1|Add0~5\ : std_logic;
SIGNAL \p2|p1|Add0~7\ : std_logic;
SIGNAL \p2|p1|Add0~9\ : std_logic;
SIGNAL \p2|p1|Add0~10_combout\ : std_logic;
SIGNAL \p2|p1|counter~2_combout\ : std_logic;
SIGNAL \p2|p1|frequency_divider:counter[5]~regout\ : std_logic;
SIGNAL \p2|p1|Add0~11\ : std_logic;
SIGNAL \p2|p1|Add0~12_combout\ : std_logic;
SIGNAL \p2|p1|frequency_divider:counter[6]~regout\ : std_logic;
SIGNAL \p2|p1|Add0~13\ : std_logic;
SIGNAL \p2|p1|Add0~14_combout\ : std_logic;
SIGNAL \p2|p1|counter~3_combout\ : std_logic;
SIGNAL \p2|p1|frequency_divider:counter[7]~regout\ : std_logic;
SIGNAL \p2|p1|Equal0~1_combout\ : std_logic;
SIGNAL \p2|p1|temporal~0_combout\ : std_logic;
SIGNAL \p2|p1|temporal~regout\ : std_logic;
SIGNAL \p2|p1|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \p2|p5|cnt[0]~6\ : std_logic;
SIGNAL \p2|p5|cnt[1]~8_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \p1|reg_var~0_combout\ : std_logic;
SIGNAL \p1|reg_var~regout\ : std_logic;
SIGNAL \p2|p2|on_off_out~feeder_combout\ : std_logic;
SIGNAL \p2|p2|on_off_out~regout\ : std_logic;
SIGNAL \p2|p3|smth~feeder_combout\ : std_logic;
SIGNAL \p2|p3|smth~regout\ : std_logic;
SIGNAL \p2|p5|state.s0~0_combout\ : std_logic;
SIGNAL \p2|p5|state.s0~regout\ : std_logic;
SIGNAL \p2|p5|state.s1~0_combout\ : std_logic;
SIGNAL \p2|p5|state.s1~regout\ : std_logic;
SIGNAL \p2|p5|state.s2~regout\ : std_logic;
SIGNAL \p2|p5|state.s3~regout\ : std_logic;
SIGNAL \p2|p5|state.s4~feeder_combout\ : std_logic;
SIGNAL \p2|p5|state.s4~regout\ : std_logic;
SIGNAL \p2|p5|state.s5~regout\ : std_logic;
SIGNAL \p2|p5|cnt[0]~7_combout\ : std_logic;
SIGNAL \p2|p5|cnt[1]~9\ : std_logic;
SIGNAL \p2|p5|cnt[2]~11\ : std_logic;
SIGNAL \p2|p5|cnt[3]~12_combout\ : std_logic;
SIGNAL \p2|p5|addr_f_rom[0]~1_combout\ : std_logic;
SIGNAL \p2|p5|cnt[3]~13\ : std_logic;
SIGNAL \p2|p5|cnt[4]~14_combout\ : std_logic;
SIGNAL \p2|p5|cnt[2]~10_combout\ : std_logic;
SIGNAL \p2|p4|rom~1_combout\ : std_logic;
SIGNAL \p2|p5|data_t_ram[0]~0_combout\ : std_logic;
SIGNAL \p2|p4|q[0]~0_combout\ : std_logic;
SIGNAL \p2|p5|data_t_ram[0]~6_combout\ : std_logic;
SIGNAL \p2|p5|cnt[0]~5_combout\ : std_logic;
SIGNAL \p2|p5|waddr_t_ram[0]~feeder_combout\ : std_logic;
SIGNAL \p2|p5|waddr_t_ram[1]~feeder_combout\ : std_logic;
SIGNAL \p2|p5|waddr_t_ram[2]~feeder_combout\ : std_logic;
SIGNAL \p2|p5|waddr_t_ram[3]~feeder_combout\ : std_logic;
SIGNAL \p2|p5|waddr_t_ram[4]~feeder_combout\ : std_logic;
SIGNAL \p2|p5|WideOr1~0_combout\ : std_logic;
SIGNAL \p2|p5|Selector10~0_combout\ : std_logic;
SIGNAL \p2|p5|Selector9~0_combout\ : std_logic;
SIGNAL \p2|p6|p1|cnt[4]~15_combout\ : std_logic;
SIGNAL \p2|p4|rom~38_combout\ : std_logic;
SIGNAL \p2|p4|rom~39_combout\ : std_logic;
SIGNAL \p2|p5|data_t_ram[1]~1_combout\ : std_logic;
SIGNAL \p2|p4|rom~5_combout\ : std_logic;
SIGNAL \p2|p4|rom~7_combout\ : std_logic;
SIGNAL \p2|p4|rom~11_combout\ : std_logic;
SIGNAL \p2|p4|rom~12_combout\ : std_logic;
SIGNAL \p2|p4|rom~13_combout\ : std_logic;
SIGNAL \p2|p5|data_t_ram[2]~2_combout\ : std_logic;
SIGNAL \p2|p4|rom~14_combout\ : std_logic;
SIGNAL \p2|p4|rom~6_combout\ : std_logic;
SIGNAL \p2|p4|rom~15_combout\ : std_logic;
SIGNAL \p2|p4|rom~36_combout\ : std_logic;
SIGNAL \p2|p4|rom~37_combout\ : std_logic;
SIGNAL \p2|p5|data_t_ram[3]~3_combout\ : std_logic;
SIGNAL \p2|p4|rom~19_combout\ : std_logic;
SIGNAL \p2|p4|rom~20_combout\ : std_logic;
SIGNAL \p2|p4|rom~25_combout\ : std_logic;
SIGNAL \p2|p4|rom~24_combout\ : std_logic;
SIGNAL \p2|p4|rom~26_combout\ : std_logic;
SIGNAL \p2|p4|rom~21_combout\ : std_logic;
SIGNAL \p2|p4|rom~22_combout\ : std_logic;
SIGNAL \p2|p4|rom~23_combout\ : std_logic;
SIGNAL \p2|p5|data_t_ram[5]~4_combout\ : std_logic;
SIGNAL \p2|p4|rom~27_combout\ : std_logic;
SIGNAL \p2|p4|rom~28_combout\ : std_logic;
SIGNAL \p2|p4|rom~32_combout\ : std_logic;
SIGNAL \p2|p4|rom~34_combout\ : std_logic;
SIGNAL \p2|p5|data_t_ram[6]~5_combout\ : std_logic;
SIGNAL \p2|p4|rom~35_combout\ : std_logic;
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \p2|p6|p1|Add1~11\ : std_logic;
SIGNAL \p2|p6|p1|Add1~12_combout\ : std_logic;
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \data_in~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \p2|p5|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \p2|p6|p1|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|p6|p4|B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|p4|q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \p2|p5|data_t_ram\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|p5|waddr_t_ram\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \p2|p6|p4|R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|p5|addr_f_rom\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \p2|p6|p4|G\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|p6|p4|ALT_INV_B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|p6|p4|ALT_INV_G\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \p2|p6|p4|ALT_INV_R\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_reset <= reset;
ww_data_in <= data_in;
row_out <= ww_row_out;
nR <= ww_nR;
nG <= ww_nG;
nB <= ww_nB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\p2|p5|data_t_ram\(0) & \p2|p5|data_t_ram\(6) & \p2|p5|data_t_ram\(5) & \p2|p5|data_t_ram\(3) & \p2|p5|data_t_ram\(3) & \p2|p5|data_t_ram\(2) & \p2|p5|data_t_ram\(1) & 
\p2|p5|data_t_ram\(0));

\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\p2|p5|waddr_t_ram\(6) & \p2|p5|waddr_t_ram\(5) & \p2|p5|waddr_t_ram\(4) & \p2|p5|waddr_t_ram\(3) & \p2|p5|waddr_t_ram\(2) & \p2|p5|waddr_t_ram\(1) & \p2|p5|waddr_t_ram\(0));

\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\p2|p6|p1|cnt\(6) & \p2|p6|p1|cnt\(5) & \p2|p6|p1|cnt\(4) & \p2|p6|p1|cnt\(3) & \p2|p6|p1|cnt\(2) & \p2|p6|p1|cnt\(1) & \p2|p6|p1|cnt\(0));

\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ <= \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ <= \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ <= \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ <= \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ <= \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ <= \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ <= \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\p2|p1|temporal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p2|p1|temporal~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\p2|p6|p4|ALT_INV_B\(7) <= NOT \p2|p6|p4|B\(7);
\p2|p6|p4|ALT_INV_B\(6) <= NOT \p2|p6|p4|B\(6);
\p2|p6|p4|ALT_INV_B\(5) <= NOT \p2|p6|p4|B\(5);
\p2|p6|p4|ALT_INV_B\(4) <= NOT \p2|p6|p4|B\(4);
\p2|p6|p4|ALT_INV_B\(3) <= NOT \p2|p6|p4|B\(3);
\p2|p6|p4|ALT_INV_B\(2) <= NOT \p2|p6|p4|B\(2);
\p2|p6|p4|ALT_INV_B\(1) <= NOT \p2|p6|p4|B\(1);
\p2|p6|p4|ALT_INV_B\(0) <= NOT \p2|p6|p4|B\(0);
\p2|p6|p4|ALT_INV_G\(7) <= NOT \p2|p6|p4|G\(7);
\p2|p6|p4|ALT_INV_G\(6) <= NOT \p2|p6|p4|G\(6);
\p2|p6|p4|ALT_INV_G\(5) <= NOT \p2|p6|p4|G\(5);
\p2|p6|p4|ALT_INV_G\(4) <= NOT \p2|p6|p4|G\(4);
\p2|p6|p4|ALT_INV_G\(3) <= NOT \p2|p6|p4|G\(3);
\p2|p6|p4|ALT_INV_G\(2) <= NOT \p2|p6|p4|G\(2);
\p2|p6|p4|ALT_INV_G\(1) <= NOT \p2|p6|p4|G\(1);
\p2|p6|p4|ALT_INV_G\(0) <= NOT \p2|p6|p4|G\(0);
\p2|p6|p4|ALT_INV_R\(7) <= NOT \p2|p6|p4|R\(7);
\p2|p6|p4|ALT_INV_R\(6) <= NOT \p2|p6|p4|R\(6);
\p2|p6|p4|ALT_INV_R\(5) <= NOT \p2|p6|p4|R\(5);
\p2|p6|p4|ALT_INV_R\(4) <= NOT \p2|p6|p4|R\(4);
\p2|p6|p4|ALT_INV_R\(3) <= NOT \p2|p6|p4|R\(3);
\p2|p6|p4|ALT_INV_R\(2) <= NOT \p2|p6|p4|R\(2);
\p2|p6|p4|ALT_INV_R\(1) <= NOT \p2|p6|p4|R\(1);
\p2|p6|p4|ALT_INV_R\(0) <= NOT \p2|p6|p4|R\(0);

-- Location: LCCOMB_X31_Y35_N6
\p2|p1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Add0~2_combout\ = (\p2|p1|frequency_divider:counter[1]~regout\ & (!\p2|p1|Add0~1\)) # (!\p2|p1|frequency_divider:counter[1]~regout\ & ((\p2|p1|Add0~1\) # (GND)))
-- \p2|p1|Add0~3\ = CARRY((!\p2|p1|Add0~1\) # (!\p2|p1|frequency_divider:counter[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p1|frequency_divider:counter[1]~regout\,
	datad => VCC,
	cin => \p2|p1|Add0~1\,
	combout => \p2|p1|Add0~2_combout\,
	cout => \p2|p1|Add0~3\);

-- Location: LCCOMB_X31_Y35_N12
\p2|p1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Add0~8_combout\ = (\p2|p1|frequency_divider:counter[4]~regout\ & (\p2|p1|Add0~7\ $ (GND))) # (!\p2|p1|frequency_divider:counter[4]~regout\ & (!\p2|p1|Add0~7\ & VCC))
-- \p2|p1|Add0~9\ = CARRY((\p2|p1|frequency_divider:counter[4]~regout\ & !\p2|p1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p1|frequency_divider:counter[4]~regout\,
	datad => VCC,
	cin => \p2|p1|Add0~7\,
	combout => \p2|p1|Add0~8_combout\,
	cout => \p2|p1|Add0~9\);

-- Location: LCFF_X57_Y20_N9
\p2|p5|we\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|Selector0~0_combout\,
	ena => \p2|p3|smth~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|we~regout\);

-- Location: LCFF_X31_Y35_N13
\p2|p1|frequency_divider:counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p2|p1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p1|frequency_divider:counter[4]~regout\);

-- Location: LCCOMB_X57_Y20_N8
\p2|p5|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|Selector0~0_combout\ = (\p2|p5|state.s1~regout\) # ((\p2|p5|we~regout\ & !\p2|p5|state.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|state.s1~regout\,
	datac => \p2|p5|we~regout\,
	datad => \p2|p5|state.s5~regout\,
	combout => \p2|p5|Selector0~0_combout\);

-- Location: LCFF_X57_Y20_N1
\p2|p4|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(2));

-- Location: LCFF_X55_Y20_N25
\p2|p4|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(4));

-- Location: LCFF_X56_Y20_N23
\p2|p4|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(8));

-- Location: LCFF_X55_Y20_N13
\p2|p4|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(11));

-- Location: LCFF_X57_Y20_N25
\p2|p4|q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(20));

-- Location: LCCOMB_X57_Y20_N0
\p2|p4|rom~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~0_combout\ = (\p2|p5|addr_f_rom\(1) & (!\p2|p5|addr_f_rom\(2) & (\p2|p5|addr_f_rom\(3) $ (!\p2|p5|addr_f_rom\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(3),
	datac => \p2|p5|addr_f_rom\(4),
	datad => \p2|p5|addr_f_rom\(2),
	combout => \p2|p4|rom~0_combout\);

-- Location: LCCOMB_X55_Y20_N8
\p2|p4|rom~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~2_combout\ = (\p2|p5|addr_f_rom\(2) & (\p2|p5|addr_f_rom\(0) & (\p2|p5|addr_f_rom\(3) $ (\p2|p5|addr_f_rom\(4))))) # (!\p2|p5|addr_f_rom\(2) & (!\p2|p5|addr_f_rom\(0) & (\p2|p5|addr_f_rom\(3) $ (\p2|p5|addr_f_rom\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~2_combout\);

-- Location: LCCOMB_X56_Y20_N28
\p2|p4|rom~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~3_combout\ = (\p2|p5|addr_f_rom\(0) & (\p2|p5|addr_f_rom\(2) $ (((\p2|p5|addr_f_rom\(3)) # (!\p2|p5|addr_f_rom\(4)))))) # (!\p2|p5|addr_f_rom\(0) & ((\p2|p5|addr_f_rom\(2) & ((\p2|p5|addr_f_rom\(4)) # (!\p2|p5|addr_f_rom\(3)))) # 
-- (!\p2|p5|addr_f_rom\(2) & (\p2|p5|addr_f_rom\(3) $ (\p2|p5|addr_f_rom\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~3_combout\);

-- Location: LCCOMB_X55_Y20_N24
\p2|p4|rom~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~4_combout\ = (\p2|p5|addr_f_rom\(1) & (\p2|p4|rom~2_combout\)) # (!\p2|p5|addr_f_rom\(1) & ((\p2|p4|rom~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datac => \p2|p4|rom~2_combout\,
	datad => \p2|p4|rom~3_combout\,
	combout => \p2|p4|rom~4_combout\);

-- Location: LCCOMB_X56_Y20_N26
\p2|p4|rom~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~8_combout\ = (\p2|p5|addr_f_rom\(4) & (!\p2|p5|addr_f_rom\(3) & (\p2|p5|addr_f_rom\(2) $ (\p2|p5|addr_f_rom\(0))))) # (!\p2|p5|addr_f_rom\(4) & (!\p2|p5|addr_f_rom\(2) & (\p2|p5|addr_f_rom\(3) & !\p2|p5|addr_f_rom\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(4),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(0),
	combout => \p2|p4|rom~8_combout\);

-- Location: LCCOMB_X56_Y20_N20
\p2|p4|rom~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~9_combout\ = (\p2|p5|addr_f_rom\(3) & ((\p2|p5|addr_f_rom\(0) & ((\p2|p5|addr_f_rom\(4)))) # (!\p2|p5|addr_f_rom\(0) & (\p2|p5|addr_f_rom\(2) & !\p2|p5|addr_f_rom\(4))))) # (!\p2|p5|addr_f_rom\(3) & (\p2|p5|addr_f_rom\(0) & 
-- ((!\p2|p5|addr_f_rom\(4)) # (!\p2|p5|addr_f_rom\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(3),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(2),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~9_combout\);

-- Location: LCCOMB_X56_Y20_N22
\p2|p4|rom~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~10_combout\ = (\p2|p5|addr_f_rom\(1) & (\p2|p4|rom~8_combout\)) # (!\p2|p5|addr_f_rom\(1) & ((\p2|p4|rom~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p4|rom~8_combout\,
	datac => \p2|p5|addr_f_rom\(1),
	datad => \p2|p4|rom~9_combout\,
	combout => \p2|p4|rom~10_combout\);

-- Location: LCCOMB_X55_Y20_N0
\p2|p4|rom~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~16_combout\ = (\p2|p5|addr_f_rom\(4) & (!\p2|p5|addr_f_rom\(2) & (!\p2|p5|addr_f_rom\(3) & \p2|p5|addr_f_rom\(0)))) # (!\p2|p5|addr_f_rom\(4) & (\p2|p5|addr_f_rom\(3) & (\p2|p5|addr_f_rom\(2) $ (\p2|p5|addr_f_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(4),
	datab => \p2|p5|addr_f_rom\(2),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(0),
	combout => \p2|p4|rom~16_combout\);

-- Location: LCCOMB_X56_Y20_N16
\p2|p4|rom~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~17_combout\ = (\p2|p5|addr_f_rom\(4) & (\p2|p5|addr_f_rom\(0) $ (((!\p2|p5|addr_f_rom\(2) & !\p2|p5|addr_f_rom\(3)))))) # (!\p2|p5|addr_f_rom\(4) & (((\p2|p5|addr_f_rom\(3)) # (\p2|p5|addr_f_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(4),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(0),
	combout => \p2|p4|rom~17_combout\);

-- Location: LCCOMB_X55_Y20_N12
\p2|p4|rom~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~18_combout\ = (\p2|p5|addr_f_rom\(1) & (!\p2|p4|rom~17_combout\)) # (!\p2|p5|addr_f_rom\(1) & ((\p2|p4|rom~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datac => \p2|p4|rom~17_combout\,
	datad => \p2|p4|rom~16_combout\,
	combout => \p2|p4|rom~18_combout\);

-- Location: LCCOMB_X56_Y20_N10
\p2|p4|rom~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~29_combout\ = (\p2|p5|addr_f_rom\(3) & (!\p2|p5|addr_f_rom\(1) & (\p2|p5|addr_f_rom\(2) $ (\p2|p5|addr_f_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(1),
	combout => \p2|p4|rom~29_combout\);

-- Location: LCCOMB_X56_Y20_N0
\p2|p4|rom~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~30_combout\ = (\p2|p5|addr_f_rom\(1) & (\p2|p5|addr_f_rom\(3) & (\p2|p5|addr_f_rom\(2) $ (\p2|p5|addr_f_rom\(0))))) # (!\p2|p5|addr_f_rom\(1) & (\p2|p5|addr_f_rom\(2) $ (((!\p2|p5|addr_f_rom\(3) & \p2|p5|addr_f_rom\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(1),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(0),
	combout => \p2|p4|rom~30_combout\);

-- Location: LCCOMB_X57_Y20_N24
\p2|p4|rom~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~31_combout\ = (\p2|p5|addr_f_rom\(4) & ((\p2|p4|rom~29_combout\))) # (!\p2|p5|addr_f_rom\(4) & (\p2|p4|rom~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(4),
	datac => \p2|p4|rom~30_combout\,
	datad => \p2|p4|rom~29_combout\,
	combout => \p2|p4|rom~31_combout\);

-- Location: LCCOMB_X56_Y20_N8
\p2|p4|rom~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~33_combout\ = (\p2|p5|addr_f_rom\(3) & ((\p2|p5|addr_f_rom\(1)) # (\p2|p5|addr_f_rom\(2) $ (!\p2|p5|addr_f_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(1),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(0),
	combout => \p2|p4|rom~33_combout\);

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

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : cycloneii_io
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
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

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

-- Location: LCCOMB_X53_Y20_N16
\p2|p6|p1|cnt[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|cnt[0]~7_combout\ = \p2|p6|p1|cnt\(0) $ (VCC)
-- \p2|p6|p1|cnt[0]~8\ = CARRY(\p2|p6|p1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|cnt\(0),
	datad => VCC,
	combout => \p2|p6|p1|cnt[0]~7_combout\,
	cout => \p2|p6|p1|cnt[0]~8\);

-- Location: LCCOMB_X53_Y20_N18
\p2|p6|p1|cnt[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|cnt[1]~9_combout\ = (\p2|p6|p1|cnt\(1) & (!\p2|p6|p1|cnt[0]~8\)) # (!\p2|p6|p1|cnt\(1) & ((\p2|p6|p1|cnt[0]~8\) # (GND)))
-- \p2|p6|p1|cnt[1]~10\ = CARRY((!\p2|p6|p1|cnt[0]~8\) # (!\p2|p6|p1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p6|p1|cnt\(1),
	datad => VCC,
	cin => \p2|p6|p1|cnt[0]~8\,
	combout => \p2|p6|p1|cnt[1]~9_combout\,
	cout => \p2|p6|p1|cnt[1]~10\);

-- Location: LCFF_X53_Y20_N19
\p2|p6|p1|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p6|p1|cnt[1]~9_combout\,
	sclr => \p2|p6|p1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p6|p1|cnt\(1));

-- Location: LCCOMB_X53_Y20_N20
\p2|p6|p1|cnt[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|cnt[2]~11_combout\ = (\p2|p6|p1|cnt\(2) & (\p2|p6|p1|cnt[1]~10\ $ (GND))) # (!\p2|p6|p1|cnt\(2) & (!\p2|p6|p1|cnt[1]~10\ & VCC))
-- \p2|p6|p1|cnt[2]~12\ = CARRY((\p2|p6|p1|cnt\(2) & !\p2|p6|p1|cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|cnt\(2),
	datad => VCC,
	cin => \p2|p6|p1|cnt[1]~10\,
	combout => \p2|p6|p1|cnt[2]~11_combout\,
	cout => \p2|p6|p1|cnt[2]~12\);

-- Location: LCCOMB_X53_Y20_N22
\p2|p6|p1|cnt[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|cnt[3]~13_combout\ = (\p2|p6|p1|cnt\(3) & (!\p2|p6|p1|cnt[2]~12\)) # (!\p2|p6|p1|cnt\(3) & ((\p2|p6|p1|cnt[2]~12\) # (GND)))
-- \p2|p6|p1|cnt[3]~14\ = CARRY((!\p2|p6|p1|cnt[2]~12\) # (!\p2|p6|p1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p6|p1|cnt\(3),
	datad => VCC,
	cin => \p2|p6|p1|cnt[2]~12\,
	combout => \p2|p6|p1|cnt[3]~13_combout\,
	cout => \p2|p6|p1|cnt[3]~14\);

-- Location: LCFF_X53_Y20_N23
\p2|p6|p1|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p6|p1|cnt[3]~13_combout\,
	sclr => \p2|p6|p1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p6|p1|cnt\(3));

-- Location: LCCOMB_X53_Y20_N24
\p2|p6|p1|cnt[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|cnt[4]~15_combout\ = (\p2|p6|p1|cnt\(4) & (\p2|p6|p1|cnt[3]~14\ $ (GND))) # (!\p2|p6|p1|cnt\(4) & (!\p2|p6|p1|cnt[3]~14\ & VCC))
-- \p2|p6|p1|cnt[4]~16\ = CARRY((\p2|p6|p1|cnt\(4) & !\p2|p6|p1|cnt[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|cnt\(4),
	datad => VCC,
	cin => \p2|p6|p1|cnt[3]~14\,
	combout => \p2|p6|p1|cnt[4]~15_combout\,
	cout => \p2|p6|p1|cnt[4]~16\);

-- Location: LCCOMB_X53_Y20_N26
\p2|p6|p1|cnt[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|cnt[5]~17_combout\ = (\p2|p6|p1|cnt\(5) & (!\p2|p6|p1|cnt[4]~16\)) # (!\p2|p6|p1|cnt\(5) & ((\p2|p6|p1|cnt[4]~16\) # (GND)))
-- \p2|p6|p1|cnt[5]~18\ = CARRY((!\p2|p6|p1|cnt[4]~16\) # (!\p2|p6|p1|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p6|p1|cnt\(5),
	datad => VCC,
	cin => \p2|p6|p1|cnt[4]~16\,
	combout => \p2|p6|p1|cnt[5]~17_combout\,
	cout => \p2|p6|p1|cnt[5]~18\);

-- Location: LCFF_X53_Y20_N27
\p2|p6|p1|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p6|p1|cnt[5]~17_combout\,
	sclr => \p2|p6|p1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p6|p1|cnt\(5));

-- Location: LCCOMB_X53_Y20_N28
\p2|p6|p1|cnt[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|cnt[6]~19_combout\ = \p2|p6|p1|cnt[5]~18\ $ (!\p2|p6|p1|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p2|p6|p1|cnt\(6),
	cin => \p2|p6|p1|cnt[5]~18\,
	combout => \p2|p6|p1|cnt[6]~19_combout\);

-- Location: LCFF_X53_Y20_N29
\p2|p6|p1|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p6|p1|cnt[6]~19_combout\,
	sclr => \p2|p6|p1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p6|p1|cnt\(6));

-- Location: LCCOMB_X53_Y20_N0
\p2|p6|p1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|LessThan0~0_combout\ = (\p2|p6|p1|cnt\(6) & \p2|p6|p1|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p6|p1|cnt\(6),
	datad => \p2|p6|p1|cnt\(5),
	combout => \p2|p6|p1|LessThan0~0_combout\);

-- Location: LCFF_X53_Y20_N17
\p2|p6|p1|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p6|p1|cnt[0]~7_combout\,
	sclr => \p2|p6|p1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p6|p1|cnt\(0));

-- Location: LCCOMB_X53_Y20_N2
\p2|p6|p1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|Add1~0_combout\ = \p2|p6|p1|cnt\(0) $ (VCC)
-- \p2|p6|p1|Add1~1\ = CARRY(\p2|p6|p1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p6|p1|cnt\(0),
	datad => VCC,
	combout => \p2|p6|p1|Add1~0_combout\,
	cout => \p2|p6|p1|Add1~1\);

-- Location: LCCOMB_X64_Y17_N0
\p2|p6|p3|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal3~0_combout\ = (!\p2|p6|p1|Add1~2_combout\ & !\p2|p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datad => \p2|p6|p1|Add1~0_combout\,
	combout => \p2|p6|p3|Equal3~0_combout\);

-- Location: LCFF_X53_Y20_N21
\p2|p6|p1|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p6|p1|cnt[2]~11_combout\,
	sclr => \p2|p6|p1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p6|p1|cnt\(2));

-- Location: LCCOMB_X53_Y20_N4
\p2|p6|p1|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|Add1~2_combout\ = (\p2|p6|p1|cnt\(1) & (\p2|p6|p1|Add1~1\ & VCC)) # (!\p2|p6|p1|cnt\(1) & (!\p2|p6|p1|Add1~1\))
-- \p2|p6|p1|Add1~3\ = CARRY((!\p2|p6|p1|cnt\(1) & !\p2|p6|p1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|cnt\(1),
	datad => VCC,
	cin => \p2|p6|p1|Add1~1\,
	combout => \p2|p6|p1|Add1~2_combout\,
	cout => \p2|p6|p1|Add1~3\);

-- Location: LCCOMB_X53_Y20_N6
\p2|p6|p1|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|Add1~4_combout\ = (\p2|p6|p1|cnt\(2) & ((GND) # (!\p2|p6|p1|Add1~3\))) # (!\p2|p6|p1|cnt\(2) & (\p2|p6|p1|Add1~3\ $ (GND)))
-- \p2|p6|p1|Add1~5\ = CARRY((\p2|p6|p1|cnt\(2)) # (!\p2|p6|p1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p6|p1|cnt\(2),
	datad => VCC,
	cin => \p2|p6|p1|Add1~3\,
	combout => \p2|p6|p1|Add1~4_combout\,
	cout => \p2|p6|p1|Add1~5\);

-- Location: LCCOMB_X53_Y20_N8
\p2|p6|p1|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|Add1~6_combout\ = (\p2|p6|p1|cnt\(3) & (\p2|p6|p1|Add1~5\ & VCC)) # (!\p2|p6|p1|cnt\(3) & (!\p2|p6|p1|Add1~5\))
-- \p2|p6|p1|Add1~7\ = CARRY((!\p2|p6|p1|cnt\(3) & !\p2|p6|p1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p6|p1|cnt\(3),
	datad => VCC,
	cin => \p2|p6|p1|Add1~5\,
	combout => \p2|p6|p1|Add1~6_combout\,
	cout => \p2|p6|p1|Add1~7\);

-- Location: LCCOMB_X53_Y20_N10
\p2|p6|p1|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|Add1~8_combout\ = (\p2|p6|p1|cnt\(4) & ((GND) # (!\p2|p6|p1|Add1~7\))) # (!\p2|p6|p1|cnt\(4) & (\p2|p6|p1|Add1~7\ $ (GND)))
-- \p2|p6|p1|Add1~9\ = CARRY((\p2|p6|p1|cnt\(4)) # (!\p2|p6|p1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|cnt\(4),
	datad => VCC,
	cin => \p2|p6|p1|Add1~7\,
	combout => \p2|p6|p1|Add1~8_combout\,
	cout => \p2|p6|p1|Add1~9\);

-- Location: LCCOMB_X64_Y21_N24
\p2|p6|p3|Equal31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal31~0_combout\ = (\p2|p6|p3|Equal3~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (!\p2|p6|p1|Add1~4_combout\ & !\p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal3~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal31~0_combout\);

-- Location: LCCOMB_X64_Y18_N28
\p2|p6|p3|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal12~0_combout\ = (!\p2|p6|p1|Add1~4_combout\ & !\p2|p6|p1|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	combout => \p2|p6|p3|Equal12~0_combout\);

-- Location: LCCOMB_X64_Y18_N22
\p2|p6|p3|Equal30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal30~0_combout\ = (!\p2|p6|p1|Add1~2_combout\ & (\p2|p6|p1|Add1~0_combout\ & (!\p2|p6|p1|Add1~8_combout\ & \p2|p6|p3|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datab => \p2|p6|p1|Add1~0_combout\,
	datac => \p2|p6|p1|Add1~8_combout\,
	datad => \p2|p6|p3|Equal12~0_combout\,
	combout => \p2|p6|p3|Equal30~0_combout\);

-- Location: LCCOMB_X64_Y18_N0
\p2|p6|p3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal1~0_combout\ = (\p2|p6|p1|Add1~2_combout\ & !\p2|p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datad => \p2|p6|p1|Add1~0_combout\,
	combout => \p2|p6|p3|Equal1~0_combout\);

-- Location: LCCOMB_X64_Y21_N10
\p2|p6|p3|Equal29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal29~0_combout\ = (\p2|p6|p3|Equal1~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (!\p2|p6|p1|Add1~4_combout\ & !\p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal1~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal29~0_combout\);

-- Location: LCCOMB_X64_Y18_N6
\p2|p6|p3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal0~0_combout\ = (\p2|p6|p1|Add1~2_combout\ & \p2|p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datad => \p2|p6|p1|Add1~0_combout\,
	combout => \p2|p6|p3|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y21_N4
\p2|p6|p3|Equal28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal28~0_combout\ = (\p2|p6|p3|Equal0~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (!\p2|p6|p1|Add1~4_combout\ & !\p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal0~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal28~0_combout\);

-- Location: LCCOMB_X64_Y21_N22
\p2|p6|p3|Equal27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal27~0_combout\ = (\p2|p6|p3|Equal3~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (\p2|p6|p1|Add1~4_combout\ & !\p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal3~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal27~0_combout\);

-- Location: LCCOMB_X64_Y17_N2
\p2|p6|p3|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal2~0_combout\ = (\p2|p6|p1|Add1~4_combout\ & \p2|p6|p1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~0_combout\,
	combout => \p2|p6|p3|Equal2~0_combout\);

-- Location: LCCOMB_X64_Y17_N28
\p2|p6|p3|Equal26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal26~0_combout\ = (!\p2|p6|p1|Add1~2_combout\ & (!\p2|p6|p1|Add1~8_combout\ & (!\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal2~0_combout\,
	combout => \p2|p6|p3|Equal26~0_combout\);

-- Location: LCCOMB_X64_Y21_N28
\p2|p6|p3|Equal25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal25~0_combout\ = (\p2|p6|p3|Equal1~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (\p2|p6|p1|Add1~4_combout\ & !\p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal1~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal25~0_combout\);

-- Location: LCCOMB_X64_Y21_N2
\p2|p6|p3|Equal24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal24~0_combout\ = (\p2|p6|p3|Equal0~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (\p2|p6|p1|Add1~4_combout\ & !\p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal0~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal24~0_combout\);

-- Location: LCCOMB_X64_Y17_N26
\p2|p6|p3|Equal23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal23~0_combout\ = (!\p2|p6|p1|Add1~4_combout\ & (!\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal3~0_combout\,
	combout => \p2|p6|p3|Equal23~0_combout\);

-- Location: LCCOMB_X64_Y18_N12
\p2|p6|p3|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal6~0_combout\ = (!\p2|p6|p1|Add1~4_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p1|Add1~0_combout\,
	combout => \p2|p6|p3|Equal6~0_combout\);

-- Location: LCCOMB_X64_Y18_N14
\p2|p6|p3|Equal22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal22~0_combout\ = (!\p2|p6|p1|Add1~2_combout\ & (!\p2|p6|p1|Add1~8_combout\ & \p2|p6|p3|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datac => \p2|p6|p1|Add1~8_combout\,
	datad => \p2|p6|p3|Equal6~0_combout\,
	combout => \p2|p6|p3|Equal22~0_combout\);

-- Location: LCCOMB_X64_Y18_N8
\p2|p6|p3|Equal21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal21~0_combout\ = (!\p2|p6|p1|Add1~4_combout\ & (!\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal1~0_combout\,
	combout => \p2|p6|p3|Equal21~0_combout\);

-- Location: LCCOMB_X64_Y18_N30
\p2|p6|p3|Equal20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal20~0_combout\ = (!\p2|p6|p1|Add1~4_combout\ & (!\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal0~0_combout\,
	combout => \p2|p6|p3|Equal20~0_combout\);

-- Location: LCCOMB_X64_Y17_N12
\p2|p6|p3|Equal19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal19~0_combout\ = (\p2|p6|p1|Add1~4_combout\ & (!\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal3~0_combout\,
	combout => \p2|p6|p3|Equal19~0_combout\);

-- Location: LCCOMB_X64_Y17_N6
\p2|p6|p3|Equal18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal18~0_combout\ = (!\p2|p6|p1|Add1~2_combout\ & (!\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal2~0_combout\,
	combout => \p2|p6|p3|Equal18~0_combout\);

-- Location: LCCOMB_X64_Y18_N20
\p2|p6|p3|Equal17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal17~0_combout\ = (\p2|p6|p1|Add1~4_combout\ & (!\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal1~0_combout\,
	combout => \p2|p6|p3|Equal17~0_combout\);

-- Location: LCCOMB_X64_Y18_N18
\p2|p6|p3|Equal16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal16~0_combout\ = (\p2|p6|p1|Add1~4_combout\ & (!\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal0~0_combout\,
	combout => \p2|p6|p3|Equal16~0_combout\);

-- Location: LCCOMB_X64_Y21_N0
\p2|p6|p3|Equal15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal15~0_combout\ = (\p2|p6|p3|Equal3~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (!\p2|p6|p1|Add1~4_combout\ & \p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal3~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal15~0_combout\);

-- Location: LCCOMB_X64_Y18_N24
\p2|p6|p3|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal14~0_combout\ = (!\p2|p6|p1|Add1~2_combout\ & (\p2|p6|p1|Add1~0_combout\ & (\p2|p6|p1|Add1~8_combout\ & \p2|p6|p3|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datab => \p2|p6|p1|Add1~0_combout\,
	datac => \p2|p6|p1|Add1~8_combout\,
	datad => \p2|p6|p3|Equal12~0_combout\,
	combout => \p2|p6|p3|Equal14~0_combout\);

-- Location: LCCOMB_X64_Y21_N6
\p2|p6|p3|Equal13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal13~0_combout\ = (\p2|p6|p3|Equal1~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (!\p2|p6|p1|Add1~4_combout\ & \p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal1~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal13~0_combout\);

-- Location: LCCOMB_X64_Y21_N20
\p2|p6|p3|Equal12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal12~1_combout\ = (\p2|p6|p3|Equal0~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (!\p2|p6|p1|Add1~4_combout\ & \p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal0~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal12~1_combout\);

-- Location: LCCOMB_X64_Y21_N30
\p2|p6|p3|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal11~0_combout\ = (\p2|p6|p3|Equal3~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (\p2|p6|p1|Add1~4_combout\ & \p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal3~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal11~0_combout\);

-- Location: LCCOMB_X64_Y17_N24
\p2|p6|p3|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal10~0_combout\ = (!\p2|p6|p1|Add1~2_combout\ & (\p2|p6|p1|Add1~8_combout\ & (!\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal2~0_combout\,
	combout => \p2|p6|p3|Equal10~0_combout\);

-- Location: LCCOMB_X64_Y21_N12
\p2|p6|p3|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal9~0_combout\ = (\p2|p6|p3|Equal1~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (\p2|p6|p1|Add1~4_combout\ & \p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal1~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal9~0_combout\);

-- Location: LCCOMB_X64_Y21_N14
\p2|p6|p3|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal8~0_combout\ = (\p2|p6|p3|Equal0~0_combout\ & (!\p2|p6|p1|Add1~6_combout\ & (\p2|p6|p1|Add1~4_combout\ & \p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal0~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal8~0_combout\);

-- Location: LCCOMB_X64_Y21_N16
\p2|p6|p3|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal7~0_combout\ = (\p2|p6|p3|Equal3~0_combout\ & (\p2|p6|p1|Add1~6_combout\ & (!\p2|p6|p1|Add1~4_combout\ & \p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal3~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal7~0_combout\);

-- Location: LCCOMB_X64_Y18_N2
\p2|p6|p3|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal6~1_combout\ = (!\p2|p6|p1|Add1~2_combout\ & (\p2|p6|p1|Add1~8_combout\ & \p2|p6|p3|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datac => \p2|p6|p1|Add1~8_combout\,
	datad => \p2|p6|p3|Equal6~0_combout\,
	combout => \p2|p6|p3|Equal6~1_combout\);

-- Location: LCCOMB_X64_Y21_N18
\p2|p6|p3|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal5~0_combout\ = (\p2|p6|p3|Equal1~0_combout\ & (\p2|p6|p1|Add1~6_combout\ & (!\p2|p6|p1|Add1~4_combout\ & \p2|p6|p1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p3|Equal1~0_combout\,
	datab => \p2|p6|p1|Add1~6_combout\,
	datac => \p2|p6|p1|Add1~4_combout\,
	datad => \p2|p6|p1|Add1~8_combout\,
	combout => \p2|p6|p3|Equal5~0_combout\);

-- Location: LCCOMB_X64_Y18_N16
\p2|p6|p3|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal4~0_combout\ = (!\p2|p6|p1|Add1~4_combout\ & (\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal0~0_combout\,
	combout => \p2|p6|p3|Equal4~0_combout\);

-- Location: LCCOMB_X64_Y17_N14
\p2|p6|p3|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal3~1_combout\ = (\p2|p6|p1|Add1~4_combout\ & (\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal3~0_combout\,
	combout => \p2|p6|p3|Equal3~1_combout\);

-- Location: LCCOMB_X64_Y17_N16
\p2|p6|p3|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal2~1_combout\ = (!\p2|p6|p1|Add1~2_combout\ & (\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~2_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal2~0_combout\,
	combout => \p2|p6|p3|Equal2~1_combout\);

-- Location: LCCOMB_X64_Y18_N10
\p2|p6|p3|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal1~1_combout\ = (\p2|p6|p1|Add1~4_combout\ & (\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal1~0_combout\,
	combout => \p2|p6|p3|Equal1~1_combout\);

-- Location: LCCOMB_X64_Y18_N4
\p2|p6|p3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p3|Equal0~1_combout\ = (\p2|p6|p1|Add1~4_combout\ & (\p2|p6|p1|Add1~8_combout\ & (\p2|p6|p1|Add1~6_combout\ & \p2|p6|p3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~4_combout\,
	datab => \p2|p6|p1|Add1~8_combout\,
	datac => \p2|p6|p1|Add1~6_combout\,
	datad => \p2|p6|p3|Equal0~0_combout\,
	combout => \p2|p6|p3|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y20_N12
\p2|p6|p1|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|Add1~10_combout\ = (\p2|p6|p1|cnt\(5) & (\p2|p6|p1|Add1~9\ & VCC)) # (!\p2|p6|p1|cnt\(5) & (!\p2|p6|p1|Add1~9\))
-- \p2|p6|p1|Add1~11\ = CARRY((!\p2|p6|p1|cnt\(5) & !\p2|p6|p1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p6|p1|cnt\(5),
	datad => VCC,
	cin => \p2|p6|p1|Add1~9\,
	combout => \p2|p6|p1|Add1~10_combout\,
	cout => \p2|p6|p1|Add1~11\);

-- Location: LCCOMB_X31_Y35_N10
\p2|p1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Add0~6_combout\ = (\p2|p1|frequency_divider:counter[3]~regout\ & (!\p2|p1|Add0~5\)) # (!\p2|p1|frequency_divider:counter[3]~regout\ & ((\p2|p1|Add0~5\) # (GND)))
-- \p2|p1|Add0~7\ = CARRY((!\p2|p1|Add0~5\) # (!\p2|p1|frequency_divider:counter[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p1|frequency_divider:counter[3]~regout\,
	datad => VCC,
	cin => \p2|p1|Add0~5\,
	combout => \p2|p1|Add0~6_combout\,
	cout => \p2|p1|Add0~7\);

-- Location: LCFF_X31_Y35_N11
\p2|p1|frequency_divider:counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p2|p1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p1|frequency_divider:counter[3]~regout\);

-- Location: LCCOMB_X31_Y35_N0
\p2|p1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Equal0~0_combout\ = (\p2|p1|frequency_divider:counter[0]~regout\ & (\p2|p1|frequency_divider:counter[2]~regout\ & (!\p2|p1|frequency_divider:counter[1]~regout\ & !\p2|p1|frequency_divider:counter[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p1|frequency_divider:counter[0]~regout\,
	datab => \p2|p1|frequency_divider:counter[2]~regout\,
	datac => \p2|p1|frequency_divider:counter[1]~regout\,
	datad => \p2|p1|frequency_divider:counter[3]~regout\,
	combout => \p2|p1|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y35_N30
\p2|p1|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|counter~1_combout\ = (\p2|p1|Add0~2_combout\ & ((!\p2|p1|Equal0~1_combout\) # (!\p2|p1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p1|Add0~2_combout\,
	datab => \p2|p1|Equal0~0_combout\,
	datad => \p2|p1|Equal0~1_combout\,
	combout => \p2|p1|counter~1_combout\);

-- Location: LCFF_X31_Y35_N31
\p2|p1|frequency_divider:counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p2|p1|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p1|frequency_divider:counter[1]~regout\);

-- Location: LCCOMB_X31_Y35_N4
\p2|p1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Add0~0_combout\ = \p2|p1|frequency_divider:counter[0]~regout\ $ (VCC)
-- \p2|p1|Add0~1\ = CARRY(\p2|p1|frequency_divider:counter[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p1|frequency_divider:counter[0]~regout\,
	datad => VCC,
	combout => \p2|p1|Add0~0_combout\,
	cout => \p2|p1|Add0~1\);

-- Location: LCFF_X31_Y35_N5
\p2|p1|frequency_divider:counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p2|p1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p1|frequency_divider:counter[0]~regout\);

-- Location: LCCOMB_X31_Y35_N8
\p2|p1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Add0~4_combout\ = (\p2|p1|frequency_divider:counter[2]~regout\ & (\p2|p1|Add0~3\ $ (GND))) # (!\p2|p1|frequency_divider:counter[2]~regout\ & (!\p2|p1|Add0~3\ & VCC))
-- \p2|p1|Add0~5\ = CARRY((\p2|p1|frequency_divider:counter[2]~regout\ & !\p2|p1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p1|frequency_divider:counter[2]~regout\,
	datad => VCC,
	cin => \p2|p1|Add0~3\,
	combout => \p2|p1|Add0~4_combout\,
	cout => \p2|p1|Add0~5\);

-- Location: LCCOMB_X31_Y35_N2
\p2|p1|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|counter~0_combout\ = (\p2|p1|Add0~4_combout\ & ((!\p2|p1|Equal0~0_combout\) # (!\p2|p1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p1|Equal0~1_combout\,
	datac => \p2|p1|Add0~4_combout\,
	datad => \p2|p1|Equal0~0_combout\,
	combout => \p2|p1|counter~0_combout\);

-- Location: LCFF_X31_Y35_N3
\p2|p1|frequency_divider:counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p2|p1|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p1|frequency_divider:counter[2]~regout\);

-- Location: LCCOMB_X31_Y35_N14
\p2|p1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Add0~10_combout\ = (\p2|p1|frequency_divider:counter[5]~regout\ & (!\p2|p1|Add0~9\)) # (!\p2|p1|frequency_divider:counter[5]~regout\ & ((\p2|p1|Add0~9\) # (GND)))
-- \p2|p1|Add0~11\ = CARRY((!\p2|p1|Add0~9\) # (!\p2|p1|frequency_divider:counter[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p1|frequency_divider:counter[5]~regout\,
	datad => VCC,
	cin => \p2|p1|Add0~9\,
	combout => \p2|p1|Add0~10_combout\,
	cout => \p2|p1|Add0~11\);

-- Location: LCCOMB_X31_Y35_N26
\p2|p1|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|counter~2_combout\ = (\p2|p1|Add0~10_combout\ & ((!\p2|p1|Equal0~0_combout\) # (!\p2|p1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p1|Equal0~1_combout\,
	datac => \p2|p1|Add0~10_combout\,
	datad => \p2|p1|Equal0~0_combout\,
	combout => \p2|p1|counter~2_combout\);

-- Location: LCFF_X31_Y35_N27
\p2|p1|frequency_divider:counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p2|p1|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p1|frequency_divider:counter[5]~regout\);

-- Location: LCCOMB_X31_Y35_N16
\p2|p1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Add0~12_combout\ = (\p2|p1|frequency_divider:counter[6]~regout\ & (\p2|p1|Add0~11\ $ (GND))) # (!\p2|p1|frequency_divider:counter[6]~regout\ & (!\p2|p1|Add0~11\ & VCC))
-- \p2|p1|Add0~13\ = CARRY((\p2|p1|frequency_divider:counter[6]~regout\ & !\p2|p1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p1|frequency_divider:counter[6]~regout\,
	datad => VCC,
	cin => \p2|p1|Add0~11\,
	combout => \p2|p1|Add0~12_combout\,
	cout => \p2|p1|Add0~13\);

-- Location: LCFF_X31_Y35_N17
\p2|p1|frequency_divider:counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p2|p1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p1|frequency_divider:counter[6]~regout\);

-- Location: LCCOMB_X31_Y35_N18
\p2|p1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Add0~14_combout\ = \p2|p1|Add0~13\ $ (\p2|p1|frequency_divider:counter[7]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p2|p1|frequency_divider:counter[7]~regout\,
	cin => \p2|p1|Add0~13\,
	combout => \p2|p1|Add0~14_combout\);

-- Location: LCCOMB_X31_Y35_N28
\p2|p1|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|counter~3_combout\ = (\p2|p1|Add0~14_combout\ & ((!\p2|p1|Equal0~1_combout\) # (!\p2|p1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p1|Equal0~0_combout\,
	datac => \p2|p1|Equal0~1_combout\,
	datad => \p2|p1|Add0~14_combout\,
	combout => \p2|p1|counter~3_combout\);

-- Location: LCFF_X31_Y35_N29
\p2|p1|frequency_divider:counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p2|p1|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p1|frequency_divider:counter[7]~regout\);

-- Location: LCCOMB_X31_Y35_N22
\p2|p1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|Equal0~1_combout\ = (!\p2|p1|frequency_divider:counter[4]~regout\ & (\p2|p1|frequency_divider:counter[5]~regout\ & (!\p2|p1|frequency_divider:counter[6]~regout\ & \p2|p1|frequency_divider:counter[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p1|frequency_divider:counter[4]~regout\,
	datab => \p2|p1|frequency_divider:counter[5]~regout\,
	datac => \p2|p1|frequency_divider:counter[6]~regout\,
	datad => \p2|p1|frequency_divider:counter[7]~regout\,
	combout => \p2|p1|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y35_N24
\p2|p1|temporal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p1|temporal~0_combout\ = \p2|p1|temporal~regout\ $ (((\p2|p1|Equal0~1_combout\ & \p2|p1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p1|Equal0~1_combout\,
	datac => \p2|p1|temporal~regout\,
	datad => \p2|p1|Equal0~0_combout\,
	combout => \p2|p1|temporal~0_combout\);

-- Location: LCFF_X31_Y35_N25
\p2|p1|temporal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p2|p1|temporal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p1|temporal~regout\);

-- Location: CLKCTRL_G8
\p2|p1|temporal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p2|p1|temporal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p2|p1|temporal~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y20_N16
\p2|p5|cnt[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|cnt[0]~5_combout\ = \p2|p5|cnt\(0) $ (VCC)
-- \p2|p5|cnt[0]~6\ = CARRY(\p2|p5|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|cnt\(0),
	datad => VCC,
	combout => \p2|p5|cnt[0]~5_combout\,
	cout => \p2|p5|cnt[0]~6\);

-- Location: LCCOMB_X58_Y20_N18
\p2|p5|cnt[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|cnt[1]~8_combout\ = (\p2|p5|cnt\(1) & (!\p2|p5|cnt[0]~6\)) # (!\p2|p5|cnt\(1) & ((\p2|p5|cnt[0]~6\) # (GND)))
-- \p2|p5|cnt[1]~9\ = CARRY((!\p2|p5|cnt[0]~6\) # (!\p2|p5|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p5|cnt\(1),
	datad => VCC,
	cin => \p2|p5|cnt[0]~6\,
	combout => \p2|p5|cnt[1]~8_combout\,
	cout => \p2|p5|cnt[1]~9\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
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
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: LCCOMB_X64_Y20_N2
\p1|reg_var~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|reg_var~0_combout\ = (!\reset~combout\ & ((\enable~combout\ & (\data_in~combout\(0))) # (!\enable~combout\ & ((\p1|reg_var~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(0),
	datab => \reset~combout\,
	datac => \p1|reg_var~regout\,
	datad => \enable~combout\,
	combout => \p1|reg_var~0_combout\);

-- Location: LCFF_X64_Y20_N3
\p1|reg_var\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \p1|reg_var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|reg_var~regout\);

-- Location: LCCOMB_X64_Y20_N16
\p2|p2|on_off_out~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p2|on_off_out~feeder_combout\ = \p1|reg_var~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1|reg_var~regout\,
	combout => \p2|p2|on_off_out~feeder_combout\);

-- Location: LCFF_X64_Y20_N17
\p2|p2|on_off_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p2|on_off_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p2|on_off_out~regout\);

-- Location: LCCOMB_X57_Y20_N14
\p2|p3|smth~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p3|smth~feeder_combout\ = \p2|p2|on_off_out~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|p2|on_off_out~regout\,
	combout => \p2|p3|smth~feeder_combout\);

-- Location: LCFF_X57_Y20_N15
\p2|p3|smth\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p3|smth~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p3|smth~regout\);

-- Location: LCCOMB_X57_Y20_N2
\p2|p5|state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|state.s0~0_combout\ = !\p2|p5|state.s5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|p5|state.s5~regout\,
	combout => \p2|p5|state.s0~0_combout\);

-- Location: LCFF_X57_Y20_N3
\p2|p5|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|state.s0~0_combout\,
	ena => \p2|p3|smth~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|state.s0~regout\);

-- Location: LCCOMB_X57_Y20_N6
\p2|p5|state.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|state.s1~0_combout\ = !\p2|p5|state.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|p5|state.s0~regout\,
	combout => \p2|p5|state.s1~0_combout\);

-- Location: LCFF_X57_Y20_N7
\p2|p5|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|state.s1~0_combout\,
	ena => \p2|p3|smth~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|state.s1~regout\);

-- Location: LCFF_X57_Y20_N17
\p2|p5|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	sdata => \p2|p5|state.s1~regout\,
	sload => VCC,
	ena => \p2|p3|smth~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|state.s2~regout\);

-- Location: LCFF_X57_Y20_N19
\p2|p5|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	sdata => \p2|p5|state.s2~regout\,
	sload => VCC,
	ena => \p2|p3|smth~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|state.s3~regout\);

-- Location: LCCOMB_X57_Y20_N10
\p2|p5|state.s4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|state.s4~feeder_combout\ = \p2|p5|state.s3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|p5|state.s3~regout\,
	combout => \p2|p5|state.s4~feeder_combout\);

-- Location: LCFF_X57_Y20_N11
\p2|p5|state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|state.s4~feeder_combout\,
	ena => \p2|p3|smth~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|state.s4~regout\);

-- Location: LCFF_X57_Y20_N13
\p2|p5|state.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	sdata => \p2|p5|state.s4~regout\,
	sload => VCC,
	ena => \p2|p3|smth~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|state.s5~regout\);

-- Location: LCCOMB_X57_Y20_N18
\p2|p5|cnt[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|cnt[0]~7_combout\ = (\p2|p3|smth~regout\ & \p2|p5|state.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p3|smth~regout\,
	datad => \p2|p5|state.s5~regout\,
	combout => \p2|p5|cnt[0]~7_combout\);

-- Location: LCFF_X58_Y20_N19
\p2|p5|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|cnt[1]~8_combout\,
	ena => \p2|p5|cnt[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|cnt\(1));

-- Location: LCCOMB_X58_Y20_N20
\p2|p5|cnt[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|cnt[2]~10_combout\ = (\p2|p5|cnt\(2) & (\p2|p5|cnt[1]~9\ $ (GND))) # (!\p2|p5|cnt\(2) & (!\p2|p5|cnt[1]~9\ & VCC))
-- \p2|p5|cnt[2]~11\ = CARRY((\p2|p5|cnt\(2) & !\p2|p5|cnt[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|cnt\(2),
	datad => VCC,
	cin => \p2|p5|cnt[1]~9\,
	combout => \p2|p5|cnt[2]~10_combout\,
	cout => \p2|p5|cnt[2]~11\);

-- Location: LCCOMB_X58_Y20_N22
\p2|p5|cnt[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|cnt[3]~12_combout\ = (\p2|p5|cnt\(3) & (!\p2|p5|cnt[2]~11\)) # (!\p2|p5|cnt\(3) & ((\p2|p5|cnt[2]~11\) # (GND)))
-- \p2|p5|cnt[3]~13\ = CARRY((!\p2|p5|cnt[2]~11\) # (!\p2|p5|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|p5|cnt\(3),
	datad => VCC,
	cin => \p2|p5|cnt[2]~11\,
	combout => \p2|p5|cnt[3]~12_combout\,
	cout => \p2|p5|cnt[3]~13\);

-- Location: LCFF_X58_Y20_N23
\p2|p5|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|cnt[3]~12_combout\,
	ena => \p2|p5|cnt[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|cnt\(3));

-- Location: LCCOMB_X56_Y20_N14
\p2|p5|addr_f_rom[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|addr_f_rom[0]~1_combout\ = (\p2|p3|smth~regout\ & !\p2|p5|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|p3|smth~regout\,
	datad => \p2|p5|state.s0~regout\,
	combout => \p2|p5|addr_f_rom[0]~1_combout\);

-- Location: LCFF_X56_Y20_N27
\p2|p5|addr_f_rom[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	sdata => \p2|p5|cnt\(3),
	sload => VCC,
	ena => \p2|p5|addr_f_rom[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|addr_f_rom\(3));

-- Location: LCCOMB_X58_Y20_N24
\p2|p5|cnt[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|cnt[4]~14_combout\ = \p2|p5|cnt[3]~13\ $ (!\p2|p5|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p2|p5|cnt\(4),
	cin => \p2|p5|cnt[3]~13\,
	combout => \p2|p5|cnt[4]~14_combout\);

-- Location: LCFF_X58_Y20_N25
\p2|p5|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|cnt[4]~14_combout\,
	ena => \p2|p5|cnt[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|cnt\(4));

-- Location: LCFF_X56_Y20_N25
\p2|p5|addr_f_rom[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	sdata => \p2|p5|cnt\(4),
	sload => VCC,
	ena => \p2|p5|addr_f_rom[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|addr_f_rom\(4));

-- Location: LCFF_X58_Y20_N21
\p2|p5|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|cnt[2]~10_combout\,
	ena => \p2|p5|cnt[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|cnt\(2));

-- Location: LCFF_X56_Y20_N21
\p2|p5|addr_f_rom[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	sdata => \p2|p5|cnt\(2),
	sload => VCC,
	ena => \p2|p5|addr_f_rom[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|addr_f_rom\(2));

-- Location: LCCOMB_X57_Y20_N28
\p2|p4|rom~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~1_combout\ = (\p2|p5|addr_f_rom\(1) & ((\p2|p5|addr_f_rom\(3) $ (\p2|p5|addr_f_rom\(4))) # (!\p2|p5|addr_f_rom\(2)))) # (!\p2|p5|addr_f_rom\(1) & (\p2|p5|addr_f_rom\(3) $ ((\p2|p5|addr_f_rom\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(3),
	datac => \p2|p5|addr_f_rom\(4),
	datad => \p2|p5|addr_f_rom\(2),
	combout => \p2|p4|rom~1_combout\);

-- Location: LCFF_X57_Y20_N29
\p2|p4|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(1));

-- Location: LCCOMB_X58_Y20_N12
\p2|p5|data_t_ram[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|data_t_ram[0]~0_combout\ = (\p2|p5|state.s3~regout\ & ((\p2|p4|q\(1)))) # (!\p2|p5|state.s3~regout\ & (\p2|p4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p4|q\(2),
	datab => \p2|p4|q\(1),
	datad => \p2|p5|state.s3~regout\,
	combout => \p2|p5|data_t_ram[0]~0_combout\);

-- Location: LCCOMB_X57_Y20_N26
\p2|p4|q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|q[0]~0_combout\ = !\p2|p5|addr_f_rom\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|p5|addr_f_rom\(3),
	combout => \p2|p4|q[0]~0_combout\);

-- Location: LCFF_X57_Y20_N27
\p2|p4|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(0));

-- Location: LCCOMB_X57_Y20_N30
\p2|p5|data_t_ram[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|data_t_ram[0]~6_combout\ = (!\p2|p5|state.s1~regout\ & (\p2|p5|state.s0~regout\ & (\p2|p3|smth~regout\ & !\p2|p5|state.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|state.s1~regout\,
	datab => \p2|p5|state.s0~regout\,
	datac => \p2|p3|smth~regout\,
	datad => \p2|p5|state.s5~regout\,
	combout => \p2|p5|data_t_ram[0]~6_combout\);

-- Location: LCFF_X58_Y20_N13
\p2|p5|data_t_ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|data_t_ram[0]~0_combout\,
	sdata => \p2|p4|q\(0),
	sload => \p2|p5|state.s4~regout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|data_t_ram\(0));

-- Location: LCFF_X58_Y20_N17
\p2|p5|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|cnt[0]~5_combout\,
	ena => \p2|p5|cnt[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|cnt\(0));

-- Location: LCCOMB_X58_Y20_N8
\p2|p5|waddr_t_ram[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|waddr_t_ram[0]~feeder_combout\ = \p2|p5|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|p5|cnt\(0),
	combout => \p2|p5|waddr_t_ram[0]~feeder_combout\);

-- Location: LCFF_X58_Y20_N9
\p2|p5|waddr_t_ram[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|waddr_t_ram[0]~feeder_combout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|waddr_t_ram\(0));

-- Location: LCCOMB_X58_Y20_N10
\p2|p5|waddr_t_ram[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|waddr_t_ram[1]~feeder_combout\ = \p2|p5|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|p5|cnt\(1),
	combout => \p2|p5|waddr_t_ram[1]~feeder_combout\);

-- Location: LCFF_X58_Y20_N11
\p2|p5|waddr_t_ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|waddr_t_ram[1]~feeder_combout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|waddr_t_ram\(1));

-- Location: LCCOMB_X58_Y20_N26
\p2|p5|waddr_t_ram[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|waddr_t_ram[2]~feeder_combout\ = \p2|p5|cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|p5|cnt\(2),
	combout => \p2|p5|waddr_t_ram[2]~feeder_combout\);

-- Location: LCFF_X58_Y20_N27
\p2|p5|waddr_t_ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|waddr_t_ram[2]~feeder_combout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|waddr_t_ram\(2));

-- Location: LCCOMB_X58_Y20_N0
\p2|p5|waddr_t_ram[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|waddr_t_ram[3]~feeder_combout\ = \p2|p5|cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|p5|cnt\(3),
	combout => \p2|p5|waddr_t_ram[3]~feeder_combout\);

-- Location: LCFF_X58_Y20_N1
\p2|p5|waddr_t_ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|waddr_t_ram[3]~feeder_combout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|waddr_t_ram\(3));

-- Location: LCCOMB_X58_Y20_N2
\p2|p5|waddr_t_ram[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|waddr_t_ram[4]~feeder_combout\ = \p2|p5|cnt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p2|p5|cnt\(4),
	combout => \p2|p5|waddr_t_ram[4]~feeder_combout\);

-- Location: LCFF_X58_Y20_N3
\p2|p5|waddr_t_ram[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|waddr_t_ram[4]~feeder_combout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|waddr_t_ram\(4));

-- Location: LCCOMB_X57_Y20_N16
\p2|p5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|WideOr1~0_combout\ = (\p2|p5|state.s1~regout\) # ((\p2|p5|state.s5~regout\) # (!\p2|p5|state.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|state.s1~regout\,
	datab => \p2|p5|state.s0~regout\,
	datad => \p2|p5|state.s5~regout\,
	combout => \p2|p5|WideOr1~0_combout\);

-- Location: LCCOMB_X57_Y20_N20
\p2|p5|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|Selector10~0_combout\ = (\p2|p5|state.s3~regout\) # ((\p2|p5|waddr_t_ram\(5) & \p2|p5|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p5|state.s3~regout\,
	datac => \p2|p5|waddr_t_ram\(5),
	datad => \p2|p5|WideOr1~0_combout\,
	combout => \p2|p5|Selector10~0_combout\);

-- Location: LCFF_X57_Y20_N21
\p2|p5|waddr_t_ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|Selector10~0_combout\,
	ena => \p2|p3|smth~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|waddr_t_ram\(5));

-- Location: LCCOMB_X57_Y20_N4
\p2|p5|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|Selector9~0_combout\ = (\p2|p5|state.s4~regout\) # ((\p2|p5|waddr_t_ram\(6) & \p2|p5|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p5|state.s4~regout\,
	datac => \p2|p5|waddr_t_ram\(6),
	datad => \p2|p5|WideOr1~0_combout\,
	combout => \p2|p5|Selector9~0_combout\);

-- Location: LCFF_X57_Y20_N5
\p2|p5|waddr_t_ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|Selector9~0_combout\,
	ena => \p2|p3|smth~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|waddr_t_ram\(6));

-- Location: LCFF_X53_Y20_N25
\p2|p6|p1|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p6|p1|cnt[4]~15_combout\,
	sclr => \p2|p6|p1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p6|p1|cnt\(4));

-- Location: LCFF_X56_Y20_N19
\p2|p5|addr_f_rom[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	sdata => \p2|p5|cnt\(0),
	sload => VCC,
	ena => \p2|p5|addr_f_rom[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|addr_f_rom\(0));

-- Location: LCFF_X56_Y20_N3
\p2|p5|addr_f_rom[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	sdata => \p2|p5|cnt\(1),
	sload => VCC,
	ena => \p2|p5|addr_f_rom[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|addr_f_rom\(1));

-- Location: LCCOMB_X56_Y20_N24
\p2|p4|rom~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~38_combout\ = (\p2|p5|addr_f_rom\(1) & (\p2|p5|addr_f_rom\(3) $ ((\p2|p5|addr_f_rom\(4))))) # (!\p2|p5|addr_f_rom\(1) & ((\p2|p5|addr_f_rom\(3) & ((\p2|p5|addr_f_rom\(4)) # (!\p2|p5|addr_f_rom\(0)))) # (!\p2|p5|addr_f_rom\(3) & 
-- ((\p2|p5|addr_f_rom\(0)) # (!\p2|p5|addr_f_rom\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(3),
	datab => \p2|p5|addr_f_rom\(1),
	datac => \p2|p5|addr_f_rom\(4),
	datad => \p2|p5|addr_f_rom\(0),
	combout => \p2|p4|rom~38_combout\);

-- Location: LCCOMB_X56_Y20_N12
\p2|p4|rom~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~39_combout\ = (\p2|p4|rom~38_combout\ & (\p2|p5|addr_f_rom\(2) $ ((\p2|p5|addr_f_rom\(0))))) # (!\p2|p4|rom~38_combout\ & (\p2|p5|addr_f_rom\(2) & (\p2|p5|addr_f_rom\(0) & !\p2|p5|addr_f_rom\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p4|rom~38_combout\,
	datad => \p2|p5|addr_f_rom\(1),
	combout => \p2|p4|rom~39_combout\);

-- Location: LCFF_X56_Y20_N13
\p2|p4|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(5));

-- Location: LCCOMB_X58_Y20_N6
\p2|p5|data_t_ram[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|data_t_ram[1]~1_combout\ = (\p2|p5|state.s3~regout\ & (\p2|p4|q\(4))) # (!\p2|p5|state.s3~regout\ & ((\p2|p4|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p4|q\(4),
	datab => \p2|p5|state.s3~regout\,
	datad => \p2|p4|q\(5),
	combout => \p2|p5|data_t_ram[1]~1_combout\);

-- Location: LCCOMB_X56_Y20_N2
\p2|p4|rom~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~5_combout\ = (!\p2|p5|addr_f_rom\(4) & (\p2|p5|addr_f_rom\(2) $ (((\p2|p5|addr_f_rom\(0) & \p2|p5|addr_f_rom\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(1),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~5_combout\);

-- Location: LCCOMB_X55_Y20_N2
\p2|p4|rom~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~7_combout\ = (\p2|p5|addr_f_rom\(3) & ((\p2|p4|rom~5_combout\))) # (!\p2|p5|addr_f_rom\(3) & (!\p2|p4|rom~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p4|rom~6_combout\,
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p4|rom~5_combout\,
	combout => \p2|p4|rom~7_combout\);

-- Location: LCFF_X55_Y20_N3
\p2|p4|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(3));

-- Location: LCFF_X58_Y20_N7
\p2|p5|data_t_ram[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|data_t_ram[1]~1_combout\,
	sdata => \p2|p4|q\(3),
	sload => \p2|p5|state.s4~regout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|data_t_ram\(1));

-- Location: LCCOMB_X55_Y20_N20
\p2|p4|rom~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~11_combout\ = (\p2|p5|addr_f_rom\(3) & (!\p2|p5|addr_f_rom\(4) & ((\p2|p5|addr_f_rom\(2)) # (\p2|p5|addr_f_rom\(0))))) # (!\p2|p5|addr_f_rom\(3) & (\p2|p5|addr_f_rom\(4) & (\p2|p5|addr_f_rom\(2) $ (!\p2|p5|addr_f_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~11_combout\);

-- Location: LCCOMB_X56_Y20_N30
\p2|p4|rom~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~12_combout\ = (\p2|p5|addr_f_rom\(0) & ((\p2|p5|addr_f_rom\(2)) # ((\p2|p5|addr_f_rom\(3)) # (!\p2|p5|addr_f_rom\(4))))) # (!\p2|p5|addr_f_rom\(0) & ((\p2|p5|addr_f_rom\(3) & (!\p2|p5|addr_f_rom\(2) & !\p2|p5|addr_f_rom\(4))) # 
-- (!\p2|p5|addr_f_rom\(3) & ((\p2|p5|addr_f_rom\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~12_combout\);

-- Location: LCCOMB_X55_Y20_N16
\p2|p4|rom~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~13_combout\ = (\p2|p5|addr_f_rom\(1) & (\p2|p4|rom~11_combout\)) # (!\p2|p5|addr_f_rom\(1) & ((\p2|p4|rom~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datac => \p2|p4|rom~11_combout\,
	datad => \p2|p4|rom~12_combout\,
	combout => \p2|p4|rom~13_combout\);

-- Location: LCFF_X55_Y20_N17
\p2|p4|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(7));

-- Location: LCCOMB_X58_Y20_N28
\p2|p5|data_t_ram[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|data_t_ram[2]~2_combout\ = (\p2|p5|state.s3~regout\ & ((\p2|p4|q\(7)))) # (!\p2|p5|state.s3~regout\ & (\p2|p4|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p4|q\(8),
	datab => \p2|p4|q\(7),
	datad => \p2|p5|state.s3~regout\,
	combout => \p2|p5|data_t_ram[2]~2_combout\);

-- Location: LCCOMB_X55_Y20_N30
\p2|p4|rom~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~14_combout\ = (!\p2|p5|addr_f_rom\(0) & (!\p2|p5|addr_f_rom\(4) & (\p2|p5|addr_f_rom\(1) $ (\p2|p5|addr_f_rom\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(2),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~14_combout\);

-- Location: LCCOMB_X55_Y20_N6
\p2|p4|rom~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~6_combout\ = (\p2|p5|addr_f_rom\(4) & ((\p2|p5|addr_f_rom\(0) & ((!\p2|p5|addr_f_rom\(2)))) # (!\p2|p5|addr_f_rom\(0) & (\p2|p5|addr_f_rom\(1) & \p2|p5|addr_f_rom\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(2),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~6_combout\);

-- Location: LCCOMB_X55_Y20_N10
\p2|p4|rom~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~15_combout\ = (\p2|p5|addr_f_rom\(3) & (\p2|p4|rom~14_combout\)) # (!\p2|p5|addr_f_rom\(3) & ((!\p2|p4|rom~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p4|rom~14_combout\,
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p4|rom~6_combout\,
	combout => \p2|p4|rom~15_combout\);

-- Location: LCFF_X55_Y20_N11
\p2|p4|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(6));

-- Location: LCFF_X58_Y20_N29
\p2|p5|data_t_ram[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|data_t_ram[2]~2_combout\,
	sdata => \p2|p4|q\(6),
	sload => \p2|p5|state.s4~regout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|data_t_ram\(2));

-- Location: LCCOMB_X56_Y20_N18
\p2|p4|rom~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~36_combout\ = (\p2|p5|addr_f_rom\(4) & (!\p2|p5|addr_f_rom\(3) & ((\p2|p5|addr_f_rom\(2)) # (!\p2|p5|addr_f_rom\(0))))) # (!\p2|p5|addr_f_rom\(4) & (\p2|p5|addr_f_rom\(3) & ((\p2|p5|addr_f_rom\(0)) # (!\p2|p5|addr_f_rom\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(4),
	datac => \p2|p5|addr_f_rom\(0),
	datad => \p2|p5|addr_f_rom\(3),
	combout => \p2|p4|rom~36_combout\);

-- Location: LCCOMB_X56_Y20_N4
\p2|p4|rom~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~37_combout\ = (\p2|p5|addr_f_rom\(1) & ((\p2|p5|addr_f_rom\(0) & ((\p2|p4|rom~36_combout\))) # (!\p2|p5|addr_f_rom\(0) & ((!\p2|p4|rom~36_combout\) # (!\p2|p5|addr_f_rom\(2)))))) # (!\p2|p5|addr_f_rom\(1) & (\p2|p4|rom~36_combout\ & 
-- ((\p2|p5|addr_f_rom\(2)) # (!\p2|p5|addr_f_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(2),
	datad => \p2|p4|rom~36_combout\,
	combout => \p2|p4|rom~37_combout\);

-- Location: LCFF_X56_Y20_N5
\p2|p4|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(10));

-- Location: LCCOMB_X58_Y20_N14
\p2|p5|data_t_ram[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|data_t_ram[3]~3_combout\ = (\p2|p5|state.s3~regout\ & ((\p2|p4|q\(10)))) # (!\p2|p5|state.s3~regout\ & (\p2|p4|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p4|q\(11),
	datab => \p2|p5|state.s3~regout\,
	datad => \p2|p4|q\(10),
	combout => \p2|p5|data_t_ram[3]~3_combout\);

-- Location: LCCOMB_X55_Y20_N26
\p2|p4|rom~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~19_combout\ = (!\p2|p5|addr_f_rom\(1) & (!\p2|p5|addr_f_rom\(4) & (\p2|p5|addr_f_rom\(0) $ (\p2|p5|addr_f_rom\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(2),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~19_combout\);

-- Location: LCCOMB_X55_Y20_N22
\p2|p4|rom~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~20_combout\ = (\p2|p5|addr_f_rom\(3) & (\p2|p4|rom~19_combout\)) # (!\p2|p5|addr_f_rom\(3) & ((!\p2|p4|rom~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p4|rom~19_combout\,
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p4|rom~6_combout\,
	combout => \p2|p4|rom~20_combout\);

-- Location: LCFF_X55_Y20_N23
\p2|p4|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(9));

-- Location: LCFF_X58_Y20_N15
\p2|p5|data_t_ram[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|data_t_ram[3]~3_combout\,
	sdata => \p2|p4|q\(9),
	sload => \p2|p5|state.s4~regout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|data_t_ram\(3));

-- Location: LCCOMB_X55_Y20_N14
\p2|p4|rom~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~25_combout\ = (\p2|p5|addr_f_rom\(1) & ((\p2|p5|addr_f_rom\(3) & ((\p2|p5|addr_f_rom\(4)))) # (!\p2|p5|addr_f_rom\(3) & ((!\p2|p5|addr_f_rom\(4)) # (!\p2|p5|addr_f_rom\(2)))))) # (!\p2|p5|addr_f_rom\(1) & (((!\p2|p5|addr_f_rom\(3) & 
-- \p2|p5|addr_f_rom\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(2),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~25_combout\);

-- Location: LCCOMB_X55_Y20_N28
\p2|p4|rom~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~24_combout\ = (\p2|p5|addr_f_rom\(1) & (!\p2|p5|addr_f_rom\(4) & (\p2|p5|addr_f_rom\(3) & \p2|p5|addr_f_rom\(2)))) # (!\p2|p5|addr_f_rom\(1) & (!\p2|p5|addr_f_rom\(2) & (\p2|p5|addr_f_rom\(4) $ (\p2|p5|addr_f_rom\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(4),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(2),
	combout => \p2|p4|rom~24_combout\);

-- Location: LCCOMB_X55_Y20_N4
\p2|p4|rom~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~26_combout\ = (\p2|p5|addr_f_rom\(0) & (!\p2|p4|rom~25_combout\)) # (!\p2|p5|addr_f_rom\(0) & ((\p2|p4|rom~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p4|rom~25_combout\,
	datad => \p2|p4|rom~24_combout\,
	combout => \p2|p4|rom~26_combout\);

-- Location: LCFF_X55_Y20_N5
\p2|p4|q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(16));

-- Location: LCCOMB_X59_Y20_N20
\p2|p4|rom~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~21_combout\ = (\p2|p5|addr_f_rom\(1) & (!\p2|p5|addr_f_rom\(3) & ((!\p2|p5|addr_f_rom\(2)) # (!\p2|p5|addr_f_rom\(0))))) # (!\p2|p5|addr_f_rom\(1) & ((\p2|p5|addr_f_rom\(0)) # ((!\p2|p5|addr_f_rom\(3) & \p2|p5|addr_f_rom\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(2),
	combout => \p2|p4|rom~21_combout\);

-- Location: LCCOMB_X59_Y20_N2
\p2|p4|rom~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~22_combout\ = (\p2|p5|addr_f_rom\(0) & (!\p2|p5|addr_f_rom\(1) & (!\p2|p5|addr_f_rom\(3)))) # (!\p2|p5|addr_f_rom\(0) & (\p2|p5|addr_f_rom\(3) & (\p2|p5|addr_f_rom\(1) $ (\p2|p5|addr_f_rom\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(1),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(2),
	combout => \p2|p4|rom~22_combout\);

-- Location: LCCOMB_X59_Y20_N24
\p2|p4|rom~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~23_combout\ = (\p2|p5|addr_f_rom\(4) & (\p2|p4|rom~21_combout\)) # (!\p2|p5|addr_f_rom\(4) & ((\p2|p4|rom~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(4),
	datac => \p2|p4|rom~21_combout\,
	datad => \p2|p4|rom~22_combout\,
	combout => \p2|p4|rom~23_combout\);

-- Location: LCFF_X59_Y20_N25
\p2|p4|q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(17));

-- Location: LCCOMB_X58_Y20_N4
\p2|p5|data_t_ram[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|data_t_ram[5]~4_combout\ = (\p2|p5|state.s3~regout\ & (\p2|p4|q\(16))) # (!\p2|p5|state.s3~regout\ & ((\p2|p4|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|state.s3~regout\,
	datab => \p2|p4|q\(16),
	datad => \p2|p4|q\(17),
	combout => \p2|p5|data_t_ram[5]~4_combout\);

-- Location: LCCOMB_X59_Y20_N0
\p2|p4|rom~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~27_combout\ = (\p2|p5|addr_f_rom\(0) & (\p2|p5|addr_f_rom\(4) & ((!\p2|p5|addr_f_rom\(1)) # (!\p2|p5|addr_f_rom\(2))))) # (!\p2|p5|addr_f_rom\(0) & ((\p2|p5|addr_f_rom\(2) & ((\p2|p5|addr_f_rom\(4)) # (!\p2|p5|addr_f_rom\(1)))) # 
-- (!\p2|p5|addr_f_rom\(2) & (\p2|p5|addr_f_rom\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(0),
	datac => \p2|p5|addr_f_rom\(1),
	datad => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~27_combout\);

-- Location: LCCOMB_X59_Y20_N14
\p2|p4|rom~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~28_combout\ = (\p2|p4|rom~27_combout\ & ((!\p2|p5|addr_f_rom\(4)))) # (!\p2|p4|rom~27_combout\ & (!\p2|p5|addr_f_rom\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(3),
	datac => \p2|p5|addr_f_rom\(4),
	datad => \p2|p4|rom~27_combout\,
	combout => \p2|p4|rom~28_combout\);

-- Location: LCFF_X59_Y20_N15
\p2|p4|q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(15));

-- Location: LCFF_X58_Y20_N5
\p2|p5|data_t_ram[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|data_t_ram[5]~4_combout\,
	sdata => \p2|p4|q\(15),
	sload => \p2|p5|state.s4~regout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|data_t_ram\(5));

-- Location: LCCOMB_X56_Y20_N6
\p2|p4|rom~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~32_combout\ = (\p2|p5|addr_f_rom\(1) & (\p2|p5|addr_f_rom\(3) & (\p2|p5|addr_f_rom\(2) $ (!\p2|p5|addr_f_rom\(0))))) # (!\p2|p5|addr_f_rom\(1) & (\p2|p5|addr_f_rom\(2) $ (((\p2|p5|addr_f_rom\(3)) # (\p2|p5|addr_f_rom\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p5|addr_f_rom\(2),
	datab => \p2|p5|addr_f_rom\(1),
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p5|addr_f_rom\(0),
	combout => \p2|p4|rom~32_combout\);

-- Location: LCCOMB_X57_Y20_N22
\p2|p4|rom~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~34_combout\ = (\p2|p5|addr_f_rom\(4) & (!\p2|p4|rom~33_combout\)) # (!\p2|p5|addr_f_rom\(4) & ((\p2|p4|rom~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p4|rom~33_combout\,
	datab => \p2|p4|rom~32_combout\,
	datac => \p2|p5|addr_f_rom\(4),
	combout => \p2|p4|rom~34_combout\);

-- Location: LCFF_X57_Y20_N23
\p2|p4|q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(19));

-- Location: LCCOMB_X58_Y20_N30
\p2|p5|data_t_ram[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p5|data_t_ram[6]~5_combout\ = (\p2|p5|state.s3~regout\ & ((\p2|p4|q\(19)))) # (!\p2|p5|state.s3~regout\ & (\p2|p4|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p4|q\(20),
	datab => \p2|p4|q\(19),
	datad => \p2|p5|state.s3~regout\,
	combout => \p2|p5|data_t_ram[6]~5_combout\);

-- Location: LCCOMB_X55_Y20_N18
\p2|p4|rom~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p4|rom~35_combout\ = (\p2|p4|rom~5_combout\) # (!\p2|p5|addr_f_rom\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|p5|addr_f_rom\(3),
	datad => \p2|p4|rom~5_combout\,
	combout => \p2|p4|rom~35_combout\);

-- Location: LCFF_X55_Y20_N19
\p2|p4|q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p4|rom~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p4|q\(18));

-- Location: LCFF_X58_Y20_N31
\p2|p5|data_t_ram[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|p1|temporal~clkctrl_outclk\,
	datain => \p2|p5|data_t_ram[6]~5_combout\,
	sdata => \p2|p4|q\(18),
	sload => \p2|p5|state.s4~regout\,
	ena => \p2|p5|data_t_ram[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|p5|data_t_ram\(6));

-- Location: M4K_X52_Y20
\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000204FFFFFFFFFF0102040810FFFFFF000204FFFF20FFFF01FF04FF10FF40FF0002040810204080070E1C3870E0D0A003060C183060D0A001020408102040FF8102050A152A55AA8102050A152A54A88142251A142850A00103070F1F3F7FFF0100000C20080418000000030C300C304010040103C003C01818E00018181818",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/led.ram0_simple_dual_port_ram_single_clock_c2af7d2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "matrix_block:p2|matrix_cntr:p6|simple_dual_port_ram_single_clock:p2|altsyncram:ram_rtl_0|altsyncram_3kn1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
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
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 7,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \p2|p5|we~regout\,
	portbrewe => VCC,
	clk0 => \p2|p1|temporal~clkctrl_outclk\,
	portadatain => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X53_Y20_N14
\p2|p6|p1|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p1|Add1~12_combout\ = \p2|p6|p1|Add1~11\ $ (\p2|p6|p1|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p2|p6|p1|cnt\(6),
	cin => \p2|p6|p1|Add1~11\,
	combout => \p2|p6|p1|Add1~12_combout\);

-- Location: LCCOMB_X64_Y24_N0
\p2|p6|p4|R[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|R\(0) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|R\(0));

-- Location: LCCOMB_X64_Y24_N2
\p2|p6|p4|R[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|R\(1) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|R\(1));

-- Location: LCCOMB_X64_Y26_N16
\p2|p6|p4|R[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|R\(2) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|R\(2));

-- Location: LCCOMB_X64_Y24_N4
\p2|p6|p4|R[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|R\(3) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|R\(3));

-- Location: LCCOMB_X64_Y24_N30
\p2|p6|p4|R[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|R\(4) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|R\(4));

-- Location: LCCOMB_X64_Y26_N22
\p2|p6|p4|R[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|R\(5) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|R\(5));

-- Location: LCCOMB_X64_Y24_N16
\p2|p6|p4|R[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|R\(6) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datab => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|R\(6));

-- Location: LCCOMB_X64_Y24_N14
\p2|p6|p4|R[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|R\(7) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|R\(7));

-- Location: LCCOMB_X64_Y24_N20
\p2|p6|p4|G[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|G\(0) = (\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|G\(0));

-- Location: LCCOMB_X64_Y24_N22
\p2|p6|p4|G[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|G\(1) = (\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|G\(1));

-- Location: LCCOMB_X64_Y26_N0
\p2|p6|p4|G[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|G\(2) = (\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|G\(2));

-- Location: LCCOMB_X64_Y24_N8
\p2|p6|p4|G[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|G\(3) = (\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|G\(3));

-- Location: LCCOMB_X64_Y24_N18
\p2|p6|p4|G[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|G\(4) = (\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|G\(4));

-- Location: LCCOMB_X64_Y26_N10
\p2|p6|p4|G[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|G\(5) = (\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|G\(5));

-- Location: LCCOMB_X64_Y26_N24
\p2|p6|p4|G[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|G\(6) = (\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|G\(6));

-- Location: LCCOMB_X64_Y24_N24
\p2|p6|p4|G[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|G\(7) = (\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ & !\p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|G\(7));

-- Location: LCCOMB_X64_Y24_N6
\p2|p6|p4|B[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|B\(0) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|B\(0));

-- Location: LCCOMB_X64_Y24_N12
\p2|p6|p4|B[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|B\(1) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a1\ & \p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|B\(1));

-- Location: LCCOMB_X64_Y26_N14
\p2|p6|p4|B[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|B\(2) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a2\ & \p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|B\(2));

-- Location: LCCOMB_X64_Y24_N26
\p2|p6|p4|B[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|B\(3) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a3\ & \p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|B\(3));

-- Location: LCCOMB_X64_Y24_N28
\p2|p6|p4|B[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|B\(4) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a4\ & \p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|B\(4));

-- Location: LCCOMB_X64_Y26_N12
\p2|p6|p4|B[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|B\(5) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a5\ & \p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|B\(5));

-- Location: LCCOMB_X64_Y26_N30
\p2|p6|p4|B[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|B\(6) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a6\ & \p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|B\(6));

-- Location: LCCOMB_X64_Y24_N10
\p2|p6|p4|B[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|p6|p4|B\(7) = (!\p2|p6|p1|Add1~10_combout\ & (\p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a7\ & \p2|p6|p1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|p6|p1|Add1~10_combout\,
	datac => \p2|p6|p2|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \p2|p6|p1|Add1~12_combout\,
	combout => \p2|p6|p4|B\(7));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : cycloneii_io
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
	padio => ww_data_in(1));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : cycloneii_io
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
	padio => ww_data_in(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : cycloneii_io
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
	padio => ww_data_in(3));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : cycloneii_io
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
	padio => ww_data_in(4));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[5]~I\ : cycloneii_io
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
	padio => ww_data_in(5));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[6]~I\ : cycloneii_io
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
	padio => ww_data_in(6));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[7]~I\ : cycloneii_io
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
	padio => ww_data_in(7));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[8]~I\ : cycloneii_io
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
	padio => ww_data_in(8));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[9]~I\ : cycloneii_io
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
	padio => ww_data_in(9));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[10]~I\ : cycloneii_io
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
	padio => ww_data_in(10));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[11]~I\ : cycloneii_io
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
	padio => ww_data_in(11));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[12]~I\ : cycloneii_io
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
	padio => ww_data_in(12));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[13]~I\ : cycloneii_io
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
	padio => ww_data_in(13));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[14]~I\ : cycloneii_io
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
	padio => ww_data_in(14));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[15]~I\ : cycloneii_io
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
	padio => ww_data_in(15));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[16]~I\ : cycloneii_io
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
	padio => ww_data_in(16));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[17]~I\ : cycloneii_io
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
	padio => ww_data_in(17));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[18]~I\ : cycloneii_io
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
	padio => ww_data_in(18));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[19]~I\ : cycloneii_io
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
	padio => ww_data_in(19));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[20]~I\ : cycloneii_io
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
	padio => ww_data_in(20));

-- Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[21]~I\ : cycloneii_io
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
	padio => ww_data_in(21));

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[22]~I\ : cycloneii_io
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
	padio => ww_data_in(22));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[23]~I\ : cycloneii_io
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
	padio => ww_data_in(23));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[24]~I\ : cycloneii_io
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
	padio => ww_data_in(24));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[25]~I\ : cycloneii_io
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
	padio => ww_data_in(25));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[26]~I\ : cycloneii_io
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
	padio => ww_data_in(26));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[27]~I\ : cycloneii_io
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
	padio => ww_data_in(27));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[28]~I\ : cycloneii_io
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
	padio => ww_data_in(28));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[29]~I\ : cycloneii_io
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
	padio => ww_data_in(29));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[30]~I\ : cycloneii_io
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
	padio => ww_data_in(30));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[31]~I\ : cycloneii_io
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
	padio => ww_data_in(31));

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
	datain => \p2|p6|p3|Equal31~0_combout\,
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
	datain => \p2|p6|p3|Equal30~0_combout\,
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
	datain => \p2|p6|p3|Equal29~0_combout\,
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
	datain => \p2|p6|p3|Equal28~0_combout\,
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
	datain => \p2|p6|p3|Equal27~0_combout\,
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
	datain => \p2|p6|p3|Equal26~0_combout\,
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
	datain => \p2|p6|p3|Equal25~0_combout\,
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
	datain => \p2|p6|p3|Equal24~0_combout\,
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
	datain => \p2|p6|p3|Equal23~0_combout\,
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
	datain => \p2|p6|p3|Equal22~0_combout\,
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
	datain => \p2|p6|p3|Equal21~0_combout\,
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
	datain => \p2|p6|p3|Equal20~0_combout\,
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
	datain => \p2|p6|p3|Equal19~0_combout\,
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
	datain => \p2|p6|p3|Equal18~0_combout\,
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
	datain => \p2|p6|p3|Equal17~0_combout\,
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
	datain => \p2|p6|p3|Equal16~0_combout\,
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
	datain => \p2|p6|p3|Equal15~0_combout\,
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
	datain => \p2|p6|p3|Equal14~0_combout\,
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
	datain => \p2|p6|p3|Equal13~0_combout\,
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
	datain => \p2|p6|p3|Equal12~1_combout\,
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
	datain => \p2|p6|p3|Equal11~0_combout\,
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
	datain => \p2|p6|p3|Equal10~0_combout\,
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
	datain => \p2|p6|p3|Equal9~0_combout\,
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
	datain => \p2|p6|p3|Equal8~0_combout\,
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
	datain => \p2|p6|p3|Equal7~0_combout\,
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
	datain => \p2|p6|p3|Equal6~1_combout\,
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
	datain => \p2|p6|p3|Equal5~0_combout\,
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
	datain => \p2|p6|p3|Equal4~0_combout\,
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
	datain => \p2|p6|p3|Equal3~1_combout\,
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
	datain => \p2|p6|p3|Equal2~1_combout\,
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
	datain => \p2|p6|p3|Equal1~1_combout\,
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
	datain => \p2|p6|p3|Equal0~1_combout\,
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
	datain => \p2|p6|p4|ALT_INV_R\(0),
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
	datain => \p2|p6|p4|ALT_INV_R\(1),
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
	datain => \p2|p6|p4|ALT_INV_R\(2),
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
	datain => \p2|p6|p4|ALT_INV_R\(3),
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
	datain => \p2|p6|p4|ALT_INV_R\(4),
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
	datain => \p2|p6|p4|ALT_INV_R\(5),
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
	datain => \p2|p6|p4|ALT_INV_R\(6),
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
	datain => \p2|p6|p4|ALT_INV_R\(7),
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
	datain => \p2|p6|p4|ALT_INV_G\(0),
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
	datain => \p2|p6|p4|ALT_INV_G\(1),
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
	datain => \p2|p6|p4|ALT_INV_G\(2),
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
	datain => \p2|p6|p4|ALT_INV_G\(3),
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
	datain => \p2|p6|p4|ALT_INV_G\(4),
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
	datain => \p2|p6|p4|ALT_INV_G\(5),
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
	datain => \p2|p6|p4|ALT_INV_G\(6),
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
	datain => \p2|p6|p4|ALT_INV_G\(7),
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
	datain => \p2|p6|p4|ALT_INV_B\(0),
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
	datain => \p2|p6|p4|ALT_INV_B\(1),
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
	datain => \p2|p6|p4|ALT_INV_B\(2),
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
	datain => \p2|p6|p4|ALT_INV_B\(3),
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
	datain => \p2|p6|p4|ALT_INV_B\(4),
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
	datain => \p2|p6|p4|ALT_INV_B\(5),
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
	datain => \p2|p6|p4|ALT_INV_B\(6),
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
	datain => \p2|p6|p4|ALT_INV_B\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nB(7));
END structure;


