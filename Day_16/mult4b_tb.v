`timescale 1ns / 1ps

module mult4b_tb();

    reg [3:0] A,B;
    wire [7:0] P;
    
    mult_4b uut(.A(A),.B(B),.P(P));
    
    initial begin
        A=4'b0001; B=4'b0000;
        #10; A=4'b0001; B=4'b0001;
        #10; A=4'b1111; B=4'b0110;
        #10; A=4'b0001; B=4'b0101;
        #10; A=4'b0110; B=4'b0110;
        #10; A=4'b1101; B=4'b1111;
        #10; A=4'b0101; B=4'b1010;
        #10; $finish;
    end
endmodule
