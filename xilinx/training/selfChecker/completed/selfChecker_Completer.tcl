###########################################################################
## Self Checker Completer Script
###########################################################################

# Load the standard helper files
source -quiet ../../fpgaSupport_scripts/script1.tcl
source -quiet ../../fpgaSupport_scripts/script2.tcl

# Define project constants
set verbose     1
set tcName      selfChecker
set demoOrLab   completed
set projName    selfChecker

# Step 1: Creating a new project
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

# Step 2: Write RTL (Register-Transfer Level) code
proc writeRTL {} {  
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName 
    variable TRAINING_PATH 

    # Adding the source files
    import_files -norecurse $TRAINING_PATH/$tcName/support/uart_led.vhd -flat
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

# Step 3: Add simulation files
proc addSimFIles {} {
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName 
    variable TRAINING_PATH 

    add_files -fileset sim_1 $TRAINING_PATH/$tcName/support/tb_fifo_pkg.vhd
    set_property library specific_support_lib [get_files  $TRAINING_PATH/$tcName/support/tb_fifo_pkg.vhd]
    add_files -fileset sim_1 $TRAINING_PATH/$tcName/support/string_utilities_sim_pkg.vhd 
    set_property library utilities_lib [get_files  $TRAINING_PATH/$tcName/support/string_utilities_sim_pkg.vhd]
    add_files -fileset sim_1 $TRAINING_PATH/$tcName/support/string_utilities_synth_pkg.vhd 
    set_property library utilities_lib [get_files  $TRAINING_PATH/$tcName/support/string_utilities_synth_pkg.vhd]
    add_files -fileset sim_1 $TRAINING_PATH/$tcName/support/time_utilities_pkg.vhd 
    set_property library utilities_lib [get_files  $TRAINING_PATH/$tcName/support/time_utilities_pkg.vhd]
    add_files -fileset sim_1 $TRAINING_PATH/$tcName/support/tb_resp_checker.vhd 
    add_files -fileset sim_1 $TRAINING_PATH/$tcName/support/tb_uart_driver.vhd
    update_compile_order -fileset sim_1
}

# Step 4: Run simulation
proc runSim {} {
    variable platform
    variable language
    variable tcName
    variable demoOrLab 
    variable projName 
    variable TRAINING_PATH 

    # Set the top module (change "YourTopModuleName" to the actual name).
    set_property top UART_led_full_tb [get_filesets sim_1]

    # Add the new UART_led_full_tb.vhd file to the fileset sim_1.
    add_files -fileset sim_1 $TRAINING_PATH/$tcName/support/completed_files/UART_led_full_tb.vhd

    # Launch the simulation.
    launch_simulation

    # Open the wave config file.
    open_wave_config $TRAINING_PATH/$tcName/support/selfChecker.wcfg

    # Restart the simulation.
    restart

    # Run the simulation for 6 ms.
    run 6 ms
}

# Step 5: Make function to execute the steps
proc make {stopAt} {
    puts "Running until step $stopAt"
    set limit [string tolower $stopAt]
    switch $limit {
        step1  { projectCreate }
        step2  { make step1; writeRTL }
        step3  { make step2; addSimFIles }
        step4  { make step3; runSim }
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
