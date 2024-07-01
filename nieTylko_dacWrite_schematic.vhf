--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : nieTylko_dacWrite_schematic.vhf
-- /___/   /\     Timestamp : 05/28/2024 10:27:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/NeoOrgan_v5/NeoOrgan/nieTylko_dacWrite_schematic.vhf -w C:/Users/lab/Desktop/NeoOrgan_v5/NeoOrgan/nieTylko_dacWrite_schematic.sch
--Design Name: nieTylko_dacWrite_schematic
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity nieTylko_dacWrite_schematic is
   port ( Clk         : in    std_logic; 
          PS2_Clk     : in    std_logic; 
          PS2_Data    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MISO    : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic; 
          VGA_B       : out   std_logic; 
          VGA_G       : out   std_logic; 
          VGA_HS      : out   std_logic; 
          VGA_R       : out   std_logic; 
          VGA_VS      : out   std_logic);
end nieTylko_dacWrite_schematic;

architecture BEHAVIORAL of nieTylko_dacWrite_schematic is
   attribute BOX_TYPE   : string ;
   signal XLXN_1                         : std_logic;
   signal XLXN_2                         : std_logic_vector (3 downto 0);
   signal XLXN_3                         : std_logic_vector (3 downto 0);
   signal XLXN_4                         : std_logic_vector (11 downto 0);
   signal XLXN_23                        : std_logic;
   signal XLXN_24                        : std_logic;
   signal XLXN_25                        : std_logic;
   signal XLXN_30                        : std_logic_vector (3 downto 0);
   signal XLXN_36                        : std_logic;
   signal XLXN_37                        : std_logic;
   signal XLXN_38                        : std_logic_vector (7 downto 0);
   signal XLXN_39                        : std_logic;
   signal XLXN_41                        : std_logic_vector (7 downto 0);
   signal XLXN_43                        : std_logic;
   signal XLXN_50                        : std_logic;
   signal SPI_MISO_DUMMY                 : std_logic;
   signal XLXI_1_Reset_openSignal        : std_logic;
   signal XLXI_21_CursorOn_openSignal    : std_logic;
   signal XLXI_21_Goto00_openSignal      : std_logic;
   signal XLXI_21_Home_openSignal        : std_logic;
   signal XLXI_21_NewLine_openSignal     : std_logic;
   signal XLXI_21_ScrollClear_openSignal : std_logic;
   signal XLXI_21_ScrollEn_openSignal    : std_logic;
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component kbdModule
      port ( KbdE0     : in    std_logic; 
             KbdF0     : in    std_logic; 
             KbdRdy    : in    std_logic; 
             Clk       : in    std_logic; 
             KbdDo     : in    std_logic_vector (7 downto 0); 
             frequency : out   std_logic_vector (3 downto 0));
   end component;
   
   component pila_beh
      port ( Clk     : in    std_logic; 
             Start   : out   std_logic; 
             Cmd     : out   std_logic_vector (3 downto 0); 
             Addr    : out   std_logic_vector (3 downto 0); 
             DATA    : out   std_logic_vector (11 downto 0); 
             freq_in : in    std_logic_vector (3 downto 0));
   end component;
   
   component VGAtxt48x20
      port ( Char_DI     : in    std_logic_vector (7 downto 0); 
             Home        : in    std_logic; 
             NewLine     : in    std_logic; 
             Goto00      : in    std_logic; 
             Clk_Sys     : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             CursorOn    : in    std_logic; 
             ScrollEn    : in    std_logic; 
             ScrollClear : in    std_logic; 
             Busy        : out   std_logic; 
             VGA_HS      : out   std_logic; 
             VGA_VS      : out   std_logic; 
             VGA_RGB     : out   std_logic; 
             Char_WE     : in    std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component kbdVGAconverter
      port ( Clk    : in    std_logic; 
             Reset  : in    std_logic; 
             DIRdy  : in    std_logic; 
             TxBusy : in    std_logic; 
             DI     : in    std_logic_vector (7 downto 0); 
             DORdy  : out   std_logic; 
             Busy   : out   std_logic; 
             DO     : out   std_logic_vector (7 downto 0));
   end component;
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   SPI_MISO <= SPI_MISO_DUMMY;
   XLXI_1 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_3(3 downto 0),
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                Cmd(3 downto 0)=>XLXN_2(3 downto 0),
                DATA(11 downto 0)=>XLXN_4(11 downto 0),
                Reset=>XLXI_1_Reset_openSignal,
                SPI_MISO=>SPI_MISO_DUMMY,
                Start=>XLXN_1,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>open,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_9 : PS2_Kbd
      port map (Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_41(7 downto 0),
                DO_Rdy=>XLXN_25,
                E0=>XLXN_23,
                F0=>XLXN_24);
   
   XLXI_10 : kbdModule
      port map (Clk=>Clk,
                KbdDo(7 downto 0)=>XLXN_41(7 downto 0),
                KbdE0=>XLXN_23,
                KbdF0=>XLXN_24,
                KbdRdy=>XLXN_25,
                frequency(3 downto 0)=>XLXN_30(3 downto 0));
   
   XLXI_13 : pila_beh
      port map (Clk=>Clk,
                freq_in(3 downto 0)=>XLXN_30(3 downto 0),
                Addr(3 downto 0)=>XLXN_3(3 downto 0),
                Cmd(3 downto 0)=>XLXN_2(3 downto 0),
                DATA(11 downto 0)=>XLXN_4(11 downto 0),
                Start=>XLXN_1);
   
   XLXI_21 : VGAtxt48x20
      port map (Char_DI(7 downto 0)=>XLXN_38(7 downto 0),
                Char_WE=>XLXN_37,
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                CursorOn=>XLXI_21_CursorOn_openSignal,
                Goto00=>XLXI_21_Goto00_openSignal,
                Home=>XLXI_21_Home_openSignal,
                NewLine=>XLXI_21_NewLine_openSignal,
                ScrollClear=>XLXI_21_ScrollClear_openSignal,
                ScrollEn=>XLXI_21_ScrollEn_openSignal,
                Busy=>XLXN_39,
                VGA_HS=>VGA_HS,
                VGA_RGB=>XLXN_36,
                VGA_VS=>VGA_VS);
   
   XLXI_23 : BUF
      port map (I=>XLXN_36,
                O=>VGA_R);
   
   XLXI_24 : BUF
      port map (I=>XLXN_36,
                O=>VGA_G);
   
   XLXI_25 : BUF
      port map (I=>XLXN_36,
                O=>VGA_B);
   
   XLXI_26 : kbdVGAconverter
      port map (Clk=>Clk,
                DI(7 downto 0)=>XLXN_41(7 downto 0),
                DIRdy=>XLXN_43,
                Reset=>XLXN_50,
                TxBusy=>XLXN_39,
                Busy=>open,
                DO(7 downto 0)=>XLXN_38(7 downto 0),
                DORdy=>XLXN_37);
   
   XLXI_27 : AND3B2
      port map (I0=>XLXN_23,
                I1=>XLXN_24,
                I2=>XLXN_25,
                O=>XLXN_43);
   
   XLXI_29 : GND
      port map (G=>XLXN_50);
   
end BEHAVIORAL;


