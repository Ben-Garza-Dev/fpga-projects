`timescale 1ns / 1ps
`default_nettype none

module tick_generator #(
    parameter DIV_VALUE = 99_999_999,
    parameter WIDTH = 27
)(
    input  wire clk,
    output reg  tick
);

    reg [WIDTH-1:0] counter_value = 0;

    always @(posedge clk) begin
        if (counter_value == DIV_VALUE) begin
            counter_value <= 0;
            tick <= 1;
        end else begin
            counter_value <= counter_value + 1;
            tick <= 0;
        end
    end

endmodule