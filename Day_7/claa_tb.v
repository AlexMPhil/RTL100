`timescale 1ns / 1ps

module claa_tb();
    reg [3:0] A,B;
    reg Cin;
    wire [3:0] S;
    wire Cout;
    
    CLAAdder uut(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
    
    initial begin
        A=1; B=0; Cin=0; #3;
        A=2; B=3; Cin=1; #3;
        A=6; B=3; Cin=1; #3;
        A=10; B=6; Cin=0; #3;
        $finish;
    end
endmodule
