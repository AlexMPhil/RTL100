`timescale 1ns / 1ps

module Comparator_4b(
    input [3:0] A,
    input [3:0] B,
    output reg EQ,
    output reg GT,
    output reg LT
    );
    
    always @(*) begin
        LT = (A < B);
        EQ = (A = B);
        GT = (A > b);
    end
    
endmodule
