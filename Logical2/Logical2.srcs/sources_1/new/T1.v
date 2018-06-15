`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/05 09:40:56
// Design Name: 
// Module Name: T1
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


module T1(X,Z,Q1,Q2,Q3,Q4);
    input X;
    output Z;
    output Q1;
    output Q2;
    output Q3;
    output Q4;
    wire Q4;
    wire Q4_bar;
    wire Q3;
    wire Q2;
    wire Q1;
    assign Z = (Q4 & Q1 & X);
    assign L1 = (Q3 & Q2);
    J_K JK1(L1,1,Q1,Q4);
    assign Q4_bar = ~Q4;
    J_K JK2(1,1,Q2,Q3);
    J_K JK3(Q4_bar,1,Q1,Q2);
    J_K JK4(1,1,X,Q1);
    
endmodule
