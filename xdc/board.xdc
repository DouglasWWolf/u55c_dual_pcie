
#
# Bitstream configuration
#
set_property CONFIG_VOLTAGE 1.8                        [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable    [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE           [current_design]
set_property CONFIG_MODE SPIx4                         [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4           [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0          [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN disable [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES        [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup         [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR Yes       [current_design]


#
# CATTRIP - Catastrophic power trip.  If HBMs are present this is fed by the HBMs CATTRIP signal.
#           This must be a zero for the board to operate.   A one here shuts down the internal power
#
set_property -dict {PACKAGE_PIN BE45  IOSTANDARD LVCMOS18} [get_ports hbm_cattrip]


#
# PCIe0 RefClk
#
# PCIe0 is: Block X1Y1
#           Quad  227
#
set_property PACKAGE_PIN AL15                   [get_ports pcie0_refclk_clk_p]
set_property PACKAGE_PIN AL14                   [get_ports pcie0_refclk_clk_n]
create_clock -period 10.000 -name pcie0_sys_clk [get_ports pcie0_refclk_clk_p]
set_clock_groups -group [get_clocks pcie0_sys_clk -include_generated_clocks] -asynchronous


#
# PCIe1 RefClk
#
# PCIe1 is: Block X1Y0
#           Quad  225
#
set_property PACKAGE_PIN AR15                   [get_ports pcie1_refclk_clk_p]
set_property PACKAGE_PIN AR14                   [get_ports pcie1_refclk_clk_n]
create_clock -period 10.000 -name pcie1_sys_clk [get_ports pcie1_refclk_clk_p]
set_clock_groups -group [get_clocks pcie1_sys_clk -include_generated_clocks] -asynchronous


#
# pcie reset signal from the host PC
#
set_property -dict {PACKAGE_PIN BF41  IOSTANDARD LVCMOS18} [get_ports pcie_perst_l]



set_property PACKAGE_PIN BK10     [get_ports "SYSCLK2_clk_p"] ;# Bank  68 VCCO - VCC1V8   - IO_L11P_T1U_N8_GC_68
set_property IOSTANDARD  LVDS 	  [get_ports "SYSCLK2_clk_p"] ;# Bank  68 VCCO - VCC1V8   - IO_L11P_T1U_N8_GC_68
create_clock -period 10.000 -name SYSCLK2 [get_ports "SYSCLK2_clk_p"]


set_property PACKAGE_PIN BL13     [get_ports "QSFP28_0_ACTIVITY_LED"] ;# Bank  68 VCCO - VCC1V8   - IO_L14P_T2L_N2_GC_68
set_property IOSTANDARD  LVCMOS18 [get_ports "QSFP28_0_ACTIVITY_LED"] ;# Bank  68 VCCO - VCC1V8   - IO_L14P_T2L_N2_GC_68


set_property PACKAGE_PIN BE45     [get_ports "HBM_CATTRIP_LS"] ;# Bank  65 VCCO - VCC1V8   - IO_L22P_T3U_N6_DBC_AD0P_D04_65
set_property IOSTANDARD  LVCMOS18 [get_ports "HBM_CATTRIP_LS"] ;# Bank  65 VCCO - VCC1V8   - IO_L22P_T3U_N6_DBC_AD0P_D04_65


