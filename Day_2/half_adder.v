`timescale 1ns / 1ps

module half_adder(
    input a,
    input b,
    output reg s,
    output reg cout);
    
    always @(*) begin
        s = a ^ b;
        cout = a & b;
    end
endmodule
