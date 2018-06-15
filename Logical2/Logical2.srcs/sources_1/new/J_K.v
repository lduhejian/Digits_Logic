`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/05 09:42:32
// Design Name: 
// Module Name: J_K
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module J_K(J,K,C,Q);
    input J;
    input K;
    input C;
    output Q;
    reg state;
    initial begin state = 0;end
    always @(negedge C) begin
        if(J && K)
            state <= ~state;
        else if (J & !K)
            state <= 1;
        else if (!J & K)
            state <= 0;
        else
            state <= state;
   end
   assign Q = state;
endmodule
