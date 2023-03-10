`timescale 1ns/1ns
`include "q2.v"
module q2_tb;
reg a,b,c,d,e;
wire F,G,H;
q2 uut(a,b,c,d,e,F,G,H);
initial begin	
	$dumpfile("q2_tb.vcd");
	$dumpvars(0,q2_tb);
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

	
