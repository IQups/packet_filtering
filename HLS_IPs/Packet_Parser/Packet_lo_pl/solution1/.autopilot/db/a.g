#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/iq/Documents/marketinternational_filter/HLS_IPs/Packet_Parser/Packet_lo_pl/solution1/.autopilot/db/a.g.bc ${1+"$@"}
