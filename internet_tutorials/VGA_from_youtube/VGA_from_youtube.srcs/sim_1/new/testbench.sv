`timescale 1ns / 1ps

module testbench;

    logic clk = 0;
    logic h_sync, v_sync;
    logic [3:0] red, green, blue;

    // Instantiate the Unit Under Test (UUT)
    top UUT (
        .clk    (clk),
        .h_sync(h_sync),
        .v_sync(v_sync),
        .red   (red),
        .green (green),
        .blue  (blue)
    );

    // Clock generation: 100 MHz => period = 10ns => toggle every 5ns
    always #5 clk = ~clk;

endmodule
