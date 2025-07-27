module _demux(
    a,
    sel,
    out0,
    out1
);

input a;
input sel;
output out0;
output out1;

wire not_sel;

_not not1(.a(sel), .out(not_sel));
_and and0(.a(a), .b(not_sel), .out(out0));
_and and1(.a(a), .b(sel), .out(out1));

endmodule