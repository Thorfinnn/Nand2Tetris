module _or(
    a,
    b,
    out
);

input a;
input b;
output out;
wire nota;
wire notb;
_not not1(.a(a), .out(nota));
_not not2(.a(b), .out(notb));
_nand nand1(.a(nota), .b(notb), .out(out));

endmodule;
