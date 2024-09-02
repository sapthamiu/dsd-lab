`timescale 1ns/1ns
`include "majfnc.v"
module majfnc_tb();
    reg [2:0]in;
    wire f;
    majfnc mfn(in, f);
    initial begin
    $dumpfile("majfnc_tb.vcd");
    $dumpvars(0, majfnc_tb);
    in = 0; #10;
    in = 1; #10;
    in = 2; #10;
    in = 3; #10;
    in = 4; #10;
    in = 5; #10;
    in = 6; #10;
    in = 7; #10;
    $display("Test Complete");
    end
endmodule
