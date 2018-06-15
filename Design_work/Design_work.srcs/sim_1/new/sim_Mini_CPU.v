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
    /*����*/
    reg CP;
    reg S1;
    reg S0;
    reg K;
    /*���*/
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
        K = 0;//�͵�ƽ��Ч����������Ч
        /*
        ��Ĵ����ĳ�ʼ״̬Ϊ��
        A = 'b0101;
        B = 'b0011;
        C = 'b1100;
        D = 'b0110
        */
         //��һ�����ڳ�����10ns��������װ�س�ʼֵ
        /*����һ���ӷ�����*/
        {S1,S0} = #40 1;
        
        /*���Զ�����������*/
        {S1,S0} = #20 2;
        
        /*����������λ�빦��*/
        {S1,S0} = #20 3;
        
        /*�����ģ���λ����*/
        {S1,S0} = #20 0;
        
        {S1,S0} = #20 1;
    end
    //ʱ������Ϊ20ns
    always #10 begin
        CP = ~CP;
    end
    Mini_CPU test_mini_cpu(CP,S1,S0,K,RA3,RA2,RA1,RA0,RB3,RB2,RB1,RB0,RC3,RC2,RC1,RC0,RD3,RD2,RD1,RD0);
endmodule
