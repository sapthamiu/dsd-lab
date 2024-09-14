module bintogray(bin, gray);
    parameter N=4;
    input [N-1:0] bin;
    output reg [N-1:0] gray;
    integer i;
    always@(*)
    begin
        gray[N-1] = bin[N-1];
        for(i = N-2; i>=0;i=i-1)
        begin
            gray[i] = bin[i+1]^bin[i];
        end
    end
endmodule

