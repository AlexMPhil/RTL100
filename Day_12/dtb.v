`timescale 1ns / 1ps

module dtb();
    reg CLK;
    reg D;
    wire Q;
    wire Qbar;
 
    dff uut(.CLK(CLK),.D(D),.Q(Q),.Qbar(Qbar));
    
    initial CLK = 0;
    always #5 CLK = ~CLK;
    
    initial begin
        #10 D=0;
        #10 D=11;
        #10 D=0;
        #10; $finish;
     end
 
endmodule 
