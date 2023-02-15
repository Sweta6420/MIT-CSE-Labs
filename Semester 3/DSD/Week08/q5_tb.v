`timescale 1ns/1ns
`include "q5.v"

module q5_tb;
reg [15:0] w;
wire [3:0] y;

q5 uut(w,y);
initial begin
	$dumpfile("q5_tb.vcd");
    	$dumpvars(0,q5_tb);
    	w = 16'b1000000000000000; #20; w = 16'b0100000000000000; #20;
    	w = 16'b0010000000000000; #20; w = 16'b0001000000000000; #20;
    	w = 16'b0000100000000000; #20; w = 16'b0000010000000000; #20;
    	w = 16'b0000001000000000; #20; w = 16'b0000000100000000; #20;
    	w = 16'b0000000010000000; #20; w = 16'b0000000001000000; #20;
    	w = 16'b0000000000100000; #20; w = 16'b0000000000010000; #20;
    	w = 16'b0000000000001000; #20; w = 16'b0000000000000100; #20;
    	w = 16'b0000000000000010; #20; w = 16'b0000000000000001; #20;
	$display("Test Complete");
end
endmodule
