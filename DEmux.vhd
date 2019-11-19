library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DEmux is

	port(
		data : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		sel  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		R    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		G    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		B    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);

end DEmux;

architecture rtl of DEmux is
begin
	process(data, sel)
	begin
		if sel = "00" then
			R <= data;
		   B <= "00000000";
			G <= "00000000";
		end if;
		if sel = "01" then
			G <= data;
			B <= "00000000";
			R <= "00000000";
		end if;
		if sel = "10" then
			B <= data;
			R <= "00000000";
			G <= "00000000";
		end if;
		if sel = "11" then
			R <= "11000000";
			B <= "00111000";
			G <= "00000111";
		end if;
	end process;
end rtl;
