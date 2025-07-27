module and_tb;
    reg a, b;
    wire out;

    // Instantiate your And gate module (replace _and with your actual module name if needed)
    _and uut (
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        // Test case 1: a=0, b=0, expect out=0
        a = 0; b = 0; #1;
        if (out !== 0) begin
            $display("Test failed: a=0, b=0, expected out=0, got out=%d", out);
            $finish;
        end

        // Test case 2: a=0, b=1, expect out=0
        a = 0; b = 1; #1;
        if (out !== 0) begin
            $display("Test failed: a=0, b=0, expected out=0, got out=%d", out);
        end

        // Test case 3: a=1, b=0, expect out=0
        a = 1; b = 0; #1;
        if (out !== 0) begin
            $display("Test failed: a=1, b=0, expected out=0, got out=%d", out);
        end

        // Test case 4: a=1, b=1, expect out=1
        a = 1; b = 1; #1;
        if (out !== 1) begin
            $display("Test failed: a=1, b=1, expected out=1, got out=%d", out);
        end

        $display("All AND gate tests passed.");
        end
endmodule
