module not_tb;
    reg a;
    wire out;

    _not uut (
        .a(a),
        .out(out)
    );

    initial begin
        a = 0; #1; if (out !== 1) begin $display("NOT failed: a=0, expected 1, got %d", out); end
        a = 1; #1; if (out !== 0) begin $display("NOT failed: a=1, expected 0, got %d", out); end
        $display("All NOT gate tests passed.");
    end
endmodule
