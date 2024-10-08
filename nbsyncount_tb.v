`timescale 1ns/1ns
`include "nbsyncount.v"
module nbsyncount_tb;
    reg clear, clk;
    wire [2:0]q;
    nbsyncount sync(clear, clk, q);
    always #5 clk = ~clk;
    initial begin
        clear = 0; clk = 1;
        #150 $finish;
    end
    initial begin
        $dumpfile("nbsyncount_tb.vcd");
        $dumpvars(0, nbsyncount_tb);
        #10 clear = 1;
    end
endmodule
