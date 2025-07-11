`timescale 1ns / 1ps

module full_adder(
    input a,
    input b,
    input cin,
    output reg s,
    output reg cout);
    
    always @(*) begin
        s = a ^ b ^ cin;
        cout = (a & b) | (a & cin) | (b & cin);
    end
endmodule
