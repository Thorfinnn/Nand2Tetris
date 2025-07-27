module mux_tb;
    reg a, b, sel;
    wire out;

    _mux uut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );

    initial begin
        // sel = 0, expect out = a
        a = 0; b = 1; sel = 0; #1;
        if (out !== a) $display("Test failed: a=0, b=1, sel=0, expected out=0, got out=%d", out);
        a = 1; b = 0; sel = 0; #1;
        if (out !== a) $display("Test failed: a=1, b=0, sel=0, expected out=1, got out=%d", out);
        // sel = 1, expect out = b
        a = 0; b = 1; sel = 1; #1;
        if (out !== b) $display("Test failed: a=0, b=1, sel=1, expected out=1, got out=%d", out);
        a = 1; b = 0; sel = 1; #1;
        if (out !== b) $display("Test failed: a=1, b=0, sel=1, expected out=0, got out=%d", out);
        $display("All MUX gate tests passed.");
    end
endmodule
