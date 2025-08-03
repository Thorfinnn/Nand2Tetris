module _bit(
    in,
    load,
    clk,
    out
);

input in, load, clk;
output out;

wire in1;

_mux mux1(out, in, load, in1);
_dflipflop dflipflop1(in1, clk, out);

endmodule