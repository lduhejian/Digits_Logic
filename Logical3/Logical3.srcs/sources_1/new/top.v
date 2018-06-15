`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/05 21:24:41
// Design Name: 
// Module Name: top
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


module top(sig_nsyn,clk,q1,q2,sig_syn);
    input sig_nsyn;
    input clk;
    output q1;
    output q2;
    output sig_syn;
    wire CLK;
    divider DV(clk,CLK);
    pipe3b pipeok(sig_nsyn,CLK,q1,q2,sig_syn);
    
    
endmodule
