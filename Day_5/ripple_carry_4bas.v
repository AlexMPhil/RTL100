`timescale 1ns / 1ps

module ripple_carry_4bas(X,Y,m,Z,CO);
    input [3:0] X;
    input [3:0] Y;
    input m; //mode
    output [3:0] Z;
    output CO;
    
    wire [3:0] Y_mod;
    wire c1,c2,c3;
    assign Y_mod = Y ^ {4{m}}; //Y XOR with m(mode)
    
    full_adder fa0(.a(X[0]), .b(Y_mod[0]), .cin(m), .s(Z[0]), .cout(c1));
    full_adder fa1(.a(X[1]), .b(Y_mod[1]), .cin(c1), .s(Z[1]), .cout(c2));
    full_adder fa2(.a(X[2]), .b(Y_mod[2]), .cin(c2), .s(Z[2]), .cout(c3));
    full_adder fa3(.a(X[3]), .b(Y_mod[3]), .cin(c3), .s(Z[3]), .cout(CO));
    
endmodule
