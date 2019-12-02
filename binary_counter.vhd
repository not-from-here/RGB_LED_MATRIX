-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binary_counter is

	generic(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 96
	);

	port(
		clk  : in  std_logic;
		q    : out integer range MIN_COUNT to MAX_COUNT;
		addr : out std_logic_vector(6 downto 0)
	);

end entity;

architecture rtl of binary_counter is
	signal qq : integer range MIN_COUNT to MAX_COUNT;
begin
	process(clk)
		variable cnt : integer range MIN_COUNT to MAX_COUNT;
	begin
		if (rising_edge(clk)) then
			if cnt < MAX_COUNT then
				cnt := cnt + 1;
			else
				cnt := 0;
			end if;
		end if;
		qq   <= cnt;
		q    <= cnt;
		addr <= std_logic_vector(to_unsigned(qq, addr'length) - to_unsigned(1, addr'length));
	end process;

end rtl;


