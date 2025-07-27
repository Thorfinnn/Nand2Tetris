module _or8way(
    a,
    out
);

input [7:0] a;
output out;

wire or01, or23, or45, or67;
wire or0123, or4567;

_or or1(.a(a[0]), .b(a[1]), .out(or01));
_or or2(.a(a[2]), .b(a[3]), .out(or23));
_or or3(.a(a[4]), .b(a[5]), .out(or45));
_or or4(.a(a[6]), .b(a[7]), .out(or67));

_or or5(.a(or01), .b(or23), .out(or0123));
_or or6(.a(or45), .b(or67), .out(or4567));

_or or7(.a(or0123), .b(or4567), .out(out));

endmodule