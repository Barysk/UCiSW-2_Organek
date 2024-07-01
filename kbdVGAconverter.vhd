library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity kbdVGAconverter is
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
end kbdVGAconverter;

architecture Behavioral of kbdVGAconverter is

    type state_type is ( sReset, sReady, sWaitH, sSendH, sWaitL, sSendL );
    signal State, NextState : state_type;
    signal regDI : STD_LOGIC_VECTOR (7 downto 0);
	 signal internalDO : STD_LOGIC_VECTOR (7 downto 0);

begin

    -- Input register (with CE)
    process (Clk)
    begin
        if rising_edge(Clk) then
            if State = sReady then
                regDI <= DI;
            end if;
        end if;
    end process;

    -- State register (with asynchronous reset) = process1
    process (Clk, Reset)
    begin
        if Reset = '1' then
            State <= sReset;
        elsif rising_edge(Clk) then
            State <= NextState;
        end if;
    end process;

    -- Next state decoding = process2
    process (State, DIRdy, TxBusy)
    begin
        NextState <= State; -- default

        case State is
            when sReset =>
                NextState <= sReady;

            when sReady =>
                if DIRdy = '1' then
                    NextState <= sWaitH;
                end if;

            when sWaitH =>
                if TxBusy = '0' then
                    NextState <= sSendH;
                end if;

            when sSendH =>
                NextState <= sWaitL;
					 
            when sWaitL =>
                if TxBusy = '0' then
                    NextState <= sSendL;
                end if;

            when sSendL =>
                NextState <= sReady;

        end case;
    end process;

    -- Outputs = process3
    process (regDI)
    begin
		case regDI is
			when X"15" => internalDO <= X"43"; -- 'C'
			when X"1E" => internalDO <= X"64"; -- 	'd'
			when X"1D" => internalDO <= X"44"; -- 'D'
			when X"26" => internalDO <= X"65"; -- 	'e'
			when X"24" => internalDO <= X"45"; -- 'E'
			when X"2D" => internalDO <= X"46"; -- 'F'
			when X"2E" => internalDO <= X"67"; -- 	'g'
			when X"2C" => internalDO <= X"47"; -- 'G'
			when X"36" => internalDO <= X"61"; -- 	'a'
			when X"35" => internalDO <= X"41"; -- 'A'
			when X"3D" => internalDO <= X"62"; -- 	'b'
			when X"3C" => internalDO <= X"42"; -- 'B'
			when X"43" => internalDO <= X"43"; -- 'C'
			
			when others => internalDO <= X"00"; -- default case for unknown codes
		end case;
    end process;
	
	 DO <= internalDO;
	 
    DORdy <= '1' when State = sSendH and internalDO /= X"00" else '0';
    Busy <= '1' when State /= sReady else '0';

end Behavioral;

