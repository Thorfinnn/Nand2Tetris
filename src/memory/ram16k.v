module _ram16k(
    in,
    load,
    address,
    clk,
    out
);

input [15:0] in;
input load, clk;
input [15:0] address;
output [15:0] out;

wire [15:0] o0, o1, o2, o3, o4, o5, o6, o7;
wire l0, l1, l2, l3, l4, l5, l6, l7;

_demux8way demuxload(load, address[15:13], l0, l1, l2, l3, l4, l5, l6, l7);

_ram4k ram0(in, l0, address[12:0], clk, o0);
_ram4k ram1(in, l1, address[12:0], clk, o1);
_ram4k ram2(in, l2, address[12:0], clk, o2);
_ram4k ram3(in, l3, address[12:0], clk, o3);
_ram4k ram4(in, l4, address[12:0], clk, o4);
_ram4k ram5(in, l5, address[12:0], clk, o5);
_ram4k ram6(in, l6, address[12:0], clk, o6);
_ram4k ram7(in, l7, address[12:0], clk, o7);

_mux8way16 muxout(o0, o1, o2, o3, o4, o5, o6, o7, address[15:13], out);

endmodule
