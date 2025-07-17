`timescale 1ns / 1ps

module PE81_tb();
    reg en;
    reg [7:0] inp;
    wire [2:0] out;
    
    PE81 uut(.en(en), .inp(inp), .out(out));
    
    initial begin
        en=0; inp=128;
        #5 en=1;
        #5 inp = 100;
        #5 inp = 54;
        #5 inp = 20;
        #5 inp = 10;
        #5 inp = 4;
        #5 inp = 2;
        #5 inp = 1;
        $finish;
    end
    
endmodule
