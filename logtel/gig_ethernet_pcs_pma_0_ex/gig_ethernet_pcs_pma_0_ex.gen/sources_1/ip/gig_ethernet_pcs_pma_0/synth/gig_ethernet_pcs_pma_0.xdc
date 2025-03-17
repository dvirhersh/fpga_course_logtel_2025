
#***********************************************************
# Internal core constraints: please do not remove.         *
#***********************************************************

# Constrain between flip-flops and the Block Memory for the 8B10B encoder and decoder

set_max_delay 8.000  -to [get_cells -hier -filter {name =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE*}]
set_max_delay 8.000  -to [get_cells -hier -filter {name =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE*}]

set_max_delay 8.000  -datapath_only -from [get_cells -hier -filter {name =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/ENCODER/LOOK_UP_TABLE*}] -quiet
set_max_delay 8.000 -datapath_only  -from [get_cells -hier -filter {name =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/DECODER/LOOK_UP_TABLE*}] -quiet


# Constrain between Distributed Memory (output data) and the 1st set of flip-flops

set_max_delay 6.000 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gpcs_pma_inst/USE_TBI.PCS_OUTPUT/*.RECLOCK_RX_DATA/*EN_RXD_FIFO_*.DIST_RAM/DP}] -filter {REF_PIN_NAME =~ CLK}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/SGMII.RECLOCK_RX_DATA/RXDATA_FIFO_REG1*}] -filter {REF_PIN_NAME =~ D}]

# Identify clock domain crossing registers
set_max_delay 14.000 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/SGMII.RECLOCK_RX_DATA/WR_ADDRGRAY*}] -filter {REF_PIN_NAME =~ C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/SGMII.RECLOCK_RX_DATA/*/data_sync*}] -filter {REF_PIN_NAME =~ D}]

set_false_path -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gpcs_pma_inst/HAS_MANAGEMENT.MDIO/*.RESET_REG*}] -filter {REF_PIN_NAME =~ C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gpcs_pma_inst/USE_TBI.PCS_OUTPUT/*.RECLOCK_RX_DATA/WR_RESET_PIPE*}] -filter {REF_PIN_NAME =~ PRE}]
set_false_path -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gpcs_pma_inst/HAS_MANAGEMENT.MDIO/*.RESET_REG*}] -filter {REF_PIN_NAME =~ C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gpcs_pma_inst/USE_TBI.PCS_OUTPUT/*.RECLOCK_RX_DATA/WR_RESET*}] -filter {REF_PIN_NAME =~ PRE}]
# Target asynchronous reset path

set_max_delay 14.000 -datapath_only -from [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/HAS_MANAGEMENT.MDIO/*RESET_REG*}] -filter {REF_PIN_NAME =~ C}] -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/USE_TBI.PCS_OUTPUT/SGMII.RECLOCK_RX_DATA/WR_RESET*}] -filter {REF_PIN_NAME =~ D}]

# Place the MDIO logic in it's own timing groups
#
# The MDIO logic is constrained to 400 ns (8 ns * 50).  This is assigned to
# ("ts_tx_clk" * 50) so that the tools preserve the clock relationship during
# timing analysis
#
# TBD



#-----------------------------------------------------------
# IDELAY Controller reference clock period constraint      -
#-----------------------------------------------------------

#create_clock -name refclk -period 5.000 [get_ports refclk]
#set_propagated_clock refclk


# false path constraints to async inputs coming directly to synchronizer
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *SYNC_*/data_sync*}] -filter {REF_PIN_NAME =~ D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as it is in the reset path which is a level signal so safe to ignore" -from [get_pins -of [get_cells -hier -filter {name =~ */gpcs_pma_inst/HAS_MANAGEMENT.MDIO/CONFIG_REG_WITH_AN.RESET_REG_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */gpcs_pma_inst/USE_TBI.PCS_OUTPUT/*.RECLOCK_RX_DATA/WR_RESET_PIPE_reg*}] -filter {name =~ *PRE}] 

