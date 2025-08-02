module _inc16(
    in,
    out
);

input [15:0] in;
output [15:0] out;

// Add 1 to the input using a 16-bit adder
_add16 adder(
    .a(in),
    .b(16'b0000000000000001),
    .out(out)
);

endmodule
