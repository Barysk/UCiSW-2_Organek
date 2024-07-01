library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;



entity kbdModule is
    Port ( KbdE0 : in  STD_LOGIC;
           KbdF0 : in  STD_LOGIC;
           KbdRdy : in  STD_LOGIC;
           KbdDo : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
           frequency : out  STD_LOGIC_VECTOR (3 downto 0));
end kbdModule;

architecture Behavioral of kbdModule is
begin

scale_proc: process ( KbdDo, KbdE0, KbdF0, KbdRdy, Clk )
begin

      if rising_edge( Clk ) and KbdRdy = '1' then
	  
		case (KbdF0 & KbdE0 & KbdDo) is 
			when ( "00" & X"15" ) => frequency <="0001"; -- c	-- q	15 
			when ( "00" & X"1E" ) => frequency <="0010"; -- c#	-- 2	1E
			when ( "00" & X"1D" ) => frequency <="0011"; -- d	-- w	1D
			when ( "00" & X"26" ) => frequency <="0100"; -- d#	-- 3	26
			when ( "00" & X"24" ) => frequency <="0101"; -- e	-- e	24
			
			when ( "00" & X"2D" ) => frequency <="0110"; -- f	-- r	2D
			when ( "00" & X"2E" ) => frequency <="0111"; -- f# -- 5	2E
			when ( "00" & X"2C" ) => frequency <="1000"; -- g	-- t	2C
			when ( "00" & X"36" ) => frequency <="1001"; -- g# -- 6	36
			when ( "00" & X"35" ) => frequency <="1010"; -- a	-- y	35
			
			when ( "00" & X"3D" ) => frequency <="1011"; -- a# -- 7	3D
			when ( "00" & X"3C" ) => frequency <="1100"; -- b 	-- u	3C
			when ( "00" & X"43" ) => frequency <="1101"; -- c	-- i	43
			when others => frequency <="0000";
		end case; 
      
      end if;
      
end process;

end Behavioral;

