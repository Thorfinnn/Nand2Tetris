module nand_tb;
    reg a, b;
    wire out;

    _nand uut (
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        a = 0; b = 0; #1; if (out !== 1) begin $display("NAND failed: a=0, b=0, expected 1, got %d", out); end
        a = 0; b = 1; #1; if (out !== 1) begin $display("NAND failed: a=0, b=1, expected 1, got %d", out); end
        a = 1; b = 0; #1; if (out !== 1) begin $display("NAND failed: a=1, b=0, expected 1, got %d", out); end
        a = 1; b = 1; #1; if (out !== 0) begin $display("NAND failed: a=1, b=1, expected 0, got %d", out); end
        $display("All NAND gate tests passed.");
    end
endmodule
