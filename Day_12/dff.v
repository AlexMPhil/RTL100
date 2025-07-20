`timescale 1ns / 1ps

module dff(
    input CLK,
    input D,
    output reg Q,
    output reg Qbar
    );
    
    always @(posedge CLK) begin
        if (D==1) begin
            Q<=1;
            Qbar<=0;
        end
        else begin
            Q<=0;
            Qbar<=1;
        end
    end
endmodule
