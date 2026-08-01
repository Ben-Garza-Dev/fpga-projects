`timescale 1ns / 1ps

module test_bench;
    reg clk = 0;
    wire divided_clk;
    
clock_divider UUT(
.clk(clk),
.divided_clk(divided_clk)
);

always #5 clk = ~clk; // every 5 ns the signal flips 

endmodule
