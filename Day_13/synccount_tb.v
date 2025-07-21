`timescale 1ns / 1ps


module synccount_tb();
    reg CLK;
    wire [3:0] Out;
    
    sync_counter uut(.CLK(CLK),.Out(Out));
    
    initial CLK = 0;
    always #5 CLK = ~CLK;
    
    initial begin
        #160; $finish;
     end
endmodule
