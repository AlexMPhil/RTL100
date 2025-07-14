`timescale 1ns / 1ps

module Comp4b_tb;
    reg [3:0] A, B;
    wire eq,lt,gt;

    Comparator_4b uut (.A(A), .B(B), .EQ(eq), .LT(lt), .GT(gt));

    initial begin
        A=3; B=4; #10 $display("A=%d,B=%d,EQ=%d,LT=%d,GT=%d",A,B,eq,lt,gt);
        A=5; B=2; #10 $display("A=%d,B=%d,EQ=%d,LT=%d,GT=%d",A,B,eq,lt,gt);
        A=4; B=4; #10 $display("A=%d,B=%d,EQ=%d,LT=%d,GT=%d",A,B,eq,lt,gt);
        $finish;
    end
endmodule
