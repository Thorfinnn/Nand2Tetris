module _halfadder(
    a,
    b,
    sum,
    carry
);

input a;
input b;
output sum;
output carry;

assign sum = a ^ b; // XOR operation for sum
assign carry = a & b; // AND operation for carry

endmodule