`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 12:35:20 PM
// Design Name: 
// Module Name: nuclear
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


module nuclear(
    input  RESET,
    input  RAD,
    input  CLOCK,
    output reg ALARM
    );

    localparam integer THRESHOLD = 9'd500;

    reg [8:0] count = 9'd0;

    always @(posedge CLOCK) begin
        if (RESET || ~RAD)
            count <= 9'd0;
        else if (count < THRESHOLD)
            count <= count + 1;
    end

    always @(posedge CLOCK) begin
        if (RESET)
            ALARM <= 1'b0;
        else if (count == THRESHOLD)
            ALARM <= 1'b1;
        else
            ALARM <= 1'b0;
    end

endmodule
