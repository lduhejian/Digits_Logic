`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 21:06:05
// Design Name: 
// Module Name: sim_Register
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


module sim_Register();
    //输入
    reg CP;
    reg S1;//两个使能端，高电平有效
    reg S0;
    reg Load;
    reg D3;
    reg D2;
    reg D1;
    reg D0;
    //输出
    wire Q3;
    wire Q2;
    wire Q1;
    wire Q0;
    initial begin
        S1 = 1;
        S0 = 1;
        CP = 1;
        Load = 0;
        {D3,D2,D1,D0} = 0;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        Load = #5 1;
        {D3,D2,D1,D0} = {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;
        {D3,D2,D1,D0} = #10 {D3,D2,D1,D0}+ 1;

        
    end
    always # 5 begin
        CP = ~CP;
    end
    _74LS194_Register test_74LS194(CP,S1,S0,Load,D3,D2,D1,D0,Q3,Q2,Q1,Q0);
endmodule
