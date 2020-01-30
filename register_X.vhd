library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity register_X is
	port(
		clk         : in  std_logic;
		enable 		: in  std_logic;
		reset  : in  std_logic;
		--enable : in std_logic;
		--srst : in std_logic;
		data_in     : in  std_logic_vector(31 downto 0);
		data_out_en : out std_logic;
		data_out    : out std_logic
	);
end register_X;

architecture arh of register_X is
begin
	process(clk, reset, data_in, enable)
		variable reg_var : std_logic;
		variable reg_var2 : std_logic;
	begin
		if rising_edge(clk) then
			if (reset = '1') then
				reg_var := '0';
			elsif (enable = '1') then
				reg_var := data_in(0);
				reg_var2 := data_in(1);
			end if;
		end if;
		data_out_en <= reg_var;
		data_out <= reg_var2;
	end process;
end arh;