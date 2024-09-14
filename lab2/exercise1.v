module exercise1(a,b,c,d,f);
	input a,b,c,d;
	output f;
	assign g = a & b;
	assign h = c | d;
	assign f = ~(g ^ h);
endmodule

