<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(12:0)" />
        <signal name="XLXN_3(12:0)" />
        <signal name="XLXN_4(12:0)" />
        <signal name="XLXN_5(12:0)" />
        <signal name="speaker(12:0)" />
        <signal name="clk" />
        <signal name="SW(12:0)" />
        <signal name="XLXN_13(12:0)" />
        <signal name="sevSeg(7:0)" />
        <signal name="led(8:0)" />
        <port polarity="Output" name="speaker(12:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="SW(12:0)" />
        <port polarity="Output" name="sevSeg(7:0)" />
        <port polarity="Output" name="led(8:0)" />
        <blockdef name="piano">
            <timestamp>2023-11-12T22:47:52</timestamp>
            <rect width="320" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
        </blockdef>
        <blockdef name="led_state">
            <timestamp>2023-11-13T1:40:44</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SevSegDecoder">
            <timestamp>2023-11-13T5:40:2</timestamp>
            <rect width="304" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <block symbolname="piano" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SW(12:0)" name="switches(12:0)" />
            <blockpin signalname="speaker(12:0)" name="speaker(12:0)" />
        </block>
        <block symbolname="led_state" name="XLXI_3">
            <blockpin signalname="SW(12:0)" name="d(12:0)" />
            <blockpin signalname="led(8:0)" name="q(8:0)" />
        </block>
        <block symbolname="SevSegDecoder" name="XLXI_9">
            <blockpin signalname="SW(12:0)" name="i_Val(12:0)" />
            <blockpin signalname="sevSeg(7:0)" name="seven_seg(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1900" height="1344">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="464" y="432" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1184" y="544" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1184" y="336" name="speaker(12:0)" orien="R0" />
        <branch name="clk">
            <wire x2="464" y1="336" y2="336" x1="352" />
        </branch>
        <branch name="SW(12:0)">
            <wire x2="416" y1="400" y2="400" x1="352" />
            <wire x2="464" y1="400" y2="400" x1="416" />
            <wire x2="416" y1="400" y2="512" x1="416" />
            <wire x2="416" y1="512" y2="720" x1="416" />
            <wire x2="912" y1="720" y2="720" x1="416" />
            <wire x2="1184" y1="512" y2="512" x1="416" />
        </branch>
        <iomarker fontsize="28" x="352" y="336" name="clk" orien="R180" />
        <iomarker fontsize="28" x="352" y="400" name="SW(12:0)" orien="R180" />
        <branch name="sevSeg(7:0)">
            <wire x2="1376" y1="720" y2="720" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1376" y="720" name="sevSeg(7:0)" orien="R0" />
        <branch name="led(8:0)">
            <wire x2="1632" y1="512" y2="512" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1632" y="512" name="led(8:0)" orien="R0" />
        <branch name="speaker(12:0)">
            <wire x2="1184" y1="336" y2="336" x1="912" />
        </branch>
        <instance x="912" y="752" name="XLXI_9" orien="R0">
        </instance>
    </sheet>
</drawing>