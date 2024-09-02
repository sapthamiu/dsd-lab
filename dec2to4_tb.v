`timescale 1ns/1ns
`include "dec2to4.v"
module dec2to4_tb;
    reg [1:0]in;
    reg en;
    wire [3:0]out;
    dec2to4 decoder(in,en,out);
    initial
    begin
        $dumpfile("dec2to4_tb.vcd");
        $dumpvars(0,dec2to4_tb);
        en=0; in=2'b00;#10;
        en=0; in=2'b01;#10;
        en=0; in=2'b10;#10;
        en=0; in=2'b11;#10;
        en=1; in=2'b00;#10;
        en=1; in=2'b01;#10;
        en=1; in=2'b10;#10;
        en=1; in=2'b11;#10;
        $display("Test Complete");
    end
endmodule
