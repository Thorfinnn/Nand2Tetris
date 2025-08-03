module _register(
    in,
    load,
    clk,
    out
);

input signed [15:0] in;
input clk, load;
output signed [15:0] out;

_bit bit_inst0(in[0], load, clk, out[0]);
_bit bit_inst1(in[1], load, clk, out[1]);
_bit bit_inst2(in[2], load, clk, out[2]);
_bit bit_inst3(in[3], load, clk, out[3]);
_bit bit_inst4(in[4], load, clk, out[4]);
_bit bit_inst5(in[5], load, clk, out[5]);
_bit bit_inst6(in[6], load, clk, out[6]);
_bit bit_inst7(in[7], load, clk, out[7]);
_bit bit_inst8(in[8], load, clk, out[8]);
_bit bit_inst9(in[9], load, clk, out[9]);
_bit bit_inst10(in[10], load, clk, out[10]);
_bit bit_inst11(in[11], load, clk, out[11]);
_bit bit_inst12(in[12], load, clk, out[12]);
_bit bit_inst13(in[13], load, clk, out[13]);
_bit bit_inst14(in[14], load, clk, out[14]);
_bit bit_inst15(in[15], load, clk, out[15]);


endmodule