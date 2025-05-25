

module horizontal_counter #(parameter H_MAX = 800)(
    input  logic clk_25MHz,
    output logic enable_V_Counter = 0,
    output logic [15:0] H_Count_Value = 0
    );

    always_ff @(posedge clk_25MHz) begin
        if (H_Count_Value < H_MAX - 1) begin
            H_Count_Value <= H_Count_Value + 1;
            enable_V_Counter <= 1'b0;; // disable vertical counter
        end else begin
            H_Count_Value <= 0; // reset Horizontal counter
            enable_V_Counter <= 1'b1; // trigger V Counter            
        end
    end

    endmodule
