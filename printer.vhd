library IEEE;
use IEEE.std_logic_1164.all;

entity printer is
	generic(
		MIN_COUNT      : natural := 0;
		MAX_COUNT      : natural := 32;
		DATA_WIDTH_ROM : natural := 3 * 8;
		ADDR_WIDTH_ROM : natural := 5;
		DATA_WIDTH_RAM : natural := 8;
		ADDR_WIDTH_RAM : natural := 7
	);
	port(
		clk         : in  std_logic;
		smth        : in  std_logic;
		data_f_rom  : in  std_logic_vector((DATA_WIDTH_ROM - 1) downto 0); -- 4 -> 0
		we          : out std_logic;
		data_t_ram  : out std_logic_vector((DATA_WIDTH_RAM - 1) downto 0); -- 7 -> 0
		addr_f_rom  : out natural range 0 to 2**ADDR_WIDTH_ROM - 1; -- 0 -> 31
		waddr_t_ram : out natural range 0 to 2**ADDR_WIDTH_RAM - 1 -- 0 -> 127
	);
end printer;
architecture rtl of printer is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2, s3, s4, s5);

	-- Register to hold the current state
	signal state : state_type;
	signal red   : std_logic_vector((DATA_WIDTH_RAM - 1) downto 0);
	signal green : std_logic_vector((DATA_WIDTH_RAM - 1) downto 0);
	signal blue  : std_logic_vector((DATA_WIDTH_RAM - 1) downto 0);
	signal d_f_r : std_logic_vector((DATA_WIDTH_ROM - 1) downto 0);

begin
	
	process(clk)
		variable cnt : natural range MIN_COUNT to MAX_COUNT;
	begin
		if (rising_edge(clk)) then
			case state is
				when s0 =>
					-- set read addr ROM
					addr_f_rom <= cnt;
					--read o"01234567" from ROM
					--d_f_r      <= data_f_rom;
					-- set colors
					state      <= s1;
				when s1 =>
					we         <= '1';
					state       <= s2;
				when s2 =>
					--write data colors to RAM & set write addr RAM
					data_t_ram  <= blue;
					waddr_t_ram <= cnt;
					state       <= s3;
				when s3 =>
					data_t_ram  <= green;
					waddr_t_ram <= cnt + 32;
					state       <= s4;
				when s4 =>
					data_t_ram  <= red;
					waddr_t_ram <= cnt + 32 + 32;
					state       <= s5;
				when s5 =>
					we    <= '0';
					--inc counter
					if cnt < MAX_COUNT then
						cnt   := cnt + 1;
					else 
						cnt   := 0;
					end if;
					state <= s0;
			end case;
		end if;
	end process;
	process(data_f_rom)
	begin
		set_color : for i in 0 to DATA_WIDTH_RAM - 1 loop
			red(i)   <= data_f_rom(i * 3);
			green(i) <= data_f_rom(i * 3 + 1);
			blue(i)  <= data_f_rom(i * 3 + 2);
		end loop set_color;
	end process;
end rtl;

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




