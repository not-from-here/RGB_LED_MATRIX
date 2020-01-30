library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity top_level is
	port(
		clk         : in  std_logic;
		enable 		: in  std_logic; --en
		reset  		: in  std_logic; --reset
		data_in     : in  std_logic_vector(31 downto 0);
		row_out     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		nR          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		nG          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		nB          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end top_level;

architecture rtl of top_level is
	-----------------------------------------------------
	component register_X is
			port(
		clk         : in  std_logic;
		enable 		: in  std_logic;
		reset  		: in  std_logic;
		data_in     : in  std_logic_vector(31 downto 0);
		data_out_en : out std_logic;
		data_out    : out std_logic
	);
	end component register_X;
	-----------------------------------------------------
	component matrix_block is

		port(
			clk         : in  std_logic;
			b_on_off_in : in  std_logic;
			b_swich_in  : in  std_logic;
			row_out     : out STD_LOGIC_VECTOR(31 DOWNTO 0);
			nR          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			nG          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			nB          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	end component matrix_block;
	-----------------------------------------------------
	signal data_out_en  : std_logic;
	signal data_out     : std_logic;
begin
	p1 : register_X port map(clk => clk, enable => enable, reset => reset, data_in => data_in, data_out_en => data_out_en,data_out => data_out);
	p2 : matrix_block port map(clk => clk, b_on_off_in => data_out_en, b_swich_in => data_out, nR => nR, nG => nG, nB => nB, row_out => row_out);
end architecture;





