// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hlsExample_ethernetDetection (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        inData_TVALID,
        inData_TDATA,
        inData_TREADY,
        inData_TSTRB,
        inData_TUSER,
        inData_TLAST,
        parser2arp_V_data_V_din,
        parser2arp_V_data_V_full_n,
        parser2arp_V_data_V_write,
        parser2arp_V_strb_V_din,
        parser2arp_V_strb_V_full_n,
        parser2arp_V_strb_V_write,
        parser2arp_V_user_V_din,
        parser2arp_V_user_V_full_n,
        parser2arp_V_user_V_write,
        parser2arp_V_last_V_din,
        parser2arp_V_last_V_full_n,
        parser2arp_V_last_V_write,
        macDetect2lengthCut_V_data_V_din,
        macDetect2lengthCut_V_data_V_full_n,
        macDetect2lengthCut_V_data_V_write,
        macDetect2lengthCut_V_strb_V_din,
        macDetect2lengthCut_V_strb_V_full_n,
        macDetect2lengthCut_V_strb_V_write,
        macDetect2lengthCut_V_user_V_din,
        macDetect2lengthCut_V_user_V_full_n,
        macDetect2lengthCut_V_user_V_write,
        macDetect2lengthCut_V_last_V_din,
        macDetect2lengthCut_V_last_V_full_n,
        macDetect2lengthCut_V_last_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm0_0 = 1'b1;
parameter    ap_ST_st2_fsm1_1 = 2'b10;
parameter    ap_ST_st0_fsm1_0 = 2'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv16_806 = 16'b100000000110;
parameter    ap_const_lv16_800 = 16'b100000000000;
parameter    ap_const_lv32_28 = 32'b101000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_27 = 32'b100111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   inData_TVALID;
input  [63:0] inData_TDATA;
output   inData_TREADY;
input  [7:0] inData_TSTRB;
input  [127:0] inData_TUSER;
input  [0:0] inData_TLAST;
output  [63:0] parser2arp_V_data_V_din;
input   parser2arp_V_data_V_full_n;
output   parser2arp_V_data_V_write;
output  [7:0] parser2arp_V_strb_V_din;
input   parser2arp_V_strb_V_full_n;
output   parser2arp_V_strb_V_write;
output  [127:0] parser2arp_V_user_V_din;
input   parser2arp_V_user_V_full_n;
output   parser2arp_V_user_V_write;
output  [0:0] parser2arp_V_last_V_din;
input   parser2arp_V_last_V_full_n;
output   parser2arp_V_last_V_write;
output  [63:0] macDetect2lengthCut_V_data_V_din;
input   macDetect2lengthCut_V_data_V_full_n;
output   macDetect2lengthCut_V_data_V_write;
output  [7:0] macDetect2lengthCut_V_strb_V_din;
input   macDetect2lengthCut_V_strb_V_full_n;
output   macDetect2lengthCut_V_strb_V_write;
output  [127:0] macDetect2lengthCut_V_user_V_din;
input   macDetect2lengthCut_V_user_V_full_n;
output   macDetect2lengthCut_V_user_V_write;
output  [0:0] macDetect2lengthCut_V_last_V_din;
input   macDetect2lengthCut_V_last_V_full_n;
output   macDetect2lengthCut_V_last_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg inData_TREADY;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm0 = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm0_0;
reg    ap_sig_bdd_23;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm1 = 2'b1;
reg    ap_sig_cseq_ST_st0_fsm1_0;
reg    ap_sig_bdd_34;
wire   [1:0] arpDetectState_load_load_fu_194_p1;
wire   [0:0] grp_nbreadreq_fu_86_p6;
reg    ap_sig_bdd_63;
wire    macDetect2lengthCut_V_data_V1_status;
reg   [1:0] arpDetectState_load_reg_290;
reg   [0:0] tmp_s_reg_318;
reg   [0:0] tmp_1_reg_322;
wire    parser2arp_V_data_V1_status;
reg   [0:0] tmp_9_reg_326;
reg   [0:0] tmp_7_reg_334;
reg   [0:0] tmp_3_reg_338;
reg   [0:0] tmp_8_reg_342;
reg   [0:0] tmp_6_reg_346;
reg   [0:0] tmp_2_reg_350;
reg    ap_sig_bdd_128;
reg    ap_sig_cseq_ST_st2_fsm1_1;
reg    ap_sig_bdd_134;
reg   [1:0] arpDetectState = 2'b00;
reg   [63:0] dmp_prevWord_data_V = 64'b0000000000000000000000000000000000000000000000000000000000000000;
reg   [7:0] dmp_prevWord_strb_V = 8'b00000000;
reg   [127:0] dmp_prevWord_user_V = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
reg   [0:0] dmp_prevWord_last_V = 1'b0;
reg   [15:0] dmp_macType_V = 16'b0000000000000000;
reg   [63:0] tmp_data_V_19_reg_294;
reg   [7:0] tmp_strb_V_16_reg_300;
reg   [127:0] tmp_user_V_15_reg_306;
reg   [0:0] tmp_last_V_16_reg_312;
wire   [0:0] grp_fu_144_p2;
wire   [0:0] grp_fu_149_p2;
wire   [0:0] grp_fu_166_p1;
wire   [0:0] tmp_6_fu_266_p2;
wire   [0:0] tmp_2_fu_272_p2;
reg    macDetect2lengthCut_V_data_V1_update;
reg    parser2arp_V_data_V1_update;
wire   [15:0] p_Result_s_83_fu_252_p3;
wire   [7:0] p_Result_1_fu_242_p4;
wire   [7:0] p_Result_s_fu_232_p4;
reg   [0:0] ap_NS_fsm0;
reg   [1:0] ap_NS_fsm1;
reg    ap_sig_bdd_259;
reg    ap_sig_bdd_52;
reg    ap_sig_bdd_56;
reg    ap_sig_bdd_141;




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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (ap_sig_bdd_141) begin
        if (ap_sig_bdd_56) begin
            arpDetectState <= ap_const_lv2_1;
        end else if (ap_sig_bdd_52) begin
            arpDetectState <= ap_const_lv2_2;
        end else if (ap_sig_bdd_259) begin
            arpDetectState <= ap_const_lv2_3;
        end else if ((arpDetectState_load_load_fu_194_p1 == ap_const_lv2_3)) begin
            arpDetectState <= ap_const_lv2_0;
        end
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        arpDetectState_load_reg_290 <= arpDetectState;
        tmp_data_V_19_reg_294 <= dmp_prevWord_data_V;
        tmp_last_V_16_reg_312 <= dmp_prevWord_last_V;
        tmp_strb_V_16_reg_300 <= dmp_prevWord_strb_V;
        tmp_user_V_15_reg_306 <= dmp_prevWord_user_V;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        dmp_macType_V <= p_Result_s_83_fu_252_p3;
        tmp_6_reg_346 <= tmp_6_fu_266_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (arpDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
        dmp_prevWord_data_V <= inData_TDATA;
        dmp_prevWord_last_V <= inData_TLAST;
        dmp_prevWord_strb_V <= inData_TSTRB;
        dmp_prevWord_user_V <= inData_TUSER;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (arpDetectState_load_load_fu_194_p1 == ap_const_lv2_3) & (ap_const_lv1_0 == grp_fu_144_p2))) begin
        tmp_1_reg_322 <= grp_fu_149_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (ap_const_lv1_0 == tmp_6_fu_266_p2))) begin
        tmp_2_reg_350 <= tmp_2_fu_272_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (arpDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (ap_const_lv1_0 == grp_fu_144_p2))) begin
        tmp_3_reg_338 <= grp_fu_149_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (arpDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_7_reg_334 <= grp_fu_144_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (arpDetectState == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_8_reg_342 <= grp_nbreadreq_fu_86_p6;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (arpDetectState == ap_const_lv2_2) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_9_reg_326 <= grp_nbreadreq_fu_86_p6;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (arpDetectState_load_load_fu_194_p1 == ap_const_lv2_3))) begin
        tmp_s_reg_318 <= grp_fu_144_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_bdd_128 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128)))) begin
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
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_63 or ap_sig_bdd_128 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
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
always @ (ap_sig_bdd_134) begin
    if (ap_sig_bdd_134) begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    end
end

/// inData_TREADY assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or grp_nbreadreq_fu_86_p6 or ap_sig_bdd_63 or ap_sig_bdd_128 or ap_sig_cseq_ST_st2_fsm1_1 or arpDetectState) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (arpDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
        inData_TREADY = ap_const_logic_1;
    end else begin
        inData_TREADY = ap_const_logic_0;
    end
end

/// macDetect2lengthCut_V_data_V1_update assign process. ///
always @ (ap_done_reg or arpDetectState_load_reg_290 or tmp_s_reg_318 or tmp_1_reg_322 or tmp_9_reg_326 or tmp_7_reg_334 or tmp_3_reg_338 or tmp_8_reg_342 or tmp_6_reg_346 or tmp_2_reg_350 or ap_sig_bdd_128 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if ((((arpDetectState_load_reg_290 == ap_const_lv2_3) & (ap_const_lv1_0 == tmp_s_reg_318) & ~(ap_const_lv1_0 == tmp_1_reg_322) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128)) | ((ap_const_lv2_2 == arpDetectState_load_reg_290) & ~(ap_const_lv1_0 == tmp_9_reg_326) & (ap_const_lv1_0 == tmp_7_reg_334) & ~(ap_const_lv1_0 == tmp_3_reg_338) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128)) | ((ap_const_lv2_1 == arpDetectState_load_reg_290) & ~(ap_const_lv1_0 == tmp_8_reg_342) & (ap_const_lv1_0 == tmp_6_reg_346) & ~(ap_const_lv1_0 == tmp_2_reg_350) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128)))) begin
        macDetect2lengthCut_V_data_V1_update = ap_const_logic_1;
    end else begin
        macDetect2lengthCut_V_data_V1_update = ap_const_logic_0;
    end
end

/// parser2arp_V_data_V1_update assign process. ///
always @ (ap_done_reg or arpDetectState_load_reg_290 or tmp_s_reg_318 or tmp_9_reg_326 or tmp_7_reg_334 or tmp_8_reg_342 or tmp_6_reg_346 or ap_sig_bdd_128 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if ((((arpDetectState_load_reg_290 == ap_const_lv2_3) & ~(ap_const_lv1_0 == tmp_s_reg_318) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128)) | ((ap_const_lv2_2 == arpDetectState_load_reg_290) & ~(ap_const_lv1_0 == tmp_9_reg_326) & ~(ap_const_lv1_0 == tmp_7_reg_334) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128)) | ((ap_const_lv2_1 == arpDetectState_load_reg_290) & ~(ap_const_lv1_0 == tmp_8_reg_342) & ~(ap_const_lv1_0 == tmp_6_reg_346) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128)))) begin
        parser2arp_V_data_V1_update = ap_const_logic_1;
    end else begin
        parser2arp_V_data_V1_update = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm0) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm0 or ap_sig_bdd_63 or ap_sig_bdd_128 or ap_sig_cseq_ST_st2_fsm1_1) begin
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

/// the next state (ap_NS_fsm1) of the state machine. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_CS_fsm1 or ap_sig_bdd_63 or ap_sig_bdd_128 or ap_sig_cseq_ST_st2_fsm1_1) begin
    case (ap_CS_fsm1)
        ap_ST_st2_fsm1_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128) & ~ap_sig_bdd_63)) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_128) & (~(ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ap_sig_bdd_63)))) begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end else begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end
        end
        ap_ST_st0_fsm1_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
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


/// ap_sig_bdd_128 assign process. ///
always @ (macDetect2lengthCut_V_data_V1_status or arpDetectState_load_reg_290 or tmp_s_reg_318 or tmp_1_reg_322 or parser2arp_V_data_V1_status or tmp_9_reg_326 or tmp_7_reg_334 or tmp_3_reg_338 or tmp_8_reg_342 or tmp_6_reg_346 or tmp_2_reg_350) begin
    ap_sig_bdd_128 = (((macDetect2lengthCut_V_data_V1_status == ap_const_logic_0) & (arpDetectState_load_reg_290 == ap_const_lv2_3) & (ap_const_lv1_0 == tmp_s_reg_318) & ~(ap_const_lv1_0 == tmp_1_reg_322)) | ((arpDetectState_load_reg_290 == ap_const_lv2_3) & (parser2arp_V_data_V1_status == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_s_reg_318)) | ((macDetect2lengthCut_V_data_V1_status == ap_const_logic_0) & (ap_const_lv2_2 == arpDetectState_load_reg_290) & ~(ap_const_lv1_0 == tmp_9_reg_326) & (ap_const_lv1_0 == tmp_7_reg_334) & ~(ap_const_lv1_0 == tmp_3_reg_338)) | ((parser2arp_V_data_V1_status == ap_const_logic_0) & (ap_const_lv2_2 == arpDetectState_load_reg_290) & ~(ap_const_lv1_0 == tmp_9_reg_326) & ~(ap_const_lv1_0 == tmp_7_reg_334)) | ((macDetect2lengthCut_V_data_V1_status == ap_const_logic_0) & (ap_const_lv2_1 == arpDetectState_load_reg_290) & ~(ap_const_lv1_0 == tmp_8_reg_342) & (ap_const_lv1_0 == tmp_6_reg_346) & ~(ap_const_lv1_0 == tmp_2_reg_350)) | ((parser2arp_V_data_V1_status == ap_const_logic_0) & (ap_const_lv2_1 == arpDetectState_load_reg_290) & ~(ap_const_lv1_0 == tmp_8_reg_342) & ~(ap_const_lv1_0 == tmp_6_reg_346)));
end

/// ap_sig_bdd_134 assign process. ///
always @ (ap_CS_fsm1) begin
    ap_sig_bdd_134 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_1]);
end

/// ap_sig_bdd_141 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_63 or ap_sig_bdd_128 or ap_sig_cseq_ST_st2_fsm1_1) begin
    ap_sig_bdd_141 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_128 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))));
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm0) begin
    ap_sig_bdd_23 = (ap_CS_fsm0[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_259 assign process. ///
always @ (grp_nbreadreq_fu_86_p6 or arpDetectState or grp_fu_166_p1) begin
    ap_sig_bdd_259 = ((arpDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_fu_166_p1));
end

/// ap_sig_bdd_34 assign process. ///
always @ (ap_CS_fsm1) begin
    ap_sig_bdd_34 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_0]);
end

/// ap_sig_bdd_52 assign process. ///
always @ (grp_nbreadreq_fu_86_p6 or arpDetectState) begin
    ap_sig_bdd_52 = (~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_1));
end

/// ap_sig_bdd_56 assign process. ///
always @ (grp_nbreadreq_fu_86_p6 or arpDetectState) begin
    ap_sig_bdd_56 = (~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_0));
end

/// ap_sig_bdd_63 assign process. ///
always @ (ap_start or ap_done_reg or inData_TVALID or grp_nbreadreq_fu_86_p6 or arpDetectState) begin
    ap_sig_bdd_63 = (((inData_TVALID == ap_const_logic_0) & (arpDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0)) | ((inData_TVALID == ap_const_logic_0) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_1)) | ((inData_TVALID == ap_const_logic_0) & ~(grp_nbreadreq_fu_86_p6 == ap_const_lv1_0) & (arpDetectState == ap_const_lv2_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign arpDetectState_load_load_fu_194_p1 = arpDetectState;
assign grp_fu_144_p2 = (dmp_macType_V == ap_const_lv16_806? 1'b1: 1'b0);
assign grp_fu_149_p2 = (dmp_macType_V == ap_const_lv16_800? 1'b1: 1'b0);
assign grp_fu_166_p1 = inData_TLAST;
assign grp_nbreadreq_fu_86_p6 = inData_TVALID;
assign macDetect2lengthCut_V_data_V1_status = (macDetect2lengthCut_V_data_V_full_n & macDetect2lengthCut_V_strb_V_full_n & macDetect2lengthCut_V_user_V_full_n & macDetect2lengthCut_V_last_V_full_n);
assign macDetect2lengthCut_V_data_V_din = tmp_data_V_19_reg_294;
assign macDetect2lengthCut_V_data_V_write = macDetect2lengthCut_V_data_V1_update;
assign macDetect2lengthCut_V_last_V_din = tmp_last_V_16_reg_312;
assign macDetect2lengthCut_V_last_V_write = macDetect2lengthCut_V_data_V1_update;
assign macDetect2lengthCut_V_strb_V_din = tmp_strb_V_16_reg_300;
assign macDetect2lengthCut_V_strb_V_write = macDetect2lengthCut_V_data_V1_update;
assign macDetect2lengthCut_V_user_V_din = tmp_user_V_15_reg_306;
assign macDetect2lengthCut_V_user_V_write = macDetect2lengthCut_V_data_V1_update;
assign p_Result_1_fu_242_p4 = {{inData_TDATA[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_s_83_fu_252_p3 = {{p_Result_1_fu_242_p4}, {p_Result_s_fu_232_p4}};
assign p_Result_s_fu_232_p4 = {{inData_TDATA[ap_const_lv32_2F : ap_const_lv32_28]}};
assign parser2arp_V_data_V1_status = (parser2arp_V_data_V_full_n & parser2arp_V_strb_V_full_n & parser2arp_V_user_V_full_n & parser2arp_V_last_V_full_n);
assign parser2arp_V_data_V_din = tmp_data_V_19_reg_294;
assign parser2arp_V_data_V_write = parser2arp_V_data_V1_update;
assign parser2arp_V_last_V_din = tmp_last_V_16_reg_312;
assign parser2arp_V_last_V_write = parser2arp_V_data_V1_update;
assign parser2arp_V_strb_V_din = tmp_strb_V_16_reg_300;
assign parser2arp_V_strb_V_write = parser2arp_V_data_V1_update;
assign parser2arp_V_user_V_din = tmp_user_V_15_reg_306;
assign parser2arp_V_user_V_write = parser2arp_V_data_V1_update;
assign tmp_2_fu_272_p2 = (p_Result_s_83_fu_252_p3 == ap_const_lv16_800? 1'b1: 1'b0);
assign tmp_6_fu_266_p2 = (p_Result_s_83_fu_252_p3 == ap_const_lv16_806? 1'b1: 1'b0);


endmodule //hlsExample_ethernetDetection
