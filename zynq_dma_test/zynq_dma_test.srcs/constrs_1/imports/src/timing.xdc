# Additional clock constraints; timing exceptions
# Created 13.6.2019

set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks {clk_fpga_0}]
#set_false_path -from [get_ports hit0]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets hit0_IBUF]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets hit1_IBUF]