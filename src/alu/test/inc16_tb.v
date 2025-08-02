module inc16_tb;
    reg [15:0] in;
    wire [15:0] out;

    _inc16 uut (
        .in(in), .out(out)
    );

    initial begin
        // Test case 1
        in = 16'b0000000000000000; #1;
        if (out !== 16'b0000000000000001)
            $display("Test failed: in=0, expected out=1, got out=%b", out);
        // Test case 2
        in = 16'b1111111111111111; #1;
        if (out !== 16'b0000000000000000)
            $display("Test failed: in=FFFF, expected out=0000, got out=%b", out);
        // Test case 3
        in = 16'b0000000000000101; #1;
        if (out !== 16'b0000000000000110)
            $display("Test failed: in=0005, expected out=0006, got out=%b", out);
        // Test case 4
        in = 16'b1111111111111011; #1;
        if (out !== 16'b1111111111111100)
            $display("Test failed: in=FFFB, expected out=FFFC, got out=%b", out);
        $display("All INC16 tests passed.");
    end
endmodule
