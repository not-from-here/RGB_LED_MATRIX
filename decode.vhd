library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decode is
	generic(
		ADDR_WIDTH : natural := 5
	);
	port(
		row_in  : in  STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
		row_out : out STD_LOGIC_VECTOR((2**ADDR_WIDTH) - 1 DOWNTO 0)
	);

end decode;

architecture rtl of decode is
begin
	process(row_in)
	begin
		for i in row_in'range loop
			if row_in = STD_LOGIC_VECTOR(to_unsigned(i, ADDR_WIDTH)) then
				row_out(i) <= '1';
			else
				row_out(i) <= '0';
			end if;
		end loop;
	end process;
end rtl;
