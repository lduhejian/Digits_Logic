`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 20:53:34
// Design Name: 
// Module Name: test_Bit_Compare
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


module test_Bit_Compare(
    );
    reg X,Y;
    wire F1,F2,F3;
    initial begin 
        X = 0;
        Y = 0;
        X = #10 0;
        Y = 1;
        X = #10 1;
        Y = 0;
        X = #10 1;
        Y = 1;
    end
    Bit_Compare BCMP(X,Y,F1,F2,F3);
endmodule
