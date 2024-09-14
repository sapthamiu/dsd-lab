module mux2to1(in1,in0, sel, out);
	input in1,in0,sel;
	output reg out;
	always@(*)
		out= sel ? in1 : in0;
endmodule

