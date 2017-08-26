// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hlsExample_insertChecksum306 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        cr2checksum_V_V_dout,
        cr2checksum_V_V_empty_n,
        cr2checksum_V_V_read,
        drop2checksum_V_data_V_dout,
        drop2checksum_V_data_V_empty_n,
        drop2checksum_V_data_V_read,
        drop2checksum_V_strb_V_dout,
        drop2checksum_V_strb_V_empty_n,
        drop2checksum_V_strb_V_read,
        drop2checksum_V_user_V_dout,
        drop2checksum_V_user_V_empty_n,
        drop2checksum_V_user_V_read,
        drop2checksum_V_last_V_dout,
        drop2checksum_V_last_V_empty_n,
        drop2checksum_V_last_V_read,
        mod2merge_V_data_V_1_din,
        mod2merge_V_data_V_1_full_n,
        mod2merge_V_data_V_1_write,
        mod2merge_V_strb_V_1_din,
        mod2merge_V_strb_V_1_full_n,
        mod2merge_V_strb_V_1_write,
        mod2merge_V_user_V_1_din,
        mod2merge_V_user_V_1_full_n,
        mod2merge_V_user_V_1_write,
        mod2merge_V_last_V_1_din,
        mod2merge_V_last_V_1_full_n,
        mod2merge_V_last_V_1_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm0_0 = 1'b1;
parameter    ap_ST_st2_fsm1_1 = 2'b10;
parameter    ap_ST_st0_fsm1_0 = 2'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv16_4 = 16'b100;
parameter    ap_const_lv16_3 = 16'b11;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv16_5 = 16'b101;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv16_1 = 16'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] cr2checksum_V_V_dout;
input   cr2checksum_V_V_empty_n;
output   cr2checksum_V_V_read;
input  [63:0] drop2checksum_V_data_V_dout;
input   drop2checksum_V_data_V_empty_n;
output   drop2checksum_V_data_V_read;
input  [7:0] drop2checksum_V_strb_V_dout;
input   drop2checksum_V_strb_V_empty_n;
output   drop2checksum_V_strb_V_read;
input  [127:0] drop2checksum_V_user_V_dout;
input   drop2checksum_V_user_V_empty_n;
output   drop2checksum_V_user_V_read;
input  [0:0] drop2checksum_V_last_V_dout;
input   drop2checksum_V_last_V_empty_n;
output   drop2checksum_V_last_V_read;
output  [63:0] mod2merge_V_data_V_1_din;
input   mod2merge_V_data_V_1_full_n;
output   mod2merge_V_data_V_1_write;
output  [7:0] mod2merge_V_strb_V_1_din;
input   mod2merge_V_strb_V_1_full_n;
output   mod2merge_V_strb_V_1_write;
output  [127:0] mod2merge_V_user_V_1_din;
input   mod2merge_V_user_V_1_full_n;
output   mod2merge_V_user_V_1_write;
output  [0:0] mod2merge_V_last_V_1_din;
input   mod2merge_V_last_V_1_full_n;
output   mod2merge_V_last_V_1_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg cr2checksum_V_V_read;
reg[63:0] mod2merge_V_data_V_1_din;
reg[0:0] mod2merge_V_last_V_1_din;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm0 = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm0_0;
reg    ap_sig_bdd_23;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm1 = 2'b1;
reg    ap_sig_cseq_ST_st0_fsm1_0;
reg    ap_sig_bdd_34;
wire    drop2checksum_V_data_V0_status;
wire   [0:0] tmp_nbreadreq_fu_70_p6;
wire   [0:0] grp_nbreadreq_fu_84_p3;
reg    ap_sig_bdd_78;
wire    mod2merge_V_data_V_11_status;
reg   [0:0] tmp_reg_263;
reg   [15:0] ic_wordCount_load_reg_267;
reg   [0:0] tmp_6_reg_271;
reg   [0:0] tmp_5_reg_285;
reg    ap_sig_bdd_110;
reg    ap_sig_cseq_ST_st2_fsm1_1;
reg    ap_sig_bdd_116;
reg   [15:0] ic_wordCount = 16'b0000000000000000;
reg   [7:0] reg_203;
reg   [127:0] reg_208;
reg   [0:0] tmp_last_V_10_reg_275;
wire   [63:0] p_Result_2_fu_217_p5;
reg   [63:0] p_Result_2_reg_280;
reg   [0:0] tmp_last_V_9_reg_289;
wire   [63:0] p_Result_s_fu_229_p5;
reg   [63:0] p_Result_s_reg_294;
reg   [63:0] tmp_data_V_reg_299;
reg   [0:0] tmp_last_V_reg_304;
wire   [15:0] tmp_s_fu_241_p2;
wire   [15:0] ap_reg_phiprechg_ic_wordCount_new_reg_126pp0_it0;
reg   [15:0] ic_wordCount_new_phi_fu_129_p6;
wire   [0:0] ap_reg_phiprechg_tmp_9_reg_139pp0_it0;
reg   [0:0] tmp_9_phi_fu_142_p6;
wire   [0:0] ap_reg_phiprechg_ic_wordCount_flag_1_reg_150pp0_it0;
reg   [0:0] ic_wordCount_flag_1_phi_fu_153_p8;
wire   [15:0] p_ic_wordCount_new_fu_248_p3;
wire   [15:0] ap_reg_phiprechg_ic_wordCount_new_1_reg_168pp0_it0;
reg   [15:0] ic_wordCount_new_1_phi_fu_171_p8;
reg    drop2checksum_V_data_V0_update;
reg    mod2merge_V_data_V_11_update;
reg   [0:0] ap_NS_fsm0;
reg   [1:0] ap_NS_fsm1;
reg    ap_sig_bdd_332;
reg    ap_sig_bdd_334;
reg    ap_sig_bdd_336;
reg    ap_sig_bdd_267;
reg    ap_sig_bdd_341;
reg    ap_sig_bdd_343;
reg    ap_sig_bdd_345;
reg    ap_sig_bdd_340;




/// the current state (ap_CS_fsm0) of the state machine. ///
always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm0
    if (ap_rst == 1'b1) begin
        ap_CS_fsm0 <= ap_ST_st1_fsm0_0;
    end else begin
        ap_CS_fsm0 <= ap_NS_fsm0;
    end
end

/// the current state (ap_CS_fsm1) of the state machine. ///
always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm1
    if (ap_rst == 1'b1) begin
        ap_CS_fsm1 <= ap_ST_st0_fsm1_0;
    end else begin
        ap_CS_fsm1 <= ap_NS_fsm1;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk) begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_110))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & ~(ap_const_lv1_0 == ic_wordCount_flag_1_phi_fu_153_p8))) begin
        ic_wordCount <= ic_wordCount_new_1_phi_fu_171_p8;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        ic_wordCount_load_reg_267 <= ic_wordCount;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        p_Result_2_reg_280 <= p_Result_2_fu_217_p5;
        tmp_last_V_10_reg_275 <= drop2checksum_V_last_V_dout;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        p_Result_s_reg_294 <= p_Result_s_fu_229_p5;
        tmp_last_V_9_reg_289 <= drop2checksum_V_last_V_dout;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ic_wordCount == ap_const_lv16_4) & ~(ic_wordCount == ap_const_lv16_3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
        reg_203 <= drop2checksum_V_strb_V_dout;
        reg_208 <= drop2checksum_V_user_V_dout;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_5_reg_285 <= grp_nbreadreq_fu_84_p3;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_6_reg_271 <= grp_nbreadreq_fu_84_p3;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ic_wordCount == ap_const_lv16_4) & ~(ic_wordCount == ap_const_lv16_3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_data_V_reg_299 <= drop2checksum_V_data_V_dout;
        tmp_last_V_reg_304 <= drop2checksum_V_last_V_dout;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_reg_263 <= tmp_nbreadreq_fu_70_p6;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_bdd_110 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_110)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_cseq_ST_st0_fsm1_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st0_fsm1_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_78 or ap_sig_bdd_110 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st0_fsm1_0 assign process. ///
always @ (ap_sig_bdd_34) begin
    if (ap_sig_bdd_34) begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm0_0 assign process. ///
always @ (ap_sig_bdd_23) begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm1_1 assign process. ///
always @ (ap_sig_bdd_116) begin
    if (ap_sig_bdd_116) begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    end
end

/// cr2checksum_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_70_p6 or grp_nbreadreq_fu_84_p3 or ap_sig_bdd_78 or ap_sig_bdd_110 or ap_sig_cseq_ST_st2_fsm1_1 or ic_wordCount) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
        cr2checksum_V_V_read = ap_const_logic_1;
    end else begin
        cr2checksum_V_V_read = ap_const_logic_0;
    end
end

/// drop2checksum_V_data_V0_update assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_70_p6 or grp_nbreadreq_fu_84_p3 or ap_sig_bdd_78 or ap_sig_bdd_110 or ap_sig_cseq_ST_st2_fsm1_1 or ic_wordCount) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ic_wordCount == ap_const_lv16_4) & ~(ic_wordCount == ap_const_lv16_3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
        drop2checksum_V_data_V0_update = ap_const_logic_1;
    end else begin
        drop2checksum_V_data_V0_update = ap_const_logic_0;
    end
end

/// ic_wordCount_flag_1_phi_fu_153_p8 assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_70_p6 or grp_nbreadreq_fu_84_p3 or ic_wordCount or ap_reg_phiprechg_ic_wordCount_flag_1_reg_150pp0_it0) begin
    if (((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ((~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3)) | (~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3)) | (~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ic_wordCount == ap_const_lv16_4) & ~(ic_wordCount == ap_const_lv16_3))))) begin
        ic_wordCount_flag_1_phi_fu_153_p8 = ap_const_lv1_1;
    end else if ((((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & (ap_const_lv1_0 == grp_nbreadreq_fu_84_p3)) | ((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3)) | ((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0)))) begin
        ic_wordCount_flag_1_phi_fu_153_p8 = ap_const_lv1_0;
    end else begin
        ic_wordCount_flag_1_phi_fu_153_p8 = ap_reg_phiprechg_ic_wordCount_flag_1_reg_150pp0_it0;
    end
end

/// ic_wordCount_new_1_phi_fu_171_p8 assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_70_p6 or grp_nbreadreq_fu_84_p3 or ic_wordCount or p_ic_wordCount_new_fu_248_p3 or ap_reg_phiprechg_ic_wordCount_new_1_reg_168pp0_it0) begin
    if (((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ((~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3)) | (~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3)) | (~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ic_wordCount == ap_const_lv16_4) & ~(ic_wordCount == ap_const_lv16_3))))) begin
        ic_wordCount_new_1_phi_fu_171_p8 = p_ic_wordCount_new_fu_248_p3;
    end else begin
        ic_wordCount_new_1_phi_fu_171_p8 = ap_reg_phiprechg_ic_wordCount_new_1_reg_168pp0_it0;
    end
end

/// ic_wordCount_new_phi_fu_129_p6 assign process. ///
always @ (tmp_s_fu_241_p2 or ap_reg_phiprechg_ic_wordCount_new_reg_126pp0_it0 or ap_sig_bdd_332 or ap_sig_bdd_334 or ap_sig_bdd_336 or ap_sig_bdd_267) begin
    if (ap_sig_bdd_267) begin
        if (ap_sig_bdd_336) begin
            ic_wordCount_new_phi_fu_129_p6 = ap_const_lv16_4;
        end else if (ap_sig_bdd_334) begin
            ic_wordCount_new_phi_fu_129_p6 = ap_const_lv16_5;
        end else if (ap_sig_bdd_332) begin
            ic_wordCount_new_phi_fu_129_p6 = tmp_s_fu_241_p2;
        end else begin
            ic_wordCount_new_phi_fu_129_p6 = ap_reg_phiprechg_ic_wordCount_new_reg_126pp0_it0;
        end
    end else begin
        ic_wordCount_new_phi_fu_129_p6 = ap_reg_phiprechg_ic_wordCount_new_reg_126pp0_it0;
    end
end

/// mod2merge_V_data_V_11_update assign process. ///
always @ (ap_done_reg or tmp_reg_263 or ic_wordCount_load_reg_267 or tmp_6_reg_271 or tmp_5_reg_285 or ap_sig_bdd_110 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((~(ap_const_lv1_0 == tmp_reg_263) & (ap_const_lv16_4 == ic_wordCount_load_reg_267) & ~(ap_const_lv1_0 == tmp_6_reg_271) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_110)) | (~(ap_const_lv1_0 == tmp_reg_263) & (ap_const_lv16_3 == ic_wordCount_load_reg_267) & ~(ap_const_lv1_0 == tmp_5_reg_285) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_110)) | (~(ap_const_lv1_0 == tmp_reg_263) & ~(ap_const_lv16_4 == ic_wordCount_load_reg_267) & ~(ap_const_lv16_3 == ic_wordCount_load_reg_267) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_110)))) begin
        mod2merge_V_data_V_11_update = ap_const_logic_1;
    end else begin
        mod2merge_V_data_V_11_update = ap_const_logic_0;
    end
end

/// mod2merge_V_data_V_1_din assign process. ///
always @ (p_Result_2_reg_280 or p_Result_s_reg_294 or tmp_data_V_reg_299 or ap_sig_bdd_341 or ap_sig_bdd_343 or ap_sig_bdd_345 or ap_sig_bdd_340) begin
    if (ap_sig_bdd_340) begin
        if (ap_sig_bdd_345) begin
            mod2merge_V_data_V_1_din = tmp_data_V_reg_299;
        end else if (ap_sig_bdd_343) begin
            mod2merge_V_data_V_1_din = p_Result_s_reg_294;
        end else if (ap_sig_bdd_341) begin
            mod2merge_V_data_V_1_din = p_Result_2_reg_280;
        end else begin
            mod2merge_V_data_V_1_din = 'bx;
        end
    end else begin
        mod2merge_V_data_V_1_din = 'bx;
    end
end

/// mod2merge_V_last_V_1_din assign process. ///
always @ (tmp_last_V_10_reg_275 or tmp_last_V_9_reg_289 or tmp_last_V_reg_304 or ap_sig_bdd_341 or ap_sig_bdd_343 or ap_sig_bdd_345 or ap_sig_bdd_340) begin
    if (ap_sig_bdd_340) begin
        if (ap_sig_bdd_345) begin
            mod2merge_V_last_V_1_din = tmp_last_V_reg_304;
        end else if (ap_sig_bdd_343) begin
            mod2merge_V_last_V_1_din = tmp_last_V_9_reg_289;
        end else if (ap_sig_bdd_341) begin
            mod2merge_V_last_V_1_din = tmp_last_V_10_reg_275;
        end else begin
            mod2merge_V_last_V_1_din = 'bx;
        end
    end else begin
        mod2merge_V_last_V_1_din = 'bx;
    end
end

/// tmp_9_phi_fu_142_p6 assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_70_p6 or grp_nbreadreq_fu_84_p3 or drop2checksum_V_last_V_dout or ic_wordCount or ap_reg_phiprechg_tmp_9_reg_139pp0_it0) begin
    if ((((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ic_wordCount == ap_const_lv16_4) & ~(ic_wordCount == ap_const_lv16_3)) | ((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3)) | ((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3)))) begin
        tmp_9_phi_fu_142_p6 = drop2checksum_V_last_V_dout;
    end else begin
        tmp_9_phi_fu_142_p6 = ap_reg_phiprechg_tmp_9_reg_139pp0_it0;
    end
end
/// the next state (ap_NS_fsm1) of the state machine. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_CS_fsm1 or ap_sig_bdd_78 or ap_sig_bdd_110 or ap_sig_cseq_ST_st2_fsm1_1) begin
    case (ap_CS_fsm1)
        ap_ST_st2_fsm1_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_110) & ~ap_sig_bdd_78)) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_110) & (~(ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ap_sig_bdd_78)))) begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end else begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end
        end
        ap_ST_st0_fsm1_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_78 | (ap_sig_bdd_110 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end
        end
        default : 
        begin
            ap_NS_fsm1 = 'bx;
        end
    endcase
end

/// the next state (ap_NS_fsm0) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm0 or ap_sig_bdd_78 or ap_sig_bdd_110 or ap_sig_cseq_ST_st2_fsm1_1) begin
    case (ap_CS_fsm0)
        ap_ST_st1_fsm0_0 : 
        begin
            ap_NS_fsm0 = ap_ST_st1_fsm0_0;
        end
        default : 
        begin
            ap_NS_fsm0 = 'bx;
        end
    endcase
end

assign ap_reg_phiprechg_ic_wordCount_flag_1_reg_150pp0_it0 = 'bx;
assign ap_reg_phiprechg_ic_wordCount_new_1_reg_168pp0_it0 = 'bx;
assign ap_reg_phiprechg_ic_wordCount_new_reg_126pp0_it0 = 'bx;
assign ap_reg_phiprechg_tmp_9_reg_139pp0_it0 = 'bx;

/// ap_sig_bdd_110 assign process. ///
always @ (mod2merge_V_data_V_11_status or tmp_reg_263 or ic_wordCount_load_reg_267 or tmp_6_reg_271 or tmp_5_reg_285) begin
    ap_sig_bdd_110 = (((mod2merge_V_data_V_11_status == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_263) & (ap_const_lv16_4 == ic_wordCount_load_reg_267) & ~(ap_const_lv1_0 == tmp_6_reg_271)) | ((mod2merge_V_data_V_11_status == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_263) & (ap_const_lv16_3 == ic_wordCount_load_reg_267) & ~(ap_const_lv1_0 == tmp_5_reg_285)) | ((mod2merge_V_data_V_11_status == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_263) & ~(ap_const_lv16_4 == ic_wordCount_load_reg_267) & ~(ap_const_lv16_3 == ic_wordCount_load_reg_267)));
end

/// ap_sig_bdd_116 assign process. ///
always @ (ap_CS_fsm1) begin
    ap_sig_bdd_116 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_1]);
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm0) begin
    ap_sig_bdd_23 = (ap_CS_fsm0[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_267 assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_70_p6) begin
    ap_sig_bdd_267 = ((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0));
end

/// ap_sig_bdd_332 assign process. ///
always @ (ic_wordCount) begin
    ap_sig_bdd_332 = (~(ic_wordCount == ap_const_lv16_4) & ~(ic_wordCount == ap_const_lv16_3));
end

/// ap_sig_bdd_334 assign process. ///
always @ (grp_nbreadreq_fu_84_p3 or ic_wordCount) begin
    ap_sig_bdd_334 = ((ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3));
end

/// ap_sig_bdd_336 assign process. ///
always @ (grp_nbreadreq_fu_84_p3 or ic_wordCount) begin
    ap_sig_bdd_336 = (~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3));
end

/// ap_sig_bdd_34 assign process. ///
always @ (ap_CS_fsm1) begin
    ap_sig_bdd_34 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_0]);
end

/// ap_sig_bdd_340 assign process. ///
always @ (ap_done_reg or tmp_reg_263 or ap_sig_bdd_110 or ap_sig_cseq_ST_st2_fsm1_1) begin
    ap_sig_bdd_340 = (~(ap_const_lv1_0 == tmp_reg_263) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_110));
end

/// ap_sig_bdd_341 assign process. ///
always @ (ic_wordCount_load_reg_267 or tmp_6_reg_271) begin
    ap_sig_bdd_341 = ((ap_const_lv16_4 == ic_wordCount_load_reg_267) & ~(ap_const_lv1_0 == tmp_6_reg_271));
end

/// ap_sig_bdd_343 assign process. ///
always @ (ic_wordCount_load_reg_267 or tmp_5_reg_285) begin
    ap_sig_bdd_343 = ((ap_const_lv16_3 == ic_wordCount_load_reg_267) & ~(ap_const_lv1_0 == tmp_5_reg_285));
end

/// ap_sig_bdd_345 assign process. ///
always @ (ic_wordCount_load_reg_267) begin
    ap_sig_bdd_345 = (~(ap_const_lv16_4 == ic_wordCount_load_reg_267) & ~(ap_const_lv16_3 == ic_wordCount_load_reg_267));
end

/// ap_sig_bdd_78 assign process. ///
always @ (ap_start or ap_done_reg or drop2checksum_V_data_V0_status or tmp_nbreadreq_fu_70_p6 or grp_nbreadreq_fu_84_p3 or cr2checksum_V_V_empty_n or ic_wordCount) begin
    ap_sig_bdd_78 = (((drop2checksum_V_data_V0_status == ap_const_logic_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3)) | (~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & (ic_wordCount == ap_const_lv16_4) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (cr2checksum_V_V_empty_n == ap_const_logic_0)) | ((drop2checksum_V_data_V0_status == ap_const_logic_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (ic_wordCount == ap_const_lv16_3)) | (~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_84_p3) & (cr2checksum_V_V_empty_n == ap_const_logic_0) & (ic_wordCount == ap_const_lv16_3)) | ((drop2checksum_V_data_V0_status == ap_const_logic_0) & ~(tmp_nbreadreq_fu_70_p6 == ap_const_lv1_0) & ~(ic_wordCount == ap_const_lv16_4) & ~(ic_wordCount == ap_const_lv16_3)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign drop2checksum_V_data_V0_status = (drop2checksum_V_data_V_empty_n & drop2checksum_V_strb_V_empty_n & drop2checksum_V_user_V_empty_n & drop2checksum_V_last_V_empty_n);
assign drop2checksum_V_data_V_read = drop2checksum_V_data_V0_update;
assign drop2checksum_V_last_V_read = drop2checksum_V_data_V0_update;
assign drop2checksum_V_strb_V_read = drop2checksum_V_data_V0_update;
assign drop2checksum_V_user_V_read = drop2checksum_V_data_V0_update;
assign grp_nbreadreq_fu_84_p3 = cr2checksum_V_V_empty_n;
assign mod2merge_V_data_V_11_status = (mod2merge_V_data_V_1_full_n & mod2merge_V_strb_V_1_full_n & mod2merge_V_user_V_1_full_n & mod2merge_V_last_V_1_full_n);
assign mod2merge_V_data_V_1_write = mod2merge_V_data_V_11_update;
assign mod2merge_V_last_V_1_write = mod2merge_V_data_V_11_update;
assign mod2merge_V_strb_V_1_din = reg_203;
assign mod2merge_V_strb_V_1_write = mod2merge_V_data_V_11_update;
assign mod2merge_V_user_V_1_din = reg_208;
assign mod2merge_V_user_V_1_write = mod2merge_V_data_V_11_update;
assign p_Result_2_fu_217_p5 = {{drop2checksum_V_data_V_dout[32'd63 : 32'd48]}, {cr2checksum_V_V_dout}, {drop2checksum_V_data_V_dout[32'd31 : 32'd0]}};
assign p_Result_s_fu_229_p5 = {{drop2checksum_V_data_V_dout[32'd63 : 32'd16]}, {cr2checksum_V_V_dout}};
assign p_ic_wordCount_new_fu_248_p3 = ((tmp_9_phi_fu_142_p6[0:0] === 1'b1) ? ap_const_lv16_0 : ic_wordCount_new_phi_fu_129_p6);
assign tmp_nbreadreq_fu_70_p6 = (drop2checksum_V_data_V_empty_n & drop2checksum_V_strb_V_empty_n & drop2checksum_V_user_V_empty_n & drop2checksum_V_last_V_empty_n);
assign tmp_s_fu_241_p2 = (ic_wordCount + ap_const_lv16_1);


endmodule //hlsExample_insertChecksum306
