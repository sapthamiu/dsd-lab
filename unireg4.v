module dff (d, clk, q);
    input d, clk;
    output reg q;
    always@(posedge clk)
        q<=d;
endmodule

module mux4to1 (input [3:0]in, input[1:0] sel, input lshift, input[3:0]pload, output reg [3:0]out);
    always@*
    begin
        case(sel)
            0: out = {in[2:0], lshift};
            1: out = pload;
            2: out = ~in;
            3: out = in;
        endcase
    end
endmodule

module unireg4(input clk, input[1:0]sel, input lshift, input[3:0]pload, output [3:0]qout);
    wire [3:0] mout;
    wire [3:0] q;
    mux4to1 mux(q, sel, lshift, pload, mout);
    genvar i;
    generate
        for(i=0; i<4; i=i+1)
            dff ff(mout[i], clk, q[i]);
    endgenerate
    assign qout = q;
endmodule
