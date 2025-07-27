module _demux8way(
    a,
    sel,
    out0,
    out1,
    out2,
    out3,
    out4,
    out5,
    out6,
    out7
);

input a;
input [2:0] sel;
output out0, out1, out2, out3, out4, out5, out6, out7;
wire demux_sel2_abcd;
wire demux_sel2_efgh;
_demux demux1(.a(a), .sel(sel[2]), .out0(demux_sel2_abcd), .out1(demux_sel2_efgh));
_demux4way demux2(.a(demux_sel2_abcd), .sel(sel[1:0]), .out0(out0), .out1(out1), .out2(out2), .out3(out3));
_demux4way demux3(.a(demux_sel2_efgh), .sel(sel[1:0]), .out0(out4), .out1(out5), .out2(out6), .out3(out7)); 
endmodule

