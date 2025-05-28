set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
 
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {y_out[1]}]
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33} [get_ports {y_out[0]}]
 
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {rst}]

set_property -dict {PACKAGE_PIN U11 IOSTANDARD LVCMOS33} [get_ports {input_a[1]}]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {input_a[0]}]

