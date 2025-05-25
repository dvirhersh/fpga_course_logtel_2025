
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# clock_devider, ov7670_controller, ovo_7670_caputre, vga_top

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys-a7-100t:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Blue_0 [ create_bd_port -dir O -from 3 -to 0 Blue_0 ]
  set Green_0 [ create_bd_port -dir O -from 3 -to 0 Green_0 ]
  set Hsynq_0 [ create_bd_port -dir O Hsynq_0 ]
  set Red_0 [ create_bd_port -dir O -from 3 -to 0 Red_0 ]
  set Vsynq_0 [ create_bd_port -dir O Vsynq_0 ]
  set camera_h_ref_0 [ create_bd_port -dir I camera_h_ref_0 ]
  set camera_v_sync_0 [ create_bd_port -dir I camera_v_sync_0 ]
  set clk_0 [ create_bd_port -dir I -type clk clk_0 ]
  set cntl_0 [ create_bd_port -dir I cntl_0 ]
  set config_finished_0 [ create_bd_port -dir O config_finished_0 ]
  set din_0 [ create_bd_port -dir I -from 7 -to 0 din_0 ]
  set pclk_0 [ create_bd_port -dir I pclk_0 ]
  set pwdn_0 [ create_bd_port -dir O pwdn_0 ]
  set resend_0 [ create_bd_port -dir I resend_0 ]
  set reset_0 [ create_bd_port -dir O -type rst reset_0 ]
  set sioc_0 [ create_bd_port -dir O sioc_0 ]
  set siod_0 [ create_bd_port -dir IO siod_0 ]
  set xclk_0 [ create_bd_port -dir O xclk_0 ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Read_Width_A {12} \
   CONFIG.Read_Width_B {12} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {307200} \
   CONFIG.Write_Width_A {12} \
   CONFIG.Write_Width_B {12} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: clock_devider_0, and set properties
  set block_name clock_devider
  set block_cell_name clock_devider_0
  if { [catch {set clock_devider_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clock_devider_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ov7670_controller_0, and set properties
  set block_name ov7670_controller
  set block_cell_name ov7670_controller_0
  if { [catch {set ov7670_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ov7670_controller_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ovo_7670_caputre_0, and set properties
  set block_name ovo_7670_caputre
  set block_cell_name ovo_7670_caputre_0
  if { [catch {set ovo_7670_caputre_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ovo_7670_caputre_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: vga_top_0, and set properties
  set block_name vga_top
  set block_cell_name vga_top_0
  if { [catch {set vga_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vga_top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Net [get_bd_ports siod_0] [get_bd_pins ov7670_controller_0/siod]
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_pins blk_mem_gen_0/doutb] [get_bd_pins vga_top_0/frame_pixel]
  connect_bd_net -net camera_h_ref_0_1 [get_bd_ports camera_h_ref_0] [get_bd_pins ovo_7670_caputre_0/camera_h_ref]
  connect_bd_net -net camera_v_sync_0_1 [get_bd_ports camera_v_sync_0] [get_bd_pins ovo_7670_caputre_0/camera_v_sync]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins clock_devider_0/clk] [get_bd_pins ov7670_controller_0/clk]
  connect_bd_net -net clock_devider_0_divided_clk [get_bd_pins blk_mem_gen_0/clkb] [get_bd_pins clock_devider_0/divided_clk] [get_bd_pins vga_top_0/pixel_clk]
  connect_bd_net -net cntl_0_1 [get_bd_ports cntl_0] [get_bd_pins vga_top_0/cntl]
  connect_bd_net -net din_0_1 [get_bd_ports din_0] [get_bd_pins ovo_7670_caputre_0/din]
  connect_bd_net -net ov7670_controller_0_config_finished [get_bd_ports config_finished_0] [get_bd_pins ov7670_controller_0/config_finished]
  connect_bd_net -net ov7670_controller_0_pwdn [get_bd_ports pwdn_0] [get_bd_pins ov7670_controller_0/pwdn]
  connect_bd_net -net ov7670_controller_0_reset [get_bd_ports reset_0] [get_bd_pins ov7670_controller_0/reset]
  connect_bd_net -net ov7670_controller_0_sioc [get_bd_ports sioc_0] [get_bd_pins ov7670_controller_0/sioc]
  connect_bd_net -net ov7670_controller_0_xclk [get_bd_ports xclk_0] [get_bd_pins ov7670_controller_0/xclk]
  connect_bd_net -net ovo_7670_caputre_0_addr [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins ovo_7670_caputre_0/addr]
  connect_bd_net -net ovo_7670_caputre_0_dout [get_bd_pins blk_mem_gen_0/dina] [get_bd_pins ovo_7670_caputre_0/dout]
  connect_bd_net -net ovo_7670_caputre_0_wr_en [get_bd_pins blk_mem_gen_0/wea] [get_bd_pins ovo_7670_caputre_0/wr_en]
  connect_bd_net -net pclk_0_1 [get_bd_ports pclk_0] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins ovo_7670_caputre_0/pclk]
  connect_bd_net -net resend_0_1 [get_bd_ports resend_0] [get_bd_pins ov7670_controller_0/resend]
  connect_bd_net -net vga_top_0_Blue [get_bd_ports Blue_0] [get_bd_pins vga_top_0/Blue]
  connect_bd_net -net vga_top_0_Green [get_bd_ports Green_0] [get_bd_pins vga_top_0/Green]
  connect_bd_net -net vga_top_0_Hsynq [get_bd_ports Hsynq_0] [get_bd_pins vga_top_0/Hsynq]
  connect_bd_net -net vga_top_0_Red [get_bd_ports Red_0] [get_bd_pins vga_top_0/Red]
  connect_bd_net -net vga_top_0_Vsynq [get_bd_ports Vsynq_0] [get_bd_pins vga_top_0/Vsynq]
  connect_bd_net -net vga_top_0_frame_address [get_bd_pins blk_mem_gen_0/addrb] [get_bd_pins vga_top_0/frame_address]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


