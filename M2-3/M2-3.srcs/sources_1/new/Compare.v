`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 18:44:15
// Design Name: 
// Module Name: Compare
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


module Compare(
    input [2:0] X,
    input [2:0] Y,
    output F1,
    output F2,
    output F3
    );
    wire LF_1,LF_2,LF_3;
    wire MF_1,MF_2,MF_3;
    wire HF_1,HF_2,HF_3;
    Bit_Compare LCmp(X[0],Y[0],LF_1,LF_2,LF_3);
    Bit_Compare MCmp(X[1],Y[1],MF_1,MF_2,MF_3);
    Bit_Compare HCmp(X[2],Y[2],HF_1,HF_2,HF_3);
    assign F1 = (HF_1 | HF_2 & MF_1 | HF_2 & MF_2 & LF_1);
    assign F2 = (LF_2 & MF_2 & HF_2);
    assign F3 = (HF_3 | HF_2 & MF_3 | HF_2 & MF_2 & LF_3);
    
endmodule
