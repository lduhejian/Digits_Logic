`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/05 21:31:25
// Design Name: 
// Module Name: test
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


module test(
    );
    reg X;
    wire Z;
    wire Q4;
    wire Q3;
    wire Q2;
    wire Q1;
    initial begin X = 0;end
    always #30 begin
        X = ~X;
    end
    T1 TTT(X,Z,Q1,Q2,Q3,Q4);
endmodule
