`timescale 1ns / 1ps

module tff(
    input CLK,
    input T,
    output reg Q,
    output reg Qbar
    );
    
    initial Q=0;
    
    always @(posedge CLK) begin
        if (T==1) begin
            Q<=~Q;
            Qbar<=Q;
        end
        else begin
            Q<=Q;
            Qbar<=Qbar;
        end
    end
endmodule
