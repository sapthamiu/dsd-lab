`timescale 1ns/1ns
`include "exercise2.v"

module exercise2_tb();
	reg a, b, c;
	wire sum, carry;
	exercise2 ex2(a,b,c, sum, carry);
	initial 
	begin
		$dumpfile("exercise2_tb.vcd");
		$dumpvars(0, exercise2_tb);
		
		a = 1'b0; b = 1'b0; c = 1'b0; #10;
		a = 1'b0; b = 1'b0; c = 1'b0; #10;
		a = 1'b0; b = 1'b0; c = 1'b1; #10;
		a = 1'b0; b = 1'b0; c = 1'b1; #10;
		a = 1'b0; b = 1'b1; c = 1'b0; #10;
		a = 1'b0; b = 1'b1; c = 1'b0; #10;
		a = 1'b0; b = 1'b1; c = 1'b1; #10;
		a = 1'b0; b = 1'b1; c = 1'b1; #10;
		a = 1'b1; b = 1'b0; c = 1'b0; #10;
		a = 1'b1; b = 1'b0; c = 1'b0; #10;
		a = 1'b1; b = 1'b0; c = 1'b1; #10;
		a = 1'b1; b = 1'b0; c = 1'b1; #10;
		a = 1'b1; b = 1'b1; c = 1'b0; #10;
		a = 1'b1; b = 1'b1; c = 1'b0; #10;
		a = 1'b1; b = 1'b1; c = 1'b1; #10;
		a = 1'b1; b = 1'b1; c = 1'b1; #10;
		$display("Test Complete");
	end 
endmodule
	
	
	
