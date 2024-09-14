`timescale 1ns/1ns
`include "exercise1a.v"

module exercise1a_tb();
	reg A,B,C,D;
	wire f;
	exercise1a ex1a(A,B,C,D,f);
		initial
		begin
			$dumpfile("exercise1a_tb.vcd");
			$dumpvars(0,exercise1a_tb);
			
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
