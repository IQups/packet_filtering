############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project Packet_lo_pl
set_top hlsDPI
add_files Packet_lo_pl/sources/globals.hpp
add_files Packet_lo_pl/sources/hlsDPI_IP.cpp
add_files Packet_lo_pl/sources/ip_handler.cpp
add_files Packet_lo_pl/sources/ip_handler.hpp
add_files Packet_lo_pl/sources/packet_filter.cpp
add_files Packet_lo_pl/sources/packet_filter.hpp
add_files -tb Packet_lo_pl/sources/csim/filter_in.dat
add_files -tb Packet_lo_pl/sources/csim/filter_out.dat
add_files -tb Packet_lo_pl/sources/csim/gold.dat
add_files -tb Packet_lo_pl/sources/hlsDPI_IP_tb.cpp
add_files -tb Packet_lo_pl/sources/csim/in.dat.bak
add_files -tb Packet_lo_pl/sources/csim/queryReply.dat
add_files -tb Packet_lo_pl/sources/csim/queryReply.dat.bak
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./Packet_lo_pl/solution1/directives.tcl"
csim_design -argv {filter_in.dat filter.dat}
csynth_design
cosim_design -argv {filter_in.dat filter.dat}
export_design -format ip_catalog
