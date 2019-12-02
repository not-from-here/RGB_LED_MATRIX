-- Quartus II VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity single_port_rom is

	generic(
		DATA_WIDTH : natural := 3 * 8;
		ADDR_WIDTH : natural := 5
	);

	port(
		clk  : in  std_logic;
		addr : in  natural range 0 to 2**ADDR_WIDTH - 1;
		q    : out std_logic_vector((DATA_WIDTH - 1) downto 0)
	);

end entity;

architecture rtl of single_port_rom is

	-- Build a 2-D array type for the RoM
	subtype word_t is std_logic_vector(0 to (DATA_WIDTH - 1));
	type memory_t is array (0 to 2**ADDR_WIDTH - 1) of word_t;

	-- Declare the ROM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := ( -- o"12345670", "001 010 011 100 101 110 111 000" =>

	                          -- 					                B  G   BG  R   RB  RG RGB  -

	                          --                					1   2    3  4   5   6  7   0
									  o"11111111",
	                          o"17711771",
	                          o"71177117",
	                          o"71111117",
	                          o"17111171",
	                          o"11711711",
	                          o"11177111",
	                          o"11111111",
									  
	                          o"22222222",
	                          o"22255222",
	                          o"22522522",
	                          o"25222252",
	                          o"25555552",
	                          o"25222252",
	                          o"25222252",
	                          o"22222222",
									  
	                          o"33333333",
	                          o"33444443",
	                          o"33433333",
	                          o"33444443",
	                          o"33433333",
	                          o"33433333",
	                          o"33444443",
	                          o"33333333",
									  
	                          o"00000000",
	                          o"06600660",
	                          o"60066006",
	                          o"60000006",
	                          o"06000060",
	                          o"00600600",
	                          o"00066000",
	                          o"00000000");

begin

	process(clk)
	begin
		if (rising_edge(clk)) then
			q <= rom(addr);
		end if;
	end process;

end rtl;

