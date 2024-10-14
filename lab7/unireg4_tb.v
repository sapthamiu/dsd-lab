`timescale 1ns/1ns
`include "unireg4.v"
module unireg4_tb();
    reg clk;
    reg [1:0]sel;
    reg[3:0]pload;
    reg lshift;
    wire [3:0]qout;
    unireg4 universal(clk, sel, lshift, pload, qout);
    initial begin
        $dumpfile("unireg4_tb.vcd");
        $dumpvars(0, unireg4_tb);
    end
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
    lshift = 0;
    pload = 4'b1101;
    sel = 2'b00;
    #10;
    lshift = 1; #10;
    lshift = 0; #10;
    lshift = 0; #10;
    lshift = 1; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    #120 $finish;
    $display("Done");
    end
endmodule
