`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 19:13:35
// Design Name: 
// Module Name: Module8_Counter
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


module Module8_Counter_Raw(CP,CLR,LD,M,D3,D2,D1,D0,Q3,Q2,Q1,Q0,Qcc);
    input CP;
    input CLR;
    input LD;
    input M;
    input D3;
    input D2;
    input D1;
    input D0;
    output Q3;
    output Q2;
    output Q1;
    output Q0;
    output Qcc;
    wire CLR_;
    assign CLR_ = (CLR | Q3 & M);
    wire Qcc_out;
    assign Qcc = ( ~(~Q3 & Q2 &Q1 & Q0 & ~M) & ~(~Q3 & ~Q2 & ~Q1 & ~Q0 & M));
    wire Q3_out;
    assign Q3 = (~M & Q3_out) & (M);
    Counter M8Counter(CP,CLR_,LD,M,D3,D2,D1,D0,Q3_out,Q2,Q1,Q0,Qcc_out);
    
endmodule
