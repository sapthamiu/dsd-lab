`timescale 1ns/1ns
`include "sequence.v"
module sequence_tb();
    reg clk;
    reg w;
    //reg [1:0]ps;
    wire z;
    sequence seq(clk,w,z);
    always #5 clk = ~clk;
    initial begin
        clk = 0; w = 0; //ps = 2'b00;
        $dumpfile("sequence_tb.vcd");
        $dumpvars(0,sequence_tb);
        #10 w = 0; //ps = 2'b00;
        #10 w = 1; //ps = 2'b00;
        #10 w = 0;// ps = 2'b01;
        #10 w = 1;// ps = 2'b10;
        #10 w = 0;// ps = 2'b11;
        #10 w = 1;// ps = 2'b10;
        #10 w = 0; //ps = 2'b11;
        #10 w = 1; //ps = 2'b10;
        #10 w = 1;// ps = 2'b11;
        #200 $finish;
    end
endmodule
