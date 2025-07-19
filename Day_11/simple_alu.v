`timescale 1ns / 1ps

module simple_alu(
    input [3:0] A,B,
    input [2:0] opcode,
    output reg [3:0] res,
    output reg carry
    );
    always @(*) begin
    carry = 1'b0;
        case(opcode)
            3'b000: {carry,res}=A+B; //Addition
            3'b001: {carry,res}=A-B; //Subtraction
            3'b010: res=A&B; //Bitwise AND
            3'b011: res=A|B; //Bitwise OR
            3'b100: res=A^B; //Bitwise XOR
            3'b101: res=~(A^B); //Bitwise XNOR
            default: {carry,res}=9'b0;
        endcase
    end
endmodule
