
module clock_devider #(parameter div_value = 1)(// make div_value global
    input  logic clk,            // 100Mhz 
    output logic divided_clk = 0 //25KHz
    );

    // division_value = 100MHz / (2 * desired Freq) - 1
    // counter
    integer counter_value = 0;

    always_ff @(posedge clk) begin
        // keep counting until div_value
        if (counter_value == div_value)
            counter_value <= 0; // reset value
        else
            counter_value <= counter_value + 1; // count up
    end

    // divide clk
    always_ff @(posedge clk) begin
        if (counter_value == div_value)
            divided_clk <= ~divided_clk; // flip the signal
    end

endmodule
