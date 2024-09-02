module dec2to4(in,en,out);
    input [1:0]in;
    input en;
    output reg [3:0]out;
    always@(in,en)
    begin
        if(en)
        begin
            if(in==0)
                out=1;
            else if(in==1)
                out=2;
            else if(in==2)
                out=4;
            else if(in==3)
                out=8;
        end
        else out=0;
    end
endmodule
module dec4to16(in,en,out);
    input [3:0]in;
    input en;
    output [15:0]out;
    wire [3:0]en1;
    dec2to4 dec1(in[3:2],en,en1[3:0]);
    dec2to4 dec2(in[1:0],en1[0],out[3:0]);
    dec2to4 dec3(in[1:0],en1[1],out[7:4]);
    dec2to4 dec4(in[1:0],en1[2],out[11:8]);
    dec2to4 dec5(in[1:0],en1[3],out[15:12]);
endmodule
