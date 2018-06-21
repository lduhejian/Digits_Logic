`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 20:33:41
// Design Name: 
// Module Name: 74LS194_Register555
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


module _74LS194_Register(
    input CP,
    input R_S1,
    input R_S0,
    input Load,
    input D3,
    input D2,
    input D1,
    input D0,
    output Q3,
    output Q2,
    output Q1,
    output Q0
    );
    reg _Q3;
    reg _Q2;
    reg _Q1;
    reg _Q0;
    initial begin
        {_Q3,_Q2,_Q1,_Q0} = 0;
    end
    always @(posedge CP) begin
        if(R_S1 & R_S0)
            {_Q3,_Q2,_Q1,_Q0} <= {D3,D2,D1,D0};
        else
            {_Q3,_Q2,_Q1,_Q0} <= 0;
    end
    assign {Q3,Q2,Q1,Q0} = {_Q3,_Q2,_Q1,_Q0};
endmodule
