`timescale 1ns/1ns
`include"JKFF.v"
module JKFF_tb();
    reg [1:0]jk;
    reg clk, reset;
    wire q;
    JKFF ff(jk, clk, reset, q);
    initial begin
    $dumpfile("JKFF_tb.vcd");
    $dumpvars(0, JKFF_tb);
    end
    initial begin
        clk = 0;
        reset = 0;
        jk = 0;
        forever #10 clk = ~clk;
    end
    initial begin
    #10;
    jk = 2'b10; #10;
    jk = 2'b01; #10;
    jk = 2'b11; #10;
    jk = 2'b00; #10;
    reset = 1; #10;
    reset = 0; #10;
    $finish;
    $display("Done");
    end
endmodule
