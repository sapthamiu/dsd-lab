`timescale 1ns/1ns
`include"SRFF.v"
module SRFF_tb();
reg clk, reset;
reg[1:0]sr;
wire q;
SRFF ff(sr, clk, reset, q);
initial begin
$dumpfile("SRFF_tb.vcd");
$dumpvars(0, SRFF_tb);
end
initial begin
clk = 0;
reset = 1;
sr = 0;
forever #10 clk = ~clk;
end
initial begin
#10;
reset = 0; #10;
reset = 1; #10;
sr = 2'b10; #10;
sr = 2'b01; #10;
sr = 2'b00; #10;
sr = 2'b11; #10;
reset = 0; #10;
reset = 1; #10;
$finish;
$display("Done");
end
endmodule
