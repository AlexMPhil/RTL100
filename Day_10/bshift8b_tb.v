`timescale 1ns / 1ps

module bshift8b_tb();
    reg [7:0] inp;
    reg [2:0] shamt;
    reg [1:0] mode;
    wire [7:0] out;
    
    barrel_shifter_8b uut(.inp(inp),.shamt(shamt),.mode(mode),.out(out));
    
    initial begin
        #10;inp=8'b10011010;shamt=3'd3;mode=2'd2;
        #10;mode=2'd1;
        #10;mode=2'd0;
        #10;inp=8'b01110011;shamt=3'd3;mode=2'd2;
        #10;mode=2'd1;
        #10;mode=2'd0;
        #10;
        $finish;
        end
endmodule
