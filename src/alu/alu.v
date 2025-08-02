module _alu(
    x,
    y,
    zx,
    nx,
    zy,
    ny,
    f,
    no,
    out,
    zr,
    ng
);

input [15:0] x;
input [15:0] y;
input nx, ny, zx, zy, f, no;
output [15:0] out;
output zr, ng;

wire [15:0] x1, y1;
wire [15:0] x2, y2;
wire [15:0] nx1, ny1;
wire [15:0] o1, o2, o3;
wire [15:0] no3;
wire zo1, zo2;
wire nzr;

_mux16 mux1(x, 16'b0000000000000000, zx, x1);
_mux16 mux2(y, 16'b0000000000000000, zy, y1);
_not16 not1(x1, nx1);
_not16 not2(y1, ny1);
_mux16 mux3(x1, nx1, nx, x2);
_mux16 mux4(y1, ny1, ny, y2);
_add16 add1(x2, y2, o1);
_and16 and1(x2, y2, o2);
_mux16 mux5(o2, o1, f, o3);
_not16 not3(o3, no3);
_mux16 mux6(o3, no3, no , out);
_or8way or8way1(out[7:0], zo1);
_or8way or8way2(out[15:8], zo2);
_or or1(zo1, zo2, nzr);
_not not4(nzr, zr);
assign ng = out[15];

endmodule



