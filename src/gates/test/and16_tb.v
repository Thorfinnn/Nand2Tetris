module and16_tb;
    reg [15:0] a, b;
    wire [15:0] out;

    _and16 uut (
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        a = 16'h0000; b = 16'h0000; #1; if (out !== 16'h0000) $display("Test failed: a=0, b=0, expected out=0, got out=%h", out);
        a = 16'hFFFF; b = 16'h0000; #1; if (out !== 16'h0000) $display("Test failed: a=FFFF, b=0000, expected out=0000, got out=%h", out);
        a = 16'h0000; b = 16'hFFFF; #1; if (out !== 16'h0000) $display("Test failed: a=0000, b=FFFF, expected out=0000, got out=%h", out);
        a = 16'hFFFF; b = 16'hFFFF; #1; if (out !== 16'hFFFF) $display("Test failed: a=FFFF, b=FFFF, expected out=FFFF, got out=%h", out);
        $display("All AND16 gate tests passed.");
    end
endmodule
