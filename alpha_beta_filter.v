`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 15:18:18
// Design Name: 
// Module Name: alpha_beta_filter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module alpha_beta_filter #
(
    parameter WIDTH = 16
)
(
    input clk,
    input reset,

    // Sensor Inputs
    input signed [WIDTH-1:0] range_measurement,
    input signed [WIDTH-1:0] doppler_measurement,

    // Filter Gains (Q8.8)
    input signed [15:0] alpha,
    input signed [15:0] beta,

    // Sampling Interval (Q8.8)
    input signed [WIDTH-1:0] dt,

    // Outputs
    output signed [WIDTH-1:0] position,
    output signed [WIDTH-1:0] velocity
);

//====================================================
// Internal Signals
//====================================================

wire signed [WIDTH-1:0] current_position;
wire signed [WIDTH-1:0] current_velocity;

wire signed [WIDTH-1:0] predicted_position;
wire signed [WIDTH-1:0] residual_error;

wire signed [WIDTH-1:0] updated_position;
wire signed [WIDTH-1:0] updated_velocity;

//====================================================
// Predictor
//====================================================

predictor #(.WIDTH(WIDTH)) U1
(
    .position_in(current_position),
    .velocity_in(current_velocity),
    .dt(dt),
    .predicted_position(predicted_position)
);

//====================================================
// Residual
//====================================================

residual #(.WIDTH(WIDTH)) U2
(
    .range_measurement(range_measurement),
    .predicted_position(predicted_position),
    .residual_error(residual_error)
);

//====================================================
// Position Update
//====================================================

position_update #(.WIDTH(WIDTH)) U3
(
    .predicted_position(predicted_position),
    .residual_error(residual_error),
    .alpha(alpha),
    .updated_position(updated_position)
);

//====================================================
// Velocity Update
//====================================================

velocity_update #(.WIDTH(WIDTH)) U4
(
    .velocity_in(current_velocity),
    .residual_error(residual_error),
    .beta(beta),
    .updated_velocity(updated_velocity)
);

//====================================================
// Register Bank
//====================================================

register_bank #(.WIDTH(WIDTH)) U5
(
    .clk(clk),
    .reset(reset),
    .next_position(updated_position),
    .next_velocity(updated_velocity),
    .position(current_position),
    .velocity(current_velocity)
);

//====================================================
// Outputs
//====================================================

assign position = current_position;
assign velocity = current_velocity;

endmodule