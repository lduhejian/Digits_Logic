`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 15:59:45
// Design Name: 
// Module Name: Counter
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

module Counter(
    input CP,
    input CLR,
    input LD,
    input M,
    input D3,
    input D2,
    input D1,
    input D0,
    output Q3,
    output Q2,
    output Q1,
    output Q0,
    output Qcc
    );
    reg [3:0] number;
    reg carry;
    initial begin carry = 0; end
    always @(posedge CP or posedge CLR) begin
        if(CLR)
            number = 0;
        else begin
            if(!LD) begin //处理Load
                number[3] = D3;
                number[2] = D2;
                number[1] = D1;
                number[0] = D0;
                carry = 1;
            end
            else begin //一般情况
                if(M) begin //加一计数
                    if(number==15) begin //处理加法进位
                        number = 0;
                        carry = 0;
                    end
                    else begin //一般情况
                        number = number+1;
                        carry = 1;
                    end
                end
                else begin //减一计数
                    if(number==0) begin //处理减一计数
                        number = 15;
                        carry = 0;
                    end
                    else begin
                        number = number-1;
                        carry = 1;
                    end
                end //M
            end //Load
        end//CLR
    end //always

    assign Q3 = number[3];
    assign Q2 = number[2];
    assign Q1 = number[1];
    assign Q0 = number[0];
    assign Qcc = carry;
endmodule
