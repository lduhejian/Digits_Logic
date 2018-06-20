`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 14:55:58
// Design Name: 
// Module Name: sim_Mini_CPU
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


module sim_Mini_CPU();
    /*输入*/
    reg CP;
    reg S1;
    reg S0;
    reg K;
    reg Load;
    /*A-D的初始值*/
    reg [3:0] REGA;
    reg [3:0] REGB;
    reg [3:0] REGC;
    reg [3:0] REGD;
    /*输出*/
    wire RA3;
    wire RA2;
    wire RA1;
    wire RA0;
    wire RB3;
    wire RB2;
    wire RB1;
    wire RB0;
    wire RC3;
    wire RC2;
    wire RC1;
    wire RC0;
    wire RD3;
    wire RD2;
    wire RD1;
    wire RD0;
    
    initial begin
        CP = 0;
        S1 = 0;
        S0 = 0;
        K = 0;//低电平有效，现在是有效
        Load = 0;
        
        REGA = 'b0101;
        REGB = 'b0011;
        REGC = 'b1100;
        REGD = 'b0110;
         //第一个周期出现在10ns处，首先装载初始值
         Load = #5 1;
        /*测试一：加法功能*/
        Load = #20 0;
        {S1,S0} = #15 1;
        
        /*测试二：减法功能*/
        {S1,S0} = #20 2;
        
        /*测试三：按位与功能*/
        {S1,S0} = #20 3;
        
        /*测试四：按位或功能*/
        {S1,S0} = #20 0;
        
        {S1,S0} = #20 1;
    end
    //时钟周期为20ns
    always #10 begin
        CP = ~CP;
    end
    Mini_CPU test_mini_cpu(CP,S1,S0,K,Load,REGA[3],REGA[2],REGA[1],REGA[0],REGB[3],REGB[2],REGB[1],REGB[0],REGC[3],REGC[2],REGC[1],REGC[0],
    REGD[3],REGD[2],REGD[1],REGD[0],RA3,RA2,RA1,RA0,RB3,RB2,RB1,RB0,RC3,RC2,RC1,RC0,RD3,RD2,RD1,RD0);
endmodule
