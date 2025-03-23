vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../ipstatic" "+incdir+../../../../Nexys-A7-HW/Nexys-A7-HW.gen/ClkGen/ip/ClkGen" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" "+incdir+../../../../Nexys-A7-HW/Nexys-A7-HW.gen/ClkGen/ip/ClkGen" \
"../../../../Nexys-A7-HW/Nexys-A7-HW.gen/ClkGen/ip/ClkGen/ClkGen_clk_wiz.v" \
"../../../../Nexys-A7-HW/Nexys-A7-HW.gen/ClkGen/ip/ClkGen/ClkGen.v" \

vlog -work xil_defaultlib \
"glbl.v"

