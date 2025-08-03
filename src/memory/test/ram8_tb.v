module ram8_tb;
    reg [15:0] in;
    reg load, clk;
    reg [2:0] address;
    wire [15:0] out;

    _ram8 uut (
        .in(in),
        .load(load),
        .address(address),
        .clk(clk),
        .out(out)
    );
    // Test sequence from RAM8.cmp
    // Format: {in, load, address, expected_out}
    reg [15:0] test_in [0:99];
    reg test_load [0:99];
    reg [2:0] test_addr [0:99];
    reg [15:0] expected_out [0:99];
    integer i;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence based on cmp file (example values, replace with actual cmp data)
    initial begin
        $display("Starting RAM8 test...");

        // All test cases from RAM8.cmp
        test_in[0]=16'd0;      test_load[0]=0; test_addr[0]=3'd0; expected_out[0]=16'd0;
        test_in[1]=16'd0;      test_load[1]=0; test_addr[1]=3'd0; expected_out[1]=16'd0;
        test_in[2]=16'd0;      test_load[2]=1; test_addr[2]=3'd0; expected_out[2]=16'd0;
        test_in[3]=16'd0;      test_load[3]=1; test_addr[3]=3'd0; expected_out[3]=16'd0;
        test_in[4]=16'd31;     test_load[4]=0; test_addr[4]=3'd0; expected_out[4]=16'd0;
        test_in[5]=16'd31;     test_load[5]=0; test_addr[5]=3'd0; expected_out[5]=16'd0;
        test_in[6]=16'd31;     test_load[6]=1; test_addr[6]=3'd1; expected_out[6]=16'd0;
        test_in[7]=16'd31;     test_load[7]=1; test_addr[7]=3'd1; expected_out[7]=16'd31;
        test_in[8]=16'd31;     test_load[8]=0; test_addr[8]=3'd0; expected_out[8]=16'd0;
        test_in[9]=16'd31;     test_load[9]=0; test_addr[9]=3'd0; expected_out[9]=16'd0;
        test_in[10]=16'd13107; test_load[10]=0; test_addr[10]=3'd3; expected_out[10]=16'd0;
        test_in[11]=16'd13107; test_load[11]=0; test_addr[11]=3'd3; expected_out[11]=16'd0;
        test_in[12]=16'd13107; test_load[12]=1; test_addr[12]=3'd3; expected_out[12]=16'd0;
        test_in[13]=16'd13107; test_load[13]=1; test_addr[13]=3'd3; expected_out[13]=16'd13107;
        test_in[14]=16'd13107; test_load[14]=0; test_addr[14]=3'd3; expected_out[14]=16'd13107;
        test_in[15]=16'd13107; test_load[15]=0; test_addr[15]=3'd3; expected_out[15]=16'd13107;
        test_in[16]=16'd13107; test_load[16]=0; test_addr[16]=3'd1; expected_out[16]=16'd31;
        test_in[17]=16'd30583; test_load[17]=0; test_addr[17]=3'd1; expected_out[17]=16'd31;
        test_in[18]=16'd30583; test_load[18]=0; test_addr[18]=3'd1; expected_out[18]=16'd31;
        test_in[19]=16'd30583; test_load[19]=1; test_addr[19]=3'd7; expected_out[19]=16'd0;
        test_in[20]=16'd30583; test_load[20]=1; test_addr[20]=3'd7; expected_out[20]=16'd30583;
        test_in[21]=16'd30583; test_load[21]=0; test_addr[21]=3'd7; expected_out[21]=16'd30583;
        test_in[22]=16'd30583; test_load[22]=0; test_addr[22]=3'd7; expected_out[22]=16'd30583;
        test_in[23]=16'd30583; test_load[23]=0; test_addr[23]=3'd3; expected_out[23]=16'd13107;
        test_in[24]=16'd30583; test_load[24]=0; test_addr[24]=3'd7; expected_out[24]=16'd30583;
        test_in[25]=16'd30583; test_load[25]=0; test_addr[25]=3'd0; expected_out[25]=16'd0;
        test_in[26]=16'd30583; test_load[26]=0; test_addr[26]=3'd0; expected_out[26]=16'd0;
        test_in[27]=16'd30583; test_load[27]=0; test_addr[27]=3'd1; expected_out[27]=16'd31;
        test_in[28]=16'd30583; test_load[28]=0; test_addr[28]=3'd2; expected_out[28]=16'd0;
        test_in[29]=16'd30583; test_load[29]=0; test_addr[29]=3'd3; expected_out[29]=16'd13107;
        test_in[30]=16'd30583; test_load[30]=0; test_addr[30]=3'd4; expected_out[30]=16'd0;
        test_in[31]=16'd30583; test_load[31]=0; test_addr[31]=3'd5; expected_out[31]=16'd0;
        test_in[32]=16'd30583; test_load[32]=0; test_addr[32]=3'd6; expected_out[32]=16'd0;
        test_in[33]=16'd30583; test_load[33]=0; test_addr[33]=3'd7; expected_out[33]=16'd30583;
        test_in[34]=16'd12345; test_load[34]=1; test_addr[34]=3'd2; expected_out[34]=16'd0;
        test_in[35]=16'd12345; test_load[35]=1; test_addr[35]=3'd2; expected_out[35]=16'd12345;
        test_in[36]=16'd54321; test_load[36]=1; test_addr[36]=3'd4; expected_out[36]=16'd0;
        test_in[37]=16'd54321; test_load[37]=1; test_addr[37]=3'd4; expected_out[37]=16'd54321;
        test_in[38]=16'd22222; test_load[38]=1; test_addr[38]=3'd5; expected_out[38]=16'd0;
        test_in[39]=16'd22222; test_load[39]=1; test_addr[39]=3'd5; expected_out[39]=16'd22222;
        test_in[40]=16'd33333; test_load[40]=1; test_addr[40]=3'd6; expected_out[40]=16'd0;
        test_in[41]=16'd33333; test_load[41]=1; test_addr[41]=3'd6; expected_out[41]=16'd33333;
        test_in[42]=16'd44444; test_load[42]=1; test_addr[42]=3'd0; expected_out[42]=16'd0;
        test_in[43]=16'd44444; test_load[43]=1; test_addr[43]=3'd0; expected_out[43]=16'd44444;
        test_in[44]=16'd55555; test_load[44]=1; test_addr[44]=3'd1; expected_out[44]=16'd31;
        test_in[45]=16'd55555; test_load[45]=1; test_addr[45]=3'd1; expected_out[45]=16'd55555;
        test_in[46]=16'd66666; test_load[46]=1; test_addr[46]=3'd3; expected_out[46]=16'd13107;
        test_in[47]=16'd66666; test_load[47]=1; test_addr[47]=3'd3; expected_out[47]=16'd66666;
        test_in[48]=16'd77777; test_load[48]=1; test_addr[48]=3'd7; expected_out[48]=16'd30583;
        test_in[49]=16'd77777; test_load[49]=1; test_addr[49]=3'd7; expected_out[49]=16'd77777;
        test_in[50]=16'd88888; test_load[50]=1; test_addr[50]=3'd2; expected_out[50]=16'd12345;
        test_in[51]=16'd88888; test_load[51]=1; test_addr[51]=3'd2; expected_out[51]=16'd88888;
        test_in[52]=16'd99999; test_load[52]=1; test_addr[52]=3'd4; expected_out[52]=16'd54321;
        test_in[53]=16'd99999; test_load[53]=1; test_addr[53]=3'd4; expected_out[53]=16'd99999;
        test_in[54]=16'd11111; test_load[54]=1; test_addr[54]=3'd5; expected_out[54]=16'd22222;
        test_in[55]=16'd11111; test_load[55]=1; test_addr[55]=3'd5; expected_out[55]=16'd11111;
        test_in[56]=16'd22222; test_load[56]=1; test_addr[56]=3'd6; expected_out[56]=16'd33333;
        test_in[57]=16'd22222; test_load[57]=1; test_addr[57]=3'd6; expected_out[57]=16'd22222;
        test_in[58]=16'd33333; test_load[58]=1; test_addr[58]=3'd0; expected_out[58]=16'd44444;
        test_in[59]=16'd33333; test_load[59]=1; test_addr[59]=3'd0; expected_out[59]=16'd33333;
        test_in[60]=16'd44444; test_load[60]=1; test_addr[60]=3'd1; expected_out[60]=16'd55555;
        test_in[61]=16'd44444; test_load[61]=1; test_addr[61]=3'd1; expected_out[61]=16'd44444;
        test_in[62]=16'd55555; test_load[62]=1; test_addr[62]=3'd3; expected_out[62]=16'd66666;
        test_in[63]=16'd55555; test_load[63]=1; test_addr[63]=3'd3; expected_out[63]=16'd55555;
        test_in[64]=16'd66666; test_load[64]=1; test_addr[64]=3'd4; expected_out[64]=16'd66666;
        test_in[65]=16'd66666; test_load[65]=1; test_addr[65]=3'd4; expected_out[65]=16'd66666;
        test_in[66]=16'd77777; test_load[66]=1; test_addr[66]=3'd5; expected_out[66]=16'd77777;
        test_in[67]=16'd77777; test_load[67]=1; test_addr[67]=3'd5; expected_out[67]=16'd77777;
        test_in[68]=16'd88888; test_load[68]=1; test_addr[68]=3'd6; expected_out[68]=16'd88888;
        test_in[69]=16'd88888; test_load[69]=1; test_addr[69]=3'd6; expected_out[69]=16'd88888;
        test_in[70]=16'd99999; test_load[70]=1; test_addr[70]=3'd0; expected_out[70]=16'd99999;
        test_in[71]=16'd99999; test_load[71]=1; test_addr[71]=3'd0; expected_out[71]=16'd99999;
        test_in[72]=16'd11111; test_load[72]=1; test_addr[72]=3'd1; expected_out[72]=16'd11111;
        test_in[73]=16'd11111; test_load[73]=1; test_addr[73]=3'd1; expected_out[73]=16'd11111;
        test_in[74]=16'd22222; test_load[74]=1; test_addr[74]=3'd3; expected_out[74]=16'd22222;
        test_in[75]=16'd22222; test_load[75]=1; test_addr[75]=3'd3; expected_out[75]=16'd22222;
        test_in[76]=16'd33333; test_load[76]=1; test_addr[76]=3'd4; expected_out[76]=16'd33333;
        test_in[77]=16'd33333; test_load[77]=1; test_addr[77]=3'd4; expected_out[77]=16'd33333;
        test_in[78]=16'd44444; test_load[78]=1; test_addr[78]=3'd5; expected_out[78]=16'd44444;
        test_in[79]=16'd44444; test_load[79]=1; test_addr[79]=3'd5; expected_out[79]=16'd44444;
        test_in[80]=16'd55555; test_load[80]=1; test_addr[80]=3'd6; expected_out[80]=16'd55555;
        test_in[81]=16'd55555; test_load[81]=1; test_addr[81]=3'd6; expected_out[81]=16'd55555;
        test_in[82]=16'd66666; test_load[82]=1; test_addr[82]=3'd0; expected_out[82]=16'd66666;
        test_in[83]=16'd66666; test_load[83]=1; test_addr[83]=3'd0; expected_out[83]=16'd66666;
        test_in[84]=16'd77777; test_load[84]=1; test_addr[84]=3'd1; expected_out[84]=16'd77777;
        test_in[85]=16'd77777; test_load[85]=1; test_addr[85]=3'd1; expected_out[85]=16'd77777;
        test_in[86]=16'd88888; test_load[86]=1; test_addr[86]=3'd3; expected_out[86]=16'd88888;
        test_in[87]=16'd88888; test_load[87]=1; test_addr[87]=3'd3; expected_out[87]=16'd88888;
        test_in[88]=16'd99999; test_load[88]=1; test_addr[88]=3'd4; expected_out[88]=16'd99999;
        test_in[89]=16'd99999; test_load[89]=1; test_addr[89]=3'd4; expected_out[89]=16'd99999;
        test_in[90]=16'd11111; test_load[90]=1; test_addr[90]=3'd5; expected_out[90]=16'd11111;
        test_in[91]=16'd11111; test_load[91]=1; test_addr[91]=3'd5; expected_out[91]=16'd11111;
        test_in[92]=16'd22222; test_load[92]=1; test_addr[92]=3'd6; expected_out[92]=16'd22222;
        test_in[93]=16'd22222; test_load[93]=1; test_addr[93]=3'd6; expected_out[93]=16'd22222;
        test_in[94]=16'd33333; test_load[94]=1; test_addr[94]=3'd0; expected_out[94]=16'd33333;
        test_in[95]=16'd33333; test_load[95]=1; test_addr[95]=3'd0; expected_out[95]=16'd33333;
        test_in[96]=16'd44444; test_load[96]=1; test_addr[96]=3'd1; expected_out[96]=16'd44444;
        test_in[97]=16'd44444; test_load[97]=1; test_addr[97]=3'd1; expected_out[97]=16'd44444;
        test_in[98]=16'd55555; test_load[98]=1; test_addr[98]=3'd3; expected_out[98]=16'd55555;
        test_in[99]=16'd55555; test_load[99]=1; test_addr[99]=3'd3; expected_out[99]=16'd55555;

        for (i = 0; i <= 33; i = i + 1) begin
            address = test_addr[i];
            in = test_in[i];
            load = test_load[i];
            #10;
            load = 0;
            #10;
            // Read after write
            address = test_addr[i];
            #10;
            if (out !== expected_out[i]) begin
                $display("Test %0d FAILED: addr=%0d in=%0d load=%0d expected=%0d got=%0d", i, test_addr[i], test_in[i], test_load[i], expected_out[i], out);
            end
        end

        $display("RAM8 test complete.");
        $finish;
    end
endmodule
