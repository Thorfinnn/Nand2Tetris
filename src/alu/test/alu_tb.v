module alu_tb;
    reg [15:0] x, y;
    reg zx, nx, zy, ny, f, no;
    wire [15:0] out;
    wire zr, ng;

    _alu uut (
        .x(x), .y(y), .zx(zx), .nx(nx), .zy(zy), .ny(ny), .f(f), .no(no), .out(out), .zr(zr), .ng(ng)
    );

    initial begin
        // Test case 1
        x = 16'b0000000000000000; y = 16'b1111111111111111;
        zx = 1; nx = 0; zy = 1; ny = 0; f = 1; no = 0;
        #1;
        if (out !== 16'b0000000000000000 || zr !== 1 || ng !== 0)
            $display("Test failed: case 1: out=%b (exp=0000000000000000), zr=%d (exp=1), ng=%d (exp=0)", out, zr, ng);
        // Test case 2
        zx = 1; nx = 1; zy = 1; ny = 1; f = 1; no = 1;
        #1;
        if (out !== 16'b0000000000000001 || zr !== 0 || ng !== 0)
            $display("Test failed: case 2: out=%b (exp=0000000000000001), zr=%d (exp=0), ng=%d (exp=0)", out, zr, ng);
        // Test case 3
        zx = 1; nx = 1; zy = 1; ny = 0; f = 1; no = 0;
        #1;
        if (out !== 16'b1111111111111111 || zr !== 0 || ng !== 1)
            $display("Test failed: case 3: out=%b (exp=1111111111111111), zr=%d (exp=0), ng=%d (exp=1)", out, zr, ng);
        // Test case 4
        zx = 0; nx = 0; zy = 1; ny = 1; f = 0; no = 0;
        #1;
        if (out !== 16'b0000000000000000 || zr !== 1 || ng !== 0)
            $display("Test failed: case 4: out=%b (exp=0000000000000000), zr=%d (exp=1), ng=%d (exp=0)", out, zr, ng);
        // Test case 5
        zx = 1; nx = 1; zy = 0; ny = 0; f = 0; no = 0;
        #1;
        if (out !== 16'b1111111111111111 || zr !== 0 || ng !== 1)
            $display("Test failed: case 5: out=%b (exp=1111111111111111), zr=%d (exp=0), ng=%d (exp=1)", out, zr, ng);
        // Test case 6
        zx = 0; nx = 0; zy = 1; ny = 1; f = 0; no = 1;
        #1;
        if (out !== 16'b1111111111111111 || zr !== 0 || ng !== 1)
            $display("Test failed: case 6: out=%b (exp=1111111111111111), zr=%d (exp=0), ng=%d (exp=1)", out, zr, ng);
        // Test case 7
        zx = 1; nx = 1; zy = 0; ny = 0; f = 0; no = 1;
        #1;
        if (out !== 16'b0000000000000000 || zr !== 1 || ng !== 0)
            $display("Test failed: case 7: out=%b (exp=0000000000000000), zr=%d (exp=1), ng=%d (exp=0)", out, zr, ng);
        // Test case 8
        zx = 0; nx = 0; zy = 1; ny = 1; f = 1; no = 1;
        #1;
        if (out !== 16'b0000000000000000 || zr !== 1 || ng !== 0)
            $display("Test failed: case 8: out=%b (exp=0000000000000000), zr=%d (exp=1), ng=%d (exp=0)", out, zr, ng);
        // Test case 9
        zx = 1; nx = 1; zy = 0; ny = 0; f = 1; no = 1;
        #1;
        if (out !== 16'b0000000000000001 || zr !== 0 || ng !== 0)
            $display("Test failed: case 9: out=%b (exp=0000000000000001), zr=%d (exp=0), ng=%d (exp=0)", out, zr, ng);
        // Test case 10
        zx = 0; nx = 1; zy = 1; ny = 1; f = 1; no = 1;
        #1;
        if (out !== 16'b0000000000000001 || zr !== 0 || ng !== 0)
            $display("Test failed: case 10: out=%b (exp=0000000000000001), zr=%d (exp=0), ng=%d (exp=0)", out, zr, ng);
        // Test case 11
        zx = 1; nx = 1; zy = 0; ny = 1; f = 1; no = 1;
        #1;
        if (out !== 16'b0000000000000000 || zr !== 1 || ng !== 0)
            $display("Test failed: case 11: out=%b (exp=0000000000000000), zr=%d (exp=1), ng=%d (exp=0)", out, zr, ng);
        // Test case 12
        zx = 0; nx = 0; zy = 1; ny = 1; f = 1; no = 0;
        #1;
        if (out !== 16'b1111111111111111 || zr !== 0 || ng !== 1)
            $display("Test failed: case 12: out=%b (exp=1111111111111111), zr=%d (exp=0), ng=%d (exp=1)", out, zr, ng);
        // Test case 13
        zx = 1; nx = 1; zy = 0; ny = 0; f = 1; no = 0;
        #1;
        if (out !== 16'b1111111111111110 || zr !== 0 || ng !== 1)
            $display("Test failed: case 13: out=%b (exp=1111111111111110), zr=%d (exp=0), ng=%d (exp=1)", out, zr, ng);
        // Test case 14
        zx = 0; nx = 0; zy = 0; ny = 0; f = 1; no = 0;
        #1;
        if (out !== 16'b1111111111111111 || zr !== 0 || ng !== 1)
            $display("Test failed: case 14: out=%b (exp=1111111111111111), zr=%d (exp=0), ng=%d (exp=1)", out, zr, ng);
        // Test case 15
        zx = 0; nx = 1; zy = 0; ny = 0; f = 1; no = 1;
        #1;
        if (out !== 16'b0000000000000001 || zr !== 0 || ng !== 0)
            $display("Test failed: case 15: out=%b (exp=0000000000000001), zr=%d (exp=0), ng=%d (exp=0)", out, zr, ng);
        // Test case 16
        zx = 0; nx = 0; zy = 0; ny = 1; f = 1; no = 1;
        #1;
        if (out !== 16'b1111111111111111 || zr !== 0 || ng !== 1)
            $display("Test failed: case 16: out=%b (exp=1111111111111111), zr=%d (exp=0), ng=%d (exp=1)", out, zr, ng);
        // Test case 17
        zx = 0; nx = 0; zy = 0; ny = 0; f = 0; no = 0;
        #1;
        if (out !== 16'b0000000000000000 || zr !== 1 || ng !== 0)
            $display("Test failed: case 17: out=%b (exp=0000000000000000), zr=%d (exp=1), ng=%d (exp=0)", out, zr, ng);
        // Test case 18
        zx = 0; nx = 1; zy = 0; ny = 1; f = 0; no = 1;
        #1;
        if (out !== 16'b1111111111111111 || zr !== 0 || ng !== 1)
            $display("Test failed: case 18: out=%b (exp=1111111111111111), zr=%d (exp=0), ng=%d (exp=1)", out, zr, ng);
        // Test case 19
        x = 16'b0000000000010001; y = 16'b0000000000000011;
        zx = 1; nx = 0; zy = 1; ny = 0; f = 1; no = 0;
        #1;
        if (out !== 16'b0000000000000000 || zr !== 1 || ng !== 0)
            $display("Test failed: case 19: out=%b (exp=0000000000000000), zr=%d (exp=1), ng=%d (exp=0)", out, zr, ng);
        $display("All ALU tests passed.");
    end
endmodule
