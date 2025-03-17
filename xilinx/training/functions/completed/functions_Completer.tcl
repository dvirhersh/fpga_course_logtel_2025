###########################################################################
## Functions Completer Script
###########################################################################

# Load the standard helper files
source -quiet ../../fpgaSupport_scripts/script1.tcl
source -quiet ../../fpgaSupport_scripts/script2.tcl

# Define project constants
set verbose     1
set tcName      functions
set demoOrLab   completed
set projName    functions

# *********** Step 1: Creating a new project ***********

# Procedure to create a new project
proc projectCreate {} {   
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName
    variable TRAINING_PATH 

    # Add the platform and language combination that you want 
    set isLangNotSelected [string compare -nocase $language "undefined"]
    set isPlatNotSelected [string compare -nocase $platform "undefined"]

    if {$isLangNotSelected} {
        puts "Please type: use VHDL | Verilog"
        puts "   then rerun the projectCreate"
    } elseif {$isPlatNotSelected} {
        puts "Please type: use KCU105 | KC705 | KC7xx"
        puts "   then rerun the projectCreate"
    }
   
    # Create a project
    set projName.xpr {append $projName .xpr}
    create_project -force $projName $TRAINING_PATH/$tcName/$demoOrLab/$platform -part xcku040-ffva1156-2-e
    set_property board_part xilinx.com:kcu105:part0:1.7 [current_project] 
    set_property target_language VHDL [current_project]
}

# *********** Step 2: Writing RTL - Adding VHDL code ***********

# Procedure to write RTL code
proc writeRTL {} {  
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName 
    variable TRAINING_PATH 

    # Adding the source files
    import_files -norecurse $TRAINING_PATH/$tcName/support/uart_led.vhd -flat
    import_files -norecurse $TRAINING_PATH/$tcName/support//completed_files/UART_LED_pkg.vhd -flat
    import_files -norecurse $TRAINING_PATH/$tcName/support/uart_rx.vhd -flat
    import_files -norecurse $TRAINING_PATH/$tcName/support/register8.vhd -flat
    import_files -norecurse $TRAINING_PATH/$tcName/support/meta_harden.vhd -flat
    import_files -norecurse $TRAINING_PATH/$tcName/support/LED_manager.vhd -flat
    import_files -norecurse $TRAINING_PATH/$tcName/support/uart_baud_gen.vhd -flat
    import_files -norecurse $TRAINING_PATH/$tcName/support/reset_bridge.vhd -flat
    import_files -norecurse $TRAINING_PATH/$tcName/support/uart_rx_ctl.vhd -flat
    update_compile_order -fileset sources_1
    update_compile_order -fileset sources_1
}

# *********** Step 3: Adding Simulation Files ***********

# Procedure to add simulation files
proc addSimFIles {} {
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName 
    variable TRAINING_PATH 

    add_files -fileset sim_1 $TRAINING_PATH/$tcName/support/completed_files/string_utilities_sim_pkg.vhd 
    set_property library utilities_lib [get_files  $TRAINING_PATH/$tcName/support/completed_files/string_utilities_sim_pkg.vhd]
    update_compile_order -fileset sim_1
}

# *********** Step 4: Running Synthesis ***********

# Procedure to run synthesis
proc runSynth {} {
    set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY none [get_runs synth_1]  
    launch_runs synth_1 -jobs 8
    wait_on_run synth_1
    open_run synth_1 -name synth_1
} 

# *********** Step 5: Make Function to Execute the Steps ***********

# Procedure to execute steps based on input
proc make {stopAt} {
    puts "Running until step $stopAt"
    set limit [string tolower $stopAt]
    switch $limit {
        step1  { projectCreate }
        step2  { make step1; writeRTL }
        step3  { make step2; addSimFIles }
        step4  { make step3; runSynth }
        all    { make step4 }
        default { 
            puts "Call the make proc, Should be make step*" 
        }   
    }   
}

#<copyright-disclaimer-start>
#  **************************************************************************************************************
#  * © 2023 Advanced Micro Devices, Inc. All rights reserved.                                                   *
#  * DISCLAIMER                                                                                                 *
#  * The information contained herein is for informational purposes only, and is subject to change              *
#  * without notice. While every precaution has been taken in the preparation of this document, it              *
#  * may contain technical inaccuracies, omissions and typographical errors, and AMD is under no                *
#  * obligation to update or otherwise correct this information.  Advanced Micro Devices, Inc. makes            *
#  * no representations or warranties with respect to the accuracy or completeness of the contents of           *
#  * this document, and assumes no liability of any kind, including the implied warranties of noninfringement,  *
#  * merchantability or fitness for particular purposes, with respect to the operation or use of AMD            *
#  * hardware, software or other products described herein.  No license, including implied or                   *
#  * arising by estoppel, to any intellectual property rights is granted by this document.  Terms and           *
#  * limitations applicable to the purchase or use of AMD’s products are as set forth in a signed agreement     *
#  * between the parties or in AMD's Standard Terms and Conditions of Sale. GD-18                               *
#  *                                                                                                            *
#  **************************************************************************************************************
#<copyright-disclaimer-end>
