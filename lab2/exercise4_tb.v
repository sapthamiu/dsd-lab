`timescale 1ns/1ns
`include "exercise4.v"

module exercise4_tb();
	reg [2:0] a,b;
	wire [5:0] p;
	wire w1, w2, w3, w4, w5;

	exercise4 ex4(a,b,p);
	initial
	begin
		$dumpfile("exercise4_tb.vcd");
		$dumpvars(0, exercise4_tb);

		a = 3'b010; b = 3'b001; #10;
		a = 3'b011; b = 3'b101; #10;
		a = 3'b101; b = 3'b011; #10;
		a = 3'b011; b = 3'b001; #10;
		a = 3'b001; b = 3'b111; #10;
		$display("Test Complete");
	end
endmodule



