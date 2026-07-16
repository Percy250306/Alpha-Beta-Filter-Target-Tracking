`timescale 1ns / 1ps

module predictor #
(
    parameter WIDTH = 16
)
(
    input  signed [WIDTH-1:0] position_in,
    input  signed [WIDTH-1:0] velocity_in,
    input  signed [WIDTH-1:0] dt,

    output signed [WIDTH-1:0] predicted_position
);

wire signed [31:0] vel_dt;

assign vel_dt = velocity_in * dt;

// Q8.8 fixed-point scaling
assign predicted_position = position_in + (vel_dt >>> 8);

endmodule