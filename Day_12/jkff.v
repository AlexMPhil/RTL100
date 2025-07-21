`timescale 1ns / 1ps

module jkff(
    input CLK,
    input J,
    input K,
    output reg Q,
    output reg Qbar
    );
    
    always @(posedge CLK) begin
    
        if (J==0 && K==0) begin
            Q<=Q;
            Qbar<=Qbar;
        end
        else if (J==1 && K==1) begin
            Q<=~Q;
            Qbar<=Q;
        end
        else if (K==1) begin
            Q<=0;
            Qbar<=1;
        end
        else if (J==1) begin
            Q<=1;
            Qbar<=0;
        end

        else begin
            Q<=Q;
            Qbar<=Qbar;
        end
    end

endmodule
