
##
## Icon Constraints
##
set_property C_CLK_INPUT_FREQ_HZ 156250000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER true [get_debug_cores dbg_hub]

##gth_refclk lock constraints
##
set_property PACKAGE_PIN T1 [get_ports gth_refclk0p_i[0]]
set_property PACKAGE_PIN R1 [get_ports gth_refclk0n_i[0]]
set_property PACKAGE_PIN K1 [get_ports gth_refclk1p_i[0]]
set_property PACKAGE_PIN J1 [get_ports gth_refclk1n_i[0]]
set_property PACKAGE_PIN G1 [get_ports gth_refclk0p_i[1]]
set_property PACKAGE_PIN F1 [get_ports gth_refclk0n_i[1]]
set_property PACKAGE_PIN D1 [get_ports gth_refclk1p_i[1]]
set_property PACKAGE_PIN C1 [get_ports gth_refclk1n_i[1]]
##
## Refclk constraints
##
create_clock -name gth_refclk0_0 -period 6.4 [get_ports gth_refclk0p_i[0]]
create_clock -name gth_refclk1_0 -period 6.4 [get_ports gth_refclk1p_i[0]]
set_clock_groups -group [get_clocks gth_refclk0_0 -include_generated_clocks] -asynchronous
set_clock_groups -group [get_clocks gth_refclk1_0 -include_generated_clocks] -asynchronous
create_clock -name gth_refclk0_1 -period 6.4 [get_ports gth_refclk0p_i[1]]
create_clock -name gth_refclk1_1 -period 6.4 [get_ports gth_refclk1p_i[1]]
set_clock_groups -group [get_clocks gth_refclk0_1 -include_generated_clocks] -asynchronous
set_clock_groups -group [get_clocks gth_refclk1_1 -include_generated_clocks] -asynchronous


## TX/RX out clock clock constraints
##
# GT X0Y0
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[0].u_q/CH[0].u_ch/u_gthe4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[0].u_q/CH[0].u_ch/u_gthe4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y1
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[0].u_q/CH[1].u_ch/u_gthe4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[0].u_q/CH[1].u_ch/u_gthe4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y2
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[0].u_q/CH[2].u_ch/u_gthe4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[0].u_q/CH[2].u_ch/u_gthe4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y3
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[0].u_q/CH[3].u_ch/u_gthe4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[0].u_q/CH[3].u_ch/u_gthe4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y4
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[1].u_q/CH[0].u_ch/u_gthe4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[1].u_q/CH[0].u_ch/u_gthe4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y5
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[1].u_q/CH[1].u_ch/u_gthe4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[1].u_q/CH[1].u_ch/u_gthe4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y6
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[1].u_q/CH[2].u_ch/u_gthe4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[1].u_q/CH[2].u_ch/u_gthe4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y7
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[1].u_q/CH[3].u_ch/u_gthe4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {u_ibert_gth_core/inst/QUAD[1].u_q/CH[3].u_ch/u_gthe4_channel/TXOUTCLK}] -include_generated_clocks]
