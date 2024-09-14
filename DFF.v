module DFF(clk,reset, d, q);
    input clk,reset, d;
    //input reg d;
    output reg q=0;
    always@(posedge clk)
        if(reset)
            q<=0;
        else
            q<=d;
endmodule
