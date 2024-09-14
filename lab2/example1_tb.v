`timescale 1ns/1ns
`include "example1.v"

module example1_tb();
	reg a,b,c,d;
	wire f;
	
	example1 ex1(a,b,c,d,f);
		initial
		begin
		$dumpfile("example1_tb.vcd");
		$dumpvars(0, example1_tb);
		a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b0; #10;
		a = 1'b0; b = 1'b0; c = 1'b0; d = 1'b1; #10;
		a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b0; #10;
		a = 1'b0; b = 1'b0; c = 1'b1; d = 1'b1; #10;
		a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b0; #10;
		a = 1'b0; b = 1'b1; c = 1'b0; d = 1'b1; #10;
		a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b0; #10;
		a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1; #10;
		a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b0; #10;
		a = 1'b1; b = 1'b0; c = 1'b0; d = 1'b1; #10;
		a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0; #10;
		a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1; #10;
		a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b0; #10;
		a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1; #10;
		a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0; #10;
		a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b1; #10;
		$display("test complete");
		end
endmodule

		
	
	
