`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 03:46:09 PM
// Design Name: 
// Module Name: clock_devider
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

// counter based
module clock_devider #(parameter div_value = 1)(// make div_value global
    input wire clk,            // 100Mhz 
    output reg divided_clk = 0 //25KHz
    );

    // division_value = 100MHz / (2 * desired Freq) - 1
    // counter
    integer counter_value = 0;

    always @(posedge clk ) begin
        // keep counting until div_value
        if (counter_value == div_value) 
            counter_value <= 0; // reset value
        else 
            counter_value <= counter_value + 1; // count up            
    end

    // divide clk
    always @(posedge clk ) begin
        if (counter_value == div_value) 
            divided_clk <= ~divided_clk; // flip the signal   
    end

endmodule
