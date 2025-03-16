set_property SRC_FILE_INFO {cfile:c:/FPGA/logtel/lab23_timing/Nexys-A7-HW/Nexys-A7-HW.gen/ClkGen/ip/ClkGen/ClkGen.xdc rfile:../../../Nexys-A7-HW/Nexys-A7-HW.gen/ClkGen/ip/ClkGen/ClkGen.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_100MHz_i]] 0.100
