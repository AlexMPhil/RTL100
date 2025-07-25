`timescale 1ns / 1ps

module johnson_4b(
    input CLK,
    input RST, //Active low RST
    output reg [3:0] Out
    );
    
    always @(posedge CLK or negedge RST) begin
        if (!RST) Out <= 4'b0000; //default start value is 0000
        else Out <= {Out[2:0],~Out[3]};
    end
endmodule
