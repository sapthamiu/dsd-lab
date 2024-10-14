`timescale 1ns/1ns
`include "funcn.v"
module function_tb();
    reg [3:0]in;
    wire f;
    funcn fnc(in, f);
    initial begin
    $dumpfile("function_tb.vcd");
    $dumpvars(0, function_tb);
    in = 0; #10;
    in = 1; #10;
    in = 2; #10;
    in = 3; #10;
    in = 4; #10;
    in = 5; #10;
    in = 6; #10;
    in = 7; #10;
    in = 8; #10;
    in = 9; #10;
    in = 10; #10;
    in = 11; #10;
    in = 12; #10;
    in = 13; #10;
    in = 14; #10;
    in = 15; #10;
    $display("Test Complete");
    end
endmodule
