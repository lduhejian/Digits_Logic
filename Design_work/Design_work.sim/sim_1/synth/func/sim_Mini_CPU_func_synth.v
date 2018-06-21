// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Thu Jun 21 17:23:35 2018
// Host        : DESKTOP-BLPUINO running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Administor/Desktop/Logical/Design_work/Design_work.sim/sim_1/synth/func/sim_Mini_CPU_func_synth.v
// Design      : Mini_CPU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Mini_CPU
   (CP,
    S1,
    S0,
    K,
    Load,
    _RA3,
    _RA2,
    _RA1,
    _RA0,
    _RB3,
    _RB2,
    _RB1,
    _RB0,
    _RC3,
    _RC2,
    _RC1,
    _RC0,
    _RD3,
    _RD2,
    _RD1,
    _RD0,
    RA3,
    RA2,
    RA1,
    RA0,
    RB3,
    RB2,
    RB1,
    RB0,
    RC3,
    RC2,
    RC1,
    RC0,
    RD3,
    RD2,
    RD1,
    RD0);
  input CP;
  input S1;
  input S0;
  input K;
  input Load;
  input _RA3;
  input _RA2;
  input _RA1;
  input _RA0;
  input _RB3;
  input _RB2;
  input _RB1;
  input _RB0;
  input _RC3;
  input _RC2;
  input _RC1;
  input _RC0;
  input _RD3;
  input _RD2;
  input _RD1;
  input _RD0;
  output RA3;
  output RA2;
  output RA1;
  output RA0;
  output RB3;
  output RB2;
  output RB1;
  output RB0;
  output RC3;
  output RC2;
  output RC1;
  output RC0;
  output RD3;
  output RD2;
  output RD1;
  output RD0;

  wire B_Register_n_4;
  wire B_Register_n_5;
  wire \B_input[1] ;
  wire \B_input[2] ;
  wire \B_input[3] ;
  wire CP;
  wire CP_IBUF;
  wire \C_input[1] ;
  wire \C_input[2] ;
  wire \C_input[3] ;
  wire D_Register_n_4;
  wire D_Register_n_5;
  wire D_Register_n_6;
  wire D_Register_n_7;
  wire \D_input[1] ;
  wire \D_input[2] ;
  wire \D_input[3] ;
  wire K;
  wire K_IBUF;
  wire Load;
  wire Load_IBUF;
  wire RA0;
  wire RA0_OBUF;
  wire RA1;
  wire RA1_OBUF;
  wire RA2;
  wire RA2_OBUF;
  wire RA3;
  wire RA3_OBUF;
  wire RB0;
  wire RB0_OBUF;
  wire RB1;
  wire RB1_OBUF;
  wire RB2;
  wire RB2_OBUF;
  wire RB3;
  wire RB3_OBUF;
  wire RC0;
  wire RC0_OBUF;
  wire RC1;
  wire RC1_OBUF;
  wire RC2;
  wire RC2_OBUF;
  wire RC3;
  wire RC3_OBUF;
  wire RD0;
  wire RD0_OBUF;
  wire RD1;
  wire RD1_OBUF;
  wire RD2;
  wire RD2_OBUF;
  wire RD3;
  wire RD3_OBUF;
  wire S0;
  wire S0_IBUF;
  wire S1;
  wire S1_IBUF;
  wire _RA0;
  wire _RA0_IBUF;
  wire _RA1;
  wire _RA1_IBUF;
  wire _RA2;
  wire _RA2_IBUF;
  wire _RA3;
  wire _RA3_IBUF;
  wire _RB0;
  wire _RB0_IBUF;
  wire _RB1;
  wire _RB1_IBUF;
  wire _RB2;
  wire _RB2_IBUF;
  wire _RB3;
  wire _RB3_IBUF;
  wire _RC0;
  wire _RC0_IBUF;
  wire _RC1;
  wire _RC1_IBUF;
  wire _RC2;
  wire _RC2_IBUF;
  wire _RC3;
  wire _RC3_IBUF;
  wire _RD0;
  wire _RD0_IBUF;
  wire _RD1;
  wire _RD1_IBUF;
  wire _RD2;
  wire _RD2_IBUF;
  wire _RD3;
  wire _RD3_IBUF;

  _74LS194_Register A_Register
       (.\B_input[1] (\B_input[1] ),
        .\B_input[2] (\B_input[2] ),
        .\B_input[3] (\B_input[3] ),
        .CP_IBUF(CP_IBUF),
        .\C_input[1] (\C_input[1] ),
        .\C_input[2] (\C_input[2] ),
        .\C_input[3] (\C_input[3] ),
        .\D_input[1] (\D_input[1] ),
        .\D_input[2] (\D_input[2] ),
        .\D_input[3] (\D_input[3] ),
        .K_IBUF(K_IBUF),
        .Load_IBUF(Load_IBUF),
        .RA0_OBUF(RA0_OBUF),
        .RA1_OBUF(RA1_OBUF),
        .RA2_OBUF(RA2_OBUF),
        .RA3_OBUF(RA3_OBUF),
        .RB0_OBUF(RB0_OBUF),
        .RB1_OBUF(RB1_OBUF),
        .RB2_OBUF(RB2_OBUF),
        .RC2_OBUF(RC2_OBUF),
        .RC3_OBUF(RC3_OBUF),
        .RD2_OBUF(RD2_OBUF),
        .RD3_OBUF(RD3_OBUF),
        .S0_IBUF(S0_IBUF),
        .S1_IBUF(S1_IBUF),
        ._Q0_reg_0(D_Register_n_5),
        ._Q1_reg_0(B_Register_n_5),
        ._Q1_reg_1(D_Register_n_4),
        ._Q3_reg_0(B_Register_n_4),
        ._RA1_IBUF(_RA1_IBUF),
        ._RA2_IBUF(_RA2_IBUF),
        ._RA3_IBUF(_RA3_IBUF),
        ._RB1_IBUF(_RB1_IBUF),
        ._RB2_IBUF(_RB2_IBUF),
        ._RB3_IBUF(_RB3_IBUF),
        ._RC1_IBUF(_RC1_IBUF),
        ._RC2_IBUF(_RC2_IBUF),
        ._RC3_IBUF(_RC3_IBUF),
        ._RD1_IBUF(_RD1_IBUF),
        ._RD2_IBUF(_RD2_IBUF),
        ._RD3_IBUF(_RD3_IBUF));
  _74LS194_Register_0 B_Register
       (.\B_input[1] (\B_input[1] ),
        .\B_input[2] (\B_input[2] ),
        .\B_input[3] (\B_input[3] ),
        .CP_IBUF(CP_IBUF),
        .K_IBUF(K_IBUF),
        .Load_IBUF(Load_IBUF),
        .RA3_OBUF(RA3_OBUF),
        .RB0_OBUF(RB0_OBUF),
        .RB1_OBUF(RB1_OBUF),
        .RB2_OBUF(RB2_OBUF),
        .RB3_OBUF(RB3_OBUF),
        .S0_IBUF(S0_IBUF),
        .S1_IBUF(S1_IBUF),
        ._Q0_reg_0(D_Register_n_6),
        ._Q2_reg_0(B_Register_n_5),
        ._Q3_reg_0(B_Register_n_4));
  IBUF CP_IBUF_inst
       (.I(CP),
        .O(CP_IBUF));
  _74LS194_Register_1 C_Register
       (.CP_IBUF(CP_IBUF),
        .\C_input[1] (\C_input[1] ),
        .\C_input[2] (\C_input[2] ),
        .\C_input[3] (\C_input[3] ),
        .K_IBUF(K_IBUF),
        .Load_IBUF(Load_IBUF),
        .RC0_OBUF(RC0_OBUF),
        .RC1_OBUF(RC1_OBUF),
        .RC2_OBUF(RC2_OBUF),
        .RC3_OBUF(RC3_OBUF),
        .S0_IBUF(S0_IBUF),
        .S1_IBUF(S1_IBUF),
        ._Q0_reg_0(D_Register_n_7));
  _74LS194_Register_2 D_Register
       (.CP_IBUF(CP_IBUF),
        .\D_input[1] (\D_input[1] ),
        .\D_input[2] (\D_input[2] ),
        .\D_input[3] (\D_input[3] ),
        .K_IBUF(K_IBUF),
        .Load_IBUF(Load_IBUF),
        .RA0_OBUF(RA0_OBUF),
        .RA1_OBUF(RA1_OBUF),
        .RB0_OBUF(RB0_OBUF),
        .RC0_OBUF(RC0_OBUF),
        .RC1_OBUF(RC1_OBUF),
        .RD0_OBUF(RD0_OBUF),
        .RD1_OBUF(RD1_OBUF),
        .RD2_OBUF(RD2_OBUF),
        .RD3_OBUF(RD3_OBUF),
        .S0_IBUF(S0_IBUF),
        .S1_IBUF(S1_IBUF),
        ._Q0_reg_0(D_Register_n_5),
        ._Q0_reg_1(D_Register_n_6),
        ._Q0_reg_2(D_Register_n_7),
        ._Q1_reg_0(D_Register_n_4),
        ._RA0_IBUF(_RA0_IBUF),
        ._RB0_IBUF(_RB0_IBUF),
        ._RC0_IBUF(_RC0_IBUF),
        ._RD0_IBUF(_RD0_IBUF));
  IBUF K_IBUF_inst
       (.I(K),
        .O(K_IBUF));
  IBUF Load_IBUF_inst
       (.I(Load),
        .O(Load_IBUF));
  OBUF RA0_OBUF_inst
       (.I(RA0_OBUF),
        .O(RA0));
  OBUF RA1_OBUF_inst
       (.I(RA1_OBUF),
        .O(RA1));
  OBUF RA2_OBUF_inst
       (.I(RA2_OBUF),
        .O(RA2));
  OBUF RA3_OBUF_inst
       (.I(RA3_OBUF),
        .O(RA3));
  OBUF RB0_OBUF_inst
       (.I(RB0_OBUF),
        .O(RB0));
  OBUF RB1_OBUF_inst
       (.I(RB1_OBUF),
        .O(RB1));
  OBUF RB2_OBUF_inst
       (.I(RB2_OBUF),
        .O(RB2));
  OBUF RB3_OBUF_inst
       (.I(RB3_OBUF),
        .O(RB3));
  OBUF RC0_OBUF_inst
       (.I(RC0_OBUF),
        .O(RC0));
  OBUF RC1_OBUF_inst
       (.I(RC1_OBUF),
        .O(RC1));
  OBUF RC2_OBUF_inst
       (.I(RC2_OBUF),
        .O(RC2));
  OBUF RC3_OBUF_inst
       (.I(RC3_OBUF),
        .O(RC3));
  OBUF RD0_OBUF_inst
       (.I(RD0_OBUF),
        .O(RD0));
  OBUF RD1_OBUF_inst
       (.I(RD1_OBUF),
        .O(RD1));
  OBUF RD2_OBUF_inst
       (.I(RD2_OBUF),
        .O(RD2));
  OBUF RD3_OBUF_inst
       (.I(RD3_OBUF),
        .O(RD3));
  IBUF S0_IBUF_inst
       (.I(S0),
        .O(S0_IBUF));
  IBUF S1_IBUF_inst
       (.I(S1),
        .O(S1_IBUF));
  IBUF _RA0_IBUF_inst
       (.I(_RA0),
        .O(_RA0_IBUF));
  IBUF _RA1_IBUF_inst
       (.I(_RA1),
        .O(_RA1_IBUF));
  IBUF _RA2_IBUF_inst
       (.I(_RA2),
        .O(_RA2_IBUF));
  IBUF _RA3_IBUF_inst
       (.I(_RA3),
        .O(_RA3_IBUF));
  IBUF _RB0_IBUF_inst
       (.I(_RB0),
        .O(_RB0_IBUF));
  IBUF _RB1_IBUF_inst
       (.I(_RB1),
        .O(_RB1_IBUF));
  IBUF _RB2_IBUF_inst
       (.I(_RB2),
        .O(_RB2_IBUF));
  IBUF _RB3_IBUF_inst
       (.I(_RB3),
        .O(_RB3_IBUF));
  IBUF _RC0_IBUF_inst
       (.I(_RC0),
        .O(_RC0_IBUF));
  IBUF _RC1_IBUF_inst
       (.I(_RC1),
        .O(_RC1_IBUF));
  IBUF _RC2_IBUF_inst
       (.I(_RC2),
        .O(_RC2_IBUF));
  IBUF _RC3_IBUF_inst
       (.I(_RC3),
        .O(_RC3_IBUF));
  IBUF _RD0_IBUF_inst
       (.I(_RD0),
        .O(_RD0_IBUF));
  IBUF _RD1_IBUF_inst
       (.I(_RD1),
        .O(_RD1_IBUF));
  IBUF _RD2_IBUF_inst
       (.I(_RD2),
        .O(_RD2_IBUF));
  IBUF _RD3_IBUF_inst
       (.I(_RD3),
        .O(_RD3_IBUF));
endmodule

module _74LS194_Register
   (RA0_OBUF,
    RA1_OBUF,
    RA2_OBUF,
    RA3_OBUF,
    \D_input[3] ,
    \C_input[3] ,
    \B_input[3] ,
    \D_input[2] ,
    \C_input[2] ,
    \B_input[2] ,
    \D_input[1] ,
    \C_input[1] ,
    \B_input[1] ,
    _Q0_reg_0,
    _RD3_IBUF,
    Load_IBUF,
    _Q3_reg_0,
    S1_IBUF,
    _RC3_IBUF,
    _RB3_IBUF,
    _RA3_IBUF,
    K_IBUF,
    S0_IBUF,
    RD3_OBUF,
    RC3_OBUF,
    _RD2_IBUF,
    _RC2_IBUF,
    _RB2_IBUF,
    _RA2_IBUF,
    _Q1_reg_0,
    RD2_OBUF,
    RC2_OBUF,
    RB1_OBUF,
    RB2_OBUF,
    _RD1_IBUF,
    _RC1_IBUF,
    _RB1_IBUF,
    _RA1_IBUF,
    _Q1_reg_1,
    RB0_OBUF,
    CP_IBUF);
  output RA0_OBUF;
  output RA1_OBUF;
  output RA2_OBUF;
  output RA3_OBUF;
  output \D_input[3] ;
  output \C_input[3] ;
  output \B_input[3] ;
  output \D_input[2] ;
  output \C_input[2] ;
  output \B_input[2] ;
  output \D_input[1] ;
  output \C_input[1] ;
  output \B_input[1] ;
  input _Q0_reg_0;
  input _RD3_IBUF;
  input Load_IBUF;
  input _Q3_reg_0;
  input S1_IBUF;
  input _RC3_IBUF;
  input _RB3_IBUF;
  input _RA3_IBUF;
  input K_IBUF;
  input S0_IBUF;
  input RD3_OBUF;
  input RC3_OBUF;
  input _RD2_IBUF;
  input _RC2_IBUF;
  input _RB2_IBUF;
  input _RA2_IBUF;
  input _Q1_reg_0;
  input RD2_OBUF;
  input RC2_OBUF;
  input RB1_OBUF;
  input RB2_OBUF;
  input _RD1_IBUF;
  input _RC1_IBUF;
  input _RB1_IBUF;
  input _RA1_IBUF;
  input _Q1_reg_1;
  input RB0_OBUF;
  input CP_IBUF;

  wire \A_input[1] ;
  wire \A_input[2] ;
  wire \A_input[3] ;
  wire \B_input[1] ;
  wire \B_input[2] ;
  wire \B_input[3] ;
  wire CP_IBUF;
  wire \C_input[1] ;
  wire \C_input[2] ;
  wire \C_input[3] ;
  wire \D_input[1] ;
  wire \D_input[2] ;
  wire \D_input[3] ;
  wire K_IBUF;
  wire Load_IBUF;
  wire RA0_OBUF;
  wire RA1_OBUF;
  wire RA2_OBUF;
  wire RA3_OBUF;
  wire RACP;
  wire RB0_OBUF;
  wire RB1_OBUF;
  wire RB2_OBUF;
  wire RC2_OBUF;
  wire RC3_OBUF;
  wire RD2_OBUF;
  wire RD3_OBUF;
  wire S0_IBUF;
  wire S1_IBUF;
  wire _Q0_reg_0;
  wire _Q1_i_2_n_0;
  wire _Q1_i_3_n_0;
  wire _Q1_i_4_n_0;
  wire _Q1_reg_0;
  wire _Q1_reg_1;
  wire _Q2_i_2_n_0;
  wire _Q2_i_4_n_0;
  wire _Q2_i_5_n_0;
  wire _Q3_i_2_n_0;
  wire _Q3_i_4_n_0;
  wire _Q3_reg_0;
  wire _RA1_IBUF;
  wire _RA2_IBUF;
  wire _RA3_IBUF;
  wire _RB1_IBUF;
  wire _RB2_IBUF;
  wire _RB3_IBUF;
  wire _RC1_IBUF;
  wire _RC2_IBUF;
  wire _RC3_IBUF;
  wire _RD1_IBUF;
  wire _RD2_IBUF;
  wire _RD3_IBUF;

  LUT5 #(
    .INIT(32'hA0A0A0B0)) 
    _Q0_i_2__1
       (.I0(Load_IBUF),
        .I1(S0_IBUF),
        .I2(CP_IBUF),
        .I3(K_IBUF),
        .I4(S1_IBUF),
        .O(RACP));
  FDRE #(
    .INIT(1'b0)) 
    _Q0_reg
       (.C(RACP),
        .CE(1'b1),
        .D(_Q0_reg_0),
        .Q(RA0_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    _Q1_i_1
       (.I0(_RD1_IBUF),
        .I1(Load_IBUF),
        .I2(_Q1_i_2_n_0),
        .O(\D_input[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    _Q1_i_1__0
       (.I0(_RC1_IBUF),
        .I1(Load_IBUF),
        .I2(_Q1_i_2_n_0),
        .O(\C_input[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    _Q1_i_1__1
       (.I0(_RB1_IBUF),
        .I1(Load_IBUF),
        .I2(_Q1_i_2_n_0),
        .O(\B_input[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    _Q1_i_1__2
       (.I0(_RA1_IBUF),
        .I1(Load_IBUF),
        .I2(_Q1_i_2_n_0),
        .O(\A_input[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00006996)) 
    _Q1_i_2
       (.I0(_Q1_i_3_n_0),
        .I1(RB1_OBUF),
        .I2(_Q1_i_4_n_0),
        .I3(RA1_OBUF),
        .I4(S1_IBUF),
        .I5(_Q1_reg_1),
        .O(_Q1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    _Q1_i_3
       (.I0(K_IBUF),
        .I1(S0_IBUF),
        .I2(S1_IBUF),
        .O(_Q1_i_3_n_0));
  LUT5 #(
    .INIT(32'h88888B88)) 
    _Q1_i_4
       (.I0(RA0_OBUF),
        .I1(RB0_OBUF),
        .I2(K_IBUF),
        .I3(S0_IBUF),
        .I4(S1_IBUF),
        .O(_Q1_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    _Q1_reg
       (.C(RACP),
        .CE(1'b1),
        .D(\A_input[1] ),
        .Q(RA1_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    _Q2_i_1
       (.I0(_RD2_IBUF),
        .I1(Load_IBUF),
        .I2(_Q2_i_2_n_0),
        .O(\D_input[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    _Q2_i_1__0
       (.I0(_RC2_IBUF),
        .I1(Load_IBUF),
        .I2(_Q2_i_2_n_0),
        .O(\C_input[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    _Q2_i_1__1
       (.I0(_RB2_IBUF),
        .I1(Load_IBUF),
        .I2(_Q2_i_2_n_0),
        .O(\B_input[2] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    _Q2_i_1__2
       (.I0(_RA2_IBUF),
        .I1(Load_IBUF),
        .I2(_Q2_i_2_n_0),
        .O(\A_input[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008E71)) 
    _Q2_i_2
       (.I0(RA1_OBUF),
        .I1(_Q1_i_4_n_0),
        .I2(_Q1_reg_0),
        .I3(_Q2_i_4_n_0),
        .I4(S1_IBUF),
        .I5(_Q2_i_5_n_0),
        .O(_Q2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA9A5565)) 
    _Q2_i_4
       (.I0(RA2_OBUF),
        .I1(K_IBUF),
        .I2(S0_IBUF),
        .I3(S1_IBUF),
        .I4(RB2_OBUF),
        .O(_Q2_i_4_n_0));
  LUT6 #(
    .INIT(64'hBEEEAAAABAEAAAAA)) 
    _Q2_i_5
       (.I0(K_IBUF),
        .I1(RA2_OBUF),
        .I2(S0_IBUF),
        .I3(RD2_OBUF),
        .I4(S1_IBUF),
        .I5(RC2_OBUF),
        .O(_Q2_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    _Q2_reg
       (.C(RACP),
        .CE(1'b1),
        .D(\A_input[2] ),
        .Q(RA2_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBB8888B88B)) 
    _Q3_i_1
       (.I0(_RD3_IBUF),
        .I1(Load_IBUF),
        .I2(_Q3_i_2_n_0),
        .I3(_Q3_reg_0),
        .I4(S1_IBUF),
        .I5(_Q3_i_4_n_0),
        .O(\D_input[3] ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8888B88B)) 
    _Q3_i_1__0
       (.I0(_RC3_IBUF),
        .I1(Load_IBUF),
        .I2(_Q3_i_2_n_0),
        .I3(_Q3_reg_0),
        .I4(S1_IBUF),
        .I5(_Q3_i_4_n_0),
        .O(\C_input[3] ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8888B88B)) 
    _Q3_i_1__1
       (.I0(_RB3_IBUF),
        .I1(Load_IBUF),
        .I2(_Q3_i_2_n_0),
        .I3(_Q3_reg_0),
        .I4(S1_IBUF),
        .I5(_Q3_i_4_n_0),
        .O(\B_input[3] ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8888B88B)) 
    _Q3_i_1__2
       (.I0(_RA3_IBUF),
        .I1(Load_IBUF),
        .I2(_Q3_i_2_n_0),
        .I3(_Q3_reg_0),
        .I4(S1_IBUF),
        .I5(_Q3_i_4_n_0),
        .O(\A_input[3] ));
  LUT6 #(
    .INIT(64'h8FEF0E08FEF880E0)) 
    _Q3_i_2
       (.I0(RA1_OBUF),
        .I1(_Q1_i_4_n_0),
        .I2(_Q1_i_3_n_0),
        .I3(RB1_OBUF),
        .I4(RA2_OBUF),
        .I5(RB2_OBUF),
        .O(_Q3_i_2_n_0));
  LUT6 #(
    .INIT(64'hBEEEAAAABAEAAAAA)) 
    _Q3_i_4
       (.I0(K_IBUF),
        .I1(RA3_OBUF),
        .I2(S0_IBUF),
        .I3(RD3_OBUF),
        .I4(S1_IBUF),
        .I5(RC3_OBUF),
        .O(_Q3_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    _Q3_reg
       (.C(RACP),
        .CE(1'b1),
        .D(\A_input[3] ),
        .Q(RA3_OBUF),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "_74LS194_Register" *) 
module _74LS194_Register_0
   (RB0_OBUF,
    RB1_OBUF,
    RB2_OBUF,
    RB3_OBUF,
    _Q3_reg_0,
    _Q2_reg_0,
    _Q0_reg_0,
    \B_input[1] ,
    \B_input[2] ,
    \B_input[3] ,
    Load_IBUF,
    K_IBUF,
    CP_IBUF,
    S1_IBUF,
    S0_IBUF,
    RA3_OBUF);
  output RB0_OBUF;
  output RB1_OBUF;
  output RB2_OBUF;
  output RB3_OBUF;
  output _Q3_reg_0;
  output _Q2_reg_0;
  input _Q0_reg_0;
  input \B_input[1] ;
  input \B_input[2] ;
  input \B_input[3] ;
  input Load_IBUF;
  input K_IBUF;
  input CP_IBUF;
  input S1_IBUF;
  input S0_IBUF;
  input RA3_OBUF;

  wire \B_input[1] ;
  wire \B_input[2] ;
  wire \B_input[3] ;
  wire CP_IBUF;
  wire K_IBUF;
  wire Load_IBUF;
  wire RA3_OBUF;
  wire RB0_OBUF;
  wire RB1_OBUF;
  wire RB2_OBUF;
  wire RB3_OBUF;
  wire RBCP;
  wire S0_IBUF;
  wire S1_IBUF;
  wire _Q0_reg_0;
  wire _Q2_reg_0;
  wire _Q3_reg_0;

  LUT5 #(
    .INIT(32'hA0B0A0A0)) 
    _Q0_i_2__0
       (.I0(Load_IBUF),
        .I1(K_IBUF),
        .I2(CP_IBUF),
        .I3(S1_IBUF),
        .I4(S0_IBUF),
        .O(RBCP));
  FDRE #(
    .INIT(1'b0)) 
    _Q0_reg
       (.C(RBCP),
        .CE(1'b1),
        .D(_Q0_reg_0),
        .Q(RB0_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    _Q1_reg
       (.C(RBCP),
        .CE(1'b1),
        .D(\B_input[1] ),
        .Q(RB1_OBUF),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5565)) 
    _Q2_i_3
       (.I0(RB1_OBUF),
        .I1(S1_IBUF),
        .I2(S0_IBUF),
        .I3(K_IBUF),
        .O(_Q2_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    _Q2_reg
       (.C(RBCP),
        .CE(1'b1),
        .D(\B_input[2] ),
        .Q(RB2_OBUF),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFB0404FB)) 
    _Q3_i_3
       (.I0(S1_IBUF),
        .I1(S0_IBUF),
        .I2(K_IBUF),
        .I3(RB3_OBUF),
        .I4(RA3_OBUF),
        .O(_Q3_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    _Q3_reg
       (.C(RBCP),
        .CE(1'b1),
        .D(\B_input[3] ),
        .Q(RB3_OBUF),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "_74LS194_Register" *) 
module _74LS194_Register_1
   (RC0_OBUF,
    RC1_OBUF,
    RC2_OBUF,
    RC3_OBUF,
    _Q0_reg_0,
    \C_input[1] ,
    \C_input[2] ,
    \C_input[3] ,
    Load_IBUF,
    S0_IBUF,
    CP_IBUF,
    K_IBUF,
    S1_IBUF);
  output RC0_OBUF;
  output RC1_OBUF;
  output RC2_OBUF;
  output RC3_OBUF;
  input _Q0_reg_0;
  input \C_input[1] ;
  input \C_input[2] ;
  input \C_input[3] ;
  input Load_IBUF;
  input S0_IBUF;
  input CP_IBUF;
  input K_IBUF;
  input S1_IBUF;

  wire CP_IBUF;
  wire \C_input[1] ;
  wire \C_input[2] ;
  wire \C_input[3] ;
  wire K_IBUF;
  wire Load_IBUF;
  wire RC0_OBUF;
  wire RC1_OBUF;
  wire RC2_OBUF;
  wire RC3_OBUF;
  wire RCCP;
  wire S0_IBUF;
  wire S1_IBUF;
  wire _Q0_reg_0;

  LUT5 #(
    .INIT(32'hA0B0A0A0)) 
    _Q0_i_2__2
       (.I0(Load_IBUF),
        .I1(S0_IBUF),
        .I2(CP_IBUF),
        .I3(K_IBUF),
        .I4(S1_IBUF),
        .O(RCCP));
  FDRE #(
    .INIT(1'b0)) 
    _Q0_reg
       (.C(RCCP),
        .CE(1'b1),
        .D(_Q0_reg_0),
        .Q(RC0_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    _Q1_reg
       (.C(RCCP),
        .CE(1'b1),
        .D(\C_input[1] ),
        .Q(RC1_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    _Q2_reg
       (.C(RCCP),
        .CE(1'b1),
        .D(\C_input[2] ),
        .Q(RC2_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    _Q3_reg
       (.C(RCCP),
        .CE(1'b1),
        .D(\C_input[3] ),
        .Q(RC3_OBUF),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "_74LS194_Register" *) 
module _74LS194_Register_2
   (RD0_OBUF,
    RD1_OBUF,
    RD2_OBUF,
    RD3_OBUF,
    _Q1_reg_0,
    _Q0_reg_0,
    _Q0_reg_1,
    _Q0_reg_2,
    \D_input[1] ,
    \D_input[2] ,
    \D_input[3] ,
    Load_IBUF,
    K_IBUF,
    CP_IBUF,
    S1_IBUF,
    S0_IBUF,
    RA1_OBUF,
    RC1_OBUF,
    RC0_OBUF,
    RA0_OBUF,
    RB0_OBUF,
    _RA0_IBUF,
    _RB0_IBUF,
    _RC0_IBUF,
    _RD0_IBUF);
  output RD0_OBUF;
  output RD1_OBUF;
  output RD2_OBUF;
  output RD3_OBUF;
  output _Q1_reg_0;
  output _Q0_reg_0;
  output _Q0_reg_1;
  output _Q0_reg_2;
  input \D_input[1] ;
  input \D_input[2] ;
  input \D_input[3] ;
  input Load_IBUF;
  input K_IBUF;
  input CP_IBUF;
  input S1_IBUF;
  input S0_IBUF;
  input RA1_OBUF;
  input RC1_OBUF;
  input RC0_OBUF;
  input RA0_OBUF;
  input RB0_OBUF;
  input _RA0_IBUF;
  input _RB0_IBUF;
  input _RC0_IBUF;
  input _RD0_IBUF;

  wire CP_IBUF;
  wire \D_input[1] ;
  wire \D_input[2] ;
  wire \D_input[3] ;
  wire K_IBUF;
  wire Load_IBUF;
  wire RA0_OBUF;
  wire RA1_OBUF;
  wire RB0_OBUF;
  wire RC0_OBUF;
  wire RC1_OBUF;
  wire RD0_OBUF;
  wire RD1_OBUF;
  wire RD2_OBUF;
  wire RD3_OBUF;
  wire RDCP;
  wire S0_IBUF;
  wire S1_IBUF;
  wire _Q0_i_1__2_n_0;
  wire _Q0_i_3_n_0;
  wire _Q0_reg_0;
  wire _Q0_reg_1;
  wire _Q0_reg_2;
  wire _Q1_reg_0;
  wire _RA0_IBUF;
  wire _RB0_IBUF;
  wire _RC0_IBUF;
  wire _RD0_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF0EE)) 
    _Q0_i_1
       (.I0(K_IBUF),
        .I1(_Q0_i_3_n_0),
        .I2(_RA0_IBUF),
        .I3(Load_IBUF),
        .O(_Q0_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF0EE)) 
    _Q0_i_1__0
       (.I0(K_IBUF),
        .I1(_Q0_i_3_n_0),
        .I2(_RB0_IBUF),
        .I3(Load_IBUF),
        .O(_Q0_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF0EE)) 
    _Q0_i_1__1
       (.I0(K_IBUF),
        .I1(_Q0_i_3_n_0),
        .I2(_RC0_IBUF),
        .I3(Load_IBUF),
        .O(_Q0_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF0EE)) 
    _Q0_i_1__2
       (.I0(K_IBUF),
        .I1(_Q0_i_3_n_0),
        .I2(_RD0_IBUF),
        .I3(Load_IBUF),
        .O(_Q0_i_1__2_n_0));
  LUT5 #(
    .INIT(32'hB0A0A0A0)) 
    _Q0_i_2
       (.I0(Load_IBUF),
        .I1(K_IBUF),
        .I2(CP_IBUF),
        .I3(S1_IBUF),
        .I4(S0_IBUF),
        .O(RDCP));
  LUT6 #(
    .INIT(64'h740088FF74FF8800)) 
    _Q0_i_3
       (.I0(RD0_OBUF),
        .I1(S0_IBUF),
        .I2(RC0_OBUF),
        .I3(S1_IBUF),
        .I4(RA0_OBUF),
        .I5(RB0_OBUF),
        .O(_Q0_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    _Q0_reg
       (.C(RDCP),
        .CE(1'b1),
        .D(_Q0_i_1__2_n_0),
        .Q(RD0_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBEAABEAAFAAAAAAA)) 
    _Q1_i_5
       (.I0(K_IBUF),
        .I1(RD1_OBUF),
        .I2(RA1_OBUF),
        .I3(S1_IBUF),
        .I4(RC1_OBUF),
        .I5(S0_IBUF),
        .O(_Q1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    _Q1_reg
       (.C(RDCP),
        .CE(1'b1),
        .D(\D_input[1] ),
        .Q(RD1_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    _Q2_reg
       (.C(RDCP),
        .CE(1'b1),
        .D(\D_input[2] ),
        .Q(RD2_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    _Q3_reg
       (.C(RDCP),
        .CE(1'b1),
        .D(\D_input[3] ),
        .Q(RD3_OBUF),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
