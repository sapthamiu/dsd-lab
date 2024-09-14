`timescale 1ns/1ns
`include "extra1.v"

module extra1_tb();
	reg A,B,C,D;
	wire f;
	extra1 ex1(A,B,C,D,f);
		initial
		begin
			$dumpfile("extra1_tb.vcd");
			$dumpvars(0,extra1_tb);
			
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
