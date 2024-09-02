module mux8to1(in, sel, out);
    input [7:0] in;
    input [2:0] sel;
    output out;
    assign out = in[sel];
endmodule
module graytobin(gray, bin);
    input [3:0]gray;
    output [3:0]bin;
    reg [7:0]in0, in1, in2, in3;
    always@ *
    begin
    in3 = 8'b11110000;
    in2 = 8'b00111100;
    in1 = 8'b10010110;
    in0 = {~gray[0],gray[0],gray[0],~gray[0],gray[0],~gray[0],~gray[0],gray[0]};
    end
    mux8to1 b3(in3, gray[3:1], bin[3]);
    mux8to1 b2(in2, gray[3:1], bin[2]);
    mux8to1 b1(in1, gray[3:1], bin[1]);
    mux8to1 b0(in0, gray[3:1], bin[0]);
endmodule
