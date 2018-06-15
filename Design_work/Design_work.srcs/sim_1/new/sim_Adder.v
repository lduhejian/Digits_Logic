`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 21:29:14
// Design Name: 
// Module Name: sim_Adder
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


module sim_Adder();
    // ‰»Î
    reg A4;
    reg A3;
    reg A2;
    reg A1;
    reg B4;
    reg B3;
    reg B2;
    reg B1;
    reg C0;
    // ‰≥ˆ
    wire F4;
    wire F3;
    wire F2;
    wire F1;
    initial begin
       {A4,A3,A2,A1} = 0;
       {B4,B3,B2,B1} = 0;
       C0 = 0;
       {B4,B3,B2,B1} = #160 1;
       {B4,B3,B2,B1} = #320 2;
       {B4,B3,B2,B1} = #480 3;
       {B4,B3,B2,B1} = #640 3;
       {B4,B3,B2,B1} = #800 4;
   end
    always #10 begin
        {A4,A3,A2,A1} <= {A4,A3,A2,A1}+1;
    end
    always #5 begin
        C0 = ~C0;
    end
    _74LS283_Adder test_74LS283(A4,A3,A2,A1,B4,B3,B2,B1,C0,F4,F3,F2,F1);
endmodule
