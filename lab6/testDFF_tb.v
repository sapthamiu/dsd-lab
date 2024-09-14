`timescale 1ns/1ns
`include"DFF.v"
module testDFF_tb();
    reg d, clk, reset;
    wire q;
    DFF ff(d, clk, reset, q);
    initial begin
        $dumpfile("testDFF_tb.vcd");
        $dumpvars(0, testDFF_tb);
    end
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    initial begin
        //      reset = 0; d = 0;
        // #10; reset = 0; d = 1;
        // #10; reset = 0; d = 1;
        // #10; reset = 0; d = 1;
        // #10; reset = 0; d = 1;
        // #10; reset = 0; d = 0;
        // #10; reset = 0; d = 1;
        // #10; reset = 0; d = 0;
        // #10; reset = 0; d = 1;
        // #10; reset = 0; d = 1;
        // #10; reset = 0; d = 0;
        // #10; reset = 0; d = 1;
        // #10; reset = 0; d = 0;
        d = 0; reset = 1;
        #10; d = 1; reset = 1;
        #10; d = 0; reset = 1;
        #10; d = 1; reset = 1;
        #10; d = 0; reset = 1;
        #10; d = 1; reset = 0;
        #10;

        $finish;
        $display("Done");
    end
endmodule
