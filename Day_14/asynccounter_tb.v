`timescale 1ns / 1ps

module asynccount_tb();
    reg CLK;
    wire [3:0] Out;
    
    async_counter uut(.CLK(CLK),.Out(Out));
    
    initial CLK = 0;
    always #5 CLK = ~CLK;
    
    initial begin
        #160; $finish;
     end
endmodule
