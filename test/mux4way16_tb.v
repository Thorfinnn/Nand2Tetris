module mux4way16_tb;
    reg [15:0] a, b, c, d;
    reg [1:0] sel;
    wire [15:0] out;

    _mux4way16 uut (
        .a(a), .b(b), .c(c), .d(d), .sel(sel), .out(out)
    );

    initial begin
        // All zeros
        a = 16'b0; b = 16'b0; c = 16'b0; d = 16'b0;
        sel = 2'b00; #1; if (out !== a) $display("Test failed: sel=00, expected out=a, got %b", out);
        sel = 2'b01; #1; if (out !== b) $display("Test failed: sel=01, expected out=b, got %b", out);
        sel = 2'b10; #1; if (out !== c) $display("Test failed: sel=10, expected out=c, got %b", out);
        sel = 2'b11; #1; if (out !== d) $display("Test failed: sel=11, expected out=d, got %b", out);
        // Patterned values
        a = 16'b0001001000110100; b = 16'b1001100001110110; c = 16'b1010101010101010; d = 16'b0101010101010101;
        sel = 2'b00; #1; if (out !== a) $display("Test failed: sel=00, expected out=a, got %b", out);
        sel = 2'b01; #1; if (out !== b) $display("Test failed: sel=01, expected out=b, got %b", out);
        sel = 2'b10; #1; if (out !== c) $display("Test failed: sel=10, expected out=c, got %b", out);
        sel = 2'b11; #1; if (out !== d) $display("Test failed: sel=11, expected out=d, got %b", out);
        $display("All MUX4WAY16 gate tests passed.");
    end
endmodule
