`timescale 1ns / 1ps

module clk_div_5(
    input CLK_in, //input clk
    input RST,   //active low rst
    output reg CLK_out // slowed clock
    );
    
    reg [2:0] count;
    
    always @(posedge CLK_in or negedge RST) begin
        if (!RST) begin
            CLK_out <= 0;
            count <= 0;
        end
        else begin
            count <= count + 1;
            if (count == 3'b101) CLK_out <= ~CLK_out;
        end
    end
    
endmodule
