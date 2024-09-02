`timescale 1ns/1ns
`include "mux2to1.v"
module mux2to1_tb();
	reg in1,in0,sel;
	wire out;
	mux2to1 mux(in1,in0,sel,out);
	initial
	begin
		$dumpfile("mux2to1_tb.vcd");
		$dumpvars(0,mux2to1_tb);
		sel = 1'b0; in1 = 1'b0; in0 = 1'b0; #10;
		sel = 1'b0; in1 = 1'b0; in0 = 1'b1; #10;
		sel = 1'b0; in1 = 1'b1; in0 = 1'b0; #10;
		sel = 1'b0; in1 = 1'b1; in0 = 1'b1; #10;
		sel = 1'b1; in1 = 1'b0; in0 = 1'b0; #10;
		sel = 1'b1; in1 = 1'b0; in0 = 1'b1; #10;
		sel = 1'b1; in1 = 1'b1; in0 = 1'b0; #10;
		sel = 1'b1; in1 = 1'b1; in0 = 1'b1; #10;
		$display("test complete");
	end 
endmodule
