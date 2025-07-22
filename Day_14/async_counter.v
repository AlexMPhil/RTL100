`timescale 1ns / 1ps

module async_counter(
    input CLK,
    output [3:0] Out
    );
    wire [3:0] hold;
    wire [3:0] res;
    
    tff t1(.CLK(CLK),.T(1),.Q(res[0]),.Qbar(hold[0]));
    tff t2(.CLK(hold[0]),.T(1),.Q(res[1]),.Qbar(hold[1]));
    tff t3(.CLK(hold[1]),.T(1),.Q(res[2]),.Qbar(hold[2]));
    tff t4(.CLK(hold[2]),.T(1),.Q(res[3]),.Qbar(hold[3]));
    
    assign Out=res;
    
endmodule
