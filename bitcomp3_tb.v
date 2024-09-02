`timescale 1ns/1ns
`include"bitcomp3.v"
module bitcomp3_tb();
    reg [2:0] a,b;
    wire eq,gr,lo;
    bitcomp3 bits(a,b,eq,gr,lo);
    initial
    begin
        $dumpfile("bitcomp3_tb.vcd");
        $dumpvars(0, bitcomp3_tb);
        a = 3'b000; b = 3'b000; #10;
        a = 3'b000; b = 3'b001; #10;
        a = 3'b100; b = 3'b010; #10;
        a = 3'b101; b = 3'b111; #10;
        a = 3'b110; b = 3'b010; #10;
        a = 3'b111; b = 3'b111; #10;
        $display("Test Complete");
    end
endmodule
