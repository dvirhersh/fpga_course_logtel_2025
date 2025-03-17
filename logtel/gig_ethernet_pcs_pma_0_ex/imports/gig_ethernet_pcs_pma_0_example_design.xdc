
#***********************************************************
# The following constraints target the Ten-Bit-Interface   *
# implemented in the Example Design.                       *
#***********************************************************

#-----------------------------------------------------------
# TBI IOSTANDARD Constraints: please select an I/O         -
# Standard (LVCMOS33 is suggested).                        -
#-----------------------------------------------------------


#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[8]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {tx_code_group[9]}]
#set_property IOSTANDARD LVCMOS33 [get_ports pma_tx_clk]
#
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[8]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {rx_code_group[9]}]
#set_property IOSTANDARD LVCMOS33 [get_ports pma_rx_clk0]
#
#set_property IOSTANDARD LVCMOS33 [get_ports loc_ref]
#set_property IOSTANDARD LVCMOS33 [get_ports ewrap]
#set_property IOSTANDARD LVCMOS33 [get_ports en_cdet]

#-----------------------------------------------------------
# Fast Skew maximises output setup and hold timing         -
#-----------------------------------------------------------
#set_property SLEW FAST [get_ports {tx_code_group[0]}]
#set_property SLEW FAST [get_ports {tx_code_group[1]}]
#set_property SLEW FAST [get_ports {tx_code_group[2]}]
#set_property SLEW FAST [get_ports {tx_code_group[3]}]
#set_property SLEW FAST [get_ports {tx_code_group[4]}]
#set_property SLEW FAST [get_ports {tx_code_group[5]}]
#set_property SLEW FAST [get_ports {tx_code_group[6]}]
#set_property SLEW FAST [get_ports {tx_code_group[7]}]
#set_property SLEW FAST [get_ports {tx_code_group[8]}]
#set_property SLEW FAST [get_ports {tx_code_group[9]}]
#set_property SLEW FAST [get_ports pma_tx_clk]

#-----------------------------------------------------------
# IDELAY Controller reference clock period constraint      -
#-----------------------------------------------------------

create_clock -name refclk -period 5.000 [get_ports refclk]
set_propagated_clock refclk



#-----------------------------------------------------------
# TBI Clock period Constraints: please do not relax        -
#-----------------------------------------------------------

# Describe the TBI clocks at the input pads

create_clock -name tx_clk -period 8.000 [get_ports gtx_clk]
set_propagated_clock tx_clk

#***********************************************************
# The following constraints target the GMII implemented in *
# the Example Design.                                      *
#***********************************************************
# The GMII is intended to be an internal interface.        *
# The GMII signals should be connected directly to user    *
# logic and all of the following constraints in this file  *
# should be removed.                                       *
#***********************************************************

#-----------------------------------------------------------
# GMII Transmitter Constraints:  place flip-flops in IOB   -
#-----------------------------------------------------------
#set_property IOB TRUE [get_cells gmii_txd_int*]
#set_property IOB TRUE [get_cells gmii_tx_en_int*]
#set_property IOB TRUE [get_cells gmii_tx_er_int*]

#-----------------------------------------------------------
# GMII Receiver Constraints:  place flip-flops in IOB      -
#-----------------------------------------------------------
#set_property IOB TRUE [get_cells gmii_rxd*]
#set_property IOB TRUE [get_cells gmii_rx_dv*]
#set_property IOB TRUE [get_cells gmii_rx_er*]

create_waiver -quiet -type CDC -id CDC-10 -from [get_pins -hier -regexp .*gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIG_REG_NO_AN.RESET_REG_reg/C]  -to [get_pins -hier -regexp .*gpcs_pma_inst/USE_TBI.PCS_OUTPUT/BASEX.RECLOCK_RX_DATA/WR_RESET_PIPE_reg/PRE]  -user gig_ethernet_pcs_pma -desc "Logic is present on async reset path and hence is safe to ignore"
##-----------------------------------------------------------
## MDIO Constraints                                         -
##-----------------------------------------------------------
#set_max_delay 1.000 -from [get_ports mdc] -to [get_pins -hier -filter {name =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDC/data_sync*/D}]
#set_max_delay 1.000 -from [get_ports mdio_i] -to [get_pins -hier -filter {name =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/SYNC_MDIO_IN/data_sync*/D}]
