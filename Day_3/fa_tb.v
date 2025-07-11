`timescale 1ns / 1ps

module fa_tb;
    reg a,b,cin;
    wire s,cout;
    
    full_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
    );
    
    initial begin
        $display ("Full Adder \t a b cin | s cout");
        a=0; b=0; cin=0; #10;
        cin=1; #10;
        b=1; cin=0; #10;
        cin=1; #10;
        a=1; b=0; cin=0; #10;
        cin=1; #10;
        b=1; cin=0; #10;
        cin=1; #10;
        $finish;
    end
endmodule
