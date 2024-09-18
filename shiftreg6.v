module dff (d, clk, q);
    input d;
    input clk;
    output reg q;
    always@(posedge clk)
        q<=d;
endmodule

module shiftreg6(input in, input clk, output qout);
    wire [5:0]q;
    dff ff5(in, clk, q[5]);
    dff ff4(q[5], clk, q[4]);
    dff ff3(q[4], clk, q[3]);
    dff ff2(q[3], clk, q[2]);
    dff ff1(q[2], clk, q[1]);
    dff ff0(q[1], clk, q[0]);

    assign qout = q[0];
endmodule
