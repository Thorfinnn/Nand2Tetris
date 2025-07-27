module _mux(
    a,
    b,
    sel,
    out
);

input a;
input b;
input sel;
output out;

wire not_sel;
wire and_a_not_sel;
wire and_b_sel;

_not not1(.a(sel), .out(not_sel));
_and and1(.a(not_sel), .b(a), .out(and_a_not_sel));
_and and2(.a(sel), .b(b), .out(and_b_sel));
_or or1(.a(and_a_not_sel), .b(and_b_sel), .out(out));

endmodule