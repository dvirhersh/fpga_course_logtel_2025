transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../ipstatic" "+incdir+../../../../../training/Constr_Wizard/lab/KCU105/vhdl/wave_gen.gen/sources_1/ip/clk_core" -l xpm -l xil_defaultlib \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../../../training/Constr_Wizard/lab/KCU105/vhdl/wave_gen.gen/sources_1/ip/clk_core" -l xpm -l xil_defaultlib \
"../../../../../training/Constr_Wizard/lab/KCU105/vhdl/wave_gen.gen/sources_1/ip/clk_core/clk_core_clk_wiz.v" \
"../../../../../training/Constr_Wizard/lab/KCU105/vhdl/wave_gen.gen/sources_1/ip/clk_core/clk_core.v" \

vlog -work xil_defaultlib \
"glbl.v"

