module demux4way_tb;
    reg a;
    reg [1:0] sel;
    wire out0, out1, out2, out3;

    _demux4way uut (
        .a(a), .sel(sel), .out0(out0), .out1(out1), .out2(out2), .out3(out3)
    );

    initial begin
        // in=0, all sel
        a = 0;
        sel = 2'b00; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0) $display("Test failed: a=0, sel=00, expected 0 0 0 0, got %d %d %d %d", out0, out1, out2, out3);
        sel = 2'b01; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0) $display("Test failed: a=0, sel=01, expected 0 0 0 0, got %d %d %d %d", out0, out1, out2, out3);
        sel = 2'b10; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0) $display("Test failed: a=0, sel=10, expected 0 0 0 0, got %d %d %d %d", out0, out1, out2, out3);
        sel = 2'b11; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0) $display("Test failed: a=0, sel=11, expected 0 0 0 0, got %d %d %d %d", out0, out1, out2, out3);
        // in=1, all sel
        a = 1;
        sel = 2'b00; #1; if (out0 !== 1 || out1 !== 0 || out2 !== 0 || out3 !== 0) $display("Test failed: a=1, sel=00, expected 1 0 0 0, got %d %d %d %d", out0, out1, out2, out3);
        sel = 2'b01; #1; if (out0 !== 0 || out1 !== 1 || out2 !== 0 || out3 !== 0) $display("Test failed: a=1, sel=01, expected 0 1 0 0, got %d %d %d %d", out0, out1, out2, out3);
        sel = 2'b10; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 1 || out3 !== 0) $display("Test failed: a=1, sel=10, expected 0 0 1 0, got %d %d %d %d", out0, out1, out2, out3);
        sel = 2'b11; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 1) $display("Test failed: a=1, sel=11, expected 0 0 0 1, got %d %d %d %d", out0, out1, out2, out3);
        $display("All DEMUX4WAY gate tests passed.");
    end
endmodule
