`timescale 1ns / 1ps

module salu_tb();
    reg [3:0] A,B;
    reg [2:0] op;
    wire [3:0] Y;
    wire c;
    
    simple_alu uut(.A(A),.B(B),.opcode(op),.res(Y),.carry(c));
    
    initial begin
        A=4'b01110;B=4'b1011;
        #10; op = 3'b000;
        #10; op = 3'b001;
        #10; op = 3'b010;
        #10; op = 3'b011;
        #10; op = 3'b100;
        #10; op = 3'b101;
        #10; $finish;
    end
    
endmodule
