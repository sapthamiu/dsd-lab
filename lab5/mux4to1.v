module mux4to1(ab,c,d,out);
   input [1:0]ab;
   input c,d;
   output reg out;
   always@*
   begin
   case(ab)
        2'b00: out = ~c | ~d;
        2'b01: out = ~d;
        2'b10: out = ~c & d;
        2'b11: out = ~d;
    endcase
    end
endmodule
