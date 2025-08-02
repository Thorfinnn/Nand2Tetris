module _fulladder(
    a,
    b,
    c,
    sum,
    carry
);
input a;
input b;    
input c;
output sum;
output carry;

assign sum = a ^ b ^ c;
assign carry = (a & b) | (b & c) | (c & a);

endmodule
