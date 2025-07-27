module _demux4way(
    a,
    sel,
    out0,
    out1,
    out2,
    out3
);

input a;
input [1:0] sel;
output out0, out1, out2, out3;

wire demux_sel1_ab;
wire demux_sel1_cd;
_demux demux1(.a(a), .sel(sel[1]), .out0(demux_sel1_ab), .out1(demux_sel1_cd));
_demux demux2(.a(demux_sel1_ab), .sel(sel[0]), .out0(out0), .out1(out1));
_demux demux3(.a(demux_sel1_cd), .sel(sel[0]), .out0(out2), .out1(out3));
endmodule   
