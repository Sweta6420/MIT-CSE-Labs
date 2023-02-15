`timescale 1ns/1ns
`include "ex4.v"

module ex4_tb;

reg a,b,c,d;
wire f;

ex4 ex(a,b,c,d,f);
initial begin
	$dumpfile("ex4_tb.vcd");
	$dumpvars(0,ex4_tb);
	a=0; b=0; c=0; d=0; #20;
	a=0; b=0; c=0; d=1; #20;
	a=0; b=0; c=1; d=0; #20;
	a=0; b=0; c=1; d=1; #20;
	a=0; b=1; c=0; d=0; #20;
	a=0; b=1; c=0; d=1; #20;
	a=0; b=1; c=1; d=0; #20;
	a=0; b=1; c=1; d=1; #20;
	a=1; b=0; c=0; d=0; #20;
	a=1; b=0; c=0; d=1; #20;
	a=1; b=0; c=1; d=0; #20;
	a=1; b=0; c=1; d=1; #20;
	a=1; b=1; c=0; d=0; #20;
	a=1; b=1; c=0; d=1; #20;
	a=1; b=1; c=1; d=0; #20;
	a=1; b=1; c=1; d=1; #20;
	$display ("Test Complete");
	
	end 
	endmodule
