module or8way_tb;
    reg [7:0] a;
    wire out;

    _or8way uut (
        .a(a),
        .out(out)
    );

    initial begin
        a = 8'b00000000; #1; if (out !== 0) $display("Test failed: a=00000000, expected out=0, got out=%d", out);
        a = 8'b11111111; #1; if (out !== 1) $display("Test failed: a=11111111, expected out=1, got out=%d", out);
        a = 8'b00010000; #1; if (out !== 1) $display("Test failed: a=00010000, expected out=1, got out=%d", out);
        a = 8'b00000001; #1; if (out !== 1) $display("Test failed: a=00000001, expected out=1, got out=%d", out);
        a = 8'b00100110; #1; if (out !== 1) $display("Test failed: a=00100110, expected out=1, got out=%d", out);
        $display("All OR8WAY gate tests passed.");
    end
endmodule
