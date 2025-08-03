module _dflipflop(d,clk,out);
input d; // data input 
input clk; // clock input 
output reg out = 0; // output out 
always @(posedge clk) 
begin
 out <= d; 
end 
endmodule