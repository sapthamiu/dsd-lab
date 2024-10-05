`timescale 1ns/1ns
`include "reduced.v"
module reduced_tb();
    reg clk;
    reg x;
    reg[2:0]ps;
    wire out;
    reduced mod(x,ps,clk,out);
    always #10 clk = ~clk;
    initial begin

        $dumpfile("reduced_tb.vcd");
        $dumpvars(0, reduced_tb);
        clk = 0; x = 0;ps = 3'b000;
    // end
    // initial begin

        #20 ps = 3'b000; x = 0;
        #20 ps = 3'b010; x = 1;
        #20 ps = 3'b001; x = 0;
        #20 ps = 3'b011; x = 1;
        #20 ps = 3'b000; x = 0;
       #100 $finish;
        //$display("Done");
    end
endmodule
