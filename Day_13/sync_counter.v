`timescale 1ns / 1ps

module sync_counter(
    input CLK,
    output [3:0] Out
    );
    
    wire [3:0] D;
    wire [3:0] hold;
    wire [3:0] res;
    
    assign D[0] = 1;
    assign D[1] = res[0];
    assign D[2] = res[0] & res[1];
    assign D[3] = res[0] & res[1] & res[2];
    
    tff t1(.CLK(CLK),.T(D[0]),.Q(res[0]),.Qbar(hold[0]));
    tff t2(.CLK(CLK),.T(D[1]),.Q(res[1]),.Qbar(hold[1]));
    tff t3(.CLK(CLK),.T(D[2]),.Q(res[2]),.Qbar(hold[2]));
    tff t4(.CLK(CLK),.T(D[3]),.Q(res[3]),.Qbar(hold[3]));
    
    assign Out=res;
    
endmodule
