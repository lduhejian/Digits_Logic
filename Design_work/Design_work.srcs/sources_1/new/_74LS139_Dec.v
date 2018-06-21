`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/09 20:42:44
// Design Name: 
// Module Name: _74LS139_Dec
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


module _74LS139_Dec(G,A1,A0,Y3,Y2,Y1,Y0);
    input G;//使能端
    input A1;//输入
    input A0;
    output Y3;//输出，低电平有效
    output Y2;
    output Y1;
    output Y0;
    
    reg Y3,Y2,Y1,Y0;
    initial begin
        Y3 = 1;
        Y2 = 1;
        Y1 = 1;
        Y0 = 1;
    end
    always @(A1 or A0 or G  or Y0 or Y1 or Y2 or Y3) begin
        if(G) begin //使能端是低电平有效，当高电平时无效
            Y3 = 1;
            Y2 = 1;
            Y1 = 1;
            Y0 = 1;
        end
        else begin
            case({A1,A0}) 
                0:begin
                    Y3 = 1;
                    Y2 = 1;
                    Y1 = 1;
                    Y0 = 0;
                  end
                1:begin
                    Y3 = 1;
                    Y2 = 1;
                    Y1 = 0;
                    Y0 = 1;
                  end
                2:begin
                    Y3 = 1;
                    Y2 = 0;
                    Y1 = 1;
                    Y0 = 1;
                  end
                3:begin
                    Y3 = 0;
                    Y2 = 1;
                    Y1 = 1;
                    Y0 = 1;
                  end
                default:
                    begin
                    Y3 = 1;
                    Y2 = 1;
                    Y1 = 1;
                    Y0 = 1;
                    end
            endcase
        end
    end
endmodule
