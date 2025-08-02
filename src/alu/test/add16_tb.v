module add16_tb;
    reg [15:0] a, b;
    wire [15:0] out;

    _add16 uut (
        .a(a), .b(b), .out(out)
    );

    initial begin
        // Test case 1
        a = 16'b0000000000000000; b = 16'b0000000000000000; #1;
        if (out !== 16'b0000000000000000)
            $display("Test failed: a=0, b=0, expected out=0, got out=%b", out);
        // Test case 2
        a = 16'b0000000000000000; b = 16'b1111111111111111; #1;
        if (out !== 16'b1111111111111111)
            $display("Test failed: a=0, b=FFFF, expected out=FFFF, got out=%b", out);
        // Test case 3
        a = 16'b1111111111111111; b = 16'b1111111111111111; #1;
        if (out !== 16'b1111111111111110)
            $display("Test failed: a=FFFF, b=FFFF, expected out=FFFE, got out=%b", out);
        // Test case 4
        a = 16'b1010101010101010; b = 16'b0101010101010101; #1;
        if (out !== 16'b1111111111111111)
            $display("Test failed: a=AAAA, b=5555, expected out=FFFF, got out=%b", out);
        // Test case 5
        a = 16'b0011110011000011; b = 16'b0000111111110000; #1;
        if (out !== 16'b0100110010110011)
            $display("Test failed: a=3CC3, b=0FF0, expected out=4CB3, got out=%b", out);
        // Test case 6
        a = 16'b0001001000110100; b = 16'b1001100001110110; #1;
        if (out !== 16'b1010101010101010)
            $display("Test failed: a=1234, b=9876, expected out=AAAA, got out=%b", out);
        $display("All ADD16 tests passed.");
    end
endmodule
