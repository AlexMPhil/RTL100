`timescale 1ns / 1ps

module mult_4b(
    input [3:0] A,
    input [3:0] B,
    output wire [7:0] P
    );
    
    wire [3:0] p0,p1,p2,p3;
        
    assign p0 = {4{B[0]}} & A;
    assign p1 = {4{B[1]}} & A;
    assign p2 = {4{B[2]}} & A;
    assign p3 = {4{B[3]}} & A;
    
    assign P = p0 + (p1<<1) + (p2<<2) + (p3<<3);
    
endmodule
