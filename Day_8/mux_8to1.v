`timescale 1ns / 1ps

module mux_8to1(
    input [3:0] D0,
    input [3:0] D1,
    input [3:0] D2,
    input [3:0] D3,
    input [3:0] D4,
    input [3:0] D5,
    input [3:0] D6,
    input [3:0] D7,
    input [2:0] select,
    output reg [3:0] y
    );
    
    always @(*) begin
        case(select)
            3'b000: y = D0;
            3'b001: y = D1;
            3'b010: y = D2;
            3'b011: y = D3;
            3'b100: y = D4;
            3'b101: y = D5;
            3'b110: y = D6;
            3'b111: y = D7;
            default: y = 1'b0;
        endcase
    end
           
endmodule
