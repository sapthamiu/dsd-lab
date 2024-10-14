module dff(d, clk,q);
    input d, clk;
    output reg q;
    always@(posedge clk)
        q<=d;
endmodule

module regn(in, clk, qout);
    parameter N = 4;
    input [N-1:0] in;
    input clk;
    output [N-1:0] qout;

    genvar i;
    generate
        for(i=0; i<N; i=i+1)
            dff ff(in[i], clk, qout[i]);
    endgenerate
endmodule
