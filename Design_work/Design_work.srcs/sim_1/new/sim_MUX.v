`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 10:02:58
// Design Name: 
// Module Name: sim_MUX
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


module sim_MUX();
    reg G;//低电平有效
    reg A1;
    reg A0;
    reg D0;
    reg D1;
    reg D2;
    reg D3;
    wire Y;
    
    initial begin
        G = 0;
        {A1,A0} = 0;
        {D0,D1,D2,D3} = 10;
        {A1,A0} = #10 1;
        {A1,A0} = #10 2;
        {A1,A0} = #10 3;
        {D0,D1,D2,D3} = #10 5;
        {A1,A0} = 0;
        {A1,A0} = #10 1;
        {A1,A0} = #10 2;
        {A1,A0} = #10 3;
        G = #10 0;
    end
    _74LS153_MUX test_74LS153(G,A1,A0,D0,D1,D2,D3,Y);
endmodule
