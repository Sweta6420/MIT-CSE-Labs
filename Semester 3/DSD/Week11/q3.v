module TFF(T,Clock,clear,Q);
input T,Clock,clear;
output reg Q;
always @(negedge Clock or negedge clear)
begin 
	if ( clear==0) Q<=0;
	else if ( T==1) Q<=~Q;
	else Q<=Q;
end
endmodule
module q3(Clock,clear,Q);
input Clock,clear;
output [3:0] Q;
TFF s0 (1'b1,Clock,clear,Q[0]); //(Q[0],1'b1',clear,Clock)
TFF s1 (1'b1,Q[0],clear,Q[1]); //
TFF s2 (1'b1,Q[1],clear,Q[2]);
TFF s3 (1'b1,Q[2],clear,Q[3]);
endmodule
