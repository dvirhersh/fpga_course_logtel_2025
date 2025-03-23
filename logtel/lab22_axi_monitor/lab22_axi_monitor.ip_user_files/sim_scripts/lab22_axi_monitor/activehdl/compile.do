transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/jtag_axi
vlib activehdl/xil_defaultlib
vlib activehdl/axi_perf_mon_v5_0_35
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16
vlib activehdl/xlconstant_v1_1_9
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_33
vlib activehdl/axi_vip_v1_1_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap jtag_axi activehdl/jtag_axi
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_perf_mon_v5_0_35 activehdl/axi_perf_mon_v5_0_35
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 activehdl/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 activehdl/axi_vip_v1_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work jtag_axi  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/9747/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_jtag_axi_0_0/sim/lab22_axi_monitor_jtag_axi_0_0.v" \

vlog -work axi_perf_mon_v5_0_35  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/25e3/hdl/axi_perf_mon_v5_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_perf_mon_0_0/sim/lab22_axi_monitor_axi_perf_mon_0_0.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/lab22_axi_monitor_mig_7series_0_0_mig_sim.v" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_mig_7series_0_0/lab22_axi_monitor_mig_7series_0_0/user_design/rtl/lab22_axi_monitor_mig_7series_0_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_rst_mig_7series_0_81M_0_1/sim/lab22_axi_monitor_rst_mig_7series_0_81M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/sim/bd_80ce.v" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_0/sim/bd_80ce_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_1/sim/bd_80ce_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_2/sim/bd_80ce_arsw_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_3/sim/bd_80ce_rsw_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_4/sim/bd_80ce_awsw_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_5/sim/bd_80ce_wsw_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_6/sim/bd_80ce_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_7/sim/bd_80ce_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_8/sim/bd_80ce_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_9/sim/bd_80ce_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_10/sim/bd_80ce_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_11/sim/bd_80ce_sarn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_12/sim/bd_80ce_srn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_13/sim/bd_80ce_sawn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_14/sim/bd_80ce_swn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_15/sim/bd_80ce_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_16/sim/bd_80ce_m00s2a_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_17/sim/bd_80ce_m00arn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_18/sim/bd_80ce_m00rn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_19/sim/bd_80ce_m00awn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_20/sim/bd_80ce_m00wn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_21/sim/bd_80ce_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_22/sim/bd_80ce_m00e_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_23/sim/bd_80ce_m01s2a_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_24/sim/bd_80ce_m01arn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_25/sim/bd_80ce_m01rn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_26/sim/bd_80ce_m01awn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_27/sim/bd_80ce_m01wn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_28/sim/bd_80ce_m01bn_0.sv" \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/bd_0/ip/ip_29/sim/bd_80ce_m01e_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -sv2k12 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/0127/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/ec67/hdl" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/814a/hdl/verilog" "+incdir+../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l jtag_axi -l xil_defaultlib -l axi_perf_mon_v5_0_35 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/ip/lab22_axi_monitor_axi_smc_0/sim/lab22_axi_monitor_axi_smc_0.v" \

vcom -work xil_defaultlib -93  \
"../../../../lab22_axi_monitor.gen/sources_1/bd/lab22_axi_monitor/sim/lab22_axi_monitor.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

