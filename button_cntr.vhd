library IEEE;
use IEEE.std_logic_1164.all;

entity button_cntr is
	port(clk        : in  std_logic;
	     on_off_in  : in  std_logic;
	     swich_in   : in  std_logic;
	     on_off_out : out std_logic;
	     swich_out  : out std_logic
	    );
end button_cntr;
architecture rtl of button_cntr is
begin
	process(clk)
	begin
	if (rising_edge(clk)) then
		on_off_out <= on_off_in;
		swich_out <= swich_in;
	end if;
	end process;
end rtl;