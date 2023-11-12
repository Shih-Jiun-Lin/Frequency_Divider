library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity to_1hz_divider is
	port(
		
		CLK_IN: in std_logic;
		CLK_OUT: out std_logic
	
	);
end to_1hz_divider;

architecture behavioral of to_1hz_divider is

signal count: integer := 0;

begin 
	
	process(CLK_IN)
	begin 
		
		if rising_edge(CLK_IN) then
		
			count <= count + 1;
		
			if count = 50000000 then
			
				CLK_OUT <= '1';
				
				count <= 0;
			
			else 
				
				CLK_OUT <= '0';
			
			end if;
		
		end if;
	
	end process;

end behavioral;
				
		