
N
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px
m
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px
M
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px
�
Rule violation (%s) %s - %s
20*drc2
PLIO-72default:default2B
.Placement Constraints Check for IO constraints2default:default2�
�An IO Bus FIXED_IO_mio[53:0] with more than one IO standard is found. Components associated with this bus are: LVCMOS18 (FIXED_IO_mio[53], FIXED_IO_mio[52], FIXED_IO_mio[51], FIXED_IO_mio[50], FIXED_IO_mio[49], FIXED_IO_mio[48], FIXED_IO_mio[47], FIXED_IO_mio[46], FIXED_IO_mio[45], FIXED_IO_mio[44], FIXED_IO_mio[43], FIXED_IO_mio[42], FIXED_IO_mio[41], FIXED_IO_mio[40], FIXED_IO_mio[39] (the first 15 of 38 listed)); LVCMOS33 (FIXED_IO_mio[15], FIXED_IO_mio[14], FIXED_IO_mio[13], FIXED_IO_mio[12], FIXED_IO_mio[11], FIXED_IO_mio[10], FIXED_IO_mio[9], FIXED_IO_mio[8], FIXED_IO_mio[7], FIXED_IO_mio[6], FIXED_IO_mio[5], FIXED_IO_mio[4], FIXED_IO_mio[3], FIXED_IO_mio[2], FIXED_IO_mio[1] (the first 15 of 16 listed)); 2default:defaultZ23-20h px
_
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px
b
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px
S

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px
v
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
82default:defaultZ35-254h px
m

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px
?
-Phase 1 Build RT Design | Checksum: d2993f12
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:17 ; elapsed = 00:00:14 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 127 ; free virtual = 9022default:defaulth px
s

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px
l

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px
>
,Phase 2.1 Create Timer | Checksum: d2993f12
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:17 ; elapsed = 00:00:14 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 135 ; free virtual = 9022default:defaulth px
q

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px
C
1Phase 2.2 Pre Route Cleanup | Checksum: d2993f12
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:17 ; elapsed = 00:00:14 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 123 ; free virtual = 8722default:defaulth px
m

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px
@
.Phase 2.3 Update Timing | Checksum: 23cc8d4e7
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:15 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 110 ; free virtual = 8602default:defaulth px
�
Intermediate Timing Summary %s164*route2J
6| WNS=2.390  | TNS=0.000  | WHS=-0.344 | THS=-31.238|
2default:defaultZ35-416h px
F
4Phase 2 Router Initialization | Checksum: 291bfaeda
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:19 ; elapsed = 00:00:15 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 109 ; free virtual = 8592default:defaulth px
m

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px
@
.Phase 3 Initial Routing | Checksum: 1252717d2
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:21 ; elapsed = 00:00:15 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 109 ; free virtual = 8592default:defaulth px
p

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px
r

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px
o

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px
B
0Phase 4.1.1 Update Timing | Checksum: 1d89343f7
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.972  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px
E
3Phase 4.1 Global Iteration 0 | Checksum: 1e3310ef3
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
C
1Phase 4 Rip-up And Reroute | Checksum: 1e3310ef3
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
y

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px
m

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px
o

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px
B
0Phase 5.1.1 Update Timing | Checksum: 1dfdac982
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.972  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px
@
.Phase 5.1 Delay CleanUp | Checksum: 1dfdac982
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
w

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px
J
8Phase 5.2 Clock Skew Optimization | Checksum: 1dfdac982
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
L
:Phase 5 Delay and Skew Optimization | Checksum: 1dfdac982
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:23 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
k

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px
m

Phase %s%s
101*constraints2
6.1 2default:default2!
Update Timing2default:defaultZ18-101h px
@
.Phase 6.1 Update Timing | Checksum: 18ded07f6
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.972  | TNS=0.000  | WHS=0.085  | THS=0.000  |
2default:defaultZ35-416h px
>
,Phase 6 Post Hold Fix | Checksum: 168a5267e
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
l

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px
?
-Phase 7 Route finalize | Checksum: 1ecbe3373
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
s

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px
F
4Phase 8 Verifying routed nets | Checksum: 1ecbe3373
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
o

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px
B
0Phase 9 Depositing Routes | Checksum: 189557f1e
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
q

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px
�
Estimated Timing Summary %s
57*route2J
6| WNS=1.972  | TNS=0.000  | WHS=0.085  | THS=0.000  |
2default:defaultZ35-57h px
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px
D
2Phase 10 Post Router Timing | Checksum: 189557f1e
*commonh px
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
:
Router Completed Successfully
16*routeZ35-16h px
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:16 . Memory (MB): peak = 2023.348 ; gain = 0.000 ; free physical = 108 ; free virtual = 8582default:defaulth px
W
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
532default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:242default:default2
00:00:172default:default2
2023.3482default:default2
0.0002default:default2
1072default:default2
8572default:defaultZ17-722h px
A
Writing placer database...
1603*designutilsZ20-1893h px
:
Writing XDEF routing.
211*designutilsZ20-211h px
G
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px
G
#Writing XDEF routing special nets.
210*designutilsZ20-210h px
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.492default:default2
00:00:00.162default:default2
2023.3482default:default2
0.0002default:default2
1022default:default2
8572default:defaultZ17-722h px
M
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px
�
#The results of DRC are in file %s.
168*coretcl2�
�/home/iq/Documents/marketinternational_filter/Example_reference/Zynq7000AP_SoC_Ethernet_Packet_Redirection_Design/HW/project/project.runs/impl_1/design_1_wrapper_drc_routed.rpt�/home/iq/Documents/marketinternational_filter/Example_reference/Zynq7000AP_SoC_Ethernet_Packet_Redirection_Design/HW/project/project.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px
o
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px
y
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px
H
,Running Vector-less Activity Propagation...
51*powerZ33-51h px
M
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px


End Record