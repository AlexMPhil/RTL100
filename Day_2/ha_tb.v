`timescale 1ns / 1ps

module ha_tb;
    reg a,b;
    wire s,cout;
    
    half_adder uut (
    .a(a),
    .b(b),
    .s(s),
    .cout(cout)
    );
    
    initial begin
        $display ("Half Adder \t a b | s cout");
        a=0; b=0; #10;
        b=1; #10;
        a=1; b=0; #10;
        b=1; #10;
        $finish;
    end
endmodule
