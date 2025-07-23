`timescale 1ns / 1ps

module seq_det_1011(
    input CLK,
    input RST,
    input inp,
    output wire det
    );
    
    parameter s0 = 2'b00;
    parameter s1 = 2'b01;
    parameter s2 = 2'b10;
    parameter s3 = 2'b11;
    
    reg [1:0] state, next_state;
    
    always @(posedge CLK or posedge RST) begin
        if (RST) state <= s0;
        else state <= next_state;
    end
    
    always @(state or inp) begin
       case(state)
        s0: begin   //_
            if (inp==0) begin
                next_state = s0;
            end
            else begin 
                next_state = s1;
            end
        end
        s1: begin   //1_
            if (inp==0) begin
                next_state = s2;
            end
            else begin 
                next_state = s1;
            end
        end
        s2: begin   //10_
            if (inp==0) begin
                next_state = s0;
            end
            else begin 
                next_state = s3;
            end
        end
        s3: begin   //101
            if (inp==0) begin
                next_state = s2;
            end
            else begin 
                next_state = s1;
            end
        end
        default: next_state = s0;
       endcase
    end
    
    assign det = (state == s3 && inp == 1);
    
endmodule
