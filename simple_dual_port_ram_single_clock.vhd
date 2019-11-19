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
		raddr : in  natural range 0 to 2**ADDR_WIDTH - 1;
		waddr : in  natural range 0 to 2**ADDR_WIDTH - 1;
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
	signal ram : memory_t := ("00000000", -- A0
	                          "00000000",
	                          "00000000",
	                          "00000000",
	                          "00000000",
									  "00000000",
									  "00000000",
									  "00000000",
									  
									  "00000000",
	                          "00000000",
	                          "00000000",
	                          "00000000",
	                          "00000000",
									  "00000000",
									  "00000000",
									  "00000000",
									  
									  "00000000",
	                          "00000000",
	                          "00000000",
	                          "00000000",
	                          "00000000",
									  "00000000",
									  "00000000",
									  "00000000",
									  
									  
									  "00000000",
	                          "00000000",
	                          "00000000",
	                          "00000000",
	                          "00000000",
									  "00000000",
									  "00000000",
									  "00000000",
									  
									  
									  "10000001", -- R0
	                          "01000000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
									  "10000001",
									  
									  "10000001", -- R1
	                          "01000000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
									  "10000001",
									  
									  "10000001", -- R2
	                          "01000000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
									  "10000001",
									  
									  "10000001", -- R3
	                          "01000000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
									  "10000001",
									  
									  "11111111", -- G0
	                          "01000000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
									  "00000001",
									  
									  "10100000", -- G1
	                          "01010000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
	                          "00000000",
									  
									  "10000000", -- G2
	                          "01000000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
									  "00000001",
									  
									  "10000000", -- G3
	                          "01000000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
	                          "00000000",
									  
									  "11111111", -- B0
	                          "01000000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
									  "00000001",
									  
									  "11111111", -- B1
	                          "01010000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
	                          "00000000",
									  
									  "11111111", -- B2
	                          "01000000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
									  "00000001",
									  
									  "11111111", -- B3 
	                          "01010000",
	                          "00100000",
	                          "00010000",
	                          "00001000",
									  "00000100",
									  "00000010",
	                          "00000000"									  
									  );

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