`timescale 1ns / 1ps

module residual #
(
    parameter WIDTH = 16
)
(
    input  signed [WIDTH-1:0] range_measurement,
    input  signed [WIDTH-1:0] predicted_position,

    output signed [WIDTH-1:0] residual_error
);

assign residual_error = range_measurement - predicted_position;

endmodule