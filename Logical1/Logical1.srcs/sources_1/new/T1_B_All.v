`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 18:07:15
// Design Name: 
// Module Name: T1_B_All
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


module T1_B_All(X,CP,Y,Q0,Q1);
    input X;
    input CP;
    output Y;
    output Q0;
    output Q1;
    wire Q0_bar;
    wire Q1_bar;
    wire L1;  
    wire L2;
    assign Y = ~(X & Q1_bar);
    assign L2 = 1;
    T_Clock T0_CLOCK(L2,CP,Q0,Q0_bar);
    assign L1 = (Q0 ^ X);
    T_Clock T1_CLOCK(L1,CP,Q1,Q1_bar);
    
endmodule
