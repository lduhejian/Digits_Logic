`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/15 08:35:07
// Design Name: 
// Module Name: 7Seg_Driver
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

module divider(clk, CLK);
	input clk;                      // 系统时钟
	output CLK;                   // 分频后的时钟
	reg CLK_N;
	parameter N = 100_000_000;      // 1Hz的时钟,N=fclk/fclk_N
	reg [31:0] counter;             /* 计数器变量，通过计数实现分频。当计数器从0计数到(N/2-1)时，输出时钟翻转，计数器清零 */
	always @(posedge clk)  begin    // 时钟上升沿
		if(counter==N)
			begin
			CLK_N <= ~CLK_N;
			counter=0;
		    end
	   else begin
	       counter = counter+1;
	   end
	end 
	assign CLK=CLK_N;                          
endmodule