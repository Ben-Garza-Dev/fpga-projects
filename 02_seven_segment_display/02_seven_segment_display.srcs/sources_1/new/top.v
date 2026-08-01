`timescale 1ns / 1ps

module top (
    input  wire clk,
    output wire [6:0] seg,
    output wire [3:0] an
);

    wire tick;
    wire [3:0] digit;

    tick_generator #(.DIV_VALUE(99_999_999), .WIDTH(27)) sec_tick (
        .clk(clk),
        .tick(tick)
    );

    decimal_counter counter (
        .clk(clk),
        .tick(tick),
        .value(digit)
    );

    seven_segment decoder (
        .digit(digit),
        .seg(seg)
    );

    assign an = 4'b1110;   // enable AN0 only, active low

endmodule
