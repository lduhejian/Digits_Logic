`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 16:19:30
// Design Name: 
// Module Name: Test_Counter
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


module Test_Counter();
    //��������
    reg CP;
    reg CLR;
    reg LD;
    reg M;
    reg D3;
    reg D2;
    reg D1;
    reg D0;
    //�������
    wire Q3;
    wire Q2;
    wire Q1;
    wire Q0;
    wire carry;
    
    initial begin
        CP = 0;
        CLR = 0;
        LD = 1;//��ʼ�Ȳ�����
        M = 1;
        D3 = 0;
        D2 = 0;
        D1 = 1;
        D0 = 1;
        
        //��ʼ�������岨
        LD = #10 0;
        LD = #10 1;//װ��
        M = #140 0;
 
        CLR = #150 1;
        CLR = #10 0;
    end
    always #5 begin //����Ϊ5
        CP = ~CP;
    end;
    Counter test_ct(CP,CLR,LD,M,D3,D2,D1,D0,Q3,Q2,Q1,Q0,carry);
endmodule