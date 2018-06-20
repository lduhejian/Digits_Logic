`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/11 10:42:19
// Design Name: 
// Module Name: Mini_CPU
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


module Mini_CPU(
    input CP,
    input S1,
    input S0,
    input K,
    input Load,
    input _RA3,
    input _RA2,
    input _RA1,
    input _RA0,
    input _RB3,
    input _RB2,
    input _RB1,
    input _RB0,
    input _RC3,
    input _RC2,
    input _RC1,
    input _RC0,
    input _RD3,
    input _RD2,
    input _RD1,
    input _RD0,
    output RA3,
    output RA2,
    output RA1,
    output RA0,
    output RB3,
    output RB2,
    output RB1,
    output RB0,
    output RC3,
    output RC2,
    output RC1,
    output RC0,
    output RD3,
    output RD2,
    output RD1,
    output RD0
    );
    wire Dec_output_reverse[0:3];
    /*设置寄存器的初始值
    
    initial begin
        {A_input_init[3],A_input_init[2],A_input_init[1],A_input_init[0]} = 5;//'b0101;
        {B_input_init[3],B_input_init[2],B_input_init[1],B_input_init[0]} = 3;// 'b0011;
        {C_input_init[3],C_input_init[2],C_input_init[1],C_input_init[0]} = 12;//'b1100;
        {D_input_init[3],D_input_init[2],D_input_init[1],D_input_init[0]} = 6;//'b0110;
    end
    
    /***************************************不确定部分**********************************
    always @(posedge CP) begin
        if(!K) begin //使能端有效时
            {A_input[3],A_input[2],A_input[1],A_input[0]} <= {Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]};
            {B_input[3],B_input[2],B_input[1],B_input[0]} <= {Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]};
            {C_input[3],C_input[2],C_input[1],C_input[0]} <= {Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]};
            {D_input[3],D_input[2],D_input[1],D_input[0]} <= {Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]};
        end
        else begin
            {A_input[3],A_input[2],A_input[1],A_input[0]} <= {A_input_init[3],A_input_init[2],A_input_init[1],A_input_init[0]};
            {B_input[3],B_input[2],B_input[1],B_input[0]} <= {B_input_init[3],B_input_init[2],B_input_init[1],B_input_init[0]};
            {C_input[3],C_input[2],C_input[1],C_input[0]} <= {C_input_init[3],C_input_init[2],C_input_init[1],C_input_init[0]};
            {D_input[3],D_input[2],D_input[1],D_input[0]} <= {D_input_init[3],D_input_init[2],D_input_init[1],D_input_init[0]};
        end;
    end
    /***************************************完毕****************************************/
    /*寄存器A的输入和输出端*/
    wire A_input[0:3];
    wire A_output[0:3];
    wire RACP;//时钟端
    assign RACP = ((CP & Dec_output_reverse[0])|(CP & Load));
    _74LS194_Register A_Register(RACP,1,1,Load,A_input[3],A_input[2],A_input[1],A_input[0],A_output[3],A_output[2],A_output[1],A_output[0]);

    /*寄存器B的输入与输出端*/
    wire B_input[0:3];
    wire B_output[0:3];
    wire RBCP;
    assign RBCP = ((CP & Dec_output_reverse[1])|(CP & Load));
    _74LS194_Register B_Register(RBCP,1,1,Load,B_input[3],B_input[2],B_input[1],B_input[0],B_output[3],B_output[2],B_output[1],B_output[0]);
    
    /*寄存器C的输入和输出端*/
    reg C_input_init[0:3];//存放寄存器的初始值
    wire C_input[0:3];
    wire C_output[0:3];
    wire RCCP;
    assign RCCP = ((CP & Dec_output_reverse[2])|(CP & Load));
    _74LS194_Register C_Register(RCCP,1,1,Load,C_input[3],C_input[2],C_input[1],C_input[0],C_output[3],C_output[2],C_output[1],C_output[0]);
    
    /*寄存器D的输入和输出端*/
    reg D_input_init[0:3];//存放寄存器的初始值
    wire D_input[0:3];
    wire D_output[0:3];
    wire RDCP;
    assign RDCP = ((CP & Dec_output_reverse[3])|(CP & Load));
    _74LS194_Register D_Register(RDCP,1,1,Load,D_input[3],D_input[2],D_input[1],D_input[0],D_output[3],D_output[2],D_output[1],D_output[0]);
   
    /*B寄存器的取补码操作（用异或实现)*/
    wire B_output_XOR[0:3];wire C0;//加法器进位端
    assign B_output_XOR[3] = (Dec_output_reverse[1] ^ B_output[3]);
    assign B_output_XOR[2] = (Dec_output_reverse[1] ^ B_output[2]);
    assign B_output_XOR[1] = (Dec_output_reverse[1] ^ B_output[1]);
    assign B_output_XOR[0] = (Dec_output_reverse[1] ^ B_output[0]);
    assign C0 = Dec_output_reverse[1];
    
    /*加法器*/
    wire Adder_F[3:0];
    _74LS283_Adder Adder(A_output[3],A_output[2],A_output[1],A_output[0],B_output_XOR[3], B_output_XOR[2],B_output_XOR[1],B_output_XOR[0],C0,Adder_F[3],Adder_F[2],Adder_F[1],Adder_F[0]);
    
    /*C寄存器的与运算输出*/
    wire C_output_AND[0:3];
    assign C_output_AND[3] = (A_output[3] & C_output[3]);
    assign C_output_AND[2] = (A_output[2] & C_output[2]);
    assign C_output_AND[1] = (A_output[1] & C_output[1]);
    assign C_output_AND[0] = (A_output[0] & C_output[0]);
    
    /*D寄存器的异或运算*/
    wire D_output_XOR[0:3];
    assign D_output_XOR[3] = (A_output[3] ^ D_output[3]);
    assign D_output_XOR[2] = (A_output[2] ^ D_output[2]);
    assign D_output_XOR[1] = (A_output[1] ^ D_output[1]);
    assign D_output_XOR[0] = (A_output[0] ^ D_output[0]);
    
    /*四个多路选择器*/
    wire Mux_output[0:3];
    /*第四个多路选择器*/
    wire Mux_4_input[0:3];
    wire A_4[0:1];
    wire G_4;
    assign G_4 = K;
    assign {A_4[1],A_4[0]} = {S1,S0};
    assign Mux_4_input[0] = Adder_F[3];
    assign Mux_4_input[1] = Adder_F[3];
    assign Mux_4_input[2] = C_output_AND[3];
    assign Mux_4_input[3] = D_output_XOR[3];
    _74LS153_MUX Mux_4(G_4,A_4[1],A_4[0],Mux_4_input[0],Mux_4_input[1],Mux_4_input[2],Mux_4_input[3],Mux_output[3]);
    
    /*第三个多路选择器*/
    wire Mux_3_input[0:3];
    wire A_3[0:1];
    wire G_3;
    assign G_3 = K;
    assign {A_3[1],A_3[0]} = {S1,S0};
    assign Mux_3_input[0] = Adder_F[2];
    assign Mux_3_input[1] = Adder_F[2];
    assign Mux_3_input[2] = C_output_AND[2];
    assign Mux_3_input[3] = D_output_XOR[2];
    _74LS153_MUX Mux_3(G_4,A_3[1],A_3[0],Mux_3_input[0],Mux_3_input[1],Mux_3_input[2],Mux_3_input[3],Mux_output[2]);
    
    /*第二个多路选择器*/
    wire Mux_2_input[0:3];
    wire A_2[0:1];
    wire G_2;
    assign G_2 = K;
    assign {A_2[1],A_2[0]} = {S1,S0};
    assign Mux_2_input[0] = Adder_F[1];
    assign Mux_2_input[1] = Adder_F[1];
    assign Mux_2_input[2] = C_output_AND[1];
    assign Mux_2_input[3] = D_output_XOR[1];
    _74LS153_MUX Mux_2(G_2,A_2[1],A_2[0],Mux_2_input[0],Mux_2_input[1],Mux_2_input[2],Mux_2_input[3],Mux_output[1]);
    
    /*第一个多路选择器*/
    wire Mux_1_input[0:3];
    wire A_1[0:1];
    wire G_1;
    assign G_1 = K;
    assign {A_1[1],A_1[0]} = {S1,S0};
    assign Mux_1_input[0] = Adder_F[0];
    assign Mux_1_input[1] = Adder_F[0];
    assign Mux_1_input[2] = C_output_AND[0];
    assign Mux_1_input[3] = D_output_XOR[0];
    _74LS153_MUX Mux_1(G_1,A_1[1],A_1[0],Mux_1_input[0],Mux_1_input[1],Mux_1_input[2],Mux_1_input[3],Mux_output[0]);
    
    /*处理寄存器的输入端*/
    Two_MUX Two_MUX_A(Load,{_RA3,_RA2,_RA1,_RA0},{Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]},{A_input[3],A_input[2],A_input[1],A_input[0]});
    Two_MUX Two_MUX_B(Load,{_RB3,_RB2,_RB1,_RB0},{Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]},{B_input[3],B_input[2],B_input[1],B_input[0]});
    Two_MUX Two_MUX_C(Load,{_RC3,_RC2,_RC1,_RC0},{Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]},{C_input[3],C_input[2],C_input[1],C_input[0]});
    Two_MUX Two_MUX_D(Load,{_RD3,_RD2,_RD1,_RD0},{Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]},{D_input[3],D_input[2],D_input[1],D_input[0]});
    always @(CP) begin 
        $display("Register input :A_INPUT is %d,B_INPUT is %d ,C_INPUT is %d , D_INPUT is %d \n",{A_input[3],A_input[2],A_input[1],A_input[0]},{B_input[3],B_input[2],B_input[1],B_input[0]},{C_input[3],C_input[2],C_input[1],C_input[0]},{D_input[3],D_input[2],D_input[1],D_input[0]});
        $display("Register output: A_INPUT is %d,B_INPUT is %d ,C_INPUT is %d , D_INPUT is %d \n",{A_output[3],A_output[2],A_output[1],A_output[0]},{B_input[3],B_output[2],B_output[1],B_output[0]},{C_output[3],C_output[2],C_output[1],C_output[0]},{D_output[3],D_output[2],D_output[1],D_output[0]});
        $display("Load is %d",Load);
    end
/*    
    assign {A_input[3],A_input[2],A_input[1],A_input[0]} = {Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]};
    assign {B_input[3],B_input[2],B_input[1],B_input[0]} = {Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]};
    assign {C_input[3],C_input[2],C_input[1],C_input[0]} = {Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]};
    assign {D_input[3],D_input[2],D_input[1],D_input[0]} = {Mux_output[3],Mux_output[2],Mux_output[1],Mux_output[0]};
*/
    
    /*处理解码器部分*/
    wire Dec_input[0:1];
    wire Dec_G;//使能端
    wire Dec_output[0:3];//输出用wire
    assign {Dec_input[1],Dec_input[0]} = {S1,S0};
    assign Dec_G = K;
    _74LS139_Dec Decoder(Dec_G,Dec_input[1],Dec_input[0],Dec_output[3],Dec_output[2],Dec_output[1],Dec_output[0]);
    assign {Dec_output_reverse[3],Dec_output_reverse[2],Dec_output_reverse[1],Dec_output_reverse[0]} = {~Dec_output[3],~Dec_output[2],~Dec_output[1],~Dec_output[0]};
    assign {RA3,RA2,RA1,RA0} = {A_output[3],A_output[2],A_output[1],A_output[0]};
    assign {RB3,RB2,RB1,RB0} = {B_output[3],B_output[2],B_output[1],B_output[0]};
    assign {RC3,RC2,RC1,RC0} = {C_output[3],C_output[2],C_output[1],C_output[0]};
    assign {RD3,RD2,RD1,RD0} = {D_output[3],D_output[2],D_output[1],D_output[0]};
    
endmodule
