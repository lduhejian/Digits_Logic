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
    //����
    reg G;//ʹ�ܶ�
    reg A1;//����
    reg A0;
    wire Y3;//������͵�ƽ��Ч
    wire Y2;
    wire Y1;
    wire Y0;
    
    initial begin 
        G = 0;//��Ч
        A1 = 0;
        A0 = 0;
        {A1,A0} = #10 0;
        {A1,A0} = #10 1;
        {A1,A0} = #10 2;
        {A1,A0} = #10 3;
        {A1,A0} = #10 0;
        G = #10 1;//��Ч
        {A1,A0} = 0;
        {A1,A0} = #10 1;
        {A1,A0} = #10 2;
        {A1,A0} = #10 3;
    end
    _74LS139_Dec test_74LS194(G,A1,A0,Y3,Y2,Y1,Y0);
endmodule

