module exercise2(a,b,cin,sum,carry);
	input a,b,cin;
	output sum, carry;
	assign sum = a ^ b ^ cin;
	assign carry = (a & b) | (b & cin) | (a & cin);
endmodule

