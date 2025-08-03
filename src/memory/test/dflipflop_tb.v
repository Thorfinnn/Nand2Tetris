module dflipflop_tb;
    reg d, clk;
    wire out;

    _dflipflop uut (
        .d(d), .clk(clk), .out(out)
    );

    initial begin
        // Test: D flip-flop should latch d on rising edge of clk
        d = 0; clk = 0; #5;
        clk = 1; #5;
        if (out !== 0) $display("Test failed: d=0, clk rising, expected out=0, got out=%d", out);
        clk = 0; #5;
        d = 1; #5;
        clk = 1; #5;
        if (out !== 1) $display("Test failed: d=1, clk rising, expected out=1, got out=%d", out);
        clk = 0; #5;
        d = 0; #5;
        // No clock edge, output should remain 1
        if (out !== 1) $display("Test failed: d=0, clk=0, expected out=1, got out=%d", out);
        clk = 1; #5;
        if (out !== 0) $display("Test failed: d=0, clk rising, expected out=0, got out=%d", out);
        $display("All DFLIPFLOP tests passed.");
    end
endmodule
