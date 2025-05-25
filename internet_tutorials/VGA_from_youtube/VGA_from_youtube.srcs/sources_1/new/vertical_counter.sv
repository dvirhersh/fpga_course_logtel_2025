

module vertical_counter #(parameter V_MAX = 525)(
    input  logic clk_25MHz,
    input  logic enable_V_Counter,
    output logic [15:0] V_Count_Value = 0
    );

    always_ff @(posedge clk_25MHz) begin
        // keep counting until 525
        if (enable_V_Counter) begin
            if (V_Count_Value < V_MAX - 1) 
                V_Count_Value <= V_Count_Value + 1;
            else 
                V_Count_Value <= 0; // reset Horizontal counter
        end
    end
endmodule
