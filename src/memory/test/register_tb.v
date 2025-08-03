module register_tb;
    reg signed [15:0] in;
    reg load, clk;
    wire signed [15:0] out;

    _register uut (
        .in(in), .load(load), .clk(clk), .out(out)
    );

    initial begin
        // Step 1: in=0, load=0, clk rising, expect out=0
        in = 16'd0; load = 0; clk = 0; #5; clk = 1; #5; if (out !== 16'd0) $display("Step 1 failed: out=%d (exp=0)", out);
        // Step 2: in=0, load=1, clk rising, expect out=0
        in = 16'd0; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 16'd0) $display("Step 2 failed: out=%d (exp=0)", out);
        // Step 3: in=-32123, load=0, clk rising, expect out=0
        in = -32123; load = 0; clk = 0; #5; clk = 1; #5; if (out !== 16'd0) $display("Step 3 failed: out=%d (exp=0)", out);
        // Step 4: in=11111, load=0, clk rising, expect out=0
        in = 11111; load = 0; clk = 0; #5; clk = 1; #5; if (out !== 16'd0) $display("Step 4 failed: out=%d (exp=0)", out);
        // Step 5: in=-32123, load=1, clk rising, expect out=-32123
        in = -32123; load = 1; clk = 0; #5; clk = 1; #5; if (out !== -32123) $display("Step 5 failed: out=%d (exp=-32123)", out);
        // Step 6: in=12345, load=1, clk rising, expect out=12345
        in = 12345; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 12345) $display("Step 6 failed: out=%d (exp=12345)", out);
        // Step 7: in=0, load=1, clk rising, expect out=0
        in = 0; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 0) $display("Step 7 failed: out=%d (exp=0)", out);
        // Step 8: in=1, load=1, clk rising, expect out=1
        in = 1; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 1) $display("Step 8 failed: out=%d (exp=1)", out);
        // Step 9: in=2, load=1, clk rising, expect out=2
        in = 2; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 2) $display("Step 9 failed: out=%d (exp=2)", out);
        // Step 10: in=4, load=1, clk rising, expect out=4
        in = 4; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 4) $display("Step 10 failed: out=%d (exp=4)", out);
        // Step 11: in=8, load=1, clk rising, expect out=8
        in = 8; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 8) $display("Step 11 failed: out=%d (exp=8)", out);
        // Step 12: in=16, load=1, clk rising, expect out=16
        in = 16; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 16) $display("Step 12 failed: out=%d (exp=16)", out);
        // Step 13: in=32, load=1, clk rising, expect out=32
        in = 32; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 32) $display("Step 13 failed: out=%d (exp=32)", out);
        // Step 14: in=64, load=1, clk rising, expect out=64
        in = 64; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 64) $display("Step 14 failed: out=%d (exp=64)", out);
        // Step 15: in=128, load=1, clk rising, expect out=128
        in = 128; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 128) $display("Step 15 failed: out=%d (exp=128)", out);
        // Step 16: in=256, load=1, clk rising, expect out=256
        in = 256; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 256) $display("Step 16 failed: out=%d (exp=256)", out);
        // Step 17: in=512, load=1, clk rising, expect out=512
        in = 512; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 512) $display("Step 17 failed: out=%d (exp=512)", out);
        // Step 18: in=1024, load=1, clk rising, expect out=1024
        in = 1024; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 1024) $display("Step 18 failed: out=%d (exp=1024)", out);
        // Step 19: in=2048, load=1, clk rising, expect out=2048
        in = 2048; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 2048) $display("Step 19 failed: out=%d (exp=2048)", out);
        // Step 20: in=4096, load=1, clk rising, expect out=4096
        in = 4096; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 4096) $display("Step 20 failed: out=%d (exp=4096)", out);
        // Step 21: in=8192, load=1, clk rising, expect out=8192
        in = 8192; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 8192) $display("Step 21 failed: out=%d (exp=8192)", out);
        // Step 22: in=16384, load=1, clk rising, expect out=16384
        in = 16384; load = 1; clk = 0; #5; clk = 1; #5; if (out !== 16384) $display("Step 22 failed: out=%d (exp=16384)", out);
        // Step 23: in=-32768, load=1, clk rising, expect out=-32768
        in = -32768; load = 1; clk = 0; #5; clk = 1; #5; if (out !== -32768) $display("Step 23 failed: out=%d (exp=-32768)", out);
        $display("REGISTER test sequence completed.");
    end
endmodule
