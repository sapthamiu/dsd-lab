module dec2to4(in,en,out);
    input [1:0]in;
    input en;
    output reg [3:0] out;
    always@*
    begin
    if(en)
    begin
        case(in)
        0: out = 1;
        1: out = 2;
        2: out = 4;
        3: out = 8;
        endcase
    end
    else
    out = 1'b0;
    end
endmodule
module majfnc(in, f);
    input [2:0]in;
    output f;
    wire [7:0]out;
    dec2to4 d1(in[1:0], ~in[2], out[3:0]);
    dec2to4 d2(in[1:0], in[2], out[7:4]);
    assign f = out[3] | out[5] | out[6] | out[7];
endmodule
