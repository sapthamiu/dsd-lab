`timescale 1ns/1ns
`include "mux4to1.v"
module mux4to1_tb();
    reg [1:0] ab;
    reg c, d;
    wire out;
    mux4to1 mux(ab, c, d, out);
    initial begin
    $dumpfile("mux4to1_tb.vcd");
    $dumpvars(0, mux4to1_tb);
        ab = 0; c = 0; d = 0; #10;
        ab = 0; c = 0; d = 1; #10;
        ab = 0; c = 1; d = 0; #10;
        ab = 0; c = 1; d = 1; #10;
        ab = 1; c = 0; d = 0; #10;
        ab = 1; c = 0; d = 1; #10;
        ab = 1; c = 1; d = 0; #10;
        ab = 1; c = 1; d = 1; #10;
        ab = 2; c = 0; d = 0; #10;
        ab = 2; c = 0; d = 1; #10;
        ab = 2; c = 1; d = 0; #10;
        ab = 2; c = 1; d = 1; #10;
        ab = 3; c = 0; d = 0; #10;
        ab = 3; c = 0; d = 1; #10;
        ab = 3; c = 1; d = 0; #10;
        ab = 3; c = 1; d = 1; #10;
        $display("Test Complete");
    end
endmodule
