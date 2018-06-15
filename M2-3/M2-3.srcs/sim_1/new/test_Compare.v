`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 18:54:32
// Design Name: 
// Module Name: test_Compare
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


module test_Compare();
    reg [2:0] X;
    reg [2:0] Y;
    wire F1,F2,F3;
    initial begin
        X = 0;
        Y = 0;
        X = #10 1;
        X = #10 2;
        X = #10 3;
        X = #10 4;
        X = #10 5;
        X = #10 6;
        X = #10 7;
        Y = #10 1;
        X = 0;
        X = #10 1;
        X = #10 2;
        X = #10 3;
        X = #10 4;
        X = #10 5;
        X = #10 6;
        X = #10 7;
        Y = #10 2;
        X = 0;
        X = #10 1;
        X = #10 2;
        X = #10 3;
        X = #10 4;
        X = #10 5;
        X = #10 6;
        X = #10 7;
        Y = #10 3;
        X = 0;
        X = #10 1;
        X = #10 2;
        X = #10 3;
        X = #10 4;
        X = #10 5;
        X = #10 6;
        X = #10 7;   
        Y = #10 4;
        X = 0;
        X = #10 1;
        X = #10 2;
        X = #10 3;
        X = #10 4;
        X = #10 5;
        X = #10 6;
        X = #10 7;   
        Y = #10 5;
        X = 0;
        X = #10 1;
        X = #10 2;
        X = #10 3;
        X = #10 4;
        X = #10 5;
        X = #10 6;
        X = #10 7;   
        Y = #10 6;
        X = 0;
        X = #10 1;
        X = #10 2;
        X = #10 3;
        X = #10 4;
        X = #10 5;
        X = #10 6;
        X = #10 7; 
        Y = #10 7;
        X = 0;
        X = #10 1;
        X = #10 2;
        X = #10 3;
        X = #10 4;
        X = #10 5;
        X = #10 6;
        X = #10 7; 
    end
    Compare cmp_test(X,Y,F1,F2,F3);
endmodule
