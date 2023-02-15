`timescale 1ns/1ns
`include "q1.v"
module q1_tb;
reg a,b,c,d,e;
wire f;
q1 uut(a,b,c,d,e,f);
initial begin	
	$dumpfile("q1_tb.vcd");
	$dumpvars(0,q1_tb);
	a=0; b=0; c=0; d=0; e=1; #20;
	a=0; b=0; c=0; d=1; e=1; #20;
	a=0; b=0; c=1; d=0; e=1; #20;
	a=0; b=0; c=1; d=1; e=1; #20;
	a=0; b=1; c=0; d=0; e=1; #20;
	a=0; b=1; c=0; d=1; e=1; #20;
	a=0; b=1; c=1; d=0; e=1; #20;
	a=0; b=1; c=1; d=1; e=1; #20;
	a=1; b=0; c=0; d=0; e=1; #20;
	a=1; b=0; c=0; d=1; e=1; #20;
	a=1; b=0; c=1; d=0; e=1; #20;
	a=1; b=0; c=1; d=1; e=1; #20;
	a=1; b=1; c=0; d=0; e=1; #20;
	a=1; b=1; c=0; d=1; e=1; #20;
	a=1; b=1; c=1; d=0; e=1; #20;
	a=1; b=1; c=1; d=1; e=1; #20;
	$display ("Test Complete");	
end 
endmodule

	
