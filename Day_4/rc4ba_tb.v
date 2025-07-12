`timescale 1ns / 1ps

module rc4ba_tb();
    reg [3:0] X = 4'b0;
    reg [3:0] Y = 4'b0;
    wire [3:0] Z;
    wire CO;
    
    integer count;
    
    ripple_carry_4ba rc0 (.X(X), .Y(Y), .Z(Z), .CO(CO));
    
    initial begin
                
        for (count=0; count < 256; count = count + 1) begin
            #10 {X,Y} = count;
        end
        
        $finish;
    end
    
endmodule
