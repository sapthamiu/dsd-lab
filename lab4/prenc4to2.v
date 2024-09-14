module prenc4to2(in,en,out);
    input [3:0]in;
    input en;
    output reg [1:0]out;
    always@(in,en)
    begin
        if(en)
        begin
            casex(in)
                4'b1xxx: out=2'b11;
                4'b01xx: out=2'b10;
                4'b001x: out=2'b01;
                4'b0001: out=2'b00;
                default: out=2'bxx;
            endcase
            end
    end
endmodule
