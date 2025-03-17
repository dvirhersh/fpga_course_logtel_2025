
# This constraints file contains default clock frequencies to be used during creation of a 
# Synthesis Design Checkpoint (DCP). For best results the frequencies should be modified 
# to match the target frequencies. 
# This constraints file is not used in top-down/global synthesis (not the default flow of Vivado).

#################
#DEFAULT CLOCK CONSTRAINTS

############################################################
# Clock Period Constraints                                 #
############################################################

create_clock -name gtx_clk -period 5.000 [get_ports gtx_clk]
create_clock -name refclk -period 5.000 [get_ports refclk]
create_clock -name pma_rx_clk0 -period 16.000 [get_ports pma_rx_clk0]
create_clock -name pma_tx_clk -period 16.000 [get_ports pma_tx_clk]


