`timescale 1ns/1ns
`include "mux4to1.v"
module mux4to1_tb();
    reg [3:0] in;
    reg [1:0] sel;
    wire out;
    mux4to1 mux(in,sel,out);
    initial
    begin
        $dumpfile("mux4to1_tb.vcd");
		$dumpvars(0,mux4to1_tb);
		sel = 2'b00; in = 4'b0001;#10;
		sel = 2'b01; in = 4'b0010;#10;
		sel = 2'b10; in = 4'b0100;#10;
		sel = 2'b11; in = 4'b1000;#10;
		sel = 2'b00; in = 4'b1110;#10;
		sel = 2'b01; in = 4'b1101;#10;
		sel = 2'b10; in = 4'b1011;#10;
		sel = 2'b11; in = 4'b0110;#10;
		$display("Test Complete");
    end
endmodule

