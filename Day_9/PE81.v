`timescale 1ns / 1ps

module PE81(
    input en,
    input [7:0] inp,
    output reg [2:0] out
    );
    
    always @(*) begin
        if (en==1) begin
            if (inp[7] == 1) out = 3'b111;
            else if (inp[6] == 1) out = 3'b110;
            else if (inp[5] == 1) out = 3'b101;
            else if (inp[4] == 1) out = 3'b100;
            else if (inp[3] == 1) out = 3'b011;
            else if (inp[2] == 1) out = 3'b010;
            else if (inp[1] == 1) out = 3'b001;
            else out = 3'b000;
        end
        else out = 3'bzzz;
    end
endmodule
