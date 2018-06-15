`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/05 10:10:04
// Design Name: 
// Module Name: T3
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


module pipe3b(
    input sig_nsyn,
    input clk,
    output q1,
    output q2,
    output sig_syn
      );
    reg q1;
    reg q2;
    reg sig_syn;
   always@(posedge clk) q2=q1;
   always@(posedge clk) sig_syn=q2;
   always@(posedge clk) q1=sig_nsyn;     
endmodule

