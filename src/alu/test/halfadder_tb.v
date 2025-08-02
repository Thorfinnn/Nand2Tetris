module halfadder_tb;
    reg a, b;
    wire sum, carry;

    _halfadder uut (
        .a(a), .b(b), .sum(sum), .carry(carry)
    );

    initial begin
        // Test case 1: a=0, b=0 -> sum=0, carry=0
        a = 0; b = 0; #1;
        if (sum !== 0 || carry !== 0)
            $display("Test failed: a=0, b=0, expected sum=0, carry=0, got sum=%d, carry=%d", sum, carry);
        // Test case 2: a=0, b=1 -> sum=1, carry=0
        a = 0; b = 1; #1;
        if (sum !== 1 || carry !== 0)
            $display("Test failed: a=0, b=1, expected sum=1, carry=0, got sum=%d, carry=%d", sum, carry);
        // Test case 3: a=1, b=0 -> sum=1, carry=0
        a = 1; b = 0; #1;
        if (sum !== 1 || carry !== 0)
            $display("Test failed: a=1, b=0, expected sum=1, carry=0, got sum=%d, carry=%d", sum, carry);
        // Test case 4: a=1, b=1 -> sum=0, carry=1
        a = 1; b = 1; #1;
        if (sum !== 0 || carry !== 1)
            $display("Test failed: a=1, b=1, expected sum=0, carry=1, got sum=%d, carry=%d", sum, carry);
        $display("All HALFADDER tests passed.");
    end
endmodule
