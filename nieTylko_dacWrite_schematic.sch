<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(11:0)" />
        <signal name="SPI_MISO" />
        <signal name="DAC_CLR" />
        <signal name="DAC_CS" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_SCK" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="Clk" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_30(3:0)" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38(7:0)" />
        <signal name="XLXN_39" />
        <signal name="XLXN_41(7:0)" />
        <signal name="XLXN_43" />
        <signal name="XLXN_50" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_56(3:0)" />
        <signal name="XLXN_57(3:0)" />
        <signal name="XLXN_59(3:0)" />
        <signal name="XLXN_60(3:0)" />
        <signal name="XLXN_62(3:0)" />
        <signal name="XLXN_63(3:0)" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <blockdef name="DACWrite">
            <timestamp>2009-10-4T16:3:32</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="kbdModule">
            <timestamp>2024-4-30T9:40:45</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
        </blockdef>
        <blockdef name="pila_beh">
            <timestamp>2024-4-30T10:4:53</timestamp>
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2008-9-4T9:59:2</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="kbdVGAconverter">
            <timestamp>2024-5-14T10:28:24</timestamp>
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="256" x="64" y="-384" height="340" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="VGAtxt48x20" name="XLXI_21">
            <blockpin signalname="XLXN_38(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Home" />
            <blockpin name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="Clk" name="Clk_Sys" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin name="ScrollEn" />
            <blockpin name="ScrollClear" />
            <blockpin signalname="XLXN_39" name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_36" name="VGA_RGB" />
            <blockpin signalname="XLXN_37" name="Char_WE" />
        </block>
        <block symbolname="DACWrite" name="XLXI_1">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_1" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_2(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="pila_beh" name="XLXI_13">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_1" name="Start" />
            <blockpin signalname="XLXN_2(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_3(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_4(11:0)" name="DATA(11:0)" />
            <blockpin signalname="XLXN_30(3:0)" name="freq_in(3:0)" />
        </block>
        <block symbolname="kbdModule" name="XLXI_10">
            <blockpin signalname="XLXN_23" name="KbdE0" />
            <blockpin signalname="XLXN_24" name="KbdF0" />
            <blockpin signalname="XLXN_25" name="KbdRdy" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_41(7:0)" name="KbdDo(7:0)" />
            <blockpin signalname="XLXN_30(3:0)" name="frequency(3:0)" />
        </block>
        <block symbolname="buf" name="XLXI_23">
            <blockpin signalname="XLXN_36" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_24">
            <blockpin signalname="XLXN_36" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_25">
            <blockpin signalname="XLXN_36" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="kbdVGAconverter" name="XLXI_26">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_50" name="Reset" />
            <blockpin signalname="XLXN_43" name="DIRdy" />
            <blockpin signalname="XLXN_39" name="TxBusy" />
            <blockpin signalname="XLXN_41(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_37" name="DORdy" />
            <blockpin name="Busy" />
            <blockpin signalname="XLXN_38(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="and3b2" name="XLXI_27">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_24" name="I1" />
            <blockpin signalname="XLXN_25" name="I2" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_29">
            <blockpin signalname="XLXN_50" name="G" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_9">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_23" name="E0" />
            <blockpin signalname="XLXN_24" name="F0" />
            <blockpin signalname="XLXN_25" name="DO_Rdy" />
            <blockpin signalname="XLXN_41(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_2(3:0)">
            <wire x2="2288" y1="304" y2="304" x1="2224" />
            <wire x2="2288" y1="224" y2="304" x1="2288" />
            <wire x2="2336" y1="224" y2="224" x1="2288" />
        </branch>
        <branch name="XLXN_3(3:0)">
            <wire x2="2304" y1="368" y2="368" x1="2224" />
            <wire x2="2304" y1="288" y2="368" x1="2304" />
            <wire x2="2336" y1="288" y2="288" x1="2304" />
        </branch>
        <branch name="XLXN_4(11:0)">
            <wire x2="2320" y1="432" y2="432" x1="2224" />
            <wire x2="2336" y1="352" y2="352" x1="2320" />
            <wire x2="2320" y1="352" y2="432" x1="2320" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2960" y1="224" y2="224" x1="2784" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="2960" y1="416" y2="416" x1="2784" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="2960" y1="352" y2="352" x1="2784" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="2960" y1="160" y2="160" x1="2784" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="2960" y1="288" y2="288" x1="2784" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="2960" y1="480" y2="480" x1="2784" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="2960" y1="544" y2="544" x1="2784" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="2960" y1="608" y2="608" x1="2784" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="2960" y1="672" y2="672" x1="2784" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="2960" y1="736" y2="736" x1="2784" />
        </branch>
        <instance x="2336" y="704" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_23">
            <wire x2="944" y1="672" y2="672" x1="880" />
            <wire x2="944" y1="672" y2="1216" x1="944" />
            <wire x2="1168" y1="1216" y2="1216" x1="944" />
            <wire x2="944" y1="560" y2="672" x1="944" />
            <wire x2="1072" y1="560" y2="560" x1="944" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="960" y1="736" y2="736" x1="880" />
            <wire x2="960" y1="736" y2="1152" x1="960" />
            <wire x2="1168" y1="1152" y2="1152" x1="960" />
            <wire x2="960" y1="624" y2="736" x1="960" />
            <wire x2="1072" y1="624" y2="624" x1="960" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="976" y1="800" y2="800" x1="880" />
            <wire x2="976" y1="800" y2="1088" x1="976" />
            <wire x2="1168" y1="1088" y2="1088" x1="976" />
            <wire x2="976" y1="688" y2="800" x1="976" />
            <wire x2="1072" y1="688" y2="688" x1="976" />
        </branch>
        <branch name="Clk">
            <wire x2="272" y1="240" y2="240" x1="256" />
            <wire x2="272" y1="240" y2="736" x1="272" />
            <wire x2="496" y1="736" y2="736" x1="272" />
            <wire x2="272" y1="736" y2="800" x1="272" />
            <wire x2="496" y1="800" y2="800" x1="272" />
            <wire x2="272" y1="800" y2="1696" x1="272" />
            <wire x2="2240" y1="1696" y2="1696" x1="272" />
            <wire x2="2336" y1="1696" y2="1696" x1="2240" />
            <wire x2="1008" y1="240" y2="240" x1="272" />
            <wire x2="1008" y1="240" y2="752" x1="1008" />
            <wire x2="1072" y1="752" y2="752" x1="1008" />
            <wire x2="1664" y1="240" y2="240" x1="1008" />
            <wire x2="1664" y1="240" y2="864" x1="1664" />
            <wire x2="2256" y1="864" y2="864" x1="1664" />
            <wire x2="2336" y1="864" y2="864" x1="2256" />
            <wire x2="1664" y1="864" y2="1024" x1="1664" />
            <wire x2="1776" y1="1024" y2="1024" x1="1664" />
            <wire x2="1840" y1="240" y2="240" x1="1664" />
            <wire x2="2336" y1="1632" y2="1632" x1="2240" />
            <wire x2="2240" y1="1632" y2="1696" x1="2240" />
            <wire x2="2336" y1="800" y2="800" x1="2256" />
            <wire x2="2256" y1="800" y2="864" x1="2256" />
        </branch>
        <instance x="1072" y="848" name="XLXI_10" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2960" y="224" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="2960" y="416" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="2960" y="352" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="2960" y="160" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="2960" y="288" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="2960" y="480" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="2960" y="544" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="2960" y="608" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="2960" y="672" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="2960" y="736" name="FPGA_INIT_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="2784" y1="1024" y2="1024" x1="2768" />
            <wire x2="2960" y1="1024" y2="1024" x1="2784" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2784" y1="1088" y2="1088" x1="2768" />
            <wire x2="2960" y1="1088" y2="1088" x1="2784" />
        </branch>
        <instance x="2336" y="1632" name="XLXI_21" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2960" y="1088" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2960" y="1024" name="VGA_HS" orien="R0" />
        <branch name="XLXN_30(3:0)">
            <wire x2="1840" y1="560" y2="560" x1="1488" />
        </branch>
        <instance x="2896" y="1184" name="XLXI_23" orien="R0" />
        <instance x="2896" y="1248" name="XLXI_24" orien="R0" />
        <instance x="2896" y="1312" name="XLXI_25" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3152" y1="1152" y2="1152" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1152" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3152" y1="1216" y2="1216" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1216" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3152" y1="1280" y2="1280" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1280" name="VGA_B" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="2864" y1="1152" y2="1152" x1="2768" />
            <wire x2="2896" y1="1152" y2="1152" x1="2864" />
            <wire x2="2864" y1="1152" y2="1216" x1="2864" />
            <wire x2="2896" y1="1216" y2="1216" x1="2864" />
            <wire x2="2864" y1="1216" y2="1280" x1="2864" />
            <wire x2="2896" y1="1280" y2="1280" x1="2864" />
        </branch>
        <instance x="1776" y="1376" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_37">
            <wire x2="2240" y1="1024" y2="1024" x1="2160" />
            <wire x2="2240" y1="1024" y2="1088" x1="2240" />
            <wire x2="2336" y1="1088" y2="1088" x1="2240" />
        </branch>
        <branch name="XLXN_38(7:0)">
            <wire x2="2256" y1="1152" y2="1152" x1="2160" />
            <wire x2="2256" y1="1024" y2="1152" x1="2256" />
            <wire x2="2336" y1="1024" y2="1024" x1="2256" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1712" y1="912" y2="1216" x1="1712" />
            <wire x2="1776" y1="1216" y2="1216" x1="1712" />
            <wire x2="2848" y1="912" y2="912" x1="1712" />
            <wire x2="2848" y1="912" y2="1280" x1="2848" />
            <wire x2="2848" y1="1280" y2="1280" x1="2768" />
        </branch>
        <branch name="XLXN_41(7:0)">
            <wire x2="928" y1="608" y2="608" x1="880" />
            <wire x2="928" y1="608" y2="816" x1="928" />
            <wire x2="1072" y1="816" y2="816" x1="928" />
            <wire x2="928" y1="816" y2="1280" x1="928" />
            <wire x2="1776" y1="1280" y2="1280" x1="928" />
        </branch>
        <instance x="1168" y="1280" name="XLXI_27" orien="R0" />
        <branch name="XLXN_43">
            <wire x2="1776" y1="1152" y2="1152" x1="1424" />
        </branch>
        <instance x="1488" y="1024" name="XLXI_29" orien="R90" />
        <branch name="XLXN_50">
            <wire x2="1776" y1="1088" y2="1088" x1="1616" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="496" y1="608" y2="608" x1="464" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="496" y1="672" y2="672" x1="464" />
        </branch>
        <instance x="496" y="832" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="464" y="608" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="464" y="672" name="PS2_Data" orien="R180" />
        <instance x="1840" y="464" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="2272" y1="240" y2="240" x1="2224" />
            <wire x2="2272" y1="160" y2="240" x1="2272" />
            <wire x2="2336" y1="160" y2="160" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="256" y="240" name="Clk" orien="R180" />
    </sheet>
</drawing>