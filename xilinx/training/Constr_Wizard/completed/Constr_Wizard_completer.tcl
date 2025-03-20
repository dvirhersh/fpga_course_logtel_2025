###########################################################################
## Timing Constraints Wizard Completer Script
###########################################################################

# load the standard helper file
source ../../completer_helper_script/helper.tcl
source ../../completer_helper_script/completer_helper.tcl

# project constants
set verbose 	1
set tcName 	Constr_Wizard
set demoOrLab 	completed
set projName 	wave_gen

 ## *********** Step 1 : Opening a project, opening a synthesized design and performing the report_timing_summary ***********

proc openProject {} {
variable platform
variable language
variable tcName
variable demoOrLab 
variable projName 
variable trainingPath

# Add the platform and language combination that you want 
set isLangNotSelected [string compare -nocase $language "undefined"]
set isPlatNotSelected [string compare -nocase $platform "undefined"]
   
if {$isLangNotSelected} {
      puts "Please type: use VHDL | Verilog"
      puts "   then rerun the projectCreate"
} 
if {$isPlatNotSelected} {
      puts "Please type: use KCU105 | KC705 | KC7xx"
      puts "   then rerun the projectCreate"
}

# Open a project
set projName.xpr {append $projName .xpr}
open_project $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.xpr

# Open synthesized design
synthesisRun

report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
}


 ## ********** Step 2 : Adding constraints for Ultra-Scale **************
 ## ********** Step 3 : Adding constraints for 7 Series **************	

proc addConstr {} {

variable platform
variable language
variable tcName
variable demoOrLab 
variable projName
variable trainingPath

set projName.srcs {append $projName .srcs}
set_property target_constrs_file $trainingPath/training/$tcName/$demoOrLab/$platform/$language/$projName.srcs/constrs_1/imports/wave_gen_timing.xdc [current_fileset -constrset]

# Adding the Constraints for either 7 series or Ultra-Scale board

if {$platform == "KCU105"} {
create_clock -period 3.333 -name clk_pin_p -waveform {0.000 1.667} [get_ports clk_pin_p]
create_clock -period 4.999 -name VIRTUAL_clk_out2_clk_core -waveform {0.000 2.500}
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 1.000 [get_ports lb_sel_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports lb_sel_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 1.000 [get_ports rst_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports rst_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 1.000 [get_ports rxd_pin]
set_input_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports rxd_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports {led_pins[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports {led_pins[*]}]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports dac_clr_n_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports dac_clr_n_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports dac_cs_n_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports dac_cs_n_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports spi_mosi_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports spi_mosi_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -min -add_delay 0.500 [get_ports txd_pin]
set_output_delay -clock [get_clocks VIRTUAL_clk_out2_clk_core] -max -add_delay 1.250 [get_ports txd_pin]

} 

save_constraints -force
report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_2
close_design
}


 ## ********** Step 4 : Performing the report_timing_summary after adding the constraints and Implementing the design **************

proc genReport {} {

# Calling the proc which runs implementation
implementationRun

report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths 10 -input_pins -name timing_1
}


 ## ********** Running only the steps that are required with Make **************

proc make {stopAt} {

   puts "Running until the step $stopAt"
   set limit [string tolower $stopAt]
   switch $limit {
      step1  { openProject }
      step2_3  { make step1; addConstr }
      step4  { make step2_3; genReport }
	  all    { make step4 }
      default { 
         puts "Call the make proc, Should be make step*" 
			  }	
	}	
}

#<copyright-disclaimer-start>
#  ************************************************************************************************************
#  * © Copyright 2022 Xilinx, Inc. All rights reserved.                                                       *
#  * This file contains confidential and proprietary information of Xilinx, Inc. and                          *
#  * is protected under U.S. and international copyright and other intellectual property laws.                *
#  * DISCLAIMER                                                                                               *
#  * This disclaimer is not a license and does not grant any rights to the materials distributed              *
#  * herewith. Except as otherwise provided in a valid license issued to you by Xilinx, and to the            *
#  * maximum extent permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS"               *
#  * AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,                 *
#  * IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,     *
#  * OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,  *
#  * including negligence, or under any other theory of liability) for any loss or damage of any kind or      *
#  * nature related to, arising under or in connection with these materials, including for any direct, or     *
#  * any indirect, special, incidental, or consequential loss or damage (including loss of data, profits,     *
#  * goodwill, or any type of loss or damage suffered as a result of any action brought by a third party)     *
#  * even if such damage or loss was reasonably foreseeable or Xilinx had been advised of the possibility     *
#  * of the same.                                                                                             *
#  * CRITICAL APPLICATIONS                                                                                    *
#  * Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring    *
#  * fail-safe performance, such as life-support or safety devices or systems, Class III medical devices,     *
#  * nuclear facilities, applications related to the deployment of airbags, or any other applications that    *
#  * could lead to death, personal injury, or severe property or environmental damage (individually and       *
#  * collectively, "Critical Applications"). Customer assumes the sole risk and liability of any use of       *
#  * Xilinx products in Critical Applications, subject only to applicable laws and regulations governing      *
#  * limitations on product liability.                                                                        *
#  * THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.                 *
#  *                                                                                                          *
#  ************************************************************************************************************
#<copyright-disclaimer-end>
