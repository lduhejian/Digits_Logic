`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 21:21:03
// Design Name: 
// Module Name: sim_Dec
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


module sim_Dec();
    //输入
    reg G;//使能端
    reg A1;//输入
    reg A0;
    wire Y3;//输出，低电平有效
    wire Y2;
    wire Y1;
    wire Y0;
    
    initial begin 
        G = 0;//有效
        A1 = 0;
        A0 = 0;
        {A1,A0} = #10 0;
        {A1,A0} = #10 1;
        {A1,A0} = #10 2;
        {A1,A0} = #10 3;
        {A1,A0} = #10 0;
        G = #10 1;//无效
        {A1,A0} = 0;
        {A1,A0} = #10 1;
        {A1,A0} = #10 2;
        {A1,A0} = #10 3;
    end
    _74LS139_Dec test_74LS194(G,A1,A0,Y3,Y2,Y1,Y0);
endmodule

