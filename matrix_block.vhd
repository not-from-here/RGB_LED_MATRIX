library IEEE;
use IEEE.std_logic_1164.all;
entity matrix_block is

	port(
		clk         : in  std_logic;
		b_on_off_in : in  std_logic;
		b_swich_in  : in  std_logic;
		row_out     : out STD_LOGIC_VECTOR(31 DOWNTO 0);
		nR          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		nG          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		clkX        : out std_logic;
		nB          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end matrix_block;

architecture rtl of matrix_block is
	------------------------------------------------------
	component frequency_converter is
		generic(
			INPUT_CLK : INTEGER := 50_000_000;
			OUT_CLK   : INTEGER := 15
		);
		port(
			clk_in  : in  std_logic;
			clk_out : out std_logic
		);

	end component frequency_converter;
	------------------------------------------------------
	component button_cntr is
		port(clk        : in  std_logic;
		     on_off_in  : in  std_logic;
		     swich_in   : in  std_logic;
		     on_off_out : out std_logic;
		     swich_out  : out std_logic
		    );
	end component button_cntr;
	------------------------------------------------------
	component single_port_rom is

		generic(
			DATA_WIDTH : natural := 3 * 8;
			ADDR_WIDTH : natural := 5
		);

		port(
			clk  : in  std_logic;
			addr : in  natural range 0 to 2**ADDR_WIDTH - 1;
			q    : out std_logic_vector((DATA_WIDTH - 1) downto 0)
		);

	end component single_port_rom;
	------------------------------------------------------
	component main_block is
		port(
			clk        : in  std_logic;
			on_off_out : in  std_logic;
			swich_out  : in  std_logic;
			smth       : out std_logic
		);
	end component main_block;
	------------------------------------------------------
	component matrix_cntr is
		generic(
			DATA_WIDTH : natural := 8;
			ADDR_WIDTH : natural := 7
		);
		port(
			clk     : in  std_logic;
			waddr   : in  natural range 0 to 2**ADDR_WIDTH - 1;
			data    : in  std_logic_vector((DATA_WIDTH - 1) downto 0);
			we		  : in  std_logic;
			row_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			R       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			G       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			B       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	end component matrix_cntr;
	------------------------------------------------------
	component printer is
		generic(
			MIN_COUNT 		: natural := 0;
			MAX_COUNT 		: natural := 31;
			DATA_WIDTH_ROM : natural := 3 * 8;
			ADDR_WIDTH_ROM : natural := 5;
			DATA_WIDTH_RAM : natural := 8;
			ADDR_WIDTH_RAM : natural := 7
		);
		port(
			clk         : in  std_logic;
			smth        : in  std_logic;
			data_f_rom  : in  std_logic_vector((DATA_WIDTH_ROM - 1) downto 0);
			we		  		: out std_logic;
			data_t_ram  : out std_logic_vector((DATA_WIDTH_RAM - 1) downto 0);
			addr_f_rom  : out natural range 0 to 2**ADDR_WIDTH_ROM - 1; -- 0 -> 31
			waddr_t_ram : out natural range 0 to 2**ADDR_WIDTH_RAM - 1 -- 0 -> 127
		);
	end component printer;
	------------------------------------------------------
	signal clk_out_x   : std_logic;
	signal swich_out   : std_logic;
	signal on_off_out  : std_logic;
	signal smth        : std_logic;
	signal addr_f_rom  : natural range 0 to 2**5 - 1;
	signal waddr_t_ram : natural range 0 to 2**7 - 1;
	signal data_f_rom  : std_logic_vector(((3 * 8) - 1) downto 0);
	signal data_t_ram  : std_logic_vector(7 downto 0);
	signal R, G, B     : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal we			 : std_logic;
begin
	nR   <= not (R);
	nG   <= not (G);
	nB   <= not (B);
	p1 : frequency_converter port map(clk_in => clk, clk_out => clk_out_x);
	p2 : button_cntr port map(clk => clk_out_x, on_off_in => b_on_off_in, swich_in => b_swich_in, swich_out => swich_out, on_off_out => on_off_out);
	p3 : main_block port map(clk => clk_out_x, on_off_out => on_off_out, swich_out => swich_out, smth => smth);
	p5 : printer port map(clk => clk_out_x, smth => smth, waddr_t_ram => waddr_t_ram, data_f_rom => data_f_rom, data_t_ram => data_t_ram, addr_f_rom => addr_f_rom, we => we);
	p4 : single_port_rom port map(clk => clk_out_x, q => data_f_rom, addr => addr_f_rom);
	p6 : matrix_cntr port map(clk => clk_out_x, row_out => row_out, R => R, B => B, G => G, waddr => waddr_t_ram, data => data_t_ram, we => we);
	clkX <= clk_out_x;
end rtl;
