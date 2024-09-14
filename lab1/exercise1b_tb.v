`timescale 1ns/1ns
`include "exercise1b.v"

module exercise1b_tb();
	reg A,B,C,D;
	wire f;
	exercise1b ex1b(A,B,C,D,f);
		initial
		begin
			$dumpfile("exercise1b_tb.vcd");
			$dumpvars(0,exercise1b_tb);
			
			A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
			#10;
			A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
			#10;
			A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
			#10;
			A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
			#10;
			A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
			#10;
			A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
			#10;
			A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0;
			#10;
			A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1;
			#10;
			A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;
			#10;
			A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1;
			#10;
			A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0;
			#10;
			A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1;
			#10;
			A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0;
			#10;
			A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1;
			#10;
			A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0;
			#10;
			A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
			#10;
			$display("Test complete");
		end
endmodule
