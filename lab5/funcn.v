module deco4to16(in, out);
    input [3:0] in;
    output reg [15:0]out;
    always@*
    begin
        out = 1;
        for(integer i = 1; i<=in;i=i+1)
            out = out*2;
    end
endmodule
module funcn(in, f);
    input [3:0]in;
    output f;
    wire [15:0] out;
    deco4to16 decoder(in[3:0], out[15:0]);
    assign f = out[2] | out[3] | out[4] | out[5] | out[6] | out[7] | out[10] | out[11] | out[12] | out[15];
endmodule
