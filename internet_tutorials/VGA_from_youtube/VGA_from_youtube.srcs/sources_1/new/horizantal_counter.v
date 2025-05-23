`timescale 1ns / 1ps

module horizontal_counter(
    input clk_25MHz,
    output reg enable_V_Counter =  0,
    output reg [15:0] H_Count_Value = 0
    );

    always @(posedge clk_25MHz) begin
        if (H_Count_Value < 799) begin
            H_Count_Value <= H_Count_Value + 1;
            enable_V_Counter <= 0; // disable vertical counter
        end else begin
            H_Count_Value <= 0; // reset Horizontal counter
            enable_V_Counter <= 1; // trigger V Counter            
        end
    end
endmodule