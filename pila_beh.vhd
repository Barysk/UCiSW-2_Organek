----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:59:57 03/19/2024 
-- Design Name: 
-- Module Name:    pila_beh - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pila_beh is
    Port ( Start : out  STD_LOGIC := '0';
           Cmd : out  STD_LOGIC_VECTOR (3 downto 0) := "0011";
           Addr : out  STD_LOGIC_VECTOR (3 downto 0) := "1111";
           DATA : out  STD_LOGIC_VECTOR (11 downto 0);
			  Clk : in STD_LOGIC;
			  freq_in : in STD_LOGIC_VECTOR (3 downto 0));
end pila_beh;


-- PILA BEH
architecture Behavioral of pila_beh is

signal freq_temp : integer;
signal data_sample : UNSIGNED (4 downto 0) :=  X"0"&'0';
signal counter : UNSIGNED (11 downto 0) := X"000";
signal clk_cnt :STD_LOGIC;
begin

freq_proc: process(freq_in, freq_temp)
begin

	case freq_in is 
		when "0001" => freq_temp <=1494; 
		when "0010" => freq_temp <=1409; 
		when "0011" => freq_temp <=1330; 
		when "0100" => freq_temp <=1255; 
		when "0101" => freq_temp <=1184; 
		when "0110" => freq_temp <=1118; 
		when "0111" => freq_temp <=1055; 
		when "1000" => freq_temp <=996; 
		when "1001" => freq_temp <=940; 
		when "1010" => freq_temp <=888; 
		when "1011" => freq_temp <=838; 
		when "1100" => freq_temp <=791; 
		when "1101" => freq_temp <=747; 
		when others => freq_temp <=0;
	end case; 
	
end process;

counter_proc: process(Clk, data_sample) 
   variable iterator : natural range 0 to 1494;
   begin
      iterator := 0;
      if(rising_edge(Clk)) then
        counter <= counter + 1;
        start <= '0';
        if STD_LOGIC_VECTOR(counter) = freq_temp then
         counter <= X"000";
         data_sample <= data_sample + 1;
         start <= '1';
        end if;
      end if;
   DATA <= STD_LOGIC_VECTOR (data_sample)&"0000000";
   Addr <= "1111";
	Cmd <= "0011";

end process;
    
   
clk_it: process( clk_cnt ) 
  variable iterator2 : integer := 0;
   begin
     iterator2 := 0; 
      if(rising_edge(clk_cnt)) then 
         if(iterator2 = 31) then 
               iterator2 := 0; 
            else 
               iterator2 := iterator2 + 1; 
         end if; 
      end if;      
   end process; 
   
end Behavioral;