`timescale 1ns/1ns
`include "regn.v"
module regn_tb();
    parameter N = 4;
    genvar i;
    reg [N-1:0]in;
    reg clk;
    wire [N-1:0]out;

    regn pipo(in, clk, out);
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        $dumpfile("regn_tb.vcd");
        $dumpvars(0, regn_tb);
        in = 12; #10;
        in = 8; #10;
        #60 $finish;
    end
    endmodule
