`timescale 1ns/1ns
`include "prenc4to2.v"
module prenc4to2_tb();
    reg [3:0]in;
    reg en;
    wire [1:0]out;
    prenc4to2 encoder(in,en,out);
    initial
    begin
    $dumpfile("prenc4to2_tb.vcd");
    $dumpvars(0,prenc4to2_tb);
    en=1'b0; in=4'b0001; #10;
             in=4'b0011; #10;
    en=1'b1; in=4'b0010; #10;
             in=4'b1101; #10;
             in=4'b0100; #10;
             in=4'b1110; #10;
             in=4'b0000; #10;
             in=4'b1111; #10;
    $display("Test Complete");
    end
endmodule
