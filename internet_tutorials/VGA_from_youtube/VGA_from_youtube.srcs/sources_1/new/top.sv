module top (
    input  logic clk,
    output logic Hsynq,
    output logic Vsynq,
    output logic [3:0] Red,
    output logic [3:0] Green,
    output logic [3:0] Blue
    );
    logic clk_25M;
    logic enable_V_Counter;
    logic [15:0] H_Count_Value;
    logic [15:0] V_Count_Value;

    clock_devider #(.div_value(1)) VGA_Clock_gen (.clk(clk), .divided_clk(clk_25M));
    horizontal_counter VGA_Horiz (.clk_25MHz(clk_25M),.enable_V_Counter(enable_V_Counter),.H_Count_Value(H_Count_Value));
    vertical_counter VGA_Verti (.clk_25MHz(clk_25M),.enable_V_Counter(enable_V_Counter),.V_Count_Value(V_Count_Value));

    // outputs
    assign Hsynq = (H_Count_Value < 96) ? 1'b1 : 1'b0;
    assign Vsynq = (V_Count_Value < 2)  ? 1'b1 : 1'b0;
    
    // Display window condition
    logic display_area;
    assign display_area = (H_Count_Value > 143 && H_Count_Value < 784 &&
                           V_Count_Value > 34  && V_Count_Value < 515);
    
    // colors - all colors high = white screen
    assign Red   = display_area ? 4'hF : 4'h0;
    assign Green = display_area ? 4'hF : 4'h0;
    assign Blue  = display_area ? 4'hF : 4'h0;
endmodule
