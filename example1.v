module example1(a,b,c,d,f);
	input a,b,c,d;
	output f;
	assign g = (a & ~b) | (~a & b);
	assign f = (g & c) | (~g & d);
endmodule

