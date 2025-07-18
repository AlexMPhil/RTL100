`timescale 1ns / 1ps

module barrel_shifter_8b(
    input [7:0] inp,
    input [2:0] shamt,
    input [1:0] mode,
    output reg [7:0] out
    );
    always @(*) begin
       
       if (mode[1]==1) begin
           //rotator
           case(shamt)
                3'b000: out = inp;
                3'b001: out = {inp[0],inp[7:1]};
                3'b010: out = {inp[1:0],inp[7:2]};
                3'b011: out = {inp[2:0],inp[7:3]};
                3'b100: out = {inp[3:0],inp[7:4]};
                3'b101: out = {inp[4:0],inp[7:5]};
                3'b110: out = {inp[5:0],inp[7:6]};
                3'b111: out = {inp[6:0],inp[7]};
                default: out = inp;
           endcase
       end
       else begin
           //mode 00 means logical, mode 01 means arithmetic
           case(shamt)
               3'b000: out = inp;
               3'b001: out = {{1{(inp[7] & mode[0])}}, inp[7:1]};
               3'b010: out = {{2{(inp[7] & mode[0])}}, inp[7:2]};
               3'b011: out = {{3{(inp[7] & mode[0])}}, inp[7:3]};
               3'b100: out = {{4{(inp[7] & mode[0])}}, inp[7:4]};
               3'b101: out = {{5{(inp[7] & mode[0])}}, inp[7:5]};
               3'b110: out = {{6{(inp[7] & mode[0])}}, inp[7:6]};
               3'b111: out = {{7{(inp[7] & mode[0])}}, inp[7]};
               default: out = inp;
           endcase
       end
    end
endmodule
