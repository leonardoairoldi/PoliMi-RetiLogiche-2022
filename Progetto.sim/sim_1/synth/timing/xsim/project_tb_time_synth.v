// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Apr  8 22:40:10 2022
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
   (\FSM_onehot_cur_state_reg[0] ,
    from_conv_output,
    i_rst_IBUF,
    Q,
    \internal_registry_reg[0] ,
    \internal_registry_reg[0]_0 ,
    \internal_registry_reg[0]_1 ,
    from_ser_output,
    E,
    CLK);
  output \FSM_onehot_cur_state_reg[0] ;
  output from_conv_output;
  input i_rst_IBUF;
  input [0:0]Q;
  input \internal_registry_reg[0] ;
  input \internal_registry_reg[0]_0 ;
  input \internal_registry_reg[0]_1 ;
  input from_ser_output;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_cur_state_reg[0] ;
  wire [0:0]Q;
  wire [2:0]cur_state;
  wire from_conv_output;
  wire from_ser_output;
  wire i_rst_IBUF;
  wire \internal_registry_reg[0] ;
  wire \internal_registry_reg[0]_0 ;
  wire \internal_registry_reg[0]_1 ;
  wire [2:0]next_state;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(cur_state[0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h96CC)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(from_ser_output),
        .I3(cur_state[0]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
        .O(next_state[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_cur_state[2]_i_2 
       (.I0(i_rst_IBUF),
        .I1(Q),
        .O(\FSM_onehot_cur_state_reg[0] ));
  (* FSM_ENCODED_STATES = "oo_pk2:001,oi_pk2:111,io_pk2:011,ii_pk2:101,io_pk1:010,oo_pk1:000,ii_pk1:100,oi_pk1:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\FSM_onehot_cur_state_reg[0] ),
        .D(next_state[0]),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "oo_pk2:001,oi_pk2:111,io_pk2:011,ii_pk2:101,io_pk1:010,oo_pk1:000,ii_pk1:100,oi_pk1:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\FSM_onehot_cur_state_reg[0] ),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "oo_pk2:001,oi_pk2:111,io_pk2:011,ii_pk2:101,io_pk1:010,oo_pk1:000,ii_pk1:100,oi_pk1:110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\FSM_onehot_cur_state_reg[0] ),
        .D(next_state[2]),
        .Q(cur_state[2]));
  LUT6 #(
    .INIT(64'h53AC535353ACACAC)) 
    \internal_registry[0]_i_3 
       (.I0(cur_state[1]),
        .I1(cur_state[2]),
        .I2(cur_state[0]),
        .I3(\internal_registry_reg[0] ),
        .I4(\internal_registry_reg[0]_0 ),
        .I5(\internal_registry_reg[0]_1 ),
        .O(from_conv_output));
endmodule

module datapath
   (o_address_OBUF,
    \reg_in_reg[0]_0 ,
    \reg_in_reg[4]_0 ,
    D,
    \reg_out_reg[7]_0 ,
    Q,
    i_rst_IBUF,
    o_address1__1,
    \reg_count_reg[4]_0 ,
    reg_count,
    i_start_IBUF,
    \reg_out_reg[7]_1 ,
    CLK,
    \reg_words_reg[7]_0 );
  output [9:0]o_address_OBUF;
  output \reg_in_reg[0]_0 ;
  output \reg_in_reg[4]_0 ;
  output [1:0]D;
  output [7:0]\reg_out_reg[7]_0 ;
  input [8:0]Q;
  input i_rst_IBUF;
  input o_address1__1;
  input \reg_count_reg[4]_0 ;
  input [1:0]reg_count;
  input i_start_IBUF;
  input [7:0]\reg_out_reg[7]_1 ;
  input CLK;
  input [7:0]\reg_words_reg[7]_0 ;

  wire CLK;
  wire [1:0]D;
  wire [8:0]Q;
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
  wire o_address1__1;
  wire [9:0]o_address_OBUF;
  wire \o_address_OBUF[10]_inst_i_2_n_0 ;
  wire \o_address_OBUF[4]_inst_i_2_n_0 ;
  wire \o_address_OBUF[5]_inst_i_2_n_0 ;
  wire [7:0]plusOp;
  wire [1:0]reg_count;
  wire \reg_count[6]_i_2_n_0 ;
  wire \reg_count[7]_i_3_n_0 ;
  wire reg_count_load;
  wire [7:0]reg_count_reg;
  wire \reg_count_reg[4]_0 ;
  wire \reg_in_reg[0]_0 ;
  wire \reg_in_reg[4]_0 ;
  wire \reg_in_reg_n_0_[0] ;
  wire reg_out_load;
  wire [7:0]\reg_out_reg[7]_0 ;
  wire [7:0]\reg_out_reg[7]_1 ;
  wire [7:0]reg_words;
  wire [7:0]\reg_words_reg[7]_0 ;
  wire [3:0]NLW_leqOp_carry_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_cur_state[4]_i_1 
       (.I0(leqOp),
        .I1(Q[2]),
        .I2(i_start_IBUF),
        .I3(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cur_state[5]_i_1 
       (.I0(Q[2]),
        .I1(leqOp),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \FSM_sequential_cur_state[1]_i_3 
       (.I0(\reg_in_reg_n_0_[0] ),
        .I1(data0),
        .I2(reg_count[0]),
        .I3(reg_count[1]),
        .I4(data3),
        .I5(data2),
        .O(\reg_in_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \FSM_sequential_cur_state[1]_i_4 
       (.I0(data5),
        .I1(data4),
        .I2(reg_count[0]),
        .I3(reg_count[1]),
        .I4(data7),
        .I5(data6),
        .O(\reg_in_reg[4]_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 leqOp_carry
       (.CI(1'b0),
        .CO({leqOp,leqOp_carry_n_1,leqOp_carry_n_2,leqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({leqOp_carry_i_1_n_0,leqOp_carry_i_2_n_0,leqOp_carry_i_3_n_0,leqOp_carry_i_4_n_0}),
        .O(NLW_leqOp_carry_O_UNCONNECTED[3:0]),
        .S({leqOp_carry_i_5_n_0,leqOp_carry_i_6_n_0,leqOp_carry_i_7_n_0,leqOp_carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0000002F00000002)) 
    leqOp_carry_i_1
       (.I0(reg_words[6]),
        .I1(reg_count_reg[6]),
        .I2(reg_count_reg[7]),
        .I3(Q[0]),
        .I4(i_rst_IBUF),
        .I5(reg_words[7]),
        .O(leqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002F00000002)) 
    leqOp_carry_i_2
       (.I0(reg_words[4]),
        .I1(reg_count_reg[4]),
        .I2(reg_count_reg[5]),
        .I3(Q[0]),
        .I4(i_rst_IBUF),
        .I5(reg_words[5]),
        .O(leqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000002F00000002)) 
    leqOp_carry_i_3
       (.I0(reg_words[2]),
        .I1(reg_count_reg[2]),
        .I2(reg_count_reg[3]),
        .I3(Q[0]),
        .I4(i_rst_IBUF),
        .I5(reg_words[3]),
        .O(leqOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000002F00000002)) 
    leqOp_carry_i_4
       (.I0(reg_words[0]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[1]),
        .I3(Q[0]),
        .I4(i_rst_IBUF),
        .I5(reg_words[1]),
        .O(leqOp_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A09009)) 
    leqOp_carry_i_5
       (.I0(reg_words[6]),
        .I1(reg_count_reg[6]),
        .I2(reg_words[7]),
        .I3(reg_count_reg[7]),
        .I4(Q[0]),
        .I5(i_rst_IBUF),
        .O(leqOp_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A09009)) 
    leqOp_carry_i_6
       (.I0(reg_words[4]),
        .I1(reg_count_reg[4]),
        .I2(reg_words[5]),
        .I3(reg_count_reg[5]),
        .I4(Q[0]),
        .I5(i_rst_IBUF),
        .O(leqOp_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A09009)) 
    leqOp_carry_i_7
       (.I0(reg_words[2]),
        .I1(reg_count_reg[2]),
        .I2(reg_words[3]),
        .I3(reg_count_reg[3]),
        .I4(Q[0]),
        .I5(i_rst_IBUF),
        .O(leqOp_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A09009)) 
    leqOp_carry_i_8
       (.I0(reg_words[0]),
        .I1(reg_count_reg[0]),
        .I2(reg_words[1]),
        .I3(reg_count_reg[1]),
        .I4(Q[0]),
        .I5(i_rst_IBUF),
        .O(leqOp_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'hAAB2)) 
    \o_address_OBUF[0]_inst_i_1 
       (.I0(reg_count_reg[0]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(i_rst_IBUF),
        .O(o_address_OBUF[0]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \o_address_OBUF[10]_inst_i_1 
       (.I0(reg_count_reg[6]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(\o_address_OBUF[10]_inst_i_2_n_0 ),
        .I4(reg_count_reg[5]),
        .I5(o_address1__1),
        .O(o_address_OBUF[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA800)) 
    \o_address_OBUF[10]_inst_i_2 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[1]),
        .I2(reg_count_reg[0]),
        .I3(reg_count_reg[3]),
        .I4(\reg_count_reg[4]_0 ),
        .I5(reg_count_reg[4]),
        .O(\o_address_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA03AA03AAAA)) 
    \o_address_OBUF[1]_inst_i_1 
       (.I0(reg_count_reg[1]),
        .I1(reg_count_reg[0]),
        .I2(Q[0]),
        .I3(i_rst_IBUF),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(o_address_OBUF[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCFFF3)) 
    \o_address_OBUF[2]_inst_i_1 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[0]),
        .I2(i_rst_IBUF),
        .I3(Q[0]),
        .I4(reg_count_reg[1]),
        .I5(o_address1__1),
        .O(o_address_OBUF[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA000300FC)) 
    \o_address_OBUF[3]_inst_i_1 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[1]),
        .I2(reg_count_reg[0]),
        .I3(\reg_count_reg[4]_0 ),
        .I4(reg_count_reg[2]),
        .I5(o_address1__1),
        .O(o_address_OBUF[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA3333333C)) 
    \o_address_OBUF[4]_inst_i_1 
       (.I0(reg_count_reg[4]),
        .I1(\o_address_OBUF[4]_inst_i_2_n_0 ),
        .I2(i_rst_IBUF),
        .I3(Q[0]),
        .I4(reg_count_reg[3]),
        .I5(o_address1__1),
        .O(o_address_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFAFFF8)) 
    \o_address_OBUF[4]_inst_i_2 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[1]),
        .I2(Q[0]),
        .I3(i_rst_IBUF),
        .I4(reg_count_reg[0]),
        .O(\o_address_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCCCCCC3)) 
    \o_address_OBUF[5]_inst_i_1 
       (.I0(reg_count_reg[5]),
        .I1(\o_address_OBUF[5]_inst_i_2_n_0 ),
        .I2(i_rst_IBUF),
        .I3(Q[0]),
        .I4(reg_count_reg[4]),
        .I5(o_address1__1),
        .O(o_address_OBUF[5]));
  LUT6 #(
    .INIT(64'hFFFAFFF8FFF0FFF0)) 
    \o_address_OBUF[5]_inst_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[0]),
        .I2(i_rst_IBUF),
        .I3(Q[0]),
        .I4(reg_count_reg[1]),
        .I5(reg_count_reg[2]),
        .O(\o_address_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCCCCCC3)) 
    \o_address_OBUF[6]_inst_i_1 
       (.I0(reg_count_reg[6]),
        .I1(\o_address_OBUF[10]_inst_i_2_n_0 ),
        .I2(i_rst_IBUF),
        .I3(Q[0]),
        .I4(reg_count_reg[5]),
        .I5(o_address1__1),
        .O(o_address_OBUF[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFCFF03)) 
    \o_address_OBUF[7]_inst_i_1 
       (.I0(reg_count_reg[7]),
        .I1(reg_count_reg[5]),
        .I2(\o_address_OBUF[10]_inst_i_2_n_0 ),
        .I3(\reg_count_reg[4]_0 ),
        .I4(reg_count_reg[6]),
        .I5(o_address1__1),
        .O(o_address_OBUF[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \o_address_OBUF[9]_inst_i_1 
       (.I0(reg_count_reg[6]),
        .I1(Q[0]),
        .I2(i_rst_IBUF),
        .I3(\o_address_OBUF[10]_inst_i_2_n_0 ),
        .I4(reg_count_reg[5]),
        .I5(o_address1__1),
        .O(o_address_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \reg_count[0]_i_1 
       (.I0(reg_count_reg[0]),
        .I1(i_rst_IBUF),
        .I2(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0006)) 
    \reg_count[1]_i_1 
       (.I0(reg_count_reg[0]),
        .I1(reg_count_reg[1]),
        .I2(i_rst_IBUF),
        .I3(Q[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000078)) 
    \reg_count[2]_i_1 
       (.I0(reg_count_reg[0]),
        .I1(reg_count_reg[1]),
        .I2(reg_count_reg[2]),
        .I3(i_rst_IBUF),
        .I4(Q[0]),
        .O(plusOp[2]));
  LUT6 #(
    .INIT(64'h0000000000007F80)) 
    \reg_count[3]_i_1 
       (.I0(reg_count_reg[1]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[2]),
        .I3(reg_count_reg[3]),
        .I4(i_rst_IBUF),
        .I5(Q[0]),
        .O(plusOp[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \reg_count[4]_i_1 
       (.I0(reg_count_reg[2]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[1]),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[4]),
        .I5(\reg_count_reg[4]_0 ),
        .O(plusOp[4]));
  LUT5 #(
    .INIT(32'h55555578)) 
    \reg_count[5]_i_1 
       (.I0(\reg_count[6]_i_2_n_0 ),
        .I1(reg_count_reg[4]),
        .I2(reg_count_reg[5]),
        .I3(i_rst_IBUF),
        .I4(Q[0]),
        .O(plusOp[5]));
  LUT6 #(
    .INIT(64'h3333333333337F80)) 
    \reg_count[6]_i_1 
       (.I0(reg_count_reg[4]),
        .I1(\reg_count[6]_i_2_n_0 ),
        .I2(reg_count_reg[5]),
        .I3(reg_count_reg[6]),
        .I4(i_rst_IBUF),
        .I5(Q[0]),
        .O(plusOp[6]));
  LUT6 #(
    .INIT(64'hFFFFFF80FFFFFF00)) 
    \reg_count[6]_i_2 
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[1]),
        .I2(reg_count_reg[0]),
        .I3(i_rst_IBUF),
        .I4(Q[0]),
        .I5(reg_count_reg[2]),
        .O(\reg_count[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_count[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[8]),
        .O(reg_count_load));
  LUT6 #(
    .INIT(64'h3333333333337F80)) 
    \reg_count[7]_i_2 
       (.I0(reg_count_reg[5]),
        .I1(\reg_count[7]_i_3_n_0 ),
        .I2(reg_count_reg[6]),
        .I3(reg_count_reg[7]),
        .I4(i_rst_IBUF),
        .I5(Q[0]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'hF8F0F0F0F0F0F0F0)) 
    \reg_count[7]_i_3 
       (.I0(reg_count_reg[4]),
        .I1(reg_count_reg[2]),
        .I2(\reg_count_reg[4]_0 ),
        .I3(reg_count_reg[0]),
        .I4(reg_count_reg[1]),
        .I5(reg_count_reg[3]),
        .O(\reg_count[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[0] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp[0]),
        .Q(reg_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[1] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp[1]),
        .Q(reg_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[2] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp[2]),
        .Q(reg_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[3] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp[3]),
        .Q(reg_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[4] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp[4]),
        .Q(reg_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[5] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp[5]),
        .Q(reg_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[6] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp[6]),
        .Q(reg_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[7] 
       (.C(CLK),
        .CE(reg_count_load),
        .CLR(i_rst_IBUF),
        .D(plusOp[7]),
        .Q(reg_count_reg[7]));
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
    from_conv_output);
  output \FSM_onehot_cur_state_reg[5] ;
  output [7:0]\internal_registry_reg[8]_0 ;
  input CLK;
  input i_rst_IBUF;
  input [1:0]Q;
  input from_conv_output;

  wire CLK;
  wire \FSM_onehot_cur_state_reg[5] ;
  wire [1:0]Q;
  wire cur_state;
  wire from_conv_output;
  wire i_rst_IBUF;
  wire [0:15]internal_registry;
  wire [0:0]internal_registry1;
  wire \internal_registry[0]_i_1_n_0 ;
  wire \internal_registry[0]_i_4_n_0 ;
  wire \internal_registry[10]_i_1_n_0 ;
  wire \internal_registry[11]_i_1_n_0 ;
  wire \internal_registry[12]_i_1_n_0 ;
  wire \internal_registry[13]_i_1_n_0 ;
  wire \internal_registry[14]_i_1_n_0 ;
  wire \internal_registry[15]_i_1_n_0 ;
  wire \internal_registry[1]_i_1_n_0 ;
  wire \internal_registry[1]_i_2_n_0 ;
  wire \internal_registry[2]_i_1_n_0 ;
  wire \internal_registry[2]_i_2_n_0 ;
  wire \internal_registry[3]_i_1_n_0 ;
  wire \internal_registry[3]_i_2_n_0 ;
  wire \internal_registry[4]_i_1_n_0 ;
  wire \internal_registry[5]_i_1_n_0 ;
  wire \internal_registry[6]_i_1_n_0 ;
  wire \internal_registry[7]_i_1_n_0 ;
  wire \internal_registry[8]_i_1_n_0 ;
  wire \internal_registry[9]_i_1_n_0 ;
  wire [7:0]\internal_registry_reg[8]_0 ;
  wire next_state;
  wire [3:1]plusOp__0;
  wire \reg_count[2]_i_1__0_n_0 ;
  wire [3:0]reg_count_reg;

  LUT6 #(
    .INIT(64'h7FFFFFFF7FFF0000)) 
    cur_state_i_1
       (.I0(reg_count_reg[3]),
        .I1(reg_count_reg[2]),
        .I2(reg_count_reg[0]),
        .I3(reg_count_reg[1]),
        .I4(cur_state),
        .I5(Q[0]),
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
    .INIT(64'hFFFFFFFB00000008)) 
    \internal_registry[0]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[0]_i_4_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[0]),
        .O(\internal_registry[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \internal_registry[0]_i_2 
       (.I0(i_rst_IBUF),
        .I1(Q[0]),
        .O(\FSM_onehot_cur_state_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \internal_registry[0]_i_4 
       (.I0(reg_count_reg[1]),
        .I1(reg_count_reg[0]),
        .O(\internal_registry[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \internal_registry[10]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[2]_i_2_n_0 ),
        .I3(reg_count_reg[2]),
        .I4(reg_count_reg[3]),
        .I5(internal_registry[10]),
        .O(\internal_registry[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \internal_registry[11]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[3]_i_2_n_0 ),
        .I3(reg_count_reg[2]),
        .I4(reg_count_reg[3]),
        .I5(internal_registry[11]),
        .O(\internal_registry[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \internal_registry[12]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[0]_i_4_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[12]),
        .O(\internal_registry[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \internal_registry[13]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[1]_i_2_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[13]),
        .O(\internal_registry[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \internal_registry[14]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[2]_i_2_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[14]),
        .O(\internal_registry[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \internal_registry[15]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[3]_i_2_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[15]),
        .O(\internal_registry[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \internal_registry[1]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[1]_i_2_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[1]),
        .O(\internal_registry[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \internal_registry[1]_i_2 
       (.I0(reg_count_reg[1]),
        .I1(reg_count_reg[0]),
        .O(\internal_registry[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \internal_registry[2]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[2]_i_2_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[2]),
        .O(\internal_registry[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \internal_registry[2]_i_2 
       (.I0(reg_count_reg[0]),
        .I1(reg_count_reg[1]),
        .O(\internal_registry[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \internal_registry[3]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[3]_i_2_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[3]),
        .O(\internal_registry[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \internal_registry[3]_i_2 
       (.I0(reg_count_reg[1]),
        .I1(reg_count_reg[0]),
        .O(\internal_registry[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \internal_registry[4]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[0]_i_4_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[4]),
        .O(\internal_registry[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \internal_registry[5]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[1]_i_2_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[5]),
        .O(\internal_registry[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \internal_registry[6]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[2]_i_2_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[6]),
        .O(\internal_registry[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \internal_registry[7]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[3]_i_2_n_0 ),
        .I3(reg_count_reg[3]),
        .I4(reg_count_reg[2]),
        .I5(internal_registry[7]),
        .O(\internal_registry[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \internal_registry[8]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[0]_i_4_n_0 ),
        .I3(reg_count_reg[2]),
        .I4(reg_count_reg[3]),
        .I5(internal_registry[8]),
        .O(\internal_registry[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \internal_registry[9]_i_1 
       (.I0(from_conv_output),
        .I1(cur_state),
        .I2(\internal_registry[1]_i_2_n_0 ),
        .I3(reg_count_reg[2]),
        .I4(reg_count_reg[3]),
        .I5(internal_registry[9]),
        .O(\internal_registry[9]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \reg_count[0]_i_1__0 
       (.I0(reg_count_reg[0]),
        .O(internal_registry1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reg_count[1]_i_1__0 
       (.I0(reg_count_reg[0]),
        .I1(reg_count_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reg_count[2]_i_1__0 
       (.I0(reg_count_reg[0]),
        .I1(reg_count_reg[1]),
        .I2(reg_count_reg[2]),
        .O(\reg_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reg_count[3]_i_1__0 
       (.I0(reg_count_reg[1]),
        .I1(reg_count_reg[0]),
        .I2(reg_count_reg[2]),
        .I3(reg_count_reg[3]),
        .O(plusOp__0[3]));
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
        .D(plusOp__0[1]),
        .Q(reg_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(\reg_count[2]_i_1__0_n_0 ),
        .Q(reg_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FSM_onehot_cur_state_reg[5] ),
        .D(plusOp__0[3]),
        .Q(reg_count_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[0]_i_1 
       (.I0(internal_registry[15]),
        .I1(Q[1]),
        .I2(internal_registry[7]),
        .O(\internal_registry_reg[8]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[1]_i_1 
       (.I0(internal_registry[14]),
        .I1(Q[1]),
        .I2(internal_registry[6]),
        .O(\internal_registry_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[2]_i_1 
       (.I0(internal_registry[13]),
        .I1(Q[1]),
        .I2(internal_registry[5]),
        .O(\internal_registry_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[3]_i_1 
       (.I0(internal_registry[12]),
        .I1(Q[1]),
        .I2(internal_registry[4]),
        .O(\internal_registry_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[4]_i_1 
       (.I0(internal_registry[11]),
        .I1(Q[1]),
        .I2(internal_registry[3]),
        .O(\internal_registry_reg[8]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[5]_i_1 
       (.I0(internal_registry[10]),
        .I1(Q[1]),
        .I2(internal_registry[2]),
        .O(\internal_registry_reg[8]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[6]_i_1 
       (.I0(internal_registry[9]),
        .I1(Q[1]),
        .I2(internal_registry[1]),
        .O(\internal_registry_reg[8]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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

  wire CONVOLUTOR0_n_0;
  wire DATAPATH0_n_10;
  wire DATAPATH0_n_11;
  wire DATAPATH0_n_12;
  wire DATAPATH0_n_13;
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
  wire SERIALIZER0_n_6;
  wire from_conv_output;
  wire from_ser_output;
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
  wire o_address1__1;
  wire [10:0]o_address_OBUF;
  wire [7:0]o_data;
  wire [7:0]o_data_OBUF;
  wire o_done;
  wire o_done_OBUF;
  wire o_en;
  wire o_en_OBUF;
  wire o_we;
  wire o_we_OBUF;
  wire [7:0]par_output;
  wire par_set_out;
  wire [1:0]reg_count;
  wire reg_in_load;
  wire reg_words_load;
  wire ser_done;

initial begin
 $sdf_annotate("project_tb_time_synth.sdf",,,,"tool_control");
end
  convolutor CONVOLUTOR0
       (.CLK(i_clk_IBUF_BUFG),
        .E(ser_done),
        .\FSM_onehot_cur_state_reg[0] (CONVOLUTOR0_n_0),
        .Q(mux_count_rst),
        .from_conv_output(from_conv_output),
        .from_ser_output(from_ser_output),
        .i_rst_IBUF(i_rst_IBUF),
        .\internal_registry_reg[0] (DATAPATH0_n_10),
        .\internal_registry_reg[0]_0 (SERIALIZER0_n_4),
        .\internal_registry_reg[0]_1 (DATAPATH0_n_11));
  datapath DATAPATH0
       (.CLK(i_clk_IBUF_BUFG),
        .D({DATAPATH0_n_12,DATAPATH0_n_13}),
        .Q({\FSM_onehot_cur_state_reg_n_0_[10] ,\FSM_onehot_cur_state_reg_n_0_[9] ,par_set_out,\FSM_onehot_cur_state_reg_n_0_[7] ,reg_in_load,o_done_OBUF,\FSM_onehot_cur_state_reg_n_0_[3] ,reg_words_load,mux_count_rst}),
        .i_rst_IBUF(i_rst_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .o_address1__1(o_address1__1),
        .o_address_OBUF({o_address_OBUF[10],o_address_OBUF[8:0]}),
        .reg_count(reg_count),
        .\reg_count_reg[4]_0 (CONVOLUTOR0_n_0),
        .\reg_in_reg[0]_0 (DATAPATH0_n_10),
        .\reg_in_reg[4]_0 (DATAPATH0_n_11),
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
        .D(DATAPATH0_n_13),
        .Q(o_done_OBUF));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(DATAPATH0_n_12),
        .Q(reg_in_load));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(SERIALIZER0_n_6),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "read_ram:00000100000,read_ram_request:00000001000,read_words_ram_read:00000000100,done:00000010000,read_words_ram_request:00000000010,reset:00000000001,write_ram_wait:10000000000,write_ram_1:00100000000,write_ram_2:01000000000,load_from_par:00010000000,serialize_debug:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(SERIALIZER0_n_5),
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
        .from_conv_output(from_conv_output),
        .i_rst_IBUF(i_rst_IBUF),
        .\internal_registry_reg[8]_0 (par_output));
  serializer SERIALIZER0
       (.CLK(i_clk_IBUF_BUFG),
        .D({SERIALIZER0_n_5,SERIALIZER0_n_6}),
        .E(ser_done),
        .\FSM_sequential_cur_state_reg[1] (DATAPATH0_n_10),
        .\FSM_sequential_cur_state_reg[1]_0 (DATAPATH0_n_11),
        .Q({\FSM_onehot_cur_state_reg_n_0_[6] ,reg_in_load}),
        .from_ser_output(from_ser_output),
        .i_rst_IBUF(i_rst_IBUF),
        .\reg_count_reg[0]_0 (PARALLELIZER0_n_0),
        .\reg_count_reg[1]_0 (reg_count),
        .\reg_count_reg[1]_1 (SERIALIZER0_n_4));
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
    .INIT(8'hEB)) 
    \o_address_OBUF[10]_inst_i_3 
       (.I0(i_rst_IBUF),
        .I1(par_set_out),
        .I2(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .O(o_address1__1));
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_en_OBUF_inst_i_1
       (.I0(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I1(par_set_out),
        .I2(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .O(o_en_OBUF));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_we_OBUF_inst_i_1
       (.I0(par_set_out),
        .I1(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .O(o_we_OBUF));
endmodule

module serializer
   (E,
    \reg_count_reg[1]_0 ,
    from_ser_output,
    \reg_count_reg[1]_1 ,
    D,
    Q,
    \FSM_sequential_cur_state_reg[1] ,
    \FSM_sequential_cur_state_reg[1]_0 ,
    CLK,
    i_rst_IBUF,
    \reg_count_reg[0]_0 );
  output [0:0]E;
  output [1:0]\reg_count_reg[1]_0 ;
  output from_ser_output;
  output \reg_count_reg[1]_1 ;
  output [1:0]D;
  input [1:0]Q;
  input \FSM_sequential_cur_state_reg[1] ;
  input \FSM_sequential_cur_state_reg[1]_0 ;
  input CLK;
  input i_rst_IBUF;
  input \reg_count_reg[0]_0 ;

  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cur_state[0]_inv_i_1_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_1_n_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  wire \FSM_sequential_cur_state_reg[1] ;
  wire \FSM_sequential_cur_state_reg[1]_0 ;
  wire [1:0]Q;
  wire from_ser_output;
  wire i_rst_IBUF;
  wire [2:2]reg_count;
  wire \reg_count[0]_i_1_n_0 ;
  wire \reg_count[1]_i_1_n_0 ;
  wire \reg_count[2]_i_1_n_0 ;
  wire reg_count_load;
  wire \reg_count_reg[0]_0 ;
  wire [1:0]\reg_count_reg[1]_0 ;
  wire \reg_count_reg[1]_1 ;

  LUT6 #(
    .INIT(64'h0EEEEEEEEEEEEEEE)) 
    \FSM_onehot_cur_state[0]_inv_i_1 
       (.I0(Q[0]),
        .I1(E),
        .I2(\reg_count_reg[1]_0 [1]),
        .I3(\reg_count_reg[1]_0 [0]),
        .I4(reg_count),
        .I5(reg_count_load),
        .O(\FSM_onehot_cur_state[0]_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2FFFFFFF22222222)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(Q[0]),
        .I1(E),
        .I2(\reg_count_reg[1]_0 [1]),
        .I3(\reg_count_reg[1]_0 [0]),
        .I4(reg_count),
        .I5(reg_count_load),
        .O(\FSM_onehot_cur_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(Q[0]),
        .I1(E),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hABFEA802)) 
    \FSM_sequential_cur_state[1]_i_2 
       (.I0(\FSM_sequential_cur_state_reg[1] ),
        .I1(\reg_count_reg[1]_0 [1]),
        .I2(\reg_count_reg[1]_0 [0]),
        .I3(reg_count),
        .I4(\FSM_sequential_cur_state_reg[1]_0 ),
        .O(from_ser_output));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \internal_registry[0]_i_5 
       (.I0(\reg_count_reg[1]_0 [1]),
        .I1(\reg_count_reg[1]_0 [0]),
        .I2(reg_count),
        .O(\reg_count_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_count[0]_i_1 
       (.I0(reg_count_load),
        .I1(\reg_count_reg[1]_0 [0]),
        .O(\reg_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reg_count[1]_i_1 
       (.I0(\reg_count_reg[1]_0 [0]),
        .I1(reg_count_load),
        .I2(\reg_count_reg[1]_0 [1]),
        .O(\reg_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reg_count[2]_i_1 
       (.I0(\reg_count_reg[1]_0 [0]),
        .I1(\reg_count_reg[1]_0 [1]),
        .I2(reg_count_load),
        .I3(reg_count),
        .O(\reg_count[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\reg_count_reg[0]_0 ),
        .D(\reg_count[0]_i_1_n_0 ),
        .Q(\reg_count_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\reg_count_reg[0]_0 ),
        .D(\reg_count[1]_i_1_n_0 ),
        .Q(\reg_count_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\reg_count_reg[0]_0 ),
        .D(\reg_count[2]_i_1_n_0 ),
        .Q(reg_count));
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
