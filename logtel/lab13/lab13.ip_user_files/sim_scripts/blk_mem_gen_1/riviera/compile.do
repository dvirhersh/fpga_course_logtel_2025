transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr -l xpm -l xil_defaultlib \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../../lab13.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.vhdl" \


vlog -work xil_defaultlib \
"glbl.v"

