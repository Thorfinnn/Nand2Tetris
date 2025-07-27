module _not16(
    a,
    out
);

input [15:0] a;
output [15:0] out;

for (genvar i = 0; i<16 ; i = i + 1) begin
    _not not1(.a(a[i]), .out(out[i]));
end

endmodule