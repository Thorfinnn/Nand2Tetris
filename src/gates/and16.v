module _and16(
    a,
    b,
    out
);

input [15:0] a;
input [15:0] b;
output [15:0] out;

genvar i;
for (i = 0; i < 16; i = i + 1) begin
    _and and1(.a(a[i]), .b(b[i]), .out(out[i]));
end

endmodule