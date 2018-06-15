`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/05 15:45:04
// Design Name: 
// Module Name: test
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


module test(
    );
    //输入信号
    reg clk;
    reg sig_nsyn;
    //输出信号
    wire Q1;
    wire Q2;
    wire sig_syn;
    //延迟10S进行
    initial begin
        clk = 0;
        sig_nsyn = #2 0;
        sig_nsyn = # 20 0;
        sig_nsyn = # 20 1;
        sig_nsyn = # 20 1;
        sig_nsyn = # 20 1;
        sig_nsyn = # 20 0;
        sig_nsyn = # 20 0;
        sig_nsyn = # 20 1;
    end
    always #10 begin
        clk<= ~clk;
    end
    //pipe3b pip_test(sig_nsyn,clk,Q1,Q2,sig_syn);
    pipe3b_OK pipe3b_test(sig_nsyn,clk,Q1,Q2,sig_syn);
    
endmodule
