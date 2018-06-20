`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/19 08:43:14
// Design Name: 
// Module Name: sig_Two_Mux
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


module sig_Two_Mux();
    reg[3:0] A;
    reg[3:0] B;
    reg load;
    wire [3:0] out;
    
    initial begin
        A = 3;
        B = 4;
        load = 0;
        
        load = #10 1;
        load = #10 0;
        load = #10 1;
        load = #10 0;
    end
    Two_MUX sim_Two_Mux(load,A,B,out);
endmodule
