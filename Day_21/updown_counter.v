`timescale 1ns / 1ps

module updown_counter(
    input CLK,
    input RST,    //active low rst
    input m,      //0 for decrement, 1 for increment
    output reg [3:0] COUNT
    );
    
    always @(posedge CLK or negedge RST) begin
        if (!RST) COUNT <= 0;
        else if (!m) COUNT <= COUNT - 1'b1;
        else COUNT <= COUNT + 1'b1;
    end
    
endmodule
