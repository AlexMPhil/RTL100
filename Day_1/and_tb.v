`timescale 1ns / 1ps

module and_tb;
    reg a,b;
    wire y;
    
    and_gate uut (
    .a(a),
    .b(b),
    .y(y)
    );
    
    initial begin
        $display ("Time \t a b | y");
        a=0; b=0; #10;
        b=1; #10;
        a=1; b=0; #10;
        b=1; #10;
        $finish;
    end
endmodule
