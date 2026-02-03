module debouncer(
    input noisy,
    input clk,
    output reg debounced
);

reg [7:0] shiftreg;

always @(posedge clk) begin
    shiftreg <= {shiftreg[6:0], noisy};

    if (shiftreg == 8'b00000000)
        debounced <= 1'b1;
    else if (shiftreg == 8'b11111111)
        debounced <= 1'b0;
    else
        debounced <= debounced;
end

endmodule
