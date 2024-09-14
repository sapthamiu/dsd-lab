module exercise4(a,b,p);
	input [2:0] a, b;
	output [5:0] p;
	wire w1, w2, w3, w4;

	assign p[0] = a[0] & b[0];

	assign p[1] = (a[1] & b[0]) ^ (a[0] & b[1]);
	assign   w1 = (a[1] & b[0]) & (a[0] & b[1]);

	assign p[2] = w1 ^ (a[2] & b[0]) ^ (a[1] & b[1]) ^ (a[0] & b[2]);
	assign   w2 = w1 & (a[2] & b[0]) & (a[1] & b[1]) & (a[0] & b[2]);

	assign p[3] = w2 ^ (a[2] & b[1]) ^ (a[1] & b[2]);
	assign   w3 = w2 & (a[2] & b[1]) & (a[1] & b[2]);

	assign p[4] = w3 ^ (a[2] & b[2]);
	assign w4 = w3 & (a[2] & b[2]);

	assign p[5] = w4;
endmodule

