-- Quartus II VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity single_port_rom is

	generic(
		DATA_WIDTH : natural := 24;
		ADDR_WIDTH : natural := 7
	);

	port(
		clk  : in  std_logic;
		addr : in  natural range 0 to 2**ADDR_WIDTH - 1;
		q    : out std_logic_vector((DATA_WIDTH - 1) downto 0)
	);

end entity;

architecture rtl of single_port_rom is

	-- Build a 2-D array type for the RoM
	subtype word_t is std_logic_vector((DATA_WIDTH - 1) downto 0);
	type memory_t is array (2**ADDR_WIDTH - 1 downto 0) of word_t;

	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := (o"00000000",
	                          o"07700770",
	                          o"70077007",
	                          o"07000070",
	                          o"00700700",
	                          o"00077000",
	                          o"00000000",
	                          o"00000000",
	                          others => o"00770077");

begin

	process(clk)
	begin
		if (rising_edge(clk)) then
			q <= rom(addr);
		end if;
	end process;

end rtl;

