module pwm_led_top(
    input MAX10_CLK1_50,
    input [2:0] SW,
    output [0:0] ARDUINO_IO,
    output [0:0] LEDR
);

wire pwm;
wire duty_clk;
wire [2:0] duty_cycle;

assign duty_cycle = SW;

pwm_gen pwm_inst(
    .clk(MAX10_CLK1_50),
    .duty_cycle({7'b0, duty_cycle}),
    .pwm(pwm)
);

assign LEDR[0] = pwm;
assign ARDUINO_IO[0] = pwm;

endmodule
