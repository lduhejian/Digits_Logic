`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 18:39:50
// Design Name: 
// Module Name: Bit_Compare
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


module Bit_Compare(
    input X,
    input Y,
    output F1,
    output F2,
    output F3
    );
    assign F1 = (X & ~Y);
    assign F2 = ~(X^Y);
    assign F3 = (~X & Y);
endmodule
