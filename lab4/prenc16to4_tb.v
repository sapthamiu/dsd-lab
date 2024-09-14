`timescale 1ns/1ns
`include "prenc16to4.v"
module prenc16to4_tb;
    reg [15:0]in;
    reg en;
    wire [3:0]out;
    prenc16to4 encoder(in,en,out);
    initial
    begin
    $dumpfile("prenc16to4_tb.vcd");
    $dumpvars(0,prenc16to4_tb);
    en=0; in=16'b0000010000000001; #10;
    en=0; in=16'b0011111000000001; #10;
    en=1; in=16'b1001000000100110; #10;
    en=1; in=16'b0000000000000001; #10;
    en=1; in=16'b0100000000000000; #10;
    en=1; in=16'b0000000001100011; #10;
    $display("Test Complete");
    end
endmodule
