`timescale 1ns / 1ps

module udc_tb();
    reg CLK,RST,Mode;
    wire [3:0] Out;
    
    updown_counter uut(.CLK(CLK),.RST(RST),.m(Mode),.COUNT(Out));
    
    initial CLK = 0;
    always #5 CLK = ~CLK;
    
    initial begin
        RST = 1;
        #15 RST = 0; Mode = 1;
        #15 RST = 1; 
        #81 Mode = 0;
        #33 Mode = 1;
        #20 $finish;
    end
    
endmodule
