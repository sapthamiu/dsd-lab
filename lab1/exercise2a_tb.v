`timescale 1ns/1ns
`include "exercise2a.v"

module exercise2a_tb();
	reg A,B,C,D;
	wire f;
	exercise2a ex2a(A,B,C,D,f);
		initial
		begin
			$dumpfile("exercise2a_tb.vcd");
			$dumpvars(0,exercise2a_tb);
			
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
