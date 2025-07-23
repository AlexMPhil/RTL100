`timescale 1ns / 1ps

module sd1011_tb();
    reg CLK,RST,inp;
    wire det;
    
    seq_det_1011 uut(.CLK(CLK),.RST(RST),.inp(inp),.det(det));
    
    initial CLK = 0;
    always #5 CLK = ~CLK;
    
    initial begin
        RST=1;
        #10 RST=0; inp=0;
        #10 inp=0;  
        #10 inp=1; 
        #10 inp=1; 
        #10 inp=0; 
        #10 inp=1; 
        #10 inp=0; 
        #10 inp=1; 
        #10 inp=1; 
        #10 inp=1; 
        #10 inp=0; 
        #10 inp=1; 
        #10 inp=1; 
        #10 inp=0; 
        #10 inp=1; 
        #10 inp=1; 
        #10 inp=0; 
        #10 inp=0; 
        #10 inp=0; 
        #10 inp=1; 
        #10 inp=1; 
        $finish;
    end
endmodule
