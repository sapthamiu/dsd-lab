`timescale 1ns/1ns
`include "syncount3.v"
module syncount3_tb;
    reg clear, clk;
    wire [2:0]q;
    syncount3 sync(q, clear, clk);
    always #5 clk = ~clk;
    initial begin
        clear = 0;
        clk = 1;
        #150 $finish;
    end
    initial begin
        $dumpfile("syncount3_tb.vcd");
        $dumpvars(0, syncount3_tb);
        #10 clear = 1;
    end
endmodule

