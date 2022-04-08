// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sat Apr  9 00:24:58 2022
// Host        : AIROLDI01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/dev/reti-logiche-2022/Progetto.sim/sim_1/synth/timing/xsim/project_tb_time_synth.v
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module convolutor
   (\FSM_sequential_cur_state_reg[2]_0 ,
    i_rst_IBUF,
    Q,
    \FSM_sequential_cur_state_reg[1]_0 ,
    E,
    CLK);
  output [2:0]\FSM_sequential_cur_state_reg[2]_0 ;
  input i_rst_IBUF;
  input [0:0]Q;
  input \FSM_sequential_cur_state_reg[1]_0 ;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_cur_state[2]_i_2_n_0 ;
  wire \FSM_sequential_cur_state_reg[1]_0 ;
  wire [2:0]\FSM_sequential_cur_state_reg[2]_0 ;
  wire [0:0]Q;
  wire i_rst_IBUF;
  wire [2:0]next_state;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(\FSM_sequential_cur_state_reg[2]_0 [0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9F60)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(\FSM_sequential_cur_state_reg[1]_0 ),
        .I1(\FSM_sequential_cur_state_reg[2]_0 [2]),
        .I2(\FSM_sequential_cur_state_reg[2]_0 [0]),
        .I3(\FSM_sequential_cur_state_reg[2]_0 [1]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(\FSM_sequential_cur_state_reg[2]_0 [1]),
        .I1(\FSM_sequential_cur_state_reg[2]_0 [0]),
        .I2(\FSM_sequential_cur_state_reg[2]_0 [2]),
        .O(next_state[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_cur_state[2]_i_2 
       (.I0(i_rst_IBUF),
        .I1(Q),
        .O(\FSM_sequential_cur_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "oo_pk2:001,oi_pk2:111,io_pk2:011,ii_pk2:101,io_pk1:010,oo_pk1:000,ii_pk1:100,oi_pk1:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .D(next_state[0]),
        .Q(\FSM_sequential_cur_state_reg[2]_0 [0]));
  (* FSM_ENCODED_STATES = "oo_pk2:001,oi_pk2:111,io_pk2:011,ii_pk2:101,io_pk1:010,oo_pk1:000,ii_pk1:100,oi_pk1:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .D(next_state[1]),
        .Q(\FSM_sequential_cur_state_reg[2]_0 [1]));
  (* FSM_ENCODED_STATES = "oo_pk2:001,oi_pk2:111,io_pk2:011,ii_pk2:101,io_pk1:010,oo_pk1:000,ii_pk1:100,oi_pk1:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .D(next_state[2]),
        .Q(\FSM_sequential_cur_state_reg[2]_0 [2]));
endmodule

module datapath
   (\reg_count_reg[0]_0 ,
    o_address_OBUF,
    D,
    \reg_out_reg[7]_0 ,
    CLK,
    i_rst_IBUF,
    S,
    Q,
    reg_count,
    i_start_IBUF,
    \reg_out_reg[7]_1 ,
    \reg_words_reg[7]_0 );
  output \reg_count_reg[0]_0 ;
  output [15:0]o_address_OBUF;
  output [1:0]D;
  output [7:0]\reg_out_reg[7]_0 ;
  input CLK;
  input i_rst_IBUF;
  input [0:0]S;
  input [8:0]Q;
  input [2:0]reg_count;
  input i_start_IBUF;
  input [7:0]\reg_out_reg[7]_1 ;
  input [7:0]\reg_words_reg[7]_0 ;

  wire CLK;
  wire [1:0]D;
  wire \FSM_sequential_cur_state[1]_i_3_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_4_n_0 ;
  wire [8:0]Q;
  wire [0:0]S;
  wire data0;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire i_rst_IBUF;
  wire i_start_IBUF;
  wire leqOp;
  wire leqOp_carry__0_i_1_n_0;
  wire leqOp_carry__0_i_2_n_0;
  wire leqOp_carry__0_i_3_n_0;
  wire leqOp_carry__0_i_4_n_0;
  wire leqOp_carry__0_n_1;
  wire leqOp_carry__0_n_2;
  wire leqOp_carry__0_n_3;
  wire leqOp_carry_i_1_n_0;
  wire leqOp_carry_i_2_n_0;
  wire leqOp_carry_i_3_n_0;
  wire leqOp_carry_i_4_n_0;
  wire leqOp_carry_i_5_n_0;
  wire leqOp_carry_i_6_n_0;
  wire leqOp_carry_i_7_n_0;
  wire leqOp_carry_i_8_n_0;
  wire leqOp_carry_n_0;
  wire leqOp_carry_n_1;
  wire leqOp_carry_n_2;
  wire leqOp_carry_n_3;
  wire [14:0]mux_count;
  wire [15:0]o_address_OBUF;
  wire \o_address_OBUF[11]_inst_i_2_n_0 ;
  wire \o_address_OBUF[11]_inst_i_2_n_1 ;
  wire \o_address_OBUF[11]_inst_i_2_n_2 ;
  wire \o_address_OBUF[11]_inst_i_2_n_3 ;
  wire \o_address_OBUF[11]_inst_i_2_n_4 ;
  wire \o_address_OBUF[11]_inst_i_2_n_5 ;
  wire \o_address_OBUF[11]_inst_i_2_n_6 ;
  wire \o_address_OBUF[11]_inst_i_2_n_7 ;
  wire \o_address_OBUF[11]_inst_i_7_n_0 ;
  wire \o_address_OBUF[11]_inst_i_8_n_0 ;
  wire \o_address_OBUF[15]_inst_i_2_n_1 ;
  wire \o_address_OBUF[15]_inst_i_2_n_2 ;
  wire \o_address_OBUF[15]_inst_i_2_n_3 ;
  wire \o_address_OBUF[15]_inst_i_2_n_4 ;
  wire \o_address_OBUF[15]_inst_i_2_n_5 ;
  wire \o_address_OBUF[15]_inst_i_2_n_6 ;
  wire \o_address_OBUF[15]_inst_i_2_n_7 ;
  wire \o_address_OBUF[3]_inst_i_2_n_0 ;
  wire \o_address_OBUF[3]_inst_i_2_n_1 ;
  wire \o_address_OBUF[3]_inst_i_2_n_2 ;
  wire \o_address_OBUF[3]_inst_i_2_n_3 ;
  wire \o_address_OBUF[3]_inst_i_2_n_4 ;
  wire \o_address_OBUF[3]_inst_i_2_n_5 ;
  wire \o_address_OBUF[3]_inst_i_2_n_6 ;
  wire \o_address_OBUF[3]_inst_i_2_n_7 ;
  wire \o_address_OBUF[3]_inst_i_6_n_0 ;
  wire \o_address_OBUF[3]_inst_i_7_n_0 ;
  wire \o_address_OBUF[7]_inst_i_2_n_0 ;
  wire \o_address_OBUF[7]_inst_i_2_n_1 ;
  wire \o_address_OBUF[7]_inst_i_2_n_2 ;
  wire \o_address_OBUF[7]_inst_i_2_n_3 ;
  wire \o_address_OBUF[7]_inst_i_2_n_4 ;
  wire \o_address_OBUF[7]_inst_i_2_n_5 ;
  wire \o_address_OBUF[7]_inst_i_2_n_6 ;
  wire \o_address_OBUF[7]_inst_i_2_n_7 ;
  wire \o_address_OBUF[7]_inst_i_6_n_0 ;
  wire \o_address_OBUF[7]_inst_i_7_n_0 ;
  wire \o_address_OBUF[7]_inst_i_8_n_0 ;
  wire [2:0]reg_count;
  wire \reg_count[0]_i_3_n_0 ;
  wire \reg_count[0]_i_4_n_0 ;
  wire \reg_count[0]_i_5_n_0 ;
  wire \reg_count[0]_i_6_n_0 ;
  wire \reg_count[12]_i_2_n_0 ;
  wire \reg_count[12]_i_3_n_0 ;
  wire \reg_count[12]_i_4_n_0 ;
  wire \reg_count[12]_i_5_n_0 ;
  wire \reg_count[4]_i_2_n_0 ;
  wire \reg_count[4]_i_3_n_0 ;
  wire \reg_count[4]_i_4_n_0 ;
  wire \reg_count[4]_i_5_n_0 ;
  wire \reg_count[8]_i_2_n_0 ;
  wire \reg_count[8]_i_3_n_0 ;
  wire \reg_count[8]_i_4_n_0 ;
  wire \reg_count[8]_i_5_n_0 ;
  wire reg_count_load;
  wire [15:0]reg_count_reg;
  wire \reg_count_reg[0]_0 ;
  wire \reg_count_reg[0]_i_2_n_0 ;
  wire \reg_count_reg[0]_i_2_n_1 ;
  wire \reg_count_reg[0]_i_2_n_2 ;
  wire \reg_count_reg[0]_i_2_n_3 ;
  wire \reg_count_reg[0]_i_2_n_4 ;
  wire \reg_count_reg[0]_i_2_n_5 ;
  wire \reg_count_reg[0]_i_2_n_6 ;
  wire \reg_count_reg[0]_i_2_n_7 ;
  wire \reg_count_reg[12]_i_1_n_1 ;
  wire \reg_count_reg[12]_i_1_n_2 ;
  wire \reg_count_reg[12]_i_1_n_3 ;
  wire \reg_count_reg[12]_i_1_n_4 ;
  wire \reg_count_reg[12]_i_1_n_5 ;
  wire \reg_count_reg[12]_i_1_n_6 ;
  wire \reg_count_reg[12]_i_1_n_7 ;
  wire \reg_count_reg[4]_i_1_n_0 ;
  wire \reg_count_reg[4]_i_1_n_1 ;
  wire \reg_count_reg[4]_i_1_n_2 ;
  wire \reg_count_reg[4]_i_1_n_3 ;
  wire \reg_count_reg[4]_i_1_n_4 ;
  wire \reg_count_reg[4]_i_1_n_5 ;
  wire \reg_count_reg[4]_i_1_n_6 ;
  wire \reg_count_reg[4]_i_1_n_7 ;
  wire \reg_count_reg[8]_i_1_n_0 ;
  wire \reg_count_reg[8]_i_1_n_1 ;
  wire \reg_count_reg[8]_i_1_n_2 ;
  wire \reg_count_reg[8]_i_1_n_3 ;
  wire \reg_count_reg[8]_i_1_n_4 ;
  wire \reg_count_reg[8]_i_1_n_5 ;
  wire \reg_count_reg[8]_i_1_n_6 ;
  wire \reg_count_reg[8]_i_1_n_7 ;
  wire \reg_in_reg_n_0_[0] ;
  wire reg_out_load;
  wire [7:0]\reg_out_reg[7]_0 ;
  wire [7:0]\reg_out_reg[7]_1 ;
  wire [7:0]reg_words;
  wire [7:0]\reg_words_reg[7]_0 ;
  wire [3:0]NLW_leqOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_leqOp_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_o_address_OBUF[15]_inst_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_reg_count_reg[12]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_cur_state[4]_i_1 
       (.I0(leqOp),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(i_start_IBUF),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cur_state[5]_i_1 
       (.I0(Q[2]),
        .I1(leqOp),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \FSM_sequential_cur_state[1]_i_3 
       (.I0(data2),
        .I1(data6),
        .I2(reg_count[1]),
        .I3(data4),
        .I4(reg_count[2]),
        .I5(data0),
        .O(\FSM_sequential_cur_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \FSM_sequential_cur_state[1]_i_4 
       (.I0(\reg_in_reg_n_0_[0] ),
        .I1(data5),
        .I2(reg_count[1]),
        .I3(data3),
        .I4(reg_count[2]),
        .I5(data7),
        .O(\FSM_sequential_cur_state[1]_i_4_n_0 ));
  MUXF7 \FSM_sequential_cur_state_reg[1]_i_2 
       (.I0(\FSM_sequential_cur_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_cur_state[1]_i_4_n_0 ),
        .O(\reg_count_reg[0]_0 ),
        .S(reg_count[0]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 leqOp_carry
       (.CI(1'b0),
        .CO({leqOp_carry_n_0,leqOp_carry_n_1,leqOp_carry_n_2,leqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({leqOp_carry_i_1_n_0,leqOp_carry_i_2_n_0,leqOp_carry_i_3_n_0,leqOp_carry_i_4_n_0}),
        .O(NLW_leqOp_carry_O_UNCONNECTED[3:0]),
        .S({leqOp_carry_i_5_n_0,leqOp_carry_i_6_n_0,leqOp_carry_i_7_n_0,leqOp_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 leqOp_carry__0
       (.CI(leqOp_carry_n_0),
        .CO({leqOp,leqOp_carry__0_n_1,leqOp_carry__0_n_2,leqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_leqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({leqOp_carry__0_i_1_n_0,leqOp_carry__0_i_2_n_0,leqOp_carry__0_i_3_n_0,leqOp_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h0001)) 
    leqOp_carry__0_i_1
       (.I0(reg_count_reg[14]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .I3(reg_count_reg[15]),
        .O(leqOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    leqOp_carry__0_i_2
       (.I0(reg_count_reg[13]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .I3(reg_count_reg[12]),
        .O(leqOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    leqOp_carry__0_i_3
       (.I0(reg_count_reg[11]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .I3(reg_count_reg[10]),
        .O(leqOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    leqOp_carry__0_i_4
       (.I0(reg_count_reg[8]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .I3(reg_count_reg[9]),
        .O(leqOp_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0103010100010000)) 
    leqOp_carry_i_1
       (.I0(reg_count_reg[7]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[6]),
        .I4(reg_words[6]),
        .I5(reg_words[7]),
        .O(leqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0103010100010000)) 
    leqOp_carry_i_2
       (.I0(reg_count_reg[5]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[4]),
        .I4(reg_words[4]),
        .I5(reg_words[5]),
        .O(leqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0103010100010000)) 
    leqOp_carry_i_3
       (.I0(reg_count_reg[3]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[2]),
        .I4(reg_words[2]),
        .I5(reg_words[3]),
        .O(leqOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0103010100010000)) 
    leqOp_carry_i_4
       (.I0(reg_count_reg[1]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(reg_count_reg[0]),
        .I4(reg_words[0]),
        .I5(reg_words[1]),
        .O(leqOp_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A09009)) 
    leqOp_carry_i_5
       (.I0(reg_words[7]),
        .I1(reg_count_reg[7]),
        .I2(reg_words[6]),
        .I3(reg_count_reg[6]),
        .I4(i_rst_IBUF),
        .I5(Q[0]),
        .O(leqOp_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A09009)) 
    leqOp_carry_i_6
       (.I0(reg_words[5]),
        .I1(reg_count_reg[5]),
        .I2(reg_words[4]),
        .I3(reg_count_reg[4]),
        .I4(i_rst_IBUF),
        .I5(Q[0]),
        .O(leqOp_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A09009)) 
    leqOp_carry_i_7
       (.I0(reg_words[3]),
        .I1(reg_count_reg[3]),
        .I2(reg_words[2]),
        .I3(reg_count_reg[2]),
        .I4(i_rst_IBUF),
        .I5(Q[0]),
        .O(leqOp_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A09009)) 
    leqOp_carry_i_8
       (.I0(reg_words[1]),
        .I1(reg_count_reg[1]),
        .I2(reg_words[0]),
        .I3(reg_count_reg[0]),
        .I4(i_rst_IBUF),
        .I5(Q[0]),
        .O(leqOp_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[0]_inst_i_1 
       (.I0(reg_count_reg[0]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[3]_inst_i_2_n_7 ),
        .O(o_address_OBUF[0]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[10]_inst_i_1 
       (.I0(reg_count_reg[10]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[11]_inst_i_2_n_5 ),
        .O(o_address_OBUF[10]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[11]_inst_i_1 
       (.I0(reg_count_reg[11]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[11]_inst_i_2_n_4 ),
        .O(o_address_OBUF[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_address_OBUF[11]_inst_i_2 
       (.CI(\o_address_OBUF[7]_inst_i_2_n_0 ),
        .CO({\o_address_OBUF[11]_inst_i_2_n_0 ,\o_address_OBUF[11]_inst_i_2_n_1 ,\o_address_OBUF[11]_inst_i_2_n_2 ,\o_address_OBUF[11]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,mux_count[8:7]}),
        .O({\o_address_OBUF[11]_inst_i_2_n_4 ,\o_address_OBUF[11]_inst_i_2_n_5 ,\o_address_OBUF[11]_inst_i_2_n_6 ,\o_address_OBUF[11]_inst_i_2_n_7 }),
        .S({mux_count[10:9],\o_address_OBUF[11]_inst_i_7_n_0 ,\o_address_OBUF[11]_inst_i_8_n_0 }));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[11]_inst_i_3 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[8]),
        .O(mux_count[8]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[11]_inst_i_4 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[7]),
        .O(mux_count[7]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[11]_inst_i_5 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[10]),
        .O(mux_count[10]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[11]_inst_i_6 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[9]),
        .O(mux_count[9]));
  LUT3 #(
    .INIT(8'h01)) 
    \o_address_OBUF[11]_inst_i_7 
       (.I0(reg_count_reg[8]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(\o_address_OBUF[11]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \o_address_OBUF[11]_inst_i_8 
       (.I0(reg_count_reg[7]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(\o_address_OBUF[11]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[12]_inst_i_1 
       (.I0(reg_count_reg[12]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[15]_inst_i_2_n_7 ),
        .O(o_address_OBUF[12]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[13]_inst_i_1 
       (.I0(reg_count_reg[13]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[15]_inst_i_2_n_6 ),
        .O(o_address_OBUF[13]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[14]_inst_i_1 
       (.I0(reg_count_reg[14]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[15]_inst_i_2_n_5 ),
        .O(o_address_OBUF[14]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[15]_inst_i_1 
       (.I0(reg_count_reg[15]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[15]_inst_i_2_n_4 ),
        .O(o_address_OBUF[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_address_OBUF[15]_inst_i_2 
       (.CI(\o_address_OBUF[11]_inst_i_2_n_0 ),
        .CO({\NLW_o_address_OBUF[15]_inst_i_2_CO_UNCONNECTED [3],\o_address_OBUF[15]_inst_i_2_n_1 ,\o_address_OBUF[15]_inst_i_2_n_2 ,\o_address_OBUF[15]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\o_address_OBUF[15]_inst_i_2_n_4 ,\o_address_OBUF[15]_inst_i_2_n_5 ,\o_address_OBUF[15]_inst_i_2_n_6 ,\o_address_OBUF[15]_inst_i_2_n_7 }),
        .S(mux_count[14:11]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[15]_inst_i_3 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[14]),
        .O(mux_count[14]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[15]_inst_i_4 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[13]),
        .O(mux_count[13]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[15]_inst_i_5 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[12]),
        .O(mux_count[12]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[15]_inst_i_6 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[11]),
        .O(mux_count[11]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[1]_inst_i_1 
       (.I0(reg_count_reg[1]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[3]_inst_i_2_n_6 ),
        .O(o_address_OBUF[1]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[2]_inst_i_1 
       (.I0(reg_count_reg[2]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[3]_inst_i_2_n_5 ),
        .O(o_address_OBUF[2]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[3]_inst_i_1 
       (.I0(reg_count_reg[3]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[3]_inst_i_2_n_4 ),
        .O(o_address_OBUF[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_address_OBUF[3]_inst_i_2 
       (.CI(1'b0),
        .CO({\o_address_OBUF[3]_inst_i_2_n_0 ,\o_address_OBUF[3]_inst_i_2_n_1 ,\o_address_OBUF[3]_inst_i_2_n_2 ,\o_address_OBUF[3]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mux_count[1:0],1'b0}),
        .O({\o_address_OBUF[3]_inst_i_2_n_4 ,\o_address_OBUF[3]_inst_i_2_n_5 ,\o_address_OBUF[3]_inst_i_2_n_6 ,\o_address_OBUF[3]_inst_i_2_n_7 }),
        .S({mux_count[2],\o_address_OBUF[3]_inst_i_6_n_0 ,\o_address_OBUF[3]_inst_i_7_n_0 ,S}));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[3]_inst_i_3 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[1]),
        .O(mux_count[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[3]_inst_i_4 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[0]),
        .O(mux_count[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[3]_inst_i_5 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[2]),
        .O(mux_count[2]));
  LUT3 #(
    .INIT(8'h01)) 
    \o_address_OBUF[3]_inst_i_6 
       (.I0(reg_count_reg[1]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(\o_address_OBUF[3]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \o_address_OBUF[3]_inst_i_7 
       (.I0(reg_count_reg[0]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(\o_address_OBUF[3]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[4]_inst_i_1 
       (.I0(reg_count_reg[4]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[7]_inst_i_2_n_7 ),
        .O(o_address_OBUF[4]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[5]_inst_i_1 
       (.I0(reg_count_reg[5]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[7]_inst_i_2_n_6 ),
        .O(o_address_OBUF[5]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[6]_inst_i_1 
       (.I0(reg_count_reg[6]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[7]_inst_i_2_n_5 ),
        .O(o_address_OBUF[6]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[7]_inst_i_1 
       (.I0(reg_count_reg[7]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[7]_inst_i_2_n_4 ),
        .O(o_address_OBUF[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \o_address_OBUF[7]_inst_i_2 
       (.CI(\o_address_OBUF[3]_inst_i_2_n_0 ),
        .CO({\o_address_OBUF[7]_inst_i_2_n_0 ,\o_address_OBUF[7]_inst_i_2_n_1 ,\o_address_OBUF[7]_inst_i_2_n_2 ,\o_address_OBUF[7]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({mux_count[6:4],1'b0}),
        .O({\o_address_OBUF[7]_inst_i_2_n_4 ,\o_address_OBUF[7]_inst_i_2_n_5 ,\o_address_OBUF[7]_inst_i_2_n_6 ,\o_address_OBUF[7]_inst_i_2_n_7 }),
        .S({\o_address_OBUF[7]_inst_i_6_n_0 ,\o_address_OBUF[7]_inst_i_7_n_0 ,\o_address_OBUF[7]_inst_i_8_n_0 ,mux_count[3]}));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[7]_inst_i_3 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[6]),
        .O(mux_count[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[7]_inst_i_4 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[5]),
        .O(mux_count[5]));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[7]_inst_i_5 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[4]),
        .O(mux_count[4]));
  LUT3 #(
    .INIT(8'h01)) 
    \o_address_OBUF[7]_inst_i_6 
       (.I0(reg_count_reg[6]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(\o_address_OBUF[7]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \o_address_OBUF[7]_inst_i_7 
       (.I0(reg_count_reg[5]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(\o_address_OBUF[7]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \o_address_OBUF[7]_inst_i_8 
       (.I0(reg_count_reg[4]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(\o_address_OBUF[7]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \o_address_OBUF[7]_inst_i_9 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[3]),
        .O(mux_count[3]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[8]_inst_i_1 
       (.I0(reg_count_reg[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[11]_inst_i_2_n_7 ),
        .O(o_address_OBUF[8]));
  LUT5 #(
    .INIT(32'hAABEAA82)) 
    \o_address_OBUF[9]_inst_i_1 
       (.I0(reg_count_reg[9]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_rst_IBUF),
        .I4(\o_address_OBUF[11]_inst_i_2_n_6 ),
        .O(o_address_OBUF[9]));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[0]_i_1__0 
       (.I0(Q[8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(reg_count_load));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[0]_i_3 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[3]),
        .O(\reg_count[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[0]_i_4 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[2]),
        .O(\reg_count[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[0]_i_5 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[1]),
        .O(\reg_count[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \reg_count[0]_i_6 
       (.I0(reg_count_reg[0]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(\reg_count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[12]_i_2 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[15]),
        .O(\reg_count[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[12]_i_3 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[14]),
        .O(\reg_count[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[12]_i_4 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[13]),
        .O(\reg_count[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[12]_i_5 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[12]),
        .O(\reg_count[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[4]_i_2 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[7]),
        .O(\reg_count[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[4]_i_3 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[6]),
        .O(\reg_count[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[4]_i_4 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[5]),
        .O(\reg_count[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[4]_i_5 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[4]),
        .O(\reg_count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[8]_i_2 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[11]),
        .O(\reg_count[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[8]_i_3 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[10]),
        .O(\reg_count[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[8]_i_4 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[9]),
        .O(\reg_count[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[8]_i_5 
       (.I0(Q[0]),
        .I1(i_rst_IBUF),
        .I2(reg_count_reg[8]),
        .O(\reg_count[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[0] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[0]_i_2_n_7 ),
        .Q(reg_count_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\reg_count_reg[0]_i_2_n_0 ,\reg_count_reg[0]_i_2_n_1 ,\reg_count_reg[0]_i_2_n_2 ,\reg_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\reg_count_reg[0]_i_2_n_4 ,\reg_count_reg[0]_i_2_n_5 ,\reg_count_reg[0]_i_2_n_6 ,\reg_count_reg[0]_i_2_n_7 }),
        .S({\reg_count[0]_i_3_n_0 ,\reg_count[0]_i_4_n_0 ,\reg_count[0]_i_5_n_0 ,\reg_count[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[10] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[8]_i_1_n_5 ),
        .Q(reg_count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[11] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[8]_i_1_n_4 ),
        .Q(reg_count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[12] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[12]_i_1_n_7 ),
        .Q(reg_count_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_count_reg[12]_i_1 
       (.CI(\reg_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_reg_count_reg[12]_i_1_CO_UNCONNECTED [3],\reg_count_reg[12]_i_1_n_1 ,\reg_count_reg[12]_i_1_n_2 ,\reg_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reg_count_reg[12]_i_1_n_4 ,\reg_count_reg[12]_i_1_n_5 ,\reg_count_reg[12]_i_1_n_6 ,\reg_count_reg[12]_i_1_n_7 }),
        .S({\reg_count[12]_i_2_n_0 ,\reg_count[12]_i_3_n_0 ,\reg_count[12]_i_4_n_0 ,\reg_count[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[13] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[12]_i_1_n_6 ),
        .Q(reg_count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[14] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[12]_i_1_n_5 ),
        .Q(reg_count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[15] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[12]_i_1_n_4 ),
        .Q(reg_count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[1] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[0]_i_2_n_6 ),
        .Q(reg_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[2] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[0]_i_2_n_5 ),
        .Q(reg_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[3] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[0]_i_2_n_4 ),
        .Q(reg_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[4] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[4]_i_1_n_7 ),
        .Q(reg_count_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_count_reg[4]_i_1 
       (.CI(\reg_count_reg[0]_i_2_n_0 ),
        .CO({\reg_count_reg[4]_i_1_n_0 ,\reg_count_reg[4]_i_1_n_1 ,\reg_count_reg[4]_i_1_n_2 ,\reg_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reg_count_reg[4]_i_1_n_4 ,\reg_count_reg[4]_i_1_n_5 ,\reg_count_reg[4]_i_1_n_6 ,\reg_count_reg[4]_i_1_n_7 }),
        .S({\reg_count[4]_i_2_n_0 ,\reg_count[4]_i_3_n_0 ,\reg_count[4]_i_4_n_0 ,\reg_count[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[5] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[4]_i_1_n_6 ),
        .Q(reg_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[6] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[4]_i_1_n_5 ),
        .Q(reg_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[7] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[4]_i_1_n_4 ),
        .Q(reg_count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[8] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[8]_i_1_n_7 ),
        .Q(reg_count_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \reg_count_reg[8]_i_1 
       (.CI(\reg_count_reg[4]_i_1_n_0 ),
        .CO({\reg_count_reg[8]_i_1_n_0 ,\reg_count_reg[8]_i_1_n_1 ,\reg_count_reg[8]_i_1_n_2 ,\reg_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reg_count_reg[8]_i_1_n_4 ,\reg_count_reg[8]_i_1_n_5 ,\reg_count_reg[8]_i_1_n_6 ,\reg_count_reg[8]_i_1_n_7 }),
        .S({\reg_count[8]_i_2_n_0 ,\reg_count[8]_i_3_n_0 ,\reg_count[8]_i_4_n_0 ,\reg_count[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[9] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(\reg_count_reg[8]_i_1_n_6 ),
        .Q(reg_count_reg[9]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_in_reg[0] 
       (.C(CLK),
        .CE(Q[4]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [0]),
        .Q(\reg_in_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_in_reg[1] 
       (.C(CLK),
        .CE(Q[4]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [1]),
        .Q(data2));
  FDCE #(
    .INIT(1'b0)) 
    \reg_in_reg[2] 
       (.C(CLK),
        .CE(Q[4]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [2]),
        .Q(data3));
  FDCE #(
    .INIT(1'b0)) 
    \reg_in_reg[3] 
       (.C(CLK),
        .CE(Q[4]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [3]),
        .Q(data4));
  FDCE #(
    .INIT(1'b0)) 
    \reg_in_reg[4] 
       (.C(CLK),
        .CE(Q[4]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [4]),
        .Q(data5));
  FDCE #(
    .INIT(1'b0)) 
    \reg_in_reg[5] 
       (.C(CLK),
        .CE(Q[4]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [5]),
        .Q(data6));
  FDCE #(
    .INIT(1'b0)) 
    \reg_in_reg[6] 
       (.C(CLK),
        .CE(Q[4]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [6]),
        .Q(data7));
  FDCE #(
    .INIT(1'b0)) 
    \reg_in_reg[7] 
       (.C(CLK),
        .CE(Q[4]),
        .CLR(i_rst_IBUF),
        .D(\reg_words_reg[7]_0 [7]),
        .Q(data0));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_out[7]_i_1 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(reg_out_load));
  FDCE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(CLK),
        .CE(reg_out_load),
        .CLR(i_rst_IBUF),
        .D(\reg_out_reg[7]_1 [0]),
        .Q(\reg_out_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(CLK),
        .CE(reg_out_load),
        .CLR(i_rst_IBUF),
        .D(\reg_out_reg[7]_1 [1]),
        .Q(\reg_out_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(CLK),
        .CE(reg_out_load),
        .CLR(i_rst_IBUF),
        .D(\reg_out_reg[7]_1 [2]),
        .Q(\reg_out_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(CLK),
        .CE(reg_out_load),
        .CLR(i_rst_IBUF),
        .D(\reg_out_reg[7]_1 [3]),
        .Q(\reg_out_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(CLK),
        .CE(reg_out_load),
        .CLR(i_rst_IBUF),
        .D(\reg_out_reg[7]_1 [4]),
        .Q(\reg_out_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(CLK),
        .CE(reg_out_load),
        .CLR(i_rst_IBUF),
        .D(\reg_out_reg[7]_1 [5]),
        .Q(\reg_out_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(CLK),
        .CE(reg_out_load),
        .CLR(i_rst_IBUF),
        .D(\reg_out_reg[7]_1 [6]),
        .Q(\reg_out_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(CLK),
        .CE(reg_out_load),
        .CLR(i_rst_IBUF),
        .D(\reg_out_reg[7]_1 [7]),
        .Q(\reg_out_reg[7]_0 [7]));
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

module parallelizer
   (\FSM_onehot_cur_state_reg[5] ,
    \internal_registry_reg[8]_0 ,
    CLK,
    i_rst_IBUF,
    Q,
    \internal_registry_reg[0]_0 ,
    \internal_registry_reg[0]_1 );
  output \FSM_onehot_cur_state_reg[5] ;
  output [7:0]\internal_registry_reg[8]_0 ;
  input CLK;
  input i_rst_IBUF;
  input [1:0]Q;
  input \internal_registry_reg[0]_0 ;
  input [2:0]\internal_registry_reg[0]_1 ;

  wire CLK;
  wire \FSM_onehot_cur_state_reg[5] ;
  wire [1:0]Q;
  wire cur_state;
  wire i_rst_IBUF;
  wire [0:15]internal_registry;
  wire [0:0]internal_registry1;
  wire \internal_registry[0]_i_1_n_0 ;
  wire \internal_registry[10]_i_1_n_0 ;
  wire \internal_registry[11]_i_1_n_0 ;
  wire \internal_registry[12]_i_1_n_0 ;
  wire \internal_registry[13]_i_1_n_0 ;
  wire \internal_registry[14]_i_1_n_0 ;
  wire \internal_registry[15]_i_1_n_0 ;
  wire \internal_registry[1]_i_1_n_0 ;
  wire \internal_registry[2]_i_1_n_0 ;
  wire \internal_registry[3]_i_1_n_0 ;
  wire \internal_registry[4]_i_1_n_0 ;
  wire \internal_registry[5]_i_1_n_0 ;
  wire \internal_registry[6]_i_1_n_0 ;
  wire \internal_registry[7]_i_1_n_0 ;
  wire \internal_registry[8]_i_1_n_0 ;
  wire \internal_registry[9]_i_1_n_0 ;
  wire \internal_registry_reg[0]_0 ;
  wire [2:0]\internal_registry_reg[0]_1 ;
  wire [7:0]\internal_registry_reg[8]_0 ;
  wire next_state;
  wire [15:0]p_1_in;
  wire [3:1]plusOp;
  wire [3:0]reg_count_reg;

  LUT6 #(
    .INIT(64'h5CFCFCFCFCFCFCFC)) 
    cur_state_i_1
       (.I0(reg_count_reg[2]),
        .I1(Q[0]),
        .I2(cur_state),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .I5(reg_count_reg[3]),
        .O(next_state));
  FDCE #(
    .INIT(1'b0)) 
    cur_state_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(next_state),
        .Q(cur_state));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[0]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[15]),
        .I5(internal_registry[0]),
        .O(\internal_registry[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \internal_registry[0]_i_2 
       (.I0(i_rst_IBUF),
        .I1(Q[0]),
        .O(\FSM_onehot_cur_state_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \internal_registry[0]_i_3 
       (.I0(reg_count_reg[3]),
        .I1(cur_state),
        .I2(reg_count_reg[2]),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[10]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[5]),
        .I5(internal_registry[10]),
        .O(\internal_registry[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \internal_registry[10]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(cur_state),
        .I2(reg_count_reg[2]),
        .I3(reg_count_reg[0]),
        .I4(reg_count_reg[1]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[11]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[4]),
        .I5(internal_registry[11]),
        .O(\internal_registry[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \internal_registry[11]_i_2 
       (.I0(reg_count_reg[2]),
        .I1(cur_state),
        .I2(reg_count_reg[3]),
        .I3(reg_count_reg[0]),
        .I4(reg_count_reg[1]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[12]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[3]),
        .I5(internal_registry[12]),
        .O(\internal_registry[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \internal_registry[12]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[1]),
        .I3(cur_state),
        .I4(reg_count_reg[2]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[13]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[2]),
        .I5(internal_registry[13]),
        .O(\internal_registry[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \internal_registry[13]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[1]),
        .I3(cur_state),
        .I4(reg_count_reg[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[14]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[1]),
        .I5(internal_registry[14]),
        .O(\internal_registry[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \internal_registry[14]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[1]),
        .I2(reg_count_reg[0]),
        .I3(cur_state),
        .I4(reg_count_reg[2]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[15]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[0]),
        .I5(internal_registry[15]),
        .O(\internal_registry[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \internal_registry[15]_i_2 
       (.I0(cur_state),
        .I1(reg_count_reg[2]),
        .I2(reg_count_reg[3]),
        .I3(reg_count_reg[0]),
        .I4(reg_count_reg[1]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[1]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[14]),
        .I5(internal_registry[1]),
        .O(\internal_registry[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \internal_registry[1]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(cur_state),
        .I2(reg_count_reg[2]),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[2]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[13]),
        .I5(internal_registry[2]),
        .O(\internal_registry[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \internal_registry[2]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(cur_state),
        .I2(reg_count_reg[2]),
        .I3(reg_count_reg[0]),
        .I4(reg_count_reg[1]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[3]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[12]),
        .I5(internal_registry[3]),
        .O(\internal_registry[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \internal_registry[3]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(cur_state),
        .I2(reg_count_reg[2]),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[4]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[11]),
        .I5(internal_registry[4]),
        .O(\internal_registry[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \internal_registry[4]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[2]),
        .I2(cur_state),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[5]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[10]),
        .I5(internal_registry[5]),
        .O(\internal_registry[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \internal_registry[5]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[2]),
        .I2(cur_state),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[6]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[9]),
        .I5(internal_registry[6]),
        .O(\internal_registry[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \internal_registry[6]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[2]),
        .I2(cur_state),
        .I3(reg_count_reg[0]),
        .I4(reg_count_reg[1]),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[7]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[8]),
        .I5(internal_registry[7]),
        .O(\internal_registry[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \internal_registry[7]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[2]),
        .I2(cur_state),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[8]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[7]),
        .I5(internal_registry[8]),
        .O(\internal_registry[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \internal_registry[8]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(cur_state),
        .I2(reg_count_reg[2]),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h56A6FFFF56A60000)) 
    \internal_registry[9]_i_1 
       (.I0(\internal_registry_reg[0]_0 ),
        .I1(\internal_registry_reg[0]_1 [2]),
        .I2(\internal_registry_reg[0]_1 [0]),
        .I3(\internal_registry_reg[0]_1 [1]),
        .I4(p_1_in[6]),
        .I5(internal_registry[9]),
        .O(\internal_registry[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \internal_registry[9]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(cur_state),
        .I2(reg_count_reg[2]),
        .I3(reg_count_reg[1]),
        .I4(reg_count_reg[0]),
        .O(p_1_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[0]_i_1_n_0 ),
        .Q(internal_registry[0]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[10]_i_1_n_0 ),
        .Q(internal_registry[10]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[11]_i_1_n_0 ),
        .Q(internal_registry[11]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[12]_i_1_n_0 ),
        .Q(internal_registry[12]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[13]_i_1_n_0 ),
        .Q(internal_registry[13]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[14]_i_1_n_0 ),
        .Q(internal_registry[14]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[15]_i_1_n_0 ),
        .Q(internal_registry[15]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[1]_i_1_n_0 ),
        .Q(internal_registry[1]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[2]_i_1_n_0 ),
        .Q(internal_registry[2]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[3]_i_1_n_0 ),
        .Q(internal_registry[3]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[4]_i_1_n_0 ),
        .Q(internal_registry[4]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[5]_i_1_n_0 ),
        .Q(internal_registry[5]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[6]_i_1_n_0 ),
        .Q(internal_registry[6]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[7]_i_1_n_0 ),
        .Q(internal_registry[7]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[8]_i_1_n_0 ),
        .Q(internal_registry[8]));
  FDCE #(
    .INIT(1'b0)) 
    \internal_registry_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\internal_registry[9]_i_1_n_0 ),
        .Q(internal_registry[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \reg_count[0]_i_1 
       (.I0(reg_count_reg[0]),
        .O(internal_registry1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_count[1]_i_1 
       (.I0(reg_count_reg[0]),
        .I1(reg_count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reg_count[2]_i_1 
       (.I0(reg_count_reg[1]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reg_count[3]_i_1 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[1]),
        .I3(reg_count_reg[3]),
        .O(plusOp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(internal_registry1),
        .Q(reg_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(plusOp[1]),
        .Q(reg_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(plusOp[2]),
        .Q(reg_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(plusOp[3]),
        .Q(reg_count_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[0]_i_1 
       (.I0(internal_registry[15]),
        .I1(Q[1]),
        .I2(internal_registry[7]),
        .O(\internal_registry_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[1]_i_1 
       (.I0(internal_registry[14]),
        .I1(Q[1]),
        .I2(internal_registry[6]),
        .O(\internal_registry_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[2]_i_1 
       (.I0(internal_registry[13]),
        .I1(Q[1]),
        .I2(internal_registry[5]),
        .O(\internal_registry_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[3]_i_1 
       (.I0(internal_registry[12]),
        .I1(Q[1]),
        .I2(internal_registry[4]),
        .O(\internal_registry_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[4]_i_1 
       (.I0(internal_registry[11]),
        .I1(Q[1]),
        .I2(internal_registry[3]),
        .O(\internal_registry_reg[8]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[5]_i_1 
       (.I0(internal_registry[10]),
        .I1(Q[1]),
        .I2(internal_registry[2]),
        .O(\internal_registry_reg[8]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[6]_i_1 
       (.I0(internal_registry[9]),
        .I1(Q[1]),
        .I2(internal_registry[1]),
        .O(\internal_registry_reg[8]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[7]_i_2 
       (.I0(internal_registry[8]),
        .I1(Q[1]),
        .I2(internal_registry[0]),
        .O(\internal_registry_reg[8]_0 [7]));
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

  wire DATAPATH0_n_0;
  wire DATAPATH0_n_17;
  wire DATAPATH0_n_18;
  wire \FSM_onehot_cur_state[0]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_cur_state[3]_i_1_n_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[10] ;
  wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  wire \FSM_onehot_cur_state_reg_n_0_[3] ;
  wire \FSM_onehot_cur_state_reg_n_0_[6] ;
  wire \FSM_onehot_cur_state_reg_n_0_[7] ;
  wire \FSM_onehot_cur_state_reg_n_0_[9] ;
  wire PARALLELIZER0_n_0;
  wire SERIALIZER0_n_4;
  wire SERIALIZER0_n_5;
  wire [2:0]cur_state;
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
  wire [15:0]o_address;
  wire [15:0]o_address_OBUF;
  wire [7:0]o_data;
  wire [7:0]o_data_OBUF;
  wire o_done;
  wire o_done_OBUF;
  wire o_en;
  wire o_en_OBUF;
  wire o_we;
  wire o_we_OBUF;
  wire [0:0]p_0_in;
  wire [7:0]par_output;
  wire par_set_out;
  wire [2:0]reg_count;
  wire reg_in_load;
  wire reg_words_load;
  wire ser_done;

initial begin
 $sdf_annotate("project_tb_time_synth.sdf",,,,"tool_control");
end
  convolutor CONVOLUTOR0
       (.CLK(i_clk_IBUF_BUFG),
        .E(ser_done),
        .\FSM_sequential_cur_state_reg[1]_0 (DATAPATH0_n_0),
        .\FSM_sequential_cur_state_reg[2]_0 (cur_state),
        .Q(mux_count_rst),
        .i_rst_IBUF(i_rst_IBUF));
  datapath DATAPATH0
       (.CLK(i_clk_IBUF_BUFG),
        .D({DATAPATH0_n_17,DATAPATH0_n_18}),
        .Q({\FSM_onehot_cur_state_reg_n_0_[10] ,\FSM_onehot_cur_state_reg_n_0_[9] ,par_set_out,\FSM_onehot_cur_state_reg_n_0_[7] ,reg_in_load,o_done_OBUF,\FSM_onehot_cur_state_reg_n_0_[3] ,reg_words_load,mux_count_rst}),
        .S(p_0_in),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .o_address_OBUF(o_address_OBUF),
        .reg_count(reg_count),
        .\reg_count_reg[0]_0 (DATAPATH0_n_0),
        .\reg_out_reg[7]_0 (o_data_OBUF),
        .\reg_out_reg[7]_1 (par_output),
        .\reg_words_reg[7]_0 (i_data_IBUF));
  LUT3 #(
    .INIT(8'h32)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(mux_count_rst),
        .I1(i_start_IBUF),
        .I2(o_done_OBUF),
        .O(\FSM_onehot_cur_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cur_state[1]_i_1__0 
       (.I0(mux_count_rst),
        .I1(i_start_IBUF),
        .O(\FSM_onehot_cur_state[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_cur_state[3]_i_1 
       (.I0(reg_words_load),
        .I1(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .O(\FSM_onehot_cur_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_cur_state[0]_i_1_n_0 ),
        .PRE(i_rst_IBUF),
        .Q(mux_count_rst));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .Q(reg_words_load));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(DATAPATH0_n_18),
        .Q(o_done_OBUF));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(DATAPATH0_n_17),
        .Q(reg_in_load));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(SERIALIZER0_n_5),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(SERIALIZER0_n_4),
        .Q(\FSM_onehot_cur_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .Q(par_set_out));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(par_set_out),
        .Q(\FSM_onehot_cur_state_reg_n_0_[9] ));
  parallelizer PARALLELIZER0
       (.CLK(i_clk_IBUF_BUFG),
        .\FSM_onehot_cur_state_reg[5] (PARALLELIZER0_n_0),
        .Q({par_set_out,reg_in_load}),
        .i_rst_IBUF(i_rst_IBUF),
        .\internal_registry_reg[0]_0 (DATAPATH0_n_0),
        .\internal_registry_reg[0]_1 (cur_state),
        .\internal_registry_reg[8]_0 (par_output));
  serializer SERIALIZER0
       (.CLK(i_clk_IBUF_BUFG),
        .D({SERIALIZER0_n_4,SERIALIZER0_n_5}),
        .E(ser_done),
        .Q({\FSM_onehot_cur_state_reg_n_0_[6] ,reg_in_load}),
        .i_rst_IBUF(i_rst_IBUF),
        .reg_count(reg_count),
        .\reg_count_reg[0]_0 (PARALLELIZER0_n_0));
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
  OBUF \o_address_OBUF[11]_inst 
       (.I(o_address_OBUF[11]),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(o_address_OBUF[12]),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(o_address_OBUF[13]),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(o_address_OBUF[14]),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(o_address_OBUF[15]),
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
  LUT2 #(
    .INIT(4'hB)) 
    \o_address_OBUF[3]_inst_i_8 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I1(par_set_out),
        .O(p_0_in));
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
       (.I(o_address_OBUF[9]),
        .O(o_address[9]));
  OBUF \o_data_OBUF[0]_inst 
       (.I(o_data_OBUF[0]),
        .O(o_data[0]));
  OBUF \o_data_OBUF[1]_inst 
       (.I(o_data_OBUF[1]),
        .O(o_data[1]));
  OBUF \o_data_OBUF[2]_inst 
       (.I(o_data_OBUF[2]),
        .O(o_data[2]));
  OBUF \o_data_OBUF[3]_inst 
       (.I(o_data_OBUF[3]),
        .O(o_data[3]));
  OBUF \o_data_OBUF[4]_inst 
       (.I(o_data_OBUF[4]),
        .O(o_data[4]));
  OBUF \o_data_OBUF[5]_inst 
       (.I(o_data_OBUF[5]),
        .O(o_data[5]));
  OBUF \o_data_OBUF[6]_inst 
       (.I(o_data_OBUF[6]),
        .O(o_data[6]));
  OBUF \o_data_OBUF[7]_inst 
       (.I(o_data_OBUF[7]),
        .O(o_data[7]));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  OBUF o_en_OBUF_inst
       (.I(o_en_OBUF),
        .O(o_en));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_en_OBUF_inst_i_1
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I3(par_set_out),
        .O(o_en_OBUF));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_we_OBUF_inst_i_1
       (.I0(par_set_out),
        .I1(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .O(o_we_OBUF));
endmodule

module serializer
   (reg_count,
    E,
    D,
    Q,
    CLK,
    i_rst_IBUF,
    \reg_count_reg[0]_0 );
  output [2:0]reg_count;
  output [0:0]E;
  output [1:0]D;
  input [1:0]Q;
  input CLK;
  input i_rst_IBUF;
  input \reg_count_reg[0]_0 ;

  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cur_state[0]_inv_i_1_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_1_n_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  wire [1:0]Q;
  wire i_rst_IBUF;
  wire [2:0]reg_count;
  wire \reg_count[0]_i_1_n_0 ;
  wire \reg_count[1]_i_1_n_0 ;
  wire \reg_count[2]_i_1_n_0 ;
  wire reg_count_load;
  wire \reg_count_reg[0]_0 ;

  LUT6 #(
    .INIT(64'h7FFF7FFF7FFF0000)) 
    \FSM_onehot_cur_state[0]_inv_i_1 
       (.I0(reg_count[1]),
        .I1(reg_count[0]),
        .I2(reg_count[2]),
        .I3(reg_count_load),
        .I4(Q[0]),
        .I5(E),
        .O(\FSM_onehot_cur_state[0]_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2AAAFFFF2AAA)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(reg_count_load),
        .I1(reg_count[1]),
        .I2(reg_count[0]),
        .I3(reg_count[2]),
        .I4(Q[0]),
        .I5(E),
        .O(\FSM_onehot_cur_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(E),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cur_state[7]_i_1 
       (.I0(Q[1]),
        .I1(E),
        .O(D[1]));
  (* FSM_ENCODED_STATES = "active_out2:100,stopped:001,active_out1:010" *) 
  (* inverted = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[0]_inv 
       (.C(CLK),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(\FSM_onehot_cur_state[0]_inv_i_1_n_0 ),
        .Q(E));
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
  LUT2 #(
    .INIT(4'h6)) 
    \reg_count[0]_i_1 
       (.I0(reg_count_load),
        .I1(reg_count[0]),
        .O(\reg_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reg_count[1]_i_1 
       (.I0(reg_count[0]),
        .I1(reg_count_load),
        .I2(reg_count[1]),
        .O(\reg_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reg_count[2]_i_1 
       (.I0(reg_count[1]),
        .I1(reg_count[0]),
        .I2(reg_count_load),
        .I3(reg_count[2]),
        .O(\reg_count[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\reg_count_reg[0]_0 ),
        .D(\reg_count[0]_i_1_n_0 ),
        .Q(reg_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\reg_count_reg[0]_0 ),
        .D(\reg_count[1]_i_1_n_0 ),
        .Q(reg_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\reg_count_reg[0]_0 ),
        .D(\reg_count[2]_i_1_n_0 ),
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
