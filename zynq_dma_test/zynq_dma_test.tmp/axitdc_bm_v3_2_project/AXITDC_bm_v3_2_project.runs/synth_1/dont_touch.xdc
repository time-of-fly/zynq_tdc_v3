# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# IP: F:/Users/wen02/Documents/GitHub/zynq_tdc_v3/AXITDC/src/timestamp_short_fifo/timestamp_short_fifo.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==timestamp_short_fifo || ORIG_REF_NAME==timestamp_short_fifo} -quiet] -quiet

# IP: F:/Users/wen02/Documents/GitHub/zynq_tdc_v3/AXITDC/src/axi_gpio_0/axi_gpio_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==axi_gpio_0 || ORIG_REF_NAME==axi_gpio_0} -quiet] -quiet

# XDC: f:/users/wen02/documents/github/zynq_dma_test/zynq_dma_test.tmp/axitdc_bm_v3_2_project/AXITDC_bm_v3_2_project.gen/sources_1/ip/timestamp_short_fifo/timestamp_short_fifo.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==timestamp_short_fifo || ORIG_REF_NAME==timestamp_short_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: f:/users/wen02/documents/github/zynq_dma_test/zynq_dma_test.tmp/axitdc_bm_v3_2_project/AXITDC_bm_v3_2_project.gen/sources_1/ip/timestamp_short_fifo/timestamp_short_fifo_clocks.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==timestamp_short_fifo || ORIG_REF_NAME==timestamp_short_fifo} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: f:/users/wen02/documents/github/zynq_dma_test/zynq_dma_test.tmp/axitdc_bm_v3_2_project/AXITDC_bm_v3_2_project.gen/sources_1/ip/axi_gpio_0/axi_gpio_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==axi_gpio_0 || ORIG_REF_NAME==axi_gpio_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: f:/users/wen02/documents/github/zynq_dma_test/zynq_dma_test.tmp/axitdc_bm_v3_2_project/AXITDC_bm_v3_2_project.gen/sources_1/ip/axi_gpio_0/axi_gpio_0_ooc.xdc

# XDC: f:/users/wen02/documents/github/zynq_dma_test/zynq_dma_test.tmp/axitdc_bm_v3_2_project/AXITDC_bm_v3_2_project.gen/sources_1/ip/axi_gpio_0/axi_gpio_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==axi_gpio_0 || ORIG_REF_NAME==axi_gpio_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet