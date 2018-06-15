`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/04 17:59:02
// Design Name: 
// Module Name: T1_B
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


module T_Clock (T,C,Q,Q_bar);
	input T;
	input C;
	output Q;
	output Q_bar;
	reg state;
	initial begin state = 0;end
	always @(negedge C) begin
		if(T) 
		  state<= ~state;
		else
		  state<=state;
	end
	assign Q = state;
	assign Q_bar = ~state;
endmodule
		
		


