module _not16(
    a,
    out
);

input [15:0] a;
output [15:0] out;

genvar i;
generate
    for (i = 0; i < 16; i = i + 1) begin : not_loop
        _not not_inst(.a(a[i]), .out(out[i]));
    end
endgenerate

endmodule