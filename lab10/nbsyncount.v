module jkff(q,j,k,clear,clk);
    input j, k, clear, clk;
    output reg q;
    always@(posedge clk or negedge clear)
    begin
        if(clear == 0)
            q<=0;
        else if(j==0 && k==1)
            q<=0;
        else if(j==1 && k==0)
            q<=1;
        else if(j==1 && k==1)
            q<=~q;
    end
endmodule
module nbsyncount(clear, clk, q);
    input clear, clk;
    output [2:0]q;
    jkff ff0(q[0], ~q[1],1'b1, clear, clk);
    jkff ff1(q[1], q[0], 1'b1, clear, clk);
    jkff ff2(q[2], q[1] & ~q[0], q[1], clear, clk);
endmodule
