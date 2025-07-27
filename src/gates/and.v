module _and(
    a,
    b,
    out
);

input a;
input b;
output out;
wire nand_ab;
_nand nand1(.a(a), .b(b), .out(nand_ab));
_not not1(.a(nand_ab), .out(out));

endmodule;
