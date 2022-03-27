// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Mar 27 22:52:16 2022
// Host        : AIROLDI01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/dev/reti-logiche-2022/Progetto.sim/sim_1/synth/func/xsim/project_tb_func_synth.v
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module datapath
   (o_address_OBUF,
    D,
    Q,
    i_rst_IBUF,
    \o_address[2] ,
    i_start_IBUF,
    \reg_words_reg[7]_0 ,
    CLK);
  output [9:0]o_address_OBUF;
  output [1:0]D;
  input [6:0]Q;
  input i_rst_IBUF;
  input \o_address[2] ;
  input i_start_IBUF;
  input [7:0]\reg_words_reg[7]_0 ;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire [6:0]Q;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire leqOp;
  wire leqOp_carry_i_1_n_0;
  wire leqOp_carry_i_2_n_0;
  wire leqOp_carry_i_3_n_0;
  wire leqOp_carry_i_4_n_0;
  wire leqOp_carry_i_5_n_0;
  wire leqOp_carry_i_6_n_0;
  wire leqOp_carry_i_7_n_0;
  wire leqOp_carry_i_8_n_0;
  wire leqOp_carry_n_1;
  wire leqOp_carry_n_2;
  wire leqOp_carry_n_3;
  wire \o_address[2] ;
  wire [9:0]o_address_OBUF;
  wire \o_address_OBUF[10]_inst_i_2_n_0 ;
  wire \o_address_OBUF[4]_inst_i_2_n_0 ;
  wire \o_address_OBUF[5]_inst_i_2_n_0 ;
  wire \o_address_OBUF[7]_inst_i_2_n_0 ;
  wire [7:3]plusOp__0;
  wire \reg_count[0]_i_1__0_n_0 ;
  wire \reg_count[1]_i_1__0_n_0 ;
  wire \reg_count[2]_i_1__0_n_0 ;
  wire \reg_count[6]_i_2_n_0 ;
  wire \reg_count[7]_i_3_n_0 ;
  wire reg_count_load;
  wire [7:0]reg_count_reg;
  wire [7:0]reg_words;
  wire [7:0]\reg_words_reg[7]_0 ;
  wire [3:0]NLW_leqOp_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_cur_state[4]_i_1 
       (.I0(Q[3]),
        .I1(i_start_IBUF),
        .I2(leqOp),
        .I3(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cur_state[5]_i_1 
       (.I0(leqOp),
        .I1(Q[2]),
        .O(D[1]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 leqOp_carry
       (.CI(1'b0),
        .CO({leqOp,leqOp_carry_n_1,leqOp_carry_n_2,leqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({leqOp_carry_i_1_n_0,leqOp_carry_i_2_n_0,leqOp_carry_i_3_n_0,leqOp_carry_i_4_n_0}),
        .O(NLW_leqOp_carry_O_UNCONNECTED[3:0]),
        .S({leqOp_carry_i_5_n_0,leqOp_carry_i_6_n_0,leqOp_carry_i_7_n_0,leqOp_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0002020300020002)) 
    leqOp_carry_i_1
       (.I0(reg_words[7]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[7]),
        .I4(reg_count_reg[6]),
        .I5(reg_words[6]),
        .O(leqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0002000202030002)) 
    leqOp_carry_i_2
       (.I0(reg_words[5]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[5]),
        .I4(reg_words[4]),
        .I5(reg_count_reg[4]),
        .O(leqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002000202030002)) 
    leqOp_carry_i_3
       (.I0(reg_words[3]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[3]),
        .I4(reg_words[2]),
        .I5(reg_count_reg[2]),
        .O(leqOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0002020300020002)) 
    leqOp_carry_i_4
       (.I0(reg_words[1]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .I5(reg_words[0]),
        .O(leqOp_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hCCCCCC9000000009)) 
    leqOp_carry_i_5
       (.I0(reg_count_reg[7]),
        .I1(reg_words[7]),
        .I2(reg_count_reg[6]),
        .I3(i_rst_IBUF),
        .I4(Q[0]),
        .I5(reg_words[6]),
        .O(leqOp_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hCCCCCC9000000009)) 
    leqOp_carry_i_6
       (.I0(reg_count_reg[5]),
        .I1(reg_words[5]),
        .I2(reg_count_reg[4]),
        .I3(i_rst_IBUF),
        .I4(Q[0]),
        .I5(reg_words[4]),
        .O(leqOp_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hCCCCCC9000000009)) 
    leqOp_carry_i_7
       (.I0(reg_count_reg[3]),
        .I1(reg_words[3]),
        .I2(reg_count_reg[2]),
        .I3(i_rst_IBUF),
        .I4(Q[0]),
        .I5(reg_words[2]),
        .O(leqOp_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hCCCCCC9000000009)) 
    leqOp_carry_i_8
       (.I0(reg_count_reg[1]),
        .I1(reg_words[1]),
        .I2(reg_count_reg[0]),
        .I3(i_rst_IBUF),
        .I4(Q[0]),
        .I5(reg_words[0]),
        .O(leqOp_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'hFD04)) 
    \o_address_OBUF[0]_inst_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[0]),
        .O(o_address_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \o_address_OBUF[10]_inst_i_1 
       (.I0(reg_count_reg[6]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .I3(reg_count_reg[5]),
        .I4(\o_address_OBUF[10]_inst_i_2_n_0 ),
        .I5(\o_address[2] ),
        .O(o_address_OBUF[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8880)) 
    \o_address_OBUF[10]_inst_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[2]),
        .I2(reg_count_reg[1]),
        .I3(reg_count_reg[0]),
        .I4(\o_address_OBUF[7]_inst_i_2_n_0 ),
        .I5(reg_count_reg[4]),
        .O(\o_address_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF11F00000110)) 
    \o_address_OBUF[1]_inst_i_1 
       (.I0(reg_count_reg[0]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(i_rst_IBUF),
        .I5(reg_count_reg[1]),
        .O(o_address_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFCFFF3AAAAAAAA)) 
    \o_address_OBUF[2]_inst_i_1 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[0]),
        .I2(Q[0]),
        .I3(i_rst_IBUF),
        .I4(reg_count_reg[1]),
        .I5(\o_address[2] ),
        .O(o_address_OBUF[2]));
  LUT6 #(
    .INIT(64'h0506FFFF05060000)) 
    \o_address_OBUF[3]_inst_i_1 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[1]),
        .I2(\o_address_OBUF[7]_inst_i_2_n_0 ),
        .I3(reg_count_reg[0]),
        .I4(\o_address[2] ),
        .I5(reg_count_reg[3]),
        .O(o_address_OBUF[3]));
  LUT6 #(
    .INIT(64'h01FEFFFF01FE0000)) 
    \o_address_OBUF[4]_inst_i_1 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[3]),
        .I3(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I4(\o_address[2] ),
        .I5(reg_count_reg[4]),
        .O(o_address_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFAFFF8)) 
    \o_address_OBUF[4]_inst_i_2 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[1]),
        .I2(i_rst_IBUF),
        .I3(Q[0]),
        .I4(reg_count_reg[0]),
        .O(\o_address_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE01FFFFFE010000)) 
    \o_address_OBUF[5]_inst_i_1 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[4]),
        .I3(\o_address_OBUF[5]_inst_i_2_n_0 ),
        .I4(\o_address[2] ),
        .I5(reg_count_reg[5]),
        .O(o_address_OBUF[5]));
  LUT6 #(
    .INIT(64'hFFFFFFE0FFFFFF00)) 
    \o_address_OBUF[5]_inst_i_2 
       (.I0(reg_count_reg[0]),
        .I1(reg_count_reg[1]),
        .I2(reg_count_reg[2]),
        .I3(Q[0]),
        .I4(i_rst_IBUF),
        .I5(reg_count_reg[3]),
        .O(\o_address_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE01FFFFFE010000)) 
    \o_address_OBUF[6]_inst_i_1 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[5]),
        .I3(\o_address_OBUF[10]_inst_i_2_n_0 ),
        .I4(\o_address[2] ),
        .I5(reg_count_reg[6]),
        .O(o_address_OBUF[6]));
  LUT6 #(
    .INIT(64'hEEE1FFFFEEE10000)) 
    \o_address_OBUF[7]_inst_i_1 
       (.I0(\o_address_OBUF[7]_inst_i_2_n_0 ),
        .I1(reg_count_reg[6]),
        .I2(\o_address_OBUF[10]_inst_i_2_n_0 ),
        .I3(reg_count_reg[5]),
        .I4(\o_address[2] ),
        .I5(reg_count_reg[7]),
        .O(o_address_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \o_address_OBUF[7]_inst_i_2 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .O(\o_address_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \o_address_OBUF[9]_inst_i_1 
       (.I0(\o_address[2] ),
        .I1(reg_count_reg[6]),
        .I2(i_rst_IBUF),
        .I3(Q[0]),
        .I4(reg_count_reg[5]),
        .I5(\o_address_OBUF[10]_inst_i_2_n_0 ),
        .O(o_address_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \reg_count[0]_i_1__0 
       (.I0(reg_count_reg[0]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(\reg_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0102)) 
    \reg_count[1]_i_1__0 
       (.I0(reg_count_reg[0]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[1]),
        .O(\reg_count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00070008)) 
    \reg_count[2]_i_1__0 
       (.I0(reg_count_reg[1]),
        .I1(reg_count_reg[0]),
        .I2(Q[0]),
        .I3(i_rst_IBUF),
        .I4(reg_count_reg[2]),
        .O(\reg_count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000007F00000080)) 
    \reg_count[3]_i_1 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[1]),
        .I3(Q[0]),
        .I4(i_rst_IBUF),
        .I5(reg_count_reg[3]),
        .O(plusOp__0[3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \reg_count[4]_i_1 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[1]),
        .I2(reg_count_reg[0]),
        .I3(reg_count_reg[2]),
        .I4(\o_address_OBUF[7]_inst_i_2_n_0 ),
        .I5(reg_count_reg[4]),
        .O(plusOp__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCCDCCC2)) 
    \reg_count[5]_i_1 
       (.I0(reg_count_reg[4]),
        .I1(\reg_count[6]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(i_rst_IBUF),
        .I4(reg_count_reg[5]),
        .O(plusOp__0[5]));
  LUT6 #(
    .INIT(64'hCCCCCCDFCCCCCC20)) 
    \reg_count[6]_i_1 
       (.I0(reg_count_reg[5]),
        .I1(\reg_count[6]_i_2_n_0 ),
        .I2(reg_count_reg[4]),
        .I3(Q[0]),
        .I4(i_rst_IBUF),
        .I5(reg_count_reg[6]),
        .O(plusOp__0[6]));
  LUT6 #(
    .INIT(64'h0000007F000000FF)) 
    \reg_count[6]_i_2 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[1]),
        .I3(Q[0]),
        .I4(i_rst_IBUF),
        .I5(reg_count_reg[3]),
        .O(\reg_count[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[6]),
        .O(reg_count_load));
  LUT6 #(
    .INIT(64'hFFFA0006FFFA000A)) 
    \reg_count[7]_i_2 
       (.I0(reg_count_reg[7]),
        .I1(reg_count_reg[6]),
        .I2(i_rst_IBUF),
        .I3(Q[0]),
        .I4(\reg_count[7]_i_3_n_0 ),
        .I5(reg_count_reg[5]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h00007FFF0000FFFF)) 
    \reg_count[7]_i_3 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[1]),
        .I2(reg_count_reg[0]),
        .I3(reg_count_reg[2]),
        .I4(\o_address_OBUF[7]_inst_i_2_n_0 ),
        .I5(reg_count_reg[4]),
        .O(\reg_count[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[0] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count[0]_i_1__0_n_0 ),
        .Q(reg_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[1] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count[1]_i_1__0_n_0 ),
        .Q(reg_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[2] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count[2]_i_1__0_n_0 ),
        .Q(reg_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[3] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp__0[3]),
        .Q(reg_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[4] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp__0[4]),
        .Q(reg_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[5] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp__0[5]),
        .Q(reg_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[6] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp__0[6]),
        .Q(reg_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[7] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp__0[7]),
        .Q(reg_count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_words_reg[0] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [0]),
        .Q(reg_words[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_words_reg[1] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [1]),
        .Q(reg_words[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_words_reg[2] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [2]),
        .Q(reg_words[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_words_reg[3] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [3]),
        .Q(reg_words[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_words_reg[4] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [4]),
        .Q(reg_words[4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_words_reg[5] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [5]),
        .Q(reg_words[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_words_reg[6] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [6]),
        .Q(reg_words[6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_words_reg[7] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [7]),
        .Q(reg_words[7]));
endmodule

(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_start,
    i_rst,
    i_data,
    o_address,
    o_done,
    o_en,
    o_we,
    o_data);
  input i_clk;
  input i_start;
  input i_rst;
  input [7:0]i_data;
  output [15:0]o_address;
  output o_done;
  output o_en;
  output o_we;
  output [7:0]o_data;

  wire DATAPATH0_n_10;
  wire DATAPATH0_n_11;
  wire \FSM_onehot_cur_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_cur_state[3]_i_1_n_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  wire \FSM_onehot_cur_state_reg_n_0_[3] ;
  wire \FSM_onehot_cur_state_reg_n_0_[6] ;
  wire \FSM_onehot_cur_state_reg_n_0_[9] ;
  wire SERIALIZER0_n_0;
  wire SERIALIZER0_n_1;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_data;
  wire [7:0]i_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire mux_count_rst;
  wire [1:0]mux_rw_addr_sel;
  wire [15:0]o_address;
  wire [10:0]o_address_OBUF;
  wire \o_address_OBUF[10]_inst_i_3_n_0 ;
  wire [7:0]o_data;
  wire o_done;
  wire o_done_OBUF;
  wire o_en;
  wire o_en_OBUF;
  wire o_we;
  wire o_we_OBUF;
  wire reg_in_load;
  wire reg_words_load;

  datapath DATAPATH0
       (.CLK(i_clk_IBUF_BUFG),
        .D({DATAPATH0_n_10,DATAPATH0_n_11}),
        .Q({\FSM_onehot_cur_state_reg_n_0_[9] ,mux_rw_addr_sel,o_done_OBUF,\FSM_onehot_cur_state_reg_n_0_[3] ,reg_words_load,mux_count_rst}),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .\o_address[2] (\o_address_OBUF[10]_inst_i_3_n_0 ),
        .o_address_OBUF({o_address_OBUF[10],o_address_OBUF[8:0]}),
        .\reg_words_reg[7]_0 (i_data_IBUF));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_cur_state[0]_i_1__0 
       (.I0(o_done_OBUF),
        .I1(mux_count_rst),
        .I2(i_start_IBUF),
        .O(\FSM_onehot_cur_state[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cur_state[1]_i_1__0 
       (.I0(mux_count_rst),
        .I1(i_start_IBUF),
        .O(\FSM_onehot_cur_state[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_cur_state[3]_i_1 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I1(reg_words_load),
        .O(\FSM_onehot_cur_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_cur_state[0]_i_1__0_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(mux_count_rst));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .Q(reg_words_load));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(DATAPATH0_n_11),
        .Q(o_done_OBUF));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(DATAPATH0_n_10),
        .Q(reg_in_load));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(SERIALIZER0_n_1),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(SERIALIZER0_n_0),
        .Q(mux_rw_addr_sel[0]));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(mux_rw_addr_sel[0]),
        .Q(mux_rw_addr_sel[1]));
  (* FSM_ENCODED_STATES = "read_ram:0000100000,read_ram_request:0000001000,read_words_ram_read:0000000100,read_words_ram_request:0000000010,reset:0000000001,done:0000010000,write_ram_2:0100000000,write_ram_wait:1000000000,write_ram_1:0010000000,serialize_debug:0001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(mux_rw_addr_sel[1]),
        .Q(\FSM_onehot_cur_state_reg_n_0_[9] ));
  serializer SERIALIZER0
       (.CLK(i_clk_IBUF_BUFG),
        .D({SERIALIZER0_n_0,SERIALIZER0_n_1}),
        .Q({\FSM_onehot_cur_state_reg_n_0_[6] ,reg_in_load}),
        .i_rst_IBUF(i_rst_IBUF));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_data_IBUF[0]_inst 
       (.I(i_data[0]),
        .O(i_data_IBUF[0]));
  IBUF \i_data_IBUF[1]_inst 
       (.I(i_data[1]),
        .O(i_data_IBUF[1]));
  IBUF \i_data_IBUF[2]_inst 
       (.I(i_data[2]),
        .O(i_data_IBUF[2]));
  IBUF \i_data_IBUF[3]_inst 
       (.I(i_data[3]),
        .O(i_data_IBUF[3]));
  IBUF \i_data_IBUF[4]_inst 
       (.I(i_data[4]),
        .O(i_data_IBUF[4]));
  IBUF \i_data_IBUF[5]_inst 
       (.I(i_data[5]),
        .O(i_data_IBUF[5]));
  IBUF \i_data_IBUF[6]_inst 
       (.I(i_data[6]),
        .O(i_data_IBUF[6]));
  IBUF \i_data_IBUF[7]_inst 
       (.I(i_data[7]),
        .O(i_data_IBUF[7]));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  OBUF \o_address_OBUF[0]_inst 
       (.I(o_address_OBUF[0]),
        .O(o_address[0]));
  OBUF \o_address_OBUF[10]_inst 
       (.I(o_address_OBUF[10]),
        .O(o_address[10]));
  LUT3 #(
    .INIT(8'h06)) 
    \o_address_OBUF[10]_inst_i_3 
       (.I0(mux_rw_addr_sel[0]),
        .I1(mux_rw_addr_sel[1]),
        .I2(i_rst_IBUF),
        .O(\o_address_OBUF[10]_inst_i_3_n_0 ));
  OBUF \o_address_OBUF[11]_inst 
       (.I(1'b0),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(1'b0),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(1'b0),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(1'b0),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(1'b0),
        .O(o_address[15]));
  OBUF \o_address_OBUF[1]_inst 
       (.I(o_address_OBUF[1]),
        .O(o_address[1]));
  OBUF \o_address_OBUF[2]_inst 
       (.I(o_address_OBUF[2]),
        .O(o_address[2]));
  OBUF \o_address_OBUF[3]_inst 
       (.I(o_address_OBUF[3]),
        .O(o_address[3]));
  OBUF \o_address_OBUF[4]_inst 
       (.I(o_address_OBUF[4]),
        .O(o_address[4]));
  OBUF \o_address_OBUF[5]_inst 
       (.I(o_address_OBUF[5]),
        .O(o_address[5]));
  OBUF \o_address_OBUF[6]_inst 
       (.I(o_address_OBUF[6]),
        .O(o_address[6]));
  OBUF \o_address_OBUF[7]_inst 
       (.I(o_address_OBUF[7]),
        .O(o_address[7]));
  OBUF \o_address_OBUF[8]_inst 
       (.I(o_address_OBUF[8]),
        .O(o_address[8]));
  OBUF \o_address_OBUF[9]_inst 
       (.I(o_address_OBUF[8]),
        .O(o_address[9]));
  OBUF \o_data_OBUF[0]_inst 
       (.I(1'b0),
        .O(o_data[0]));
  OBUF \o_data_OBUF[1]_inst 
       (.I(1'b0),
        .O(o_data[1]));
  OBUF \o_data_OBUF[2]_inst 
       (.I(1'b0),
        .O(o_data[2]));
  OBUF \o_data_OBUF[3]_inst 
       (.I(1'b0),
        .O(o_data[3]));
  OBUF \o_data_OBUF[4]_inst 
       (.I(1'b0),
        .O(o_data[4]));
  OBUF \o_data_OBUF[5]_inst 
       (.I(1'b0),
        .O(o_data[5]));
  OBUF \o_data_OBUF[6]_inst 
       (.I(1'b0),
        .O(o_data[6]));
  OBUF \o_data_OBUF[7]_inst 
       (.I(1'b0),
        .O(o_data[7]));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  OBUF o_en_OBUF_inst
       (.I(o_en_OBUF),
        .O(o_en));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_en_OBUF_inst_i_1
       (.I0(mux_rw_addr_sel[0]),
        .I1(mux_rw_addr_sel[1]),
        .I2(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .O(o_en_OBUF));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_we_OBUF_inst_i_1
       (.I0(mux_rw_addr_sel[1]),
        .I1(mux_rw_addr_sel[0]),
        .O(o_we_OBUF));
endmodule

module serializer
   (D,
    i_rst_IBUF,
    Q,
    CLK);
  output [1:0]D;
  input i_rst_IBUF;
  input [1:0]Q;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire \FSM_onehot_cur_state[0]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_1_n_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  wire [1:0]Q;
  wire i_rst_IBUF;
  wire [2:0]plusOp;
  wire [2:0]reg_count;
  wire \reg_count[2]_i_2_n_0 ;
  wire reg_count_load;
  wire ser_done;

  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(reg_count[2]),
        .I1(reg_count[1]),
        .I2(reg_count[0]),
        .I3(reg_count_load),
        .I4(Q[0]),
        .I5(ser_done),
        .O(\FSM_onehot_cur_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7F007F007F00)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(reg_count[2]),
        .I1(reg_count[1]),
        .I2(reg_count[0]),
        .I3(reg_count_load),
        .I4(ser_done),
        .I5(Q[0]),
        .O(\FSM_onehot_cur_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(Q[0]),
        .I1(ser_done),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cur_state[7]_i_1 
       (.I0(ser_done),
        .I1(Q[1]),
        .O(D[1]));
  (* FSM_ENCODED_STATES = "active_out2:100,stopped:001,active_out1:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_cur_state[0]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(ser_done));
  (* FSM_ENCODED_STATES = "active_out2:100,stopped:001,active_out1:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "active_out2:100,stopped:001,active_out1:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .Q(reg_count_load));
  LUT1 #(
    .INIT(2'h1)) 
    \reg_count[0]_i_1 
       (.I0(reg_count[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_count[1]_i_1 
       (.I0(reg_count[0]),
        .I1(reg_count[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \reg_count[2]_i_1 
       (.I0(reg_count[2]),
        .I1(reg_count[1]),
        .I2(reg_count[0]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_count[2]_i_2 
       (.I0(i_rst_IBUF),
        .I1(Q[0]),
        .O(\reg_count[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[0] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(\reg_count[2]_i_2_n_0 ),
        .D(plusOp[0]),
        .Q(reg_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[1] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(\reg_count[2]_i_2_n_0 ),
        .D(plusOp[1]),
        .Q(reg_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[2] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(\reg_count[2]_i_2_n_0 ),
        .D(plusOp[2]),
        .Q(reg_count[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
