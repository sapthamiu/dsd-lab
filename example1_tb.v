`timescale 1ns/1ns
`include "example1.v"

module example1_tb();
	reg x1,x2,x3,x4;
	wire f;
	example1 ex1(x1,x2,x3,x4,f);
	initial 
	begin
		$dumpfile("example1_tb.vcd");
		$dumpvars(0, example1_tb);
		x1 = 1'b0; x2 = 1'b0; x3 = 1'b0; x4 = 1'b0;
		#10;
		x1 = 1'b0; x2 = 1'b0; x3 = 1'b0; x4 = 1'b1;
		#10;
		x1 = 1'b0; x2 = 1'b0; x3 = 1'b1; x4 = 1'b0;
		#10;
		x1 = 1'b0; x2 = 1'b0; x3 = 1'b1; x4 = 1'b1;
		#10;
		x1 = 1'b0; x2 = 1'b1; x3 = 1'b0; x4 = 1'b0;
		#10;
		x1 = 1'b0; x2 = 1'b1; x3 = 1'b0; x4 = 1'b1;
		#10;
		x1 = 1'b0; x2 = 1'b1; x3 = 1'b1; x4 = 1'b0;
		#10;
		x1 = 1'b1; x2 = 1'b1; x3 = 1'b1; x4 = 1'b1;
		#10;
		x1 = 1'b1; x2 = 1'b0; x3 = 1'b0; x4 = 1'b0;
		#10;
		x1 = 1'b1; x2 = 1'b0; x3 = 1'b0; x4 = 1'b1;
		#10;
		x1 = 1'b1; x2 = 1'b0; x3 = 1'b1; x4 = 1'b0;
		#10;
		x1 = 1'b1; x2 = 1'b0; x3 = 1'b1; x4 = 1'b1;
		#10;
		x1 = 1'b1; x2 = 1'b1; x3 = 1'b0; x4 = 1'b0;
		#10;
		x1 = 1'b1; x2 = 1'b1; x3 = 1'b0; x4 = 1'b1;
		#10;
		x1 = 1'b1; x2 = 1'b1; x3 = 1'b1; x4 = 1'b0;
		#10;
		x1 = 1'b1; x2 = 1'b1; x3 = 1'b1; x4 = 1'b1;
		#10;
		$display("Test Complete");
	end
endmodule
