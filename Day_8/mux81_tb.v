`timescale 1ns / 1ps

module mux81_tb();
    reg [3:0] D0,D1,D2,D3,D4,D5,D6,D7;
    reg [2:0] select;
    wire [3:0] y;
    
    mux_8to1 uut(.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7),.select(select),.y(y));
    
    initial begin
        D0 = 4'd6;
        D1 = 4'd15;
        D2 = 4'd2;
        D3 = 4'd10;
        D4 = 4'd3;
        D5 = 4'd5;
        D6 = 4'd9;
        D7 = 4'd4;
        select = 3'b000;
        #10 select = 3'b01;
        #10 select = 3'b10;
        #10 select = 3'b11;
        $finish;
    end

endmodule
