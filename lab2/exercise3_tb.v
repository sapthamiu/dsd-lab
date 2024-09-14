`timescale 1ns/1ns
`include "exercise3.v"

module exercise3_tb();
	reg [3:0] a,b;
	reg cin;
	wire [3:0] sum;
	wire cout;

	exercise3 ex3(a,b,cin, sum, cout);
	initial
	begin
		$dumpfile("exercise3_tb.vcd");
		$dumpvars(0, exercise3_tb);

		a = 4'b0000; b = 4'b0000; cin = 0; #10;
		a = 4'b1111; b = 4'b0011; cin = 1; #10;
		a = 4'b0100; b = 4'b0001; cin = 0; #10;
		a = 4'b1110; b = 4'b0101; cin = 1; #10;
		a = 4'b0011; b = 4'b0000; cin = 0; #10;
		a = 4'b0010; b = 4'b1001; cin = 1; #10;


		$display("Test Complete");
	end
endmodule



