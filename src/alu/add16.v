module _add16(
    a,
    b,
    out
);

input [15:0] a;
input [15:0] b;
output [15:0] out;

wire carry0;
_halfadder add0(a[0], b[0], out[0], carry0);

wire carry1;
_fulladder add1(a[1], b[1], carry0, out[1], carry1);

wire carry2;
_fulladder add2(a[2], b[2], carry1, out[2], carry2);

wire carry3;
_fulladder add3(a[3], b[3], carry2, out[3], carry3);

wire carry4;
_fulladder add4(a[4], b[4], carry3, out[4], carry4);

wire carry5;
_fulladder add5(a[5], b[5], carry4, out[5], carry5);

wire carry6;
_fulladder add6(a[6], b[6], carry5, out[6], carry6);

wire carry7;
_fulladder add7(a[7], b[7], carry6, out[7], carry7);

wire carry8;
_fulladder add8(a[8], b[8], carry7, out[8], carry8);

wire carry9;
_fulladder add9(a[9], b[9], carry8, out[9], carry9);

wire carry10;
_fulladder add10(a[10], b[10], carry9, out[10], carry10);

wire carry11;
_fulladder add11(a[11], b[11], carry10, out[11], carry11);

wire carry12;
_fulladder add12(a[12], b[12], carry11, out[12], carry12);

wire carry13;
_fulladder add13(a[13], b[13], carry12, out[13], carry13);

wire carry14;
_fulladder add14(a[14], b[14], carry13, out[14], carry14);

_fulladder add15(a[15], b[15], carry14, out[15], /* carry out not used */);

endmodule