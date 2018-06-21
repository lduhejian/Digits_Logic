`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 20:59:34
// Design Name: 
// Module Name: _74LS153_MUX
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


module _74LS153_MUX(G,A1,A0,D0,D1,D2,D3,Y);
    input G;//低电平有效
    input A1;
    input A0;
    input D0;
    input D1;
    input D2;
    input D3;
    output reg Y;
    always @(G or A1 or A0 or D0 or D1 or D2 or D3) begin
        if(G) begin //使能端为1（无效时）
            Y = 1;
        end
        else begin
            case ({A1,A0})
                0:begin
                    Y = D0;
                  end
                1:begin
                    Y = D1;
                  end
                2:begin
                    Y = D2;
                  end
                3:begin
                    Y = D3;
                  end
                default:
                    Y = 0;
            endcase
        end
    end
endmodule
