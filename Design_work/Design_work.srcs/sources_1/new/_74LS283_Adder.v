`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 20:55:20
// Design Name: 
// Module Name: _74LS283_Adder
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


module _74LS283_Adder(
    input A4,
    input A3,
    input A2,
    input A1,
    input B4,
    input B3,
    input B2,
    input B1,
    input C0,
    output F4,
    output F3,
    output F2,
    output F1
    );
    assign {F4,F3,F2,F1} = {A4,A3,A2,A1}+{B4,B3,B2,B1}+{0,0,0,C0};
endmodule
