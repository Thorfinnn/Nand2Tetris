module _mux8way16(
    input [15:0] a,
    input [15:0] b,
    input [15:0] c,
    input [15:0] d,
    input [15:0] e,
    input [15:0] f,
    input [15:0] g,
    input [15:0] h,
    input [2:0] sel,
    output [15:0] out
);
wire [15:0] mux_a_b_c_d_out;
_mux4way16 mux_a_b_c_d_inst(.a(a), .b(b), .c(c), .d(d), .sel(sel[1:0]), .out(mux_a_b_c_d_out));
wire [15:0] mux_e_f_g_h_out;
_mux4way16 mux_e_f_g_h_inst(.a(e), .b(f), .c(g), .d(h), .sel(sel[1:0]), .out(mux_e_f_g_h_out));
_mux16 mux_final_inst(.a(mux_a_b_c_d_out), .b(mux_e_f_g_h_out), .sel(sel[2]), .out(out));

endmodule
