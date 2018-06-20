`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/19 08:15:22
// Design Name: 
// Module Name: Two_MUX
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

/**
当sig为1时，选择A，否则选择B
**/
module Two_MUX(sig,A,B,C);
    input sig;
    input wire[3:0] A;
    input wire[3:0] B;
    output wire [3:0] C;
    assign C = (sig)?A:B;
endmodule
