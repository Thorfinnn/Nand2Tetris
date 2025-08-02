module demux8way_tb;
    reg a;
    reg [2:0] sel;
    wire out0, out1, out2, out3, out4, out5, out6, out7;

    _demux8way uut (
        .a(a), .sel(sel), .out0(out0), .out1(out1), .out2(out2), .out3(out3), .out4(out4), .out5(out5), .out6(out6), .out7(out7)
    );

    initial begin
        // in=0, all sel
        a = 0;
        sel = 3'b000; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=0, sel=000, expected 0 0 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b001; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=0, sel=001, expected 0 0 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b010; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=0, sel=010, expected 0 0 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b011; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=0, sel=011, expected 0 0 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b100; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=0, sel=100, expected 0 0 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b101; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=0, sel=101, expected 0 0 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b110; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=0, sel=110, expected 0 0 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b111; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=0, sel=111, expected 0 0 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        // in=1, all sel
        a = 1;
        sel = 3'b000; #1; if (out0 !== 1 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=1, sel=000, expected 1 0 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b001; #1; if (out0 !== 0 || out1 !== 1 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=1, sel=001, expected 0 1 0 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b010; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 1 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=1, sel=010, expected 0 0 1 0 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b011; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 1 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=1, sel=011, expected 0 0 0 1 0 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b100; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 1 || out5 !== 0 || out6 !== 0 || out7 !== 0) $display("Test failed: a=1, sel=100, expected 0 0 0 0 1 0 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b101; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 1 || out6 !== 0 || out7 !== 0) $display("Test failed: a=1, sel=101, expected 0 0 0 0 0 1 0 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b110; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 1 || out7 !== 0) $display("Test failed: a=1, sel=110, expected 0 0 0 0 0 0 1 0, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        sel = 3'b111; #1; if (out0 !== 0 || out1 !== 0 || out2 !== 0 || out3 !== 0 || out4 !== 0 || out5 !== 0 || out6 !== 0 || out7 !== 1) $display("Test failed: a=1, sel=111, expected 0 0 0 0 0 0 0 1, got %d %d %d %d %d %d %d %d", out0, out1, out2, out3, out4, out5, out6, out7);
        $display("All DEMUX8WAY gate tests passed.");
    end
endmodule
