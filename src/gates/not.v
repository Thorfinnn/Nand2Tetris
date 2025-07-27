module _not(
    a,
    out
);

input a;
output out;
_nand nand1(.a(a), .b(a), .out(out));
endmodule;