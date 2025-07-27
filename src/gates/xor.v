module _xor(
    a,
    b,
    out
);

input a;
input b;
output out;
wire nota;
wire notb;
wire and_nota_notb;
wire and_a_b;
wire or_and_notand;
_not not1(.a(a), .out(nota));
_not not2(.a(b), .out(notb));
_and and1(.a(a), .b(b), .out(and_a_b));
_and and2(.a(nota), .b(notb), .out(and_nota_notb));
_or or1(.a(and_a_b), .b(and_nota_notb), .out(or_and_notand));
_not not3(.a(or_and_notand), .out(out));

endmodule;