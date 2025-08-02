module fulladder_tb;
    reg a, b, c;
    wire sum, carry;

    _fulladder uut (
        .a(a), .b(b), .c(c), .sum(sum), .carry(carry)
    );

    initial begin
        // Test case 1: a=0, b=0, c=0 -> sum=0, carry=0
        a = 0; b = 0; c = 0; #1;
        if (sum !== 0 || carry !== 0)
            $display("Test failed: a=0, b=0, c=0, expected sum=0, carry=0, got sum=%d, carry=%d", sum, carry);
        // Test case 2: a=0, b=0, c=1 -> sum=1, carry=0
        a = 0; b = 0; c = 1; #1;
        if (sum !== 1 || carry !== 0)
            $display("Test failed: a=0, b=0, c=1, expected sum=1, carry=0, got sum=%d, carry=%d", sum, carry);
        // Test case 3: a=0, b=1, c=0 -> sum=1, carry=0
        a = 0; b = 1; c = 0; #1;
        if (sum !== 1 || carry !== 0)
            $display("Test failed: a=0, b=1, c=0, expected sum=1, carry=0, got sum=%d, carry=%d", sum, carry);
        // Test case 4: a=0, b=1, c=1 -> sum=0, carry=1
        a = 0; b = 1; c = 1; #1;
        if (sum !== 0 || carry !== 1)
            $display("Test failed: a=0, b=1, c=1, expected sum=0, carry=1, got sum=%d, carry=%d", sum, carry);
        // Test case 5: a=1, b=0, c=0 -> sum=1, carry=0
        a = 1; b = 0; c = 0; #1;
        if (sum !== 1 || carry !== 0)
            $display("Test failed: a=1, b=0, c=0, expected sum=1, carry=0, got sum=%d, carry=%d", sum, carry);
        // Test case 6: a=1, b=0, c=1 -> sum=0, carry=1
        a = 1; b = 0; c = 1; #1;
        if (sum !== 0 || carry !== 1)
            $display("Test failed: a=1, b=0, c=1, expected sum=0, carry=1, got sum=%d, carry=%d", sum, carry);
        // Test case 7: a=1, b=1, c=0 -> sum=0, carry=1
        a = 1; b = 1; c = 0; #1;
        if (sum !== 0 || carry !== 1)
            $display("Test failed: a=1, b=1, c=0, expected sum=0, carry=1, got sum=%d, carry=%d", sum, carry);
        // Test case 8: a=1, b=1, c=1 -> sum=1, carry=1
        a = 1; b = 1; c = 1; #1;
        if (sum !== 1 || carry !== 1)
            $display("Test failed: a=1, b=1, c=1, expected sum=1, carry=1, got sum=%d, carry=%d", sum, carry);
        $display("All FULLADDER tests passed.");
    end
endmodule
