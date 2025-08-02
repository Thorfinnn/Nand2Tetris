module mux8way16_tb;
    reg [15:0] a, b, c, d, e, f, g, h;
    reg [2:0] sel;
    wire [15:0] out;

    _mux8way16 uut (
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .sel(sel), .out(out)
    );

    initial begin
        // All zeros
        a = 16'b0; b = 16'b0; c = 16'b0; d = 16'b0; e = 16'b0; f = 16'b0; g = 16'b0; h = 16'b0;
        sel = 3'b000; #1; if (out !== a) $display("Test failed: sel=000, expected out=a, got %b", out);
        sel = 3'b001; #1; if (out !== b) $display("Test failed: sel=001, expected out=b, got %b", out);
        sel = 3'b010; #1; if (out !== c) $display("Test failed: sel=010, expected out=c, got %b", out);
        sel = 3'b011; #1; if (out !== d) $display("Test failed: sel=011, expected out=d, got %b", out);
        sel = 3'b100; #1; if (out !== e) $display("Test failed: sel=100, expected out=e, got %b", out);
        sel = 3'b101; #1; if (out !== f) $display("Test failed: sel=101, expected out=f, got %b", out);
        sel = 3'b110; #1; if (out !== g) $display("Test failed: sel=110, expected out=g, got %b", out);
        sel = 3'b111; #1; if (out !== h) $display("Test failed: sel=111, expected out=h, got %b", out);
        // Patterned values
        a = 16'b0001001000110100; b = 16'b0010001101000101; c = 16'b0011010001010110; d = 16'b0100010101100111;
        e = 16'b0101011001111000; f = 16'b0110011110001001; g = 16'b0111100010011010; h = 16'b1000100110101011;
        sel = 3'b000; #1; if (out !== a) $display("Test failed: sel=000, expected out=a, got %b", out);
        sel = 3'b001; #1; if (out !== b) $display("Test failed: sel=001, expected out=b, got %b", out);
        sel = 3'b010; #1; if (out !== c) $display("Test failed: sel=010, expected out=c, got %b", out);
        sel = 3'b011; #1; if (out !== d) $display("Test failed: sel=011, expected out=d, got %b", out);
        sel = 3'b100; #1; if (out !== e) $display("Test failed: sel=100, expected out=e, got %b", out);
        sel = 3'b101; #1; if (out !== f) $display("Test failed: sel=101, expected out=f, got %b", out);
        sel = 3'b110; #1; if (out !== g) $display("Test failed: sel=110, expected out=g, got %b", out);
        sel = 3'b111; #1; if (out !== h) $display("Test failed: sel=111, expected out=h, got %b", out);
        $display("All MUX8WAY16 gate tests passed.");
    end
endmodule
