module TFF(clk, reset, t, q);
    input clk, reset, t;
    output reg q = 0;
    always@(negedge clk)
    if(!reset)
        q<=0;
    else if(t)
        q<=~q;
    else q<=q;
endmodule
