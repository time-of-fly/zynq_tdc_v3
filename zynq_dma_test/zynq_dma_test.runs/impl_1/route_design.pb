
?
Command: %s
53*	vivadotcl2
route_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7z010Z17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7z010Z17-349h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
route_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
D

Starting %s Task
103*constraints2	
RoutingZ18-103h px� 
k
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
8Z35-254h px� 
L

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101h px� 
I
%s*common20
.Phase 1 Build RT Design | Checksum: 219953ffa
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:09 ; elapsed = 00:00:07 . Memory (MB): peak = 2359.227 ; gain = 45.062h px� 
R

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101h px� 
W

Phase %s%s
101*constraints2
2.1 2
Fix Topology ConstraintsZ18-101h px� 
T
%s*common2;
9Phase 2.1 Fix Topology Constraints | Checksum: 219953ffa
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:09 ; elapsed = 00:00:07 . Memory (MB): peak = 2359.227 ; gain = 45.062h px� 
P

Phase %s%s
101*constraints2
2.2 2
Pre Route CleanupZ18-101h px� 
M
%s*common24
2Phase 2.2 Pre Route Cleanup | Checksum: 219953ffa
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:09 ; elapsed = 00:00:07 . Memory (MB): peak = 2359.227 ; gain = 45.062h px� 
L

Phase %s%s
101*constraints2
2.3 2
Update TimingZ18-101h px� 
I
%s*common20
.Phase 2.3 Update Timing | Checksum: 2e8aa66dd
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:09 . Memory (MB): peak = 2395.285 ; gain = 81.121h px� 
|
Intermediate Timing Summary %s164*route2;
9| WNS=-4.791 | TNS=-2222.778| WHS=-0.288 | THS=-240.361|
Z35-416h px� 
Y

Phase %s%s
101*constraints2
2.4 2
Update Timing for Bus SkewZ18-101h px� 
N

Phase %s%s
101*constraints2
2.4.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 2.4.1 Update Timing | Checksum: 294f1d1a1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:15 ; elapsed = 00:00:11 . Memory (MB): peak = 2424.367 ; gain = 110.203h px� 
{
Intermediate Timing Summary %s164*route2:
8| WNS=-4.791 | TNS=-1890.773| WHS=N/A    | THS=N/A    |
Z35-416h px� 
V
%s*common2=
;Phase 2.4 Update Timing for Bus Skew | Checksum: 2c96c73b6
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:15 ; elapsed = 00:00:11 . Memory (MB): peak = 2436.465 ; gain = 122.301h px� 
O
%s*common26
4Phase 2 Router Initialization | Checksum: 332c59b3e
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:15 ; elapsed = 00:00:11 . Memory (MB): peak = 2436.465 ; gain = 122.301h px� 
L

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101h px� 
M

Phase %s%s
101*constraints2
3.1 2
Global RoutingZ18-101h px� 
J
%s*common21
/Phase 3.1 Global Routing | Checksum: 332c59b3e
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:15 ; elapsed = 00:00:11 . Memory (MB): peak = 2436.465 ; gain = 122.301h px� 
R

Phase %s%s
101*constraints2
3.2 2
Initial Net RoutingZ18-101h px� 
O
%s*common26
4Phase 3.2 Initial Net Routing | Checksum: 178cafee9
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:17 ; elapsed = 00:00:12 . Memory (MB): peak = 2444.629 ; gain = 130.465h px� 
I
%s*common20
.Phase 3 Initial Routing | Checksum: 178cafee9
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:17 ; elapsed = 00:00:12 . Memory (MB): peak = 2444.629 ; gain = 130.465h px� 
�

>Design has %s pins with tight setup and hold constraints.

%s
244*route2
22�	
�	The top 5 pins with tight setup and hold constraints:

+================================+================================+==========================================================================================================================+
| Launch Setup Clock             | Launch Hold Clock              | Pin                                                                                                                      |
+================================+================================+==========================================================================================================================+
| clk_out1_TDCsystem_clk_wiz_0_0 | clk_out1_TDCsystem_clk_wiz_0_0 | TDCsystem_i/AXITDC_bm_1/U0/TDCv2/encoder/Adder_tree/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/x_reg[22]/D |
| clk_out1_TDCsystem_clk_wiz_0_0 | clk_out1_TDCsystem_clk_wiz_0_0 | TDCsystem_i/AXITDC_bm_1/U0/TDCv2/encoder/Adder_tree/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/x_reg[23]/D |
+--------------------------------+--------------------------------+--------------------------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
Z35-580h px� 
O

Phase %s%s
101*constraints2
4 2
Rip-up And RerouteZ18-101h px� 
Q

Phase %s%s
101*constraints2
4.1 2
Global Iteration 0Z18-101h px� 
|
Intermediate Timing Summary %s164*route2;
9| WNS=-4.805 | TNS=-21294.098| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 4.1 Global Iteration 0 | Checksum: 1c611a44f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:22 ; elapsed = 00:00:14 . Memory (MB): peak = 2444.629 ; gain = 130.465h px� 
Q

Phase %s%s
101*constraints2
4.2 2
Global Iteration 1Z18-101h px� 
|
Intermediate Timing Summary %s164*route2;
9| WNS=-4.805 | TNS=-21294.098| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 4.2 Global Iteration 1 | Checksum: 1d25b165e
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:15 . Memory (MB): peak = 2444.629 ; gain = 130.465h px� 
Q

Phase %s%s
101*constraints2
4.3 2
Global Iteration 2Z18-101h px� 
|
Intermediate Timing Summary %s164*route2;
9| WNS=-4.805 | TNS=-21294.098| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 4.3 Global Iteration 2 | Checksum: 2ec33302e
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:15 . Memory (MB): peak = 2444.629 ; gain = 130.465h px� 
L
%s*common23
1Phase 4 Rip-up And Reroute | Checksum: 2ec33302e
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:15 . Memory (MB): peak = 2444.629 ; gain = 130.465h px� 
X

Phase %s%s
101*constraints2
5 2
Delay and Skew OptimizationZ18-101h px� 
L

Phase %s%s
101*constraints2
5.1 2
Delay CleanUpZ18-101h px� 
N

Phase %s%s
101*constraints2
5.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 5.1.1 Update Timing | Checksum: 2e1ad3c52
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:15 . Memory (MB): peak = 2444.629 ; gain = 130.465h px� 
|
Intermediate Timing Summary %s164*route2;
9| WNS=-4.805 | TNS=-19680.838| WHS=N/A    | THS=N/A    |
Z35-416h px� 
I
%s*common20
.Phase 5.1 Delay CleanUp | Checksum: 2ae74fe14
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:25 ; elapsed = 00:00:15 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
V

Phase %s%s
101*constraints2
5.2 2
Clock Skew OptimizationZ18-101h px� 
S
%s*common2:
8Phase 5.2 Clock Skew Optimization | Checksum: 2ae74fe14
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:25 ; elapsed = 00:00:15 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
U
%s*common2<
:Phase 5 Delay and Skew Optimization | Checksum: 2ae74fe14
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:25 ; elapsed = 00:00:15 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
J

Phase %s%s
101*constraints2
6 2
Post Hold FixZ18-101h px� 
L

Phase %s%s
101*constraints2
6.1 2
Hold Fix IterZ18-101h px� 
N

Phase %s%s
101*constraints2
6.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 6.1.1 Update Timing | Checksum: 1d61834d0
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:16 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
|
Intermediate Timing Summary %s164*route2;
9| WNS=-4.804 | TNS=-19260.593| WHS=0.023  | THS=0.000  |
Z35-416h px� 
I
%s*common20
.Phase 6.1 Hold Fix Iter | Checksum: 2609af89a
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:16 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
G
%s*common2.
,Phase 6 Post Hold Fix | Checksum: 2609af89a
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:16 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
K

Phase %s%s
101*constraints2
7 2
Route finalizeZ18-101h px� 
H
%s*common2/
-Phase 7 Route finalize | Checksum: 2609af89a
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:16 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
R

Phase %s%s
101*constraints2
8 2
Verifying routed netsZ18-101h px� 
O
%s*common26
4Phase 8 Verifying routed nets | Checksum: 2609af89a
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:16 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
N

Phase %s%s
101*constraints2
9 2
Depositing RoutesZ18-101h px� 
K
%s*common22
0Phase 9 Depositing Routes | Checksum: 2573f429e
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:16 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
P

Phase %s%s
101*constraints2
10 2
Post Router TimingZ18-101h px� 
x
Estimated Timing Summary %s
57*route2;
9| WNS=-4.804 | TNS=-19260.593| WHS=0.023  | THS=0.000  |
Z35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
M
%s*common24
2Phase 10 Post Router Timing | Checksum: 2573f429e
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:17 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
Y

Phase %s%s
101*constraints2
11 2
Post-Route Event ProcessingZ18-101h px� 
V
%s*common2=
;Phase 11 Post-Route Event Processing | Checksum: 1d29fe522
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:17 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
E
%s*common2,
*Ending Routing Task | Checksum: 1d29fe522
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:17 . Memory (MB): peak = 2445.785 ; gain = 131.621h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1102
3032
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
route_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
route_design: 2

00:00:292

00:00:182

2445.7852	
131.621Z17-268h px� 
�
%s4*runtcl2�
�Executing : report_drc -file TDCsystem_wrapper_drc_routed.rpt -pb TDCsystem_wrapper_drc_routed.pb -rpx TDCsystem_wrapper_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2}
{report_drc -file TDCsystem_wrapper_drc_routed.rpt -pb TDCsystem_wrapper_drc_routed.pb -rpx TDCsystem_wrapper_drc_routed.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
hF:/Users/wen02/Documents/GitHub/zynq_dma_test/zynq_dma_test.runs/impl_1/TDCsystem_wrapper_drc_routed.rpthF:/Users/wen02/Documents/GitHub/zynq_dma_test/zynq_dma_test.runs/impl_1/TDCsystem_wrapper_drc_routed.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file TDCsystem_wrapper_methodology_drc_routed.rpt -pb TDCsystem_wrapper_methodology_drc_routed.pb -rpx TDCsystem_wrapper_methodology_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file TDCsystem_wrapper_methodology_drc_routed.rpt -pb TDCsystem_wrapper_methodology_drc_routed.pb -rpx TDCsystem_wrapper_methodology_drc_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
G
$Running Methodology with %s threads
74*drc2
2Z23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
tF:/Users/wen02/Documents/GitHub/zynq_dma_test/zynq_dma_test.runs/impl_1/TDCsystem_wrapper_methodology_drc_routed.rpttF:/Users/wen02/Documents/GitHub/zynq_dma_test/zynq_dma_test.runs/impl_1/TDCsystem_wrapper_methodology_drc_routed.rpt8Z2-1520h px� 
R
%s completed successfully
29*	vivadotcl2
report_methodologyZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_power -file TDCsystem_wrapper_power_routed.rpt -pb TDCsystem_wrapper_power_summary_routed.pb -rpx TDCsystem_wrapper_power_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file TDCsystem_wrapper_power_routed.rpt -pb TDCsystem_wrapper_power_summary_routed.pb -rpx TDCsystem_wrapper_power_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1202
3042
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
report_powerZ4-42h px� 
�
%s4*runtcl2q
oExecuting : report_route_status -file TDCsystem_wrapper_route_status.rpt -pb TDCsystem_wrapper_route_status.pb
h px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file TDCsystem_wrapper_timing_summary_routed.rpt -pb TDCsystem_wrapper_timing_summary_routed.pb -rpx TDCsystem_wrapper_timing_summary_routed.rpx -warn_on_violation 
h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -1, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2
timing summaryZ38-282h px� 
�
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px� 
x
%s4*runtcl2\
ZExecuting : report_incremental_reuse -file TDCsystem_wrapper_incremental_reuse_routed.rpt
h px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
x
%s4*runtcl2\
ZExecuting : report_clock_utilization -file TDCsystem_wrapper_clock_utilization_routed.rpt
h px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file TDCsystem_wrapper_bus_skew_routed.rpt -pb TDCsystem_wrapper_bus_skew_routed.pb -rpx TDCsystem_wrapper_bus_skew_routed.rpx
h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -1, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0242

2500.6722
14.875Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:022
00:00:00.4312

2506.7772
15.059Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2506.7772
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:002
00:00:00.0892

2506.7772
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0092

2506.7772
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0072

2506.7772
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:022
00:00:00.5412

2506.7772
20.980Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2f
dF:/Users/wen02/Documents/GitHub/zynq_dma_test/zynq_dma_test.runs/impl_1/TDCsystem_wrapper_routed.dcpZ17-1381h px� 


End Record