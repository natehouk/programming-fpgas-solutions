<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_5" />
        <signal name="XLXN_8" />
        <signal name="XLXN_3" />
        <signal name="QA" />
        <signal name="QB" />
        <signal name="XLXN_9" />
        <signal name="XLXN_6" />
        <signal name="QC" />
        <signal name="XLXN_13" />
        <signal name="QD" />
        <signal name="CLK" />
        <port polarity="Output" name="QA" />
        <port polarity="Output" name="QB" />
        <port polarity="Output" name="QC" />
        <port polarity="Output" name="QD" />
        <port polarity="Input" name="CLK" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_3" name="D" />
            <blockpin signalname="QA" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="QA" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="QB" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="C" />
            <blockpin signalname="XLXN_9" name="D" />
            <blockpin signalname="QC" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="C" />
            <blockpin signalname="XLXN_6" name="D" />
            <blockpin signalname="QB" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="QC" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="XLXN_9" name="C" />
            <blockpin signalname="XLXN_13" name="D" />
            <blockpin signalname="QD" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="QD" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="288" y="1408" name="XLXI_1" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="960" y1="1008" y2="1008" x1="224" />
            <wire x2="960" y1="1008" y2="1328" x1="960" />
            <wire x2="1056" y1="1328" y2="1328" x1="960" />
            <wire x2="224" y1="1008" y2="1152" x1="224" />
            <wire x2="288" y1="1152" y2="1152" x1="224" />
            <wire x2="960" y1="1328" y2="1328" x1="944" />
        </branch>
        <instance x="720" y="1360" name="XLXI_5" orien="R0" />
        <branch name="QA">
            <wire x2="688" y1="1152" y2="1152" x1="672" />
            <wire x2="688" y1="1152" y2="1328" x1="688" />
            <wire x2="720" y1="1328" y2="1328" x1="688" />
            <wire x2="688" y1="928" y2="1152" x1="688" />
        </branch>
        <instance x="1472" y="1344" name="XLXI_6" orien="R0" />
        <branch name="QB">
            <wire x2="1456" y1="1200" y2="1200" x1="1440" />
            <wire x2="1456" y1="1200" y2="1312" x1="1456" />
            <wire x2="1472" y1="1312" y2="1312" x1="1456" />
            <wire x2="1456" y1="944" y2="1200" x1="1456" />
        </branch>
        <instance x="1808" y="1440" name="XLXI_3" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1792" y1="1008" y2="1184" x1="1792" />
            <wire x2="1808" y1="1184" y2="1184" x1="1792" />
            <wire x2="2448" y1="1008" y2="1008" x1="1792" />
            <wire x2="2448" y1="1008" y2="1312" x1="2448" />
            <wire x2="2544" y1="1312" y2="1312" x1="2448" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1760" y1="1008" y2="1008" x1="1040" />
            <wire x2="1760" y1="1008" y2="1312" x1="1760" />
            <wire x2="1808" y1="1312" y2="1312" x1="1760" />
            <wire x2="1040" y1="1008" y2="1200" x1="1040" />
            <wire x2="1056" y1="1200" y2="1200" x1="1040" />
            <wire x2="1760" y1="1312" y2="1312" x1="1696" />
        </branch>
        <instance x="1056" y="1456" name="XLXI_2" orien="R0" />
        <instance x="2224" y="1344" name="XLXI_7" orien="R0" />
        <branch name="QC">
            <wire x2="2208" y1="1184" y2="1184" x1="2192" />
            <wire x2="2208" y1="1184" y2="1312" x1="2208" />
            <wire x2="2224" y1="1312" y2="1312" x1="2208" />
            <wire x2="2208" y1="944" y2="1184" x1="2208" />
        </branch>
        <instance x="2544" y="1440" name="XLXI_4" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="3264" y1="1008" y2="1008" x1="2528" />
            <wire x2="3264" y1="1008" y2="1344" x1="3264" />
            <wire x2="2528" y1="1008" y2="1184" x1="2528" />
            <wire x2="2544" y1="1184" y2="1184" x1="2528" />
            <wire x2="3264" y1="1344" y2="1344" x1="3184" />
        </branch>
        <instance x="2960" y="1376" name="XLXI_8" orien="R0" />
        <branch name="QD">
            <wire x2="2944" y1="1184" y2="1184" x1="2928" />
            <wire x2="2944" y1="1184" y2="1344" x1="2944" />
            <wire x2="2960" y1="1344" y2="1344" x1="2944" />
            <wire x2="2944" y1="944" y2="1184" x1="2944" />
        </branch>
        <branch name="CLK">
            <wire x2="272" y1="1280" y2="1280" x1="256" />
            <wire x2="288" y1="1280" y2="1280" x1="272" />
        </branch>
        <iomarker fontsize="28" x="256" y="1280" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="688" y="928" name="QA" orien="R270" />
        <iomarker fontsize="28" x="1456" y="944" name="QB" orien="R270" />
        <iomarker fontsize="28" x="2208" y="944" name="QC" orien="R270" />
        <iomarker fontsize="28" x="2944" y="944" name="QD" orien="R270" />
    </sheet>
</drawing>