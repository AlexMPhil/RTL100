`timescale 1ns / 1ps

module lfsr_4b(
    input CLK,
    input RST, //active low reset
    output reg [3:0] Out 
    );
    
    wire fb; //Bit to be fed back
    assign fb = Out[3] ^ Out[2];
    
    always @(posedge CLK or negedge RST) begin
        if (!RST) Out <= 4'b0001; //default out value is 0001
        else Out <= {Out[2:0],fb};
    end
    
endmodule
