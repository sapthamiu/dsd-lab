module dec2to4(in,en,out);
    input [1:0]in;
    input en;
    output reg [3:0]out;
    always@(in,en)
    begin
        if(~en)
        begin
            if(in==0)
                out=1;
            else if(in==1)
                out=2;
            else if(in==2)
                out=4;
            else if(in==3)
                out=8;
            else out=0;
        end
    end
endmodule
