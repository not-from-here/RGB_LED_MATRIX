library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity frequency_converter is

	generic(
		INPUT_CLK : INTEGER := 50_000_000;
		OUT_CLK   : INTEGER := 2
	);

	port(
		clk_in  : in  STD_LOGIC;
		clk_out : out STD_LOGIC
	);

end frequency_converter;

architecture logic of frequency_converter is

	signal temporal : STD_LOGIC := '0';

begin

	frequency_divider : process(clk_in)
		constant max_counter_v : natural := (INPUT_CLK / (OUT_CLK * 2)) - 1;
		variable counter       : natural range 0 to max_counter_v := 0;
	begin
		if rising_edge(clk_in) then
			if (counter = max_counter_v) then
				temporal <= NOT (temporal);
				counter  := 0;
			else
				counter := counter + 1;
			end if;
		end if;
	end process;

	clk_out <= temporal;

end logic;
