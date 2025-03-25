`timescale 1ns / 1ps
`define PERIOD 10.0

module nuclear_tb;

    // Signal declarations
    logic CLOCK = 0;
    logic RESET = 0;
    logic RAD   = 0;
    logic ALARM;

    // Instantiate the Unit Under Test (UUT)
    nuclear uut (
        .RESET(RESET),
        .RAD(RAD),
        .CLOCK(CLOCK),
        .ALARM(ALARM)
    );

    // Generate clock signal
    always #(`PERIOD / 2) CLOCK = ~CLOCK;

    // Stimulus process
    initial begin
        // Apply reset
        #100 RESET = 1;
        #100 RESET = 0;

        // Test pattern
        #(`PERIOD*490)  RAD = 0;
        #(`PERIOD*1510) RAD = 1;
        #(`PERIOD*510)  RAD = 0;
        #(`PERIOD*1490) RAD = 1;
        #(`PERIOD*1490) RAD = 0;
        #(`PERIOD*1000) $finish;
    end

endmodule
