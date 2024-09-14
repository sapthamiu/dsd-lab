`timescale 1ns/1ns
`include"DFF.v"
module DFF_tb();
    reg d, clk, reset;
    wire q;
    DFF ff(d, clk, reset, q);
    initial begin
        $dumpfile("DFF_tb.vcd");
        $dumpvars(0, DFF_tb);
    end
    initial begin
        clk = 0;
        d = 0;
        reset = 0;
        forever #10 clk = ~clk;
    end
    initial begin
        #10;
        d = 1; reset = 1;#10;
        d = 0; #10;
       // reset = 1;#10;
        d = 1; #10;
        d = 0; #10;
        reset = 0; d = 1; #10;
        $finish;
        $display("Done");
    end
endmodule
