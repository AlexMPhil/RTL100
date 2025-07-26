`timescale 1ns / 1ps

module clkdiv_tb();
    
    reg CLK,RST;
    wire CLK_out;
    
    clk_div_5 uut(.CLK_in(CLK),.RST(RST),.CLK_out(CLK_out));
    
    initial CLK = 0;
    always #5 CLK = ~CLK;
    
    initial begin
        RST = 1;
        #15 RST = 0;
        #40 RST = 1;
        #2000; $finish;
    end
    
endmodule
