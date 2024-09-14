`timescale 1ns/1ns
`include "additional1.v"

module additional1_tb();
	reg a,b,c;
	wire f1,f2;
	additional1 ad1(a,b,c,f1,f2);
		initial
		begin
			$dumpfile("additional1_tb.vcd");
			$dumpvars(0,additional1_tb);
			
			a = 1'b0; b = 1'b0; c = 1'b0;
			#10;
			a = 1'b0; b = 1'b0; c = 1'b1;
			#10;
			a = 1'b0; b = 1'b1; c = 1'b0;
			#10;
			a = 1'b0; b = 1'b1; c = 1'b1;
			#10;
			a = 1'b1; b = 1'b0; c = 1'b0;
			#10;
			a = 1'b1; b = 1'b0; c = 1'b1;
			#10;
			a = 1'b1; b = 1'b1; c = 1'b0;
			#10;
			a = 1'b1; b = 1'b1; c = 1'b1;
			#10;
			
			$display("Test complete");
		end
endmodule
