transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/jtag_axi
vlib activehdl/xlconstant_v1_1_9
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_33
vlib activehdl/axi_vip_v1_1_19

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap jtag_axi activehdl/jtag_axi
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 activehdl/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 activehdl/axi_vip_v1_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Downloads/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/lab20_axi_3_bd_mig_7series_0_0_mig_sim.v" \
"c:/FPGA/logtel/lab20_axi_3/lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_mig_7series_0_0/lab20_axi_3_bd_mig_7series_0_0/user_design/rtl/lab20_axi_3_bd_mig_7series_0_0.v" \

vlog -work jtag_axi  -v2k5 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/9747/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_jtag_axi_0_0/sim/lab20_axi_3_bd_jtag_axi_0_0.v" \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/sim/bd_cc91.v" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_0/sim/bd_cc91_one_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_1/sim/bd_cc91_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_2/sim/bd_cc91_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_3/sim/bd_cc91_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_4/sim/bd_cc91_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_5/sim/bd_cc91_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_6/sim/bd_cc91_sarn_0.sv" \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_7/sim/bd_cc91_srn_0.sv" \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_8/sim/bd_cc91_sawn_0.sv" \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_9/sim/bd_cc91_swn_0.sv" \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_10/sim/bd_cc91_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_11/sim/bd_cc91_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/bd_0/ip/ip_12/sim/bd_cc91_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -v2k5 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -sv2k12 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/f0b6/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/0127/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/ec67/hdl" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/814a/hdl/verilog" "+incdir+../../../../lab20_axi_3.gen/sources_1/bd/lab20_axi_3_bd/ipshared/1017/hdl/verilog" "+incdir+C:/Xilinx/Downloads/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l jtag_axi -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_axi_smc_0/sim/lab20_axi_3_bd_axi_smc_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/lab20_axi_3_bd/ip/lab20_axi_3_bd_rst_mig_7series_0_81M_0/sim/lab20_axi_3_bd_rst_mig_7series_0_81M_0.vhd" \
"../../../bd/lab20_axi_3_bd/sim/lab20_axi_3_bd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

