module pwm_gen(
    input clk,
    input [9:0] duty_cycle,
    output reg pwm
);

reg [9:0] count;

initial begin
    count = 10'b0;
    pwm = 1'b0;
end

always @(posedge clk) begin
    count <= count + 1'b1;

    if (count < duty_cycle)
        pwm <= 1'b1;
    else
        pwm <= 1'b0;
end

endmodule
