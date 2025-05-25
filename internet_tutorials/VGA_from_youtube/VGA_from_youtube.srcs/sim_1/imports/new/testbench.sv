`timescale 1ns / 1ps

module testbench;

    logic clk = 0;
    logic Hsynq;
    logic Vsynq;
    logic [3:0] Red;
    logic [3:0] Green;
    logic [3:0] Blue;
    
    top UUT (
        .clk(clk),
        .Hsynq(Hsynq),
        .Vsynq(Vsynq),
        .Red(Red),
        .Green(Green),
        .Blue(Blue)
    );

    always #5 clk = ~clk;

endmodule
