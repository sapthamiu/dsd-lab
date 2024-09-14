module bitcomp3(a,b,eq,gr,lo);
    input [2:0] a,b;
    output reg  eq,gr,lo;
    always@(a,b)
    begin
        if(a>b)
        begin
            eq = 0; gr = 1; lo = 0;
        end
        else if(a<b)
        begin
            eq = 0; gr = 0; lo = 1;
        end
        else
        begin
            eq = 1; gr = 0; lo = 0;
        end
    end
endmodule
