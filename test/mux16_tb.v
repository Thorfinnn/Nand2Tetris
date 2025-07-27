module mux16_tb;
    reg [15:0] a, b;
    reg sel;
    wire [15:0] out;

    _mux16 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );

    initial begin
        // sel = 0, expect out = a
        a = 16'hAAAA; b = 16'h5555; sel = 0; #1;
        if (out !== a) $display("Test failed: sel=0, expected out=a=%h, got out=%h", a, out);
        // sel = 1, expect out = b
        a = 16'hAAAA; b = 16'h5555; sel = 1; #1;
        if (out !== b) $display("Test failed: sel=1, expected out=b=%h, got out=%h", b, out);
        $display("All MUX16 gate tests passed.");
    end
endmodule
