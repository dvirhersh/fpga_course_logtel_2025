###########################################################################
## buildingMemory Completer Script
###########################################################################

# Load the standard helper files
source -quiet ../../fpgaSupport_scripts/script1.tcl
source -quiet ../../fpgaSupport_scripts/script2.tcl

# Define project constants
set verbose     1
set tcName      buildingMemory
set demoOrLab   completed
set projName    buildingMemory

# *********** Step 1: Creating a new project ***********

# Procedure to create a new project
proc projectCreate {} {   
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName
    variable TRAINING_PATH 

    # Check if platform and language are selected
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
    import_files -norecurse $TRAINING_PATH/$tcName/support/DP_memory.vhd -flat
    update_compile_order -fileset sources_1
}

# *********** Step 3: Running Synthesis ***********

# Procedure to run synthesis
proc runSynth {} {
    # Launch the synthesis
    launch_runs synth_1 -jobs 8
    wait_on_run synth_1
}

# *********** Step 4: Running Simulation ***********

# Procedure to run simulation
proc runSim {} {
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName 
    variable TRAINING_PATH 

    # Set the top module (change "YourTopModuleName" to the actual name).
    set_property top DPmemory_tb [get_filesets sim_1]

    # Add the new DPmemory_tb.vhd file to the fileset sim_1.
    add_files -fileset sim_1 $TRAINING_PATH/$tcName/support/DPmemory_tb.vhd

    # Launch the simulation.
    launch_simulation

    # Open the wave config file.
    open_wave_config $TRAINING_PATH/$tcName/support/DPmemory.wcfg

    # Run the simulation for 2 us.
    run 2 us

    # Close the simulation.
    close_sim
}

# *********** Step 5: Updating RTL code ***********

# Procedure to update RTL code
proc updatedRTL {} {
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName 
    variable TRAINING_PATH 

    # Define the file path within the project's sources directory
    set file_path "$TRAINING_PATH/$tcName/completed/KCU105/vhdl/buildingMemory.srcs/sources_1/imports/DP_memory.vhd"

    # Comment lines 44, 45, 73, 74, 75 within the file
    set lines_to_comment {44 45 73 74 75}

    # Read the entire content of the VHDL file
    set file_handle [open $file_path "r"]
    set file_content [read $file_handle]
    close $file_handle

    # Split the content into lines
    set lines [split $file_content "\n"]

    # Comment the specified lines
    foreach line_num $lines_to_comment {
        if {$line_num > 0 && $line_num <= [llength $lines]} {
            set line_index [expr $line_num - 1]
            set lines [lreplace $lines $line_index $line_index "--[lindex $lines $line_index]"]
        }
    }

    # Join the modified lines back together
    set modified_content [join $lines "\n"]

    # Write the modified content back to the file
    set file_handle [open $file_path "w"]
    puts -nonewline $file_handle $modified_content
    close $file_handle
}

# *********** Step 6: Running Synthesis after Updating RTL ***********

# Procedure to run synthesis after updating RTL
proc runSynth1 {} {  
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName 
    variable TRAINING_PATH 

    # Reset the synthesis run
    reset_run synth_1

    # Launch the synthesis
    launch_runs synth_1 -jobs 8
    wait_on_run synth_1
    open_run synth_1 -name synth_1

    # Report utilization
    report_utilization -name utilization_1
}

# *********** Step 7: Make Function to Execute the Steps ***********

# Procedure to execute steps based on input
proc make {stopAt} {
    puts "Running until step $stopAt"
    set limit [string tolower $stopAt]
    switch $limit {
        step1  { projectCreate }
        step2  { make step1; writeRTL }
        step3  { make step2; runSynth }
        step4  { make step3; runSim }
        step5  { make step4; updatedRTL }
        step6  { make step5; runSynth1 }
        all    { make step6 }
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
