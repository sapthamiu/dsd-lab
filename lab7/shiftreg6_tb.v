`timescale 1ns/1ns
`include "shiftreg6.v"
module shiftreg6_tb();
    reg in;
    reg clk;
    wire out;
    shiftreg6 siso(in, clk, out);
    initial begin
        clk = 0;
        in = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        $dumpfile("shiftreg6_tb.vcd");
        $dumpvars(0, shiftreg6_tb);
        #10;
        in = 1; #10;
        in = 0; #10;
        in = 1; #10;
        in = 1; #10;
        in = 0; #10;
        in = 1; #10;
       // $display("Done");
        #280 $finish;
    end
endmodule
