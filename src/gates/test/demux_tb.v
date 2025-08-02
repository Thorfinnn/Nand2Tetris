module demux_tb;
    reg in_, sel;
    wire a, b;

    _demux uut (
        .a(in_),
        .sel(sel),
        .out0(a),
        .out1(b)
    );

    initial begin
        // sel = 0, in = 0: expect a=0, b=0
        in_ = 0; sel = 0; #1;
        if (a !== 0 || b !== 0) $display("Test failed: in=0, sel=0, expected a=0, b=0, got a=%d, b=%d", a, b);
        // sel = 0, in = 1: expect a=1, b=0
        in_ = 1; sel = 0; #1;
        if (a !== 1 || b !== 0) $display("Test failed: in=1, sel=0, expected a=1, b=0, got a=%d, b=%d", a, b);
        // sel = 1, in = 0: expect a=0, b=0
        in_ = 0; sel = 1; #1;
        if (a !== 0 || b !== 0) $display("Test failed: in=0, sel=1, expected a=0, b=0, got a=%d, b=%d", a, b);
        // sel = 1, in = 1: expect a=0, b=1
        in_ = 1; sel = 1; #1;
        if (a !== 0 || b !== 1) $display("Test failed: in=1, sel=1, expected a=0, b=1, got a=%d, b=%d", a, b);
        $display("All DEMUX gate tests passed.");
    end
endmodule
