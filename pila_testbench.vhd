LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pila_testbench IS
END pila_testbench;
 
ARCHITECTURE behavior OF pila_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pila_beh
    PORT(
         freq_in : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         start : OUT  std_logic;
         DATA : OUT  std_logic_vector(11 downto 0);
         Cmd : OUT  std_logic_vector(3 downto 0);
         Addr : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal freq_in : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal start : std_logic;
   signal DATA : std_logic_vector(11 downto 0);
   signal Cmd : std_logic_vector(3 downto 0);
   signal Addr : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pila_beh PORT MAP (
          freq_in => freq_in,
          clk => clk,
          start => start,
          DATA => DATA,
          Cmd => Cmd,
          Addr => Addr
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
stim_proc: process
	begin	
		freq_in <= "0001"; -- C: DATA = 1494
		wait for 100 ns;
		freq_in <= "0010"; -- DATA = 1409 
		wait for 100 ns;
		freq_in <= "0111"; -- DATA = 1055
		wait for 100 ns;
		freq_in <= "1101"; -- DATA = 747
		wait for 100 ns;
		freq_in <= "1111"; -- takiej czêstotliwoœci nie mamy -> DATA = 0
		
		wait;
end process;

END;
