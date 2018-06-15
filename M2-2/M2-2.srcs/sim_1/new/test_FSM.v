`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 17:20:45
// Design Name: 
// Module Name: test_FSM
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


module test_FSM();
    reg CP;
    reg X;
    wire [2:0] ST;
    wire Z;
    initial begin
        CP = 1;
        X = 0;
        //开始产生波形
        X = #10 0;
        X = #10 0;
        X = #10 1;
        X = #10 1;
        X = #10 0;
        X = #10 1;
        X = #10 1;
        X = #10 0;
        X = #10 1;
        X = #10 1;
        X = #10 0;
        X = #10 1;
        X = #10 1;
        X = #10 0;
        X = #10 1;
        X = #10 0;
    end
    //周期为10的波形
    always #5 begin
        CP = ~CP;
    end
    FSM test_fsm(CP,X,Z,ST);
endmodule
