`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 12:38:55 PM
// Design Name: 
// Module Name: nuclear_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define PERIOD 10.0

module nuclear_tb;

    // Signal declarations
    reg  CLOCK = 1'b0;
    reg  RESET = 1'b0;
    reg  RAD   = 1'b0;
    wire ALARM;

    // Instantiate the Unit Under Test (UUT)
    // nuclear uut (
    //     .RESET(RESET),
    //     .RAD(RAD),
    //     .CLOCK(CLOCK),
    //     .ALARM(ALARM)
    // );

    nuclear uut (RESET, RAD, CLOCK, ALARM);

    // Generate clock signal
    always #(`PERIOD / 2) CLOCK = ~CLOCK;

    // Stimulus process
    initial begin
        // Apply reset
        #100 RESET = 1'b1;
        #100 RESET = 1'b0;

        // Test pattern
        #(`PERIOD*490)  RAD = 1'b0;  // Should not trigger alarm
        #(`PERIOD*1510) RAD = 1'b1;  // Sustained radiation
        #(`PERIOD*510)  RAD = 1'b0;  // Drop radiation
        #(`PERIOD*1490) RAD = 1'b1;  // Trigger again
        #(`PERIOD*1490) RAD = 1'b0; 
        #(`PERIOD*1000) $finish;     // End simulation
    end

endmodule
