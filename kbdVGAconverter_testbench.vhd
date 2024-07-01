library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kbdVGAconverter_tb is
end kbdVGAconverter_tb;

architecture Behavioral of kbdVGAconverter_tb is

    -- Component Declaration
    component kbdVGAconverter
        port (
            Clk : in  STD_LOGIC;
            Reset : in  STD_LOGIC;
            DI : in  STD_LOGIC_VECTOR (7 downto 0);
            DIRdy : in  STD_LOGIC;
            TxBusy : in  STD_LOGIC;
            DO : out  STD_LOGIC_VECTOR (7 downto 0);
            DORdy : out  STD_LOGIC;
            Busy : out  STD_LOGIC
        );
    end component;

    -- Signals Declaration
    signal Clk : STD_LOGIC := '0';
    signal Reset : STD_LOGIC := '0';
    signal DI : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal DIRdy : STD_LOGIC := '0';
    signal TxBusy : STD_LOGIC := '0';
    signal DO : STD_LOGIC_VECTOR (7 downto 0);
    signal DORdy : STD_LOGIC;
    signal Busy : STD_LOGIC;

begin

    -- Component Instantiation
    uut : kbdVGAconverter
    port map (
        Clk => Clk,
        Reset => Reset,
        DI => DI,
        DIRdy => DIRdy,
        TxBusy => TxBusy,
        DO => DO,
        DORdy => DORdy,
        Busy => Busy
    );

    -- Clock Process
    ClkProcess: process
    begin
        while now < 1000 ns loop  -- Simulation duration
            Clk <= '0';
            wait for 5 ns;
            Clk <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process ClkProcess;

    -- Stimulus Process
    StimulusProcess: process
    begin
        
		  DI <= X"00"; -- Simulate '?' key press
        wait for 20 ns;
        DI <= X"15"; -- Simulate 'C' key press
        wait for 20 ns;
		  DI <= X"1E"; -- Simulate 'd' key press
        wait for 20 ns;
		  DI <= X"1D"; -- Simulate 'D' key press
        wait for 20 ns;
		  DI <= X"26"; -- Simulate 'e' key press
        wait for 20 ns;
		  DI <= X"24"; -- Simulate 'E' key press
        wait for 20 ns;
		  DI <= X"2D"; -- Simulate 'F' key press
        wait for 20 ns;
		  DI <= X"2E"; -- Simulate 'g' key press
        wait for 20 ns;
		  DI <= X"2C"; -- Simulate 'G' key press
        wait for 20 ns;
		  DI <= X"36"; -- Simulate 'a' key press
        wait for 20 ns;
		  DI <= X"35"; -- Simulate 'A' key press
        wait for 20 ns;
		  DI <= X"3D"; -- Simulate 'b' key press
        wait for 20 ns;
		  DI <= X"3C"; -- Simulate 'B' key press
        wait for 20 ns;
		  DI <= X"43"; -- Simulate 'C' key press
        wait for 20 ns;
		  DI <= X"44"; -- Simulate '?' key press
        wait for 20 ns;

        wait;
    end process StimulusProcess;

end Behavioral;
