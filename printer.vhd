library IEEE;
use IEEE.std_logic_1164.all;

entity printer is
	generic(
		DATA_WIDTH_ROM : natural := 3 * 8;
		ADDR_WIDTH_ROM : natural := 5;
		DATA_WIDTH_RAM : natural := 8;
		ADDR_WIDTH_RAM : natural := 7
	);
	port(
		clk         : in  std_logic;
		smth        : in  std_logic;
		data_f_rom  : in  std_logic_vector((DATA_WIDTH_ROM - 1) downto 0);
		data_t_ram  : out std_logic_vector((DATA_WIDTH_RAM - 1) downto 0);
		addr_f_rom  : out natural range 0 to 2**ADDR_WIDTH_ROM - 1; -- 0 -> 31
		waddr_t_ram : out natural range 0 to 2**ADDR_WIDTH_RAM - 1 -- 0 -> 127
	);
end printer;
architecture rtl of printer is
	signal pain : std_logic_vector((DATA_WIDTH_ROM - 1) downto 0) := data_f_rom;

begin
	process(clk)
	begin
		-- o"12345670", "001 010 011 100 101 110 111 000" =>

		-- 					B 	 G   BG  R   RB  RG RGB  -

		--:= (						  "00011110", 
		--   "00000000",
		--   "00000000",
		--   "00000000",
		--   "00000000",
		--	  "00000000",
		--	  "00000000",
		--	  "00000000",

		-- iter 1 R

	end process;

end rtl;

