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
		raddr : in  natural range 2**ADDR_WIDTH - 1 downto 0;
		waddr : in  natural range 0 to 2**ADDR_WIDTH - 1;
		data  : in  std_logic_vector((DATA_WIDTH - 1) downto 0);
		we    : in  std_logic := '1';
		q     : out std_logic_vector((DATA_WIDTH - 1) downto 0)
	);

end simple_dual_port_ram_single_clock;

architecture rtl of simple_dual_port_ram_single_clock is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector(0 to (DATA_WIDTH - 1));
	type memory_t is array (0 to 2**ADDR_WIDTH - 1) of word_t;

	-- Declare the RAM signal.	
	signal ram : memory_t := ("00011000", -- A0
	                          "00011000",
	                          "00011000",
	                          "00011000",
	                          "00000000",
	                          "11100000",
	                          "00011000",
	                          "00011000",
									  
	                          "11000000",
	                          "00000011",
	                          "11000000",
	                          "00000011",
	                          "00000001",
	                          "00000100",
	                          "00010000",
	                          "01000000",
									  
	                          "00110000",
	                          "00001100",
	                          "00110000",
	                          "00001100",
	                          "00000011",
	                          "00000000",
	                          "00000000",
	                          "00000000",
									  
	                          "00011000",
	                          "00000100",
	                          "00001000",
	                          "00100000",
	                          "00001100",
	                          "00000000",
	                          "00000000",
	                          "00000001",
									  
	                          "11111111", -- R0
	                          "01111111",
	                          "00111111",
	                          "00011111",
	                          "00001111",
	                          "00000111",
	                          "00000011",
	                          "00000001",
									  
	                          "10100000", -- R1
	                          "01010000",
	                          "00101000",
	                          "00010100",
	                          "00011010",
	                          "00100101",
	                          "01000010",
	                          "10000001",
									  
	                          "10101000", -- R2
	                          "01010100",
	                          "00101010",
	                          "00010101",
	                          "00001010",
	                          "00000101",
	                          "00000010",
	                          "10000001",
									  
	                          "10101010", -- R3
	                          "01010101",
	                          "00101010",
	                          "00010101",
	                          "00001010",
	                          "00000101",
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
	                          "11010000",
	                          "01100000",
	                          "00110000",
	                          "00011000",
	                          "00001100",
	                          "00000110",
	                          "00000011",
									  
	                          "10100000", -- G2
	                          "11010000",
	                          "11100000",
	                          "01110000",
	                          "00111000",
	                          "00011100",
	                          "00001110",
	                          "00000111",
									  
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
	                          "11111111",
	                          "00010000",
	                          "11111111",
	                          "00000100",
	                          "11111111",
	                          "00000001",
									  
	                          "11111111", -- B1
	                          "11111111",
	                          "00100000",
	                          "11111111",
	                          "11111111",
	                          "00000100",
	                          "00000010",
	                          "00000000",
									  
	                          "11111111", -- B2
	                          "11111111",
	                          "11111111",
	                          "00010000",
	                          "00001000",
	                          "00000100",
	                          "00000010",
	                          "00000001", --R1	

	                          "11111111", -- B3 
	                          "11111111",
	                          "11111111",
	                          "11111111",
	                          "11111111",
	                          "00000100",
	                          "00000010",
	                          "00000000" --R0								  
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
