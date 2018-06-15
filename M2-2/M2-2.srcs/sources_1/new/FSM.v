`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/08 17:01:24
// Design Name: 
// Module Name: FSM
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


module FSM(
    input CP,
    input X,
    output Z,
    output wire[2:0] ST
    );
   // reg [2:0] state;//保存当前状态
    reg [2:0]state;
    //五个状态
    parameter ONE = 0, TWO = 1, THREE = 2, FOUR = 3, FIVE = 4;
    reg result;
    initial begin state = ONE; result = 0; end
    always @(posedge CP) begin
        case(state)
            ONE:
                begin
                if(!X) begin
                    state = ONE;
                    result = 0;
                end
                else begin
                    state = TWO;
                    result = 0;
                end
                end
            TWO:
                begin
                if(!X) begin
                    state = THREE;
                    result = 0;
                end
                else begin
                    state = TWO;
                    result = 0;
                end
                end
            THREE:
                begin
                if(!X) begin
                    state = ONE;
                    result = 0;
                end
                else begin
                    state = FOUR;
                    result = 0;
                end
                end
            FOUR:
                begin
                if(!X) begin
                    state = ONE;
                    result = 0;
                end
                else begin
                    state = FIVE;
                    result = 0;
                end
                end
            FIVE:
                begin
                    if(!X) begin
                        state = ONE;
                        result = 1;
                    end
                    else begin
                        state = ONE;
                        result = 0;
                    end
                end
        endcase
    end
    assign ST = state;
    assign Z = result;
endmodule
