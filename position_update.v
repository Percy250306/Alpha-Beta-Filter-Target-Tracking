`timescale 1ns / 1ps

module position_update #
(
    parameter WIDTH = 16
)
(
    input  signed [WIDTH-1:0] predicted_position,
    input  signed [WIDTH-1:0] residual_error,

    // Alpha gain (Q8.8)
    input  signed [15:0] alpha,

    output signed [WIDTH-1:0] updated_position
);

wire signed [31:0] alpha_mult;

assign alpha_mult = residual_error * alpha;

// Convert back to Q8.8
assign updated_position = predicted_position + (alpha_mult >>> 8);

endmodule