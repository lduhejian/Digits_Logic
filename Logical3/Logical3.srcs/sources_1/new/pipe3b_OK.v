`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/05 16:40:02
// Design Name: 
// Module Name: pipe3b_OK
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



module pipe3b_OK(sig_nsyn,clk,q1,q2,sig_syn);
    input sig_nsyn;
    input clk;
    output reg q1;
    output reg q2;
    output reg sig_syn;
    always @(posedge clk) begin
        sig_syn<=q2;
        q2<=q1;
        q1<=sig_nsyn;
    end  
endmodule
