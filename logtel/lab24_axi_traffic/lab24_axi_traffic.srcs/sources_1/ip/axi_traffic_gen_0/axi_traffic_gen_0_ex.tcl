#-------------------------------------------------------------
# Generated Example Tcl script for IP 'axi_traffic_gen_0' (xilinx.com:ip:axi_traffic_gen:3.0)
#-------------------------------------------------------------

# Set up project params
set_param board.repoPaths C:/Users/dvirh/AppData/Roaming/Xilinx/Vivado/2019.1/xhub/board_store
# Declare source IP directory
set srcIpDir "c:/FPGA_PC/logtel/lab24_axi_traffic/lab24_axi_traffic.srcs/sources_1/ip/axi_traffic_gen_0"

# Create project
puts "INFO: \[open_example_project\] Creating new example project..."
create_project -name axi_traffic_gen_0_ex -force
set_property part xc7a100tcsg324-1 [current_project]
set_property target_language vhdl [current_project]
set_property simulator_language MIXED [current_project]
set_property coreContainer.enable false [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
# Set up imports directory
set projDir [get_property DIRECTORY [current_project]]
set importDir [file join $projDir imports]
file mkdir $importDir

set returnCode 0

# Set up pre-compilation paths

# Import the original IP (excluding example files)
puts "INFO: \[open_example_project\] Importing original IP ..."
import_ip -files [list [file join $srcIpDir axi_traffic_gen_0.xci]] -name axi_traffic_gen_0
reset_target {open_example} [get_ips axi_traffic_gen_0]

# Generate the IP
proc _filter_supported_targets {targets ip} {
  set res {}
  set all [get_property SUPPORTED_TARGETS $ip]
  foreach target $targets {
    lappend res {*}[lsearch -all -inline -nocase $all $target]
  }
  return $res
}
puts "INFO: \[open_example_project\] Generating the example project IP ..."
generate_target -quiet [_filter_supported_targets {instantiation_template synthesis simulation implementation shared_logic} [get_ips axi_traffic_gen_0]] [get_ips axi_traffic_gen_0]

# Add example synthesis HDL files
puts "INFO: \[open_example_project\] Adding example synthesis HDL files ..."
add_files -quiet -copy_to $importDir -fileset [current_fileset] \
  [list [file join $srcIpDir axi_traffic_gen_0/example_design/axi_traffic_gen_0_exdes.v]]

# Add example miscellaneous synthesis files
puts "INFO: \[open_example_project\] Adding example synthesis miscellaneous files ..."
add_files -quiet -copy_to $importDir -fileset [current_fileset] \
  [list [file join $srcIpDir addr.coe]] \
  [list [file join $srcIpDir data.coe]] \
  [list [file join $srcIpDir mask.coe]] \
  [list [file join $srcIpDir ctrl.coe]]

# Add example XDC files
puts "INFO: \[open_example_project\] Adding example XDC files ..."
add_files -quiet -copy_to $importDir -fileset [current_fileset -constrset] \
  [list [file join $srcIpDir axi_traffic_gen_0/example_design/axi_traffic_gen_0_exdes.xdc]]


# Add example simulation HDL files
puts "INFO: \[open_example_project\] Adding simulation HDL files ..."
if { [catch {current_fileset -simset} exc] } { create_fileset -simset sim_1 }
add_files -quiet -copy_to $importDir -fileset [current_fileset -simset] \
  [list [file join $srcIpDir axi_traffic_gen_0/simulation/axi_traffic_gen_0_tb_top.v]]
set_property USED_IN_SYNTHESIS false [get_files [list [file join $importDir axi_traffic_gen_0_tb_top.v]]]

# Set top
set_property TOP [lindex [find_top] 0] [current_fileset]

puts "INFO: \[open_example_project\] Sourcing example extension scripts ..."
# Source script extension file(s)
if {[catch {source [file join $srcIpDir generate_exdes_cores.tcl]} errMsg]} {
  puts "ERROR: \[open_example_project\] Open Example Project failed: Error encountered while sourcing custom IP example design script."
  puts "$errorInfo"
  error "ERROR: see log file for details."
  incr returnCode
}

# Update compile order
update_compile_order -fileset [current_fileset]
update_compile_order -fileset [current_fileset -simset]
set tops [list]
foreach tfile [ get_files -filter {name=~"*.xci" || name=~"*.bdj" || name=~"*.bd"}] { if { [lsearch [list_property $tfile] PARENT_COMPOSITE_FILE ] == -1} {lappend tops $tfile} }
puts "INFO: \[open_example_project\] Rebuilding all the top level IPs ..."
generate_target all $tops
export_ip_user_files -force

set dfile [file join $srcIpDir oepdone.txt]
if { [ catch { set doneFile [open $dfile w] } ] } {
} else { 
  puts $doneFile "Open Example Project DONE"
  close $doneFile
}
if { $returnCode != 0 } {
  puts "ERROR: \[open_example_project\] Problems were encountered while executing the example design script, please review the log file."
  error "ERROR: See log file for details."
  incr returnCode
} else {
  puts "INFO: \[open_example_project\] Open Example Project completed"
}
