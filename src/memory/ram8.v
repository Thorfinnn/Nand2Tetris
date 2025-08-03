module _ram8(
    in,
    load,
    address,
    clk,
    out
);

input [15:0] in;
input load, clk;
input [2:0] address;
output [15:0] out;

wire l0, l1, l2, l3, l4, l5, l6, l7;
wire [15:0] o0, o1, o2, o3, o4, o5, o6, o7;

_demux8way demuxload(load, address, l0, l1, l2, l3, l4, l5, l6, l7);

_register reg0(.in(in), .load(l0), .clk(clk), .out(o0));
_register reg1(.in(in), .load(l1), .clk(clk), .out(o1));
_register reg2(.in(in), .load(l2), .clk(clk), .out(o2));
_register reg3(.in(in), .load(l3), .clk(clk), .out(o3));
_register reg4(.in(in), .load(l4), .clk(clk), .out(o4));
_register reg5(.in(in), .load(l5), .clk(clk), .out(o5));
_register reg6(.in(in), .load(l6), .clk(clk), .out(o6));
_register reg7(.in(in), .load(l7), .clk(clk), .out(o7));

_mux8way16 muxout(o0, o1, o2, o3, o4, o5, o6, o7, address, out);

endmodule