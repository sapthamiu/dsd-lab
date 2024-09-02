`timescale 1ns/1ns
`include "dec4to16.v"
module dec4to16_tb();
    reg [3:0]in;
    reg en;
    wire [15:0]out;
    dec4to16 decoder(in,en,out);
    initial
    begin
        $dumpfile("dec4to16_tb.vcd");
        $dumpvars(0, dec4to16_tb);
        en=1'b0; in=4'b0000; #10;
        en=1'b0; in=4'b1000; #10;
        en=1'b1; in=4'b0010; #10;
        en=1'b1; in=4'b0101; #10;
        en=1'b1; in=4'b0111; #10;
        en=1'b1; in=4'b1110; #10;
        en=1'b1; in=4'b1100; #10;
       // en=1'b1; in=4'b1101; #10;
        $display("Test Complete");
    end
endmodule
