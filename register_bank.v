`timescale 1ns / 1ps

module register_bank #
(
    parameter WIDTH = 16
)
(
    input clk,
    input reset,

    input signed [WIDTH-1:0] next_position,
    input signed [WIDTH-1:0] next_velocity,

    output reg signed [WIDTH-1:0] position,
    output reg signed [WIDTH-1:0] velocity
);

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        position <= 0;
        velocity <= 0;
    end
    else
    begin
        position <= next_position;
        velocity <= next_velocity;
    end
end

endmodule