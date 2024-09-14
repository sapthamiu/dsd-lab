`timescale 1ns/1ns
`include"TFF.v"

module TFF_tb();
    reg t,clk, reset;
    wire q;
    TFF ff(clk, reset, t, q);
    initial begin
    $dumpfile("TFF_tb.vcd");
    $dumpvars(0, TFF_tb);
    end
    initial begin
    clk = 0;
    reset = 1;
    t = 0;
    forever #10 clk = ~clk;
    end
    initial begin
    #10;
    reset = 0; #10;
    reset = 1; t = 1; #10;
    t = 0; #10;
    t = 1; #10;
    reset = 0; #10;
    reset = 1; t = 0; #10;
    $finish;
    $display("Done");
    end
endmodule
