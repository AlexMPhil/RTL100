`timescale 1ns / 1ps

module rc4bas_tb;
    reg [3:0] X, Y;
    reg mode;
    wire [3:0] Z;
    wire CO;

    ripple_carry_4bas uut (.X(X), .Y(Y), .m(mode), .Z(Z), .CO(CO));

    initial begin
        X = 4'b0110; Y = 4'b0011; mode = 0; #10 $display("ADD  | X=%b  Y=%b |  Z=%b   C=%b", X, Y, Z, CO); // 6 + 3 = 9
        X = 4'b0110; Y = 4'b0011; mode = 1; #10 $display("SUB  | X=%b  Y=%b |  Z=%b   C=%b", X, Y, Z, CO); // 6 - 3 = 3
        X = 4'b0011; Y = 4'b0110; mode = 1; #10 $display("SUB  | X=%b  Y=%b |  Z=%b   C=%b", X, Y, Z, CO); // 3 - 6 = 13 (2’s comp)
        $finish;
    end
endmodule
