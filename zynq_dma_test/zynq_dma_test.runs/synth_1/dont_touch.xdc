# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/src/ports.xdc

# XDC: imports/src/timing.xdc

# Block Designs: bd/TDCsystem/TDCsystem.bd
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem || ORIG_REF_NAME==TDCsystem} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_clk_wiz_0_0/TDCsystem_clk_wiz_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_clk_wiz_0_0 || ORIG_REF_NAME==TDCsystem_clk_wiz_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_processing_system7_0_0/TDCsystem_processing_system7_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_processing_system7_0_0 || ORIG_REF_NAME==TDCsystem_processing_system7_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_rst_ps7_0_100M_0/TDCsystem_rst_ps7_0_100M_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_rst_ps7_0_100M_0 || ORIG_REF_NAME==TDCsystem_rst_ps7_0_100M_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_xlconstant_0_0/TDCsystem_xlconstant_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_xlconstant_0_0 || ORIG_REF_NAME==TDCsystem_xlconstant_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_axi_dma_0_0/TDCsystem_axi_dma_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_axi_dma_0_0 || ORIG_REF_NAME==TDCsystem_axi_dma_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/TDCsystem_smartconnect_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_smartconnect_0_0 || ORIG_REF_NAME==TDCsystem_smartconnect_0_0} -quiet] -quiet

# Block Designs: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/bd_b76b.bd
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_0/bd_b76b_s00mmu_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_1/bd_b76b_s00tr_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_2/bd_b76b_s00sic_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_3/bd_b76b_s00a2s_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_4/bd_b76b_sawn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_5/bd_b76b_swn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_6/bd_b76b_sbn_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_7/bd_b76b_m00s2a_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_8/bd_b76b_m00e_0.xci
# DONT_TOUCH constraint suppressed by (parent) sub-design file.

# IP: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_0/TDCsystem_AXITDC_bm_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_AXITDC_bm_0_0 || ORIG_REF_NAME==TDCsystem_AXITDC_bm_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_0/src/timestamp_short_fifo/timestamp_short_fifo.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==timestamp_short_fifo || ORIG_REF_NAME==timestamp_short_fifo} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_0/src/axi_gpio_0/axi_gpio_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==axi_gpio_0 || ORIG_REF_NAME==axi_gpio_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_1/TDCsystem_AXITDC_bm_0_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_AXITDC_bm_0_1 || ORIG_REF_NAME==TDCsystem_AXITDC_bm_0_1} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_1/src/timestamp_short_fifo/timestamp_short_fifo.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==timestamp_short_fifo || ORIG_REF_NAME==timestamp_short_fifo} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_1/src/axi_gpio_0/axi_gpio_0.xci
#dup# set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==axi_gpio_0 || ORIG_REF_NAME==axi_gpio_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_c_counter_binary_0_0/TDCsystem_c_counter_binary_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_c_counter_binary_0_0 || ORIG_REF_NAME==TDCsystem_c_counter_binary_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_xbar_1/TDCsystem_xbar_1.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_xbar_1 || ORIG_REF_NAME==TDCsystem_xbar_1} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_auto_pc_0/TDCsystem_auto_pc_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_auto_pc_0 || ORIG_REF_NAME==TDCsystem_auto_pc_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_axi_interconnect_0_0/TDCsystem_axi_interconnect_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_axi_interconnect_0_0 || ORIG_REF_NAME==TDCsystem_axi_interconnect_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_axi_gpio_0_0/TDCsystem_axi_gpio_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_axi_gpio_0_0 || ORIG_REF_NAME==TDCsystem_axi_gpio_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_xlconcat_0_0/TDCsystem_xlconcat_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_xlconcat_0_0 || ORIG_REF_NAME==TDCsystem_xlconcat_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_axis_data_fifo_0_0/TDCsystem_axis_data_fifo_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_axis_data_fifo_0_0 || ORIG_REF_NAME==TDCsystem_axis_data_fifo_0_0} -quiet] -quiet

# IP: bd/TDCsystem/ip/TDCsystem_native2axis_v3_0_0/TDCsystem_native2axis_v3_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==TDCsystem_native2axis_v3_0_0 || ORIG_REF_NAME==TDCsystem_native2axis_v3_0_0} -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_clk_wiz_0_0/TDCsystem_clk_wiz_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_clk_wiz_0_0 || ORIG_REF_NAME==TDCsystem_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_clk_wiz_0_0/TDCsystem_clk_wiz_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_clk_wiz_0_0 || ORIG_REF_NAME==TDCsystem_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_clk_wiz_0_0/TDCsystem_clk_wiz_0_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_processing_system7_0_0/TDCsystem_processing_system7_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_processing_system7_0_0 || ORIG_REF_NAME==TDCsystem_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_rst_ps7_0_100M_0/TDCsystem_rst_ps7_0_100M_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_rst_ps7_0_100M_0 || ORIG_REF_NAME==TDCsystem_rst_ps7_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_rst_ps7_0_100M_0/TDCsystem_rst_ps7_0_100M_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_rst_ps7_0_100M_0 || ORIG_REF_NAME==TDCsystem_rst_ps7_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_axi_dma_0_0/TDCsystem_axi_dma_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_axi_dma_0_0 || ORIG_REF_NAME==TDCsystem_axi_dma_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_axi_dma_0_0/TDCsystem_axi_dma_0_0_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_axi_dma_0_0 || ORIG_REF_NAME==TDCsystem_axi_dma_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_3/bd_b76b_s00a2s_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_4/bd_b76b_sawn_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_4/bd_b76b_sawn_0_clocks.xdc
# DONT_TOUCH constraint suppressed by parent sub-design file.

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_5/bd_b76b_swn_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_5/bd_b76b_swn_0_clocks.xdc
# DONT_TOUCH constraint suppressed by parent sub-design file.

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_6/bd_b76b_sbn_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_6/bd_b76b_sbn_0_clocks.xdc
# DONT_TOUCH constraint suppressed by parent sub-design file.

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/bd_0/ip/ip_7/bd_b76b_m00s2a_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_smartconnect_0_0/smartconnect.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_smartconnect_0_0 || ORIG_REF_NAME==TDCsystem_smartconnect_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_0/src/timestamp_short_fifo/timestamp_short_fifo.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==timestamp_short_fifo || ORIG_REF_NAME==timestamp_short_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_0/src/timestamp_short_fifo/timestamp_short_fifo_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==timestamp_short_fifo || ORIG_REF_NAME==timestamp_short_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_0/src/axi_gpio_0/axi_gpio_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_0/src/axi_gpio_0/axi_gpio_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==axi_gpio_0 || ORIG_REF_NAME==axi_gpio_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_1/src/timestamp_short_fifo/timestamp_short_fifo.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==timestamp_short_fifo || ORIG_REF_NAME==timestamp_short_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_1/src/timestamp_short_fifo/timestamp_short_fifo_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==timestamp_short_fifo || ORIG_REF_NAME==timestamp_short_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_1/src/axi_gpio_0/axi_gpio_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_AXITDC_bm_0_1/src/axi_gpio_0/axi_gpio_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==axi_gpio_0 || ORIG_REF_NAME==axi_gpio_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_auto_pc_0/TDCsystem_auto_pc_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_axi_gpio_0_0/TDCsystem_axi_gpio_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_axi_gpio_0_0 || ORIG_REF_NAME==TDCsystem_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/ip/TDCsystem_axi_gpio_0_0/TDCsystem_axi_gpio_0_0_ooc.xdc

# XDC: bd/TDCsystem/ip/TDCsystem_axi_gpio_0_0/TDCsystem_axi_gpio_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==TDCsystem_axi_gpio_0_0 || ORIG_REF_NAME==TDCsystem_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/TDCsystem/TDCsystem_ooc.xdc