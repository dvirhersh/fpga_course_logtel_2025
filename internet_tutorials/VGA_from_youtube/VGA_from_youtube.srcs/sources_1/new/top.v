`timescale 1ns / 1ps

module top(
    input  clk,
    output Hsynq,
    output Vsynq,
    output [3:0] Red,
    output [3:0] Green,
    output [3:0] Blue
    );
    wire clk_25M;
    wire enable_V_Counter;
    wire [15:0] H_Count_Value;
    wire [15:0] V_Count_Value;

    clock_devider VGA_Clock_gen(clk, clk_25M);
    horizontal_counter VGA_Horiz (clk_25M, enable_V_Counter, H_Count_Value);
    vertical_counter VGA_Verti (clk_25M, enable_V_Counter, V_Count_Value);

    // outputs
    assign Hsynq = (H_Count_Value < 96) ? 1'b1 : 1'b0;
    assign Vsynq = (V_Count_Value < 2)  ? 1'b1 : 1'b0;
    
    // colors - all colors high = white screen
    assign Red   = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? 4'hF : 4'h0;
    assign Green = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? 4'hF : 4'h0;
    assign Blue  = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value > 34) ? 4'hF : 4'h0;

endmodule
