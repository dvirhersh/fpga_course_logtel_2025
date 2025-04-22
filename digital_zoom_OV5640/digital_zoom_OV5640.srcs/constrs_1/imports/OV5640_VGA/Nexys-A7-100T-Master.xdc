## CLK
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]
set_property PACKAGE_PIN E3 [get_ports clk_in1]

## VGA Connector
set_property PACKAGE_PIN A3 [get_ports {vga_red[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[0]}]

set_property PACKAGE_PIN B4 [get_ports {vga_red[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[1]}]

set_property PACKAGE_PIN C5 [get_ports {vga_red[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[2]}]

set_property PACKAGE_PIN A4 [get_ports {vga_red[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[3]}]

set_property PACKAGE_PIN B7 [get_ports {vga_blue[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[0]}]

set_property PACKAGE_PIN C7 [get_ports {vga_blue[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[1]}]

set_property PACKAGE_PIN D7 [get_ports {vga_blue[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[2]}]

set_property PACKAGE_PIN D8 [get_ports {vga_blue[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[3]}]

set_property PACKAGE_PIN C6 [get_ports {vga_green[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[0]}]

set_property PACKAGE_PIN A5 [get_ports {vga_green[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[1]}]

set_property PACKAGE_PIN B6 [get_ports {vga_green[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[2]}]

set_property PACKAGE_PIN A6 [get_ports {vga_green[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[3]}]

set_property PACKAGE_PIN B11 [get_ports vga_h_sync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_h_sync]

set_property PACKAGE_PIN B12 [get_ports vga_v_sync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_v_sync]

# LED[0]
set_property PACKAGE_PIN H17 [get_ports config_finished]
set_property IOSTANDARD LVCMOS33 [get_ports config_finished]

# SWs #
# SW[15]
set_property IOSTANDARD LVCMOS33 [get_ports cntl_in]
set_property PACKAGE_PIN V10 [get_ports cntl_in]

# SW[14]
set_property PACKAGE_PIN U11 [get_ports resend_in]
set_property IOSTANDARD LVCMOS33 [get_ports resend_in]

# SW[13]
set_property PACKAGE_PIN U12 [get_ports zoom]
set_property IOSTANDARD LVCMOS33 [get_ports zoom]

# SW[12]
#set_property PACKAGE_PIN H6 [get_ports resetn]
#set_property IOSTANDARD LVCMOS33 [get_ports resetn]

##Pmod Header JD
# JD[1]
set_property PACKAGE_PIN H4 [get_ports {din[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[7]}]
# JD[2]
set_property PACKAGE_PIN H1 [get_ports {din[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[5]}]
#JD[3]
set_property PACKAGE_PIN G1 [get_ports {din[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[3]}]
#JD[4]
set_property PACKAGE_PIN G3 [get_ports {din[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[1]}]
#JD[7]
set_property PACKAGE_PIN H2 [get_ports {din[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[6]}]
#JD[8]
set_property PACKAGE_PIN G4 [get_ports {din[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[4]}]
#JD[9]
set_property PACKAGE_PIN G2 [get_ports {din[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[2]}]
#JD[10]
set_property PACKAGE_PIN F3 [get_ports {din[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[0]}]


##Pmod Header JC
#JC[1] - not connected!
set_property PACKAGE_PIN K1 [get_ports pwdn]
set_property IOSTANDARD LVCMOS33 [get_ports pwdn]
#JC[2] 
set_property PACKAGE_PIN F6 [get_ports pclk]
set_property IOSTANDARD LVCMOS33 [get_ports pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk]
#JC[3]
set_property PACKAGE_PIN J2 [get_ports camera_h_ref]
set_property IOSTANDARD LVCMOS33 [get_ports camera_h_ref]
#JC[4]
set_property PACKAGE_PIN G6 [get_ports scl]
set_property IOSTANDARD LVCMOS33 [get_ports scl]
set_property PULLUP true [get_ports scl]
#JC[7]- not connected!
#set_property PACKAGE_PIN E7 [get_ports reset]
#set_property IOSTANDARD LVCMOS33 [get_ports reset]
#JC[8]
set_property PACKAGE_PIN J3 [get_ports xclk]
set_property IOSTANDARD LVCMOS33 [get_ports xclk]
#JC[9]
set_property PACKAGE_PIN J4 [get_ports camera_v_sync]
set_property IOSTANDARD LVCMOS33 [get_ports camera_v_sync]
#JC[10]
set_property PACKAGE_PIN E6 [get_ports sda]
set_property IOSTANDARD LVCMOS33 [get_ports sda]
set_property PULLUP true [get_ports sda]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/clk_wiz_0/inst/clk_vga]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {din_IBUF[0]} {din_IBUF[1]} {din_IBUF[2]} {din_IBUF[3]} {din_IBUF[4]} {din_IBUF[5]} {din_IBUF[6]} {din_IBUF[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list pclk_IBUF]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list design_1_i/clk_wiz_0/inst/clk_reg]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 1 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list design_1_i/ov5640_controller_0/U0/Inst_i2c_sender/scl_i_1_n_0]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 1 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list design_1_i/ov5640_controller_0/U0/Inst_i2c_sender/scl_i_2_n_0]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe2]
set_property port_width 1 [get_debug_ports u_ila_1/probe2]
connect_debug_port u_ila_1/probe2 [get_nets [list design_1_i/ov5640_controller_0/U0/Inst_i2c_sender/scl_i_3_n_0]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe3]
set_property port_width 1 [get_debug_ports u_ila_1/probe3]
connect_debug_port u_ila_1/probe3 [get_nets [list scl_OBUF]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe4]
set_property port_width 1 [get_debug_ports u_ila_1/probe4]
connect_debug_port u_ila_1/probe4 [get_nets [list design_1_i/ov5640_controller_0/U0/Inst_i2c_sender/sda_INST_0_i_1_n_0]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe5]
set_property port_width 1 [get_debug_ports u_ila_1/probe5]
connect_debug_port u_ila_1/probe5 [get_nets [list sda_OBUF]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe6]
set_property port_width 1 [get_debug_ports u_ila_1/probe6]
connect_debug_port u_ila_1/probe6 [get_nets [list xclk_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_1_clk_reg]
