module tff(q,t,reset,clk);
    input t, clk, reset;
    output reg q;
    always@(posedge clk or negedge reset)
    begin
        if(reset ==0)
            q<=0;
        else if(t==1)
            q<=~q;
        else q<=q;
    end
endmodule
module syncount3(q,reset, clk);
    input clk, reset;
    output [2:0]q;
    wire t2;
    and G(t2, q[0], q[1]);

    tff ff0(q[0], 1'b1, reset, clk);
    tff ff1(q[1], q[0], reset, clk);
    tff ff2(q[2], t2, reset, clk);
endmodule
