`timescale 1ns / 1ps

module velocity_update #
(
    parameter WIDTH = 16
)
(
    input  signed [WIDTH-1:0] velocity_in,
    input  signed [WIDTH-1:0] residual_error,

    // Beta gain (Q8.8)
    input  signed [15:0] beta,

    output signed [WIDTH-1:0] updated_velocity
);

wire signed [31:0] beta_mult;

assign beta_mult = residual_error * beta;

// Convert back from Q8.8
assign updated_velocity = velocity_in + (beta_mult >>> 8);

endmodule