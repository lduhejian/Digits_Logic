`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 19:40:39
// Design Name: 
// Module Name: Module8_Test
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

module Test_M8Counter();
    //测试输入
    reg CP;
    reg CLR;
    reg LD;
    reg M;
    reg D3;
    reg D2;
    reg D1;
    reg D0;
    //测试输出
    wire Q3;
    wire Q2;
    wire Q1;
    wire Q0;
    wire carry;
    
    initial begin
        CP = 0;
        CLR = 0;
        LD = 1;//初始先不加载
        M = 1;
        D3 = 0;
        D2 = 0;
        D1 = 0;
        D0 = 0;
        
        //开始仿真脉冲波
        LD = #10 0;
        LD = #10 1;//装载
        M = #140 0;
 
        CLR = #150 1;
        CLR = #10 0;
    end
    always #5 begin //周期为5
        CP = ~CP;
    end;
    Module8_Counter test_ct2(CP,CLR,LD,M,Q3,Q2,Q1,Q0,carry);
endmodule
