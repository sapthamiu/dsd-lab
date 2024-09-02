module prenc16to4(in,en,out);
    input [15:0] in;
    input en;

    output reg [3:0]out;
    always@(in,en)
    begin
        if(en)
        begin
            for(integer i=0; i<=15;i=i+1)
            begin
                if(in[i]&&in[15:1]==0)
                    out=i;
                else out=0;
            end
        end
    end
endmodule
