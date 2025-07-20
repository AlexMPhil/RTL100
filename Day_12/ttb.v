`timescale 1ns / 1ps

module ttb();
    reg CLK;
    reg T;
    wire Q;
    wire Qbar;
 
    tff uut(.CLK(CLK),.T(T),.Q(Q),.Qbar(Qbar));
    
    initial  begin
        CLK = 0;
    end
    always #5 CLK = ~CLK;
    
    initial begin
        T=0;
        #10 T=1;
        #10 T=0;
        #10 T=1;
        #10 T=0;
        #10; $finish;
     end
 
endmodule 
