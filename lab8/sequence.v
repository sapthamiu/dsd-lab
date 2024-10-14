module dff(d,clk,q);
input d;
input clk;
output reg q=0;
always@(posedge clk)
    q<=d;
endmodule
module sequence(clk,w,z);
    input clk;
    input w;
   // input [1:0]ps;
    wire [1:0]s;
    output reg z;
    wire d1,d0;
    assign d1 = ~w & s[0] | s[1] & s[0] & w;
    assign d0 = w;
    always@(posedge clk)
     z = ~w & s[1] & s[0];
    dff ff1(d1,clk,s[1]);
    dff ff0(d0,clk,s[0]);
endmodule
