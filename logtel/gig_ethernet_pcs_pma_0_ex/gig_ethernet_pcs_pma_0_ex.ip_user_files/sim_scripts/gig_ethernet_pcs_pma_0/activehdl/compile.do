transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/gig_ethernet_pcs_pma_v16_2_21
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap gig_ethernet_pcs_pma_v16_2_21 activehdl/gig_ethernet_pcs_pma_v16_2_21
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l gig_ethernet_pcs_pma_v16_2_21 -l xil_defaultlib \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work gig_ethernet_pcs_pma_v16_2_21 -93  \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.vhd" \

vlog -work gig_ethernet_pcs_pma_v16_2_21  -v2k5 -l xpm -l gig_ethernet_pcs_pma_v16_2_21 -l xil_defaultlib \
"../../../ipstatic/hdl/gig_ethernet_pcs_pma_v16_2_rfs.v" \

vcom -work xil_defaultlib -93  \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/sgmii_adapt/gig_ethernet_pcs_pma_0_clk_gen.vhd" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/sgmii_adapt/gig_ethernet_pcs_pma_0_johnson_cntr.vhd" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_reset_sync.vhd" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/sgmii_adapt/gig_ethernet_pcs_pma_0_rx_rate_adapt.vhd" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/sgmii_adapt/gig_ethernet_pcs_pma_0_sgmii_adapt.vhd" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_sync_block.vhd" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/sgmii_adapt/gig_ethernet_pcs_pma_0_tx_rate_adapt.vhd" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_block.vhd" \
"../../../../gig_ethernet_pcs_pma_0_ex.gen/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

