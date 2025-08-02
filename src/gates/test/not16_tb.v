module not16_tb;
    reg [15:0] a;
    wire [15:0] out;

    _not16 uut (
        .a(a),
        .out(out)
    );

    initial begin
        a = 16'h0000; #1; if (out !== 16'hFFFF) $display("Test failed: a=0, expected out=FFFF, got out=%h", out);
        a = 16'hFFFF; #1; if (out !== 16'h0000) $display("Test failed: a=FFFF, expected out=0000, got out=%h", out);
        $display("All NOT16 gate tests passed.");
    end
endmodule
