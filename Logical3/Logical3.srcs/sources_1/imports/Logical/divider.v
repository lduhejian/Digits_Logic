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
	input clk;                      // ϵͳʱ��
	output CLK;                   // ��Ƶ���ʱ��
	reg CLK_N;
	parameter N = 100_000_000;      // 1Hz��ʱ��,N=fclk/fclk_N
	reg [31:0] counter;             /* ������������ͨ������ʵ�ַ�Ƶ������������0������(N/2-1)ʱ�����ʱ�ӷ�ת������������ */
	always @(posedge clk)  begin    // ʱ��������
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