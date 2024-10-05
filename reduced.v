module jkff(j,k,clk,q);
input j,k;
input clk;
output reg q = 0;
always@(posedge clk)
begin case ({j,k})
        2'b00: q<=q;
        2'b01: q<=0;
        2'b10: q<=1;
        2'b11: q<=~q;
        default: q<=q;
    endcase
end
endmodule
module reduced(x,ps, clk, out);
    input clk;
    input x;
    input [2:0]ps;
    wire [2:0]ns;
    output out;
    wire j2,k2,j1,k1,j0,k0;
    assign j2 = ~x & ps[1] & ps[0];
    assign k2 = x;
    assign j1 = ~x;
    assign k1 = x & ~ps[2];
    assign j0 = x;
    assign k0 = x | ps[1];
    assign out = (~x & ps[2] & ps[1]) | (x & ps[1] & ~ps[0]);
    jkff ff2(j2,k2,clk,ns[2]);
    jkff ff1(j1,k1,clk,ns[1]);
    jkff ff0(j0,k0,clk,ns[0]);
    //ps = ns;
endmodule
