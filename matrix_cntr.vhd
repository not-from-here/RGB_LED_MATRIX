library IEEE;
use IEEE.std_logic_1164.all;

entity matrix_cntr is
	generic(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 7
	);
	port(
		clk     : in  std_logic;
		we		  : in  std_logic;
		waddr   : in  natural range 0 to 2**ADDR_WIDTH - 1;
		data    : in  std_logic_vector((DATA_WIDTH - 1) downto 0);
		row_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		R       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		G       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		B       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end matrix_cntr;

architecture rtl of matrix_cntr is
---------------------------------------------------------------
component simple_dual_port_ram_single_clock is

	generic(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 7
	);

	port(
		clk   : in  std_logic;
		raddr : in  natural range 0 to 2**ADDR_WIDTH - 1;
		waddr : in  natural range 0 to 2**ADDR_WIDTH - 1;
		data  : in  std_logic_vector((DATA_WIDTH - 1) downto 0);
		we		: in  std_logic; --:= '1'
		q     : out std_logic_vector((DATA_WIDTH - 1) downto 0)
	);

end component simple_dual_port_ram_single_clock;
---------------------------------------------------------------
component binary_counter is

	generic(
		MIN_COUNT : natural := 0;
		MAX_COUNT : natural := 127
	);

	port(
		clk  : in  std_logic;
		q    : out integer range MIN_COUNT to MAX_COUNT;
		addr : out std_logic_vector(6 downto 0)
	);

end component;
---------------------------------------------------------------
component decode is
	port(
		row_in  : in  STD_LOGIC_VECTOR(4 DOWNTO 0);
		row_out : out STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
end component decode;
---------------------------------------------------------------
component DEmux is

	port(
		data : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		sel  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		R    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		G    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		B    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);

end component DEmux;
---------------------------------------------------------------
	signal dataD : std_logic_vector(4 downto 0);
	signal sel   : std_logic_vector(1 downto 0);
	signal q     : natural range 0 to 2**7 - 1;
	signal addr  : std_logic_vector(6 downto 0);
	signal dataR : STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
	p1 : binary_counter port map(clk => clk, addr => addr, q => q);
	p2 : simple_dual_port_ram_single_clock port map(clk => clk, raddr => q, data => data, we => we, waddr => waddr, q => dataR);

	sel   <= addr(6 downto 5);
	dataD <= addr(4 downto 0);

	p3 : decode port map(row_in => dataD, row_out => row_out);
	p4 : DEmux port map(R => R, G => G, B => B, sel => sel, data => dataR);

end rtl;
