library IEEE;
use IEEE.std_logic_1164.all;
entity main_block is
	port(
		clk        : in  std_logic;
		on_off_out : in  std_logic;
		swich_out  : in  std_logic;
		smth       : out std_logic
	);
end main_block;

architecture rtl of main_block is
begin
process(clk)
	begin
	if (rising_edge(clk)) then
		smth <= on_off_out;
	end if;
	end process;
end rtl;
