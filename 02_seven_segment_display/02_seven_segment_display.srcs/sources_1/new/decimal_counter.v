module decimal_counter (
    input  wire clk,
    input  wire tick,
    output reg [3:0] value = 0
);

always @(posedge clk) begin
    if (tick) begin
        if (value == 9)
            value <= 0;
        else
            value <= value + 1;
    end
end
endmodule