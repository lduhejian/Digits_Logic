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
    input D3,
    input D2,
    input D1,
    input D0,
    output Q3,
    output Q2,
    output Q1,
    output Q0,
    input [3:0] init
    );
    reg _Q3;
    reg _Q2;
    reg _Q1;
    reg _Q0;
    
    initial begin
        {_Q3,_Q2,_Q1,_Q0} = init;
    end
    always @(posedge CP) begin
        $display("%d",{_Q3,_Q2,_Q1,_Q0});
        if(R_S0 & R_S1) begin
            _Q3 = D3;
            _Q2 = D2;
            _Q1 = D1;
            _Q0 = D0;
        end
        else begin
            _Q3 = _Q3;
            _Q2 = _Q2;
            _Q1 = _Q1;
            _Q0 = _Q0;
        end
    end
    assign {Q3,Q2,Q1,Q0} = {_Q3,_Q2,_Q1,_Q0};
endmodule
