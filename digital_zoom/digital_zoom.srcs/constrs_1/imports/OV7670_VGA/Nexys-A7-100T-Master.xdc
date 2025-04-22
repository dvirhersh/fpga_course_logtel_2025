## CLK
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]
set_property PACKAGE_PIN E3 [get_ports clk_in1]

##VGA Connector
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

set_property PACKAGE_PIN B11 [get_ports VGA_H_sync]
set_property IOSTANDARD LVCMOS33 [get_ports VGA_H_sync]

set_property PACKAGE_PIN B12 [get_ports vga_V_sync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_V_sync]

set_property PACKAGE_PIN H17 [get_ports config_finished]
set_property IOSTANDARD LVCMOS33 [get_ports config_finished]

##Buttons

set_property PACKAGE_PIN U12 [get_ports zoom]
set_property IOSTANDARD LVCMOS33 [get_ports zoom]

set_property PACKAGE_PIN H6 [get_ports resetn]
set_property IOSTANDARD LVCMOS33 [get_ports resetn]

set_property IOSTANDARD LVCMOS33 [get_ports resend_in]
set_property PACKAGE_PIN U11 [get_ports resend_in]

set_property IOSTANDARD LVCMOS33 [get_ports cntl_in]
set_property PACKAGE_PIN V10 [get_ports cntl_in]


##Pmod Header JD
#JD[1]
set_property PACKAGE_PIN H4 [get_ports {din[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[6]}]
#JD[2]
set_property PACKAGE_PIN H1 [get_ports xclk]
set_property IOSTANDARD LVCMOS33 [get_ports xclk]
#JD[3]
set_property PACKAGE_PIN G1 [get_ports camera_h_ref]
set_property IOSTANDARD LVCMOS33 [get_ports camera_h_ref]
#JD[4]
set_property PACKAGE_PIN G3 [get_ports siod]
set_property IOSTANDARD LVCMOS33 [get_ports siod]
set_property PULLUP true [get_ports siod]
#JD[7]
set_property PACKAGE_PIN H2 [get_ports {din[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[7]}]
#JD[8]
set_property PACKAGE_PIN G4 [get_ports pclk]
set_property IOSTANDARD LVCMOS33 [get_ports pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk]
#JD[9]
set_property PACKAGE_PIN G2 [get_ports camera_v_sync]
set_property IOSTANDARD LVCMOS33 [get_ports camera_v_sync]
#JD[10]
set_property PACKAGE_PIN F3 [get_ports sioc]
set_property IOSTANDARD LVCMOS33 [get_ports sioc]
set_property PULLUP true [get_ports sioc]

##Pmod Header JC
#JD[1]
set_property PACKAGE_PIN K1 [get_ports pwdn]
set_property IOSTANDARD LVCMOS33 [get_ports pwdn]
#JD[2]
set_property PACKAGE_PIN F6 [get_ports {din[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[0]}]
#JD[3]
set_property PACKAGE_PIN J2 [get_ports {din[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[2]}]
#JD[4]
set_property PACKAGE_PIN G6 [get_ports {din[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[4]}]
#JD[7]
set_property PACKAGE_PIN E7 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
#JD[8]
set_property PACKAGE_PIN J3 [get_ports {din[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[1]}]
#JD[9]
set_property PACKAGE_PIN J4 [get_ports {din[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[3]}]
#JD[10]
set_property PACKAGE_PIN E6 [get_ports {din[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[5]}]
