`timescale 1ns / 1ps

module jktb();
    reg CLK;
    reg J;
    reg K;
    wire Q;
    wire Qbar;
    
    jkff uut(.CLK(CLK),.J(J),.K(K),.Q(Q),.Qbar(Qbar));
    
    initial CLK = 0;
    always #5 CLK = ~CLK;
    
    initial begin
        K=1;
        #10 J=0;K=0;
        #10 J=0;K=1;
        #10 J=1;K=0;
        #10 J=1;K=1;
        #10 J=0;K=0;
        #10; $finish;
     end
endmodule
