-- Quartus II VHDL Template
-- Simple Dual-Port RAM with different read/write addresses but
-- single read/write clock

library ieee;
use ieee.std_logic_1164.all;

entity simple_dual_port_ram_single_clock is

	generic(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 7
	);

	port(
		clk   : in  std_logic;
		--адрес чтения
		raddr : in  natural range 0 to 2**ADDR_WIDTH - 1;
		--адрес записи
		waddr : in  natural range 0 to 2**ADDR_WIDTH - 1;
		--данные
		data  : in  std_logic_vector((DATA_WIDTH - 1) downto 0);
		we    : in  std_logic := '1';
		q     : out std_logic_vector((DATA_WIDTH - 1) downto 0)
	);

end simple_dual_port_ram_single_clock;

architecture rtl of simple_dual_port_ram_single_clock is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH - 1) downto 0);
	type memory_t is array (2**ADDR_WIDTH - 1 downto 0) of word_t;

	-- Declare the RAM signal.	
	signal ram : memory_t := ((0)    => "10101110",
	                          (1)    => "10010010",
	                          (2)    => "00000000",
	                          (3)    => "01000000",
	                          (4)    => "10100110",
	                          (5)    => "10010110",
	                          (6)    => "10000001",
	                          (7)    => "01000100",
	                          (8)    => "01001100",
	                          (9)    => "10010001",
	                          (10)   => "10110110",
	                          (11)   => "10010110",
	                          (12)   => "01001100",
	                          (13)   => "00100001",
	                          (14)   => "01100110",
	                          Others => "00011000");

begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (we = '1') then
				ram(waddr) <= data;
			end if;
			
			-- On a read during a write to the same address, the read will
			-- return the OLD data at the address
			q <= ram(raddr);
		end if;
	end process;

end rtl;