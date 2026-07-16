`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 15:20:12
// Design Name: 
// Module Name: tb_alpha_beta
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


`timescale 1ns / 1ps

module tb_alpha_beta;

parameter WIDTH = 16;

// Clock & Reset
reg clk;
reg reset;

// Inputs
reg signed [WIDTH-1:0] range_measurement;
reg signed [WIDTH-1:0] doppler_measurement;

reg signed [15:0] alpha;
reg signed [15:0] beta;

reg signed [WIDTH-1:0] dt;

// Outputs
wire signed [WIDTH-1:0] position;
wire signed [WIDTH-1:0] velocity;

//====================================================
// DUT
//====================================================

alpha_beta_filter #(.WIDTH(WIDTH)) DUT
(
    .clk(clk),
    .reset(reset),
    .range_measurement(range_measurement),
    .doppler_measurement(doppler_measurement),
    .alpha(alpha),
    .beta(beta),
    .dt(dt),
    .position(position),
    .velocity(velocity)
);

//====================================================
// Clock Generation
//====================================================

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

//====================================================
// Test Stimulus
//====================================================

initial
begin

    // Initialize
    reset = 1;

    range_measurement = 0;
    doppler_measurement = 0;

    // Q8.8 Fixed Point
    alpha = 16'd192;   // 0.75
    beta  = 16'd64;    // 0.25
    dt    = 16'd256;   // 1.0

    #20;
    reset = 0;

    // Target Motion

    range_measurement = 16'd100;
    doppler_measurement = 16'd5;
    #10;

    range_measurement = 16'd105;
    doppler_measurement = 16'd5;
    #10;

    range_measurement = 16'd110;
    doppler_measurement = 16'd5;
    #10;

    range_measurement = 16'd116;
    doppler_measurement = 16'd6;
    #10;

    range_measurement = 16'd121;
    doppler_measurement = 16'd5;
    #10;

    range_measurement = 16'd127;
    doppler_measurement = 16'd6;
    #10;

    range_measurement = 16'd132;
    doppler_measurement = 16'd5;
    #10;

    range_measurement = 16'd138;
    doppler_measurement = 16'd6;
    #10;

    range_measurement = 16'd145;
    doppler_measurement = 16'd7;
    #10;

    range_measurement = 16'd151;
    doppler_measurement = 16'd6;
    #10;

    #100;

    $finish;

end

endmodule
