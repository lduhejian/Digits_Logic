`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/05 16:51:16
// Design Name: 
// Module Name: testB
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


module testB();
    reg X;
    reg CP;
    //Êä³ö
    wire Y;
    wire Q0;
    wire Q1;
    initial begin 
        CP = 0;
        X = 0;
        X = #20 0;
        X = #20 0;
        X = #20 0;
        X = #20 0;
        X = #20 1;
        X = #20 1;
        X = #20 1;
        X = #20 1;
        X = #20 1;
    end
    always #10 begin
        CP = ~CP;
    end
    T1_B_All TestT1(X,CP,Y,Q0,Q1);
endmodule
