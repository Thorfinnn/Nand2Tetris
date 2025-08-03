module bit_tb;
    reg in, load, clk;
    wire out;

    _bit uut (
        .in(in), .load(load), .clk(clk), .out(out)
    );

    initial begin
        // Test sequence based on Bit.cmp
        // Each step: set in, load, toggle clk, check output
        in = 0; load = 0; clk = 0; #1; clk = 1; #1; if (out !== 0) $display("Step 1 failed: out=%d (exp=0)", out);
        in = 0; load = 1; clk = 0; #1; clk = 1; #1; if (out !== 0) $display("Step 2 failed: out=%d (exp=0)", out);
        in = 1; load = 0; clk = 0; #1; clk = 1; #1; if (out !== 0) $display("Step 3 failed: out=%d (exp=0)", out);
        in = 1; load = 1; clk = 0; #1; clk = 1; #1; if (out !== 1) $display("Step 4 failed: out=%d (exp=1)", out);
        in = 0; load = 0; clk = 0; #1; clk = 1; #1; if (out !== 1) $display("Step 5 failed: out=%d (exp=1)", out);
        in = 0; load = 1; clk = 0; #1; clk = 1; #1; if (out !== 0) $display("Step 6 failed: out=%d (exp=0)", out);
        in = 1; load = 1; clk = 0; #1; clk = 1; #1; if (out !== 1) $display("Step 7 failed: out=%d (exp=1)", out);
        // You can extend this sequence for more steps from Bit.cmp
        $display("BIT test sequence completed.");
    end
endmodule
