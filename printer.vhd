library IEEE;
use IEEE.std_logic_1164.all;

entity printer is
	generic(
		ADDR_WIDTH : natural := 7
	);
	port(
		clk   : in  std_logic;
		smth  : in  std_logic;
		addr  : out natural range 0 to 2**ADDR_WIDTH - 1;
		waddr : out natural range 0 to 2**ADDR_WIDTH - 1
	);
end printer;
architecture rtl of printer is
begin
end rtl;
