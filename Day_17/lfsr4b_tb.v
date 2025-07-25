`timescale 1ns / 1ps

module lfsr4b_tb();
    reg CLK,RST;
    wire [3:0] Out;
    
    lfsr_4b uut(.CLK(CLK),.RST(RST),.Out(Out));
    
    initial CLK = 0;
    always #5 CLK = ~CLK;
    
    initial begin
        RST=1;
        #3 RST=0; 
        #10 RST=1;
        #160; 
        $finish;
    end
endmodule
