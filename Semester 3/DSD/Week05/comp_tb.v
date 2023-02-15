`timescale 1ns/1ns
`include "comp.v"

module comp_tb();
reg [4:0] a, b;
wire l,e,g;

comp uut(a,b,l,e,g);
initial 
begin 
	$dumpfile("comp_tb.vcd");
	$dumpvars(0,comp_tb);
	a=4'b1000; b=4'b1010; #20;
	a=4'b0110; b=4'b0110; #20;
	a=4'b1001; b=4'b0011; #20;
	a=4'b1111; b=4'b1111; #20;
	a=4'b0001; b=4'b1011; #20;
	$display("Test Complete");	
end 
endmodule
