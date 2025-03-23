transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+lab22_axi_monitor  -L xil_defaultlib -L xilinx_vip -L xpm -L jtag_axi -L axi_perf_mon_v5_0_35 -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_16 -L xlconstant_v1_1_9 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_33 -L axi_vip_v1_1_19 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.lab22_axi_monitor xil_defaultlib.glbl

do {lab22_axi_monitor.udo}

run 1000ns

endsim

quit -force
