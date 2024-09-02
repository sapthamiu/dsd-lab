module exercise1b(A,B,C,D,f);
	input A,B,C,D;
	output f;
	assign f = (~A & ~D) | (B & ~D) | (C & ~D) | (~A & B & C);
endmodule

