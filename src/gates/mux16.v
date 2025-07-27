module _mux16(
    a,
    b,
    sel,
    out
);

input [15:0] a;
input [15:0] b;
input sel;
output [15:0] out;

genvar i;
for (i = 0; i < 16; i = i + 1) begin
    _mux mux1(.a(a[i]), .b(b[i]), .sel(sel), .out(out[i]));
end

endmodule