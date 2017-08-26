<project xmlns="com.autoesl.autopilot.project" name="Packet_lo_pl" top="hlsDPI">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="filter_in.dat  filter.dat">
        <SimFlow name="csim" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../sources/csim/queryReply.dat.bak" sc="0" tb="1" cflags=" "/>
        <file name="../sources/csim/queryReply.dat" sc="0" tb="1" cflags=" "/>
        <file name="../sources/csim/in.dat.bak" sc="0" tb="1" cflags=" "/>
        <file name="../sources/hlsDPI_IP_tb.cpp" sc="0" tb="1" cflags=" "/>
        <file name="../sources/csim/gold.dat" sc="0" tb="1" cflags=" "/>
        <file name="../sources/csim/filter_out.dat" sc="0" tb="1" cflags=" "/>
        <file name="../sources/csim/filter_in.dat" sc="0" tb="1" cflags=" "/>
        <file name="Packet_lo_pl/sources/packet_filter.hpp" sc="0" tb="false" cflags=""/>
        <file name="Packet_lo_pl/sources/packet_filter.cpp" sc="0" tb="false" cflags=""/>
        <file name="Packet_lo_pl/sources/ip_handler.hpp" sc="0" tb="false" cflags=""/>
        <file name="Packet_lo_pl/sources/ip_handler.cpp" sc="0" tb="false" cflags=""/>
        <file name="Packet_lo_pl/sources/hlsDPI_IP.cpp" sc="0" tb="false" cflags=""/>
        <file name="Packet_lo_pl/sources/globals.hpp" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

