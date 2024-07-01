library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity tb_kbdModule is
-- Testbench has no ports
end tb_kbdModule;

architecture Behavioral of tb_kbdModule is

    -- Component Declaration for the Unit Under Test (UUT)
    component kbdModule
    Port ( KbdE0 : in  STD_LOGIC;
           KbdF0 : in  STD_LOGIC;
           KbdRdy : in  STD_LOGIC;
           KbdDo : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
           frequency : out  STD_LOGIC_VECTOR (3 downto 0));
    end component;

    -- Inputs
    signal KbdE0 : STD_LOGIC := '0';
    signal KbdF0 : STD_LOGIC := '0';
    signal KbdRdy : STD_LOGIC := '0';
    signal KbdDo : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal Clk : STD_LOGIC := '0';

    -- Outputs
    signal frequency : STD_LOGIC_VECTOR (3 downto 0);

    -- Clock period definition
    constant Clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: kbdModule Port map (
          KbdE0 => KbdE0,
          KbdF0 => KbdF0,
          KbdRdy => KbdRdy,
          KbdDo => KbdDo,
          Clk => Clk,
          frequency => frequency
        );

    -- Clock process definitions
    Clk_process :process
    begin
        Clk <= '0';
        wait for Clk_period/2;
        Clk <= '1';
        wait for Clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin		
        -- hold reset state for 100 ns.
        wait for 100 ns;

        -- Test case 1: KbdDo = X"15" (q key)
        KbdDo <= X"15"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "0001") report "Test case 1 failed" severity error;
        
        -- Test case 2: KbdDo = X"1E" (2 key)
        KbdDo <= X"1E"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "0010") report "Test case 2 failed" severity error;

        -- Test case 3: KbdDo = X"1D" (w key)
        KbdDo <= X"1D"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "0011") report "Test case 3 failed" severity error;

        -- Test case 4: KbdDo = X"26" (3 key)
        KbdDo <= X"26"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "0100") report "Test case 4 failed" severity error;

        -- Test case 5: KbdDo = X"24" (e key)
        KbdDo <= X"24"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "0101") report "Test case 5 failed" severity error;
		  
		  
        -- Test case 6: KbdDo = X"2D" (r key)
        KbdDo <= X"2D"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "0110") report "Test case 6 failed" severity error;
        
        -- Test case 7: KbdDo = X"2E" (5 key)
        KbdDo <= X"2E"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "0111") report "Test case 7 failed" severity error;

        -- Test case 8: KbdDo = X"2C" (t key)
        KbdDo <= X"2C"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "1000") report "Test case 8 failed" severity error;

        -- Test case 9: KbdDo = X"36" (6 key)
        KbdDo <= X"36"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "1001") report "Test case 9 failed" severity error;

        -- Test case 10: KbdDo = X"35" (y key)
        KbdDo <= X"35"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "1010") report "Test case 10 failed" severity error;
		  

        -- Test case 11: KbdDo = X"3D" (7 key)
        KbdDo <= X"3D"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "1011") report "Test case 11 failed" severity error;
        
        -- Test case 12: KbdDo = X"3C" (u key)
        KbdDo <= X"3C"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "1100") report "Test case 12 failed" severity error;

        -- Test case 13: KbdDo = X"43" (i key)
        KbdDo <= X"43"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "1101") report "Test case 13 failed" severity error;

        -- Test case N: Invalid input
        KbdDo <= X"FF"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "0000") report "Test case N failed" severity error;

        -- Dynamically change the input conditions
        KbdDo <= X"2D"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "0110") report "Dynamic change test case 1 failed" severity error;

        KbdDo <= X"3C"; KbdE0 <= '0'; KbdF0 <= '0'; KbdRdy <= '1'; wait for Clk_period;
        KbdRdy <= '0'; wait for Clk_period;
        assert (frequency = "1100") report "Dynamic change test case 2 failed" severity error;

        -- End of simulation
        wait;
    end process;

end Behavioral;
