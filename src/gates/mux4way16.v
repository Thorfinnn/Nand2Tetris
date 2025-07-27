module _mux4way16(
    a,
    b,
    c,
    d,
    sel,
    out
);

input [15:0] a;
input [15:0] b; 
input [15:0] c;
input [15:0] d;
input [1:0] sel;
output [15:0] out;

wire [15:0] mux_a_b_out;
_mux16 mux_a_b_inst(.a(a), .b(b), .sel(sel[0]), .out(mux_a_b_out));
wire [15:0] mux_c_d_out;    
_mux16 mux_c_d_inst(.a(c), .b(d), .sel(sel[0]), .out(mux_c_d_out));
_mux16 mux_final_inst(.a(mux_a_b_out), .b(mux_c_d_out), .sel(sel[1]), .out(out));

endmodule
