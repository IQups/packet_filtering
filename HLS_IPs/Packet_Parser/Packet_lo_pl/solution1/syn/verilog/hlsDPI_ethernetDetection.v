// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hlsDPI_ethernetDetection (
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
        parser2dpi_V_data_V_din,
        parser2dpi_V_data_V_full_n,
        parser2dpi_V_data_V_write,
        parser2dpi_V_strb_V_din,
        parser2dpi_V_strb_V_full_n,
        parser2dpi_V_strb_V_write,
        parser2dpi_V_user_V_din,
        parser2dpi_V_user_V_full_n,
        parser2dpi_V_user_V_write,
        parser2dpi_V_last_V_din,
        parser2dpi_V_last_V_full_n,
        parser2dpi_V_last_V_write
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
output  [63:0] parser2dpi_V_data_V_din;
input   parser2dpi_V_data_V_full_n;
output   parser2dpi_V_data_V_write;
output  [7:0] parser2dpi_V_strb_V_din;
input   parser2dpi_V_strb_V_full_n;
output   parser2dpi_V_strb_V_write;
output  [127:0] parser2dpi_V_user_V_din;
input   parser2dpi_V_user_V_full_n;
output   parser2dpi_V_user_V_write;
output  [0:0] parser2dpi_V_last_V_din;
input   parser2dpi_V_last_V_full_n;
output   parser2dpi_V_last_V_write;

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
wire   [1:0] dpiDetectState_load_load_fu_163_p1;
wire   [0:0] grp_nbreadreq_fu_76_p6;
reg    ap_sig_bdd_63;
wire    parser2dpi_V_data_V1_status;
reg   [1:0] dpiDetectState_load_reg_252;
reg   [0:0] tmp_4_reg_276;
reg   [0:0] tmp_2_reg_280;
reg   [0:0] tmp_9_reg_288;
reg   [0:0] tmp_1_reg_292;
reg   [0:0] tmp_7_reg_296;
reg    ap_sig_bdd_102;
reg    ap_sig_cseq_ST_st2_fsm1_1;
reg    ap_sig_bdd_108;
reg   [1:0] dpiDetectState = 2'b00;
reg   [63:0] dmp_prevWord_data_V = 64'b0000000000000000000000000000000000000000000000000000000000000000;
reg   [7:0] dmp_prevWord_strb_V = 8'b00000000;
reg   [127:0] dmp_prevWord_user_V = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
reg   [0:0] dmp_prevWord_last_V = 1'b0;
reg   [15:0] dmp_macType_V = 16'b0000000000000000;
reg   [63:0] tmp_data_V_3_reg_256;
reg   [7:0] tmp_strb_V_3_reg_261;
reg   [127:0] tmp_user_V_3_reg_266;
reg   [0:0] tmp_last_V_3_reg_271;
wire   [0:0] grp_fu_118_p2;
wire   [0:0] grp_fu_135_p1;
wire   [0:0] tmp_7_fu_234_p2;
reg    parser2dpi_V_data_V1_update;
wire   [15:0] p_Result_s_fu_220_p3;
wire   [7:0] p_Result_6_fu_210_p4;
wire   [7:0] p_Result_4_fu_200_p4;
reg   [0:0] ap_NS_fsm0;
reg   [1:0] ap_NS_fsm1;
reg    ap_sig_bdd_197;
reg    ap_sig_bdd_52;
reg    ap_sig_bdd_56;
reg    ap_sig_bdd_115;




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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (ap_sig_bdd_115) begin
        if (ap_sig_bdd_56) begin
            dpiDetectState <= ap_const_lv2_1;
        end else if (ap_sig_bdd_52) begin
            dpiDetectState <= ap_const_lv2_2;
        end else if (ap_sig_bdd_197) begin
            dpiDetectState <= ap_const_lv2_3;
        end else if ((dpiDetectState_load_load_fu_163_p1 == ap_const_lv2_3)) begin
            dpiDetectState <= ap_const_lv2_0;
        end
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & (dpiDetectState == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        dmp_macType_V <= p_Result_s_fu_220_p3;
        tmp_7_reg_296 <= tmp_7_fu_234_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (dpiDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & (dpiDetectState == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & (dpiDetectState == ap_const_lv2_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
        dmp_prevWord_data_V <= inData_TDATA;
        dmp_prevWord_last_V <= inData_TLAST;
        dmp_prevWord_strb_V <= inData_TSTRB;
        dmp_prevWord_user_V <= inData_TUSER;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        dpiDetectState_load_reg_252 <= dpiDetectState;
        tmp_data_V_3_reg_256 <= dmp_prevWord_data_V;
        tmp_last_V_3_reg_271 <= dmp_prevWord_last_V;
        tmp_strb_V_3_reg_261 <= dmp_prevWord_strb_V;
        tmp_user_V_3_reg_266 <= dmp_prevWord_user_V;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (dpiDetectState == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_1_reg_292 <= grp_nbreadreq_fu_76_p6;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (dpiDetectState == ap_const_lv2_2) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_2_reg_280 <= grp_nbreadreq_fu_76_p6;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (dpiDetectState_load_load_fu_163_p1 == ap_const_lv2_3))) begin
        tmp_4_reg_276 <= grp_fu_118_p2;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (dpiDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        tmp_9_reg_288 <= grp_fu_118_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_bdd_102 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102)))) begin
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
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_63 or ap_sig_bdd_102 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
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
always @ (ap_sig_bdd_108) begin
    if (ap_sig_bdd_108) begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    end
end

/// inData_TREADY assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or grp_nbreadreq_fu_76_p6 or ap_sig_bdd_63 or ap_sig_bdd_102 or ap_sig_cseq_ST_st2_fsm1_1 or dpiDetectState) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (dpiDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & (dpiDetectState == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & (dpiDetectState == ap_const_lv2_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
        inData_TREADY = ap_const_logic_1;
    end else begin
        inData_TREADY = ap_const_logic_0;
    end
end

/// parser2dpi_V_data_V1_update assign process. ///
always @ (ap_done_reg or dpiDetectState_load_reg_252 or tmp_4_reg_276 or tmp_2_reg_280 or tmp_9_reg_288 or tmp_1_reg_292 or tmp_7_reg_296 or ap_sig_bdd_102 or ap_sig_cseq_ST_st2_fsm1_1) begin
    if ((((dpiDetectState_load_reg_252 == ap_const_lv2_3) & ~(ap_const_lv1_0 == tmp_4_reg_276) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102)) | ((ap_const_lv2_2 == dpiDetectState_load_reg_252) & ~(ap_const_lv1_0 == tmp_2_reg_280) & ~(ap_const_lv1_0 == tmp_9_reg_288) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102)) | ((ap_const_lv2_1 == dpiDetectState_load_reg_252) & ~(ap_const_lv1_0 == tmp_1_reg_292) & ~(ap_const_lv1_0 == tmp_7_reg_296) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102)))) begin
        parser2dpi_V_data_V1_update = ap_const_logic_1;
    end else begin
        parser2dpi_V_data_V1_update = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm1) of the state machine. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_CS_fsm1 or ap_sig_bdd_63 or ap_sig_bdd_102 or ap_sig_cseq_ST_st2_fsm1_1) begin
    case (ap_CS_fsm1)
        ap_ST_st2_fsm1_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102) & ~ap_sig_bdd_63)) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_102) & (~(ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ap_sig_bdd_63)))) begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end else begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end
        end
        ap_ST_st0_fsm1_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
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
always @ (ap_done_reg or ap_CS_fsm0 or ap_sig_bdd_63 or ap_sig_bdd_102 or ap_sig_cseq_ST_st2_fsm1_1) begin
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


/// ap_sig_bdd_102 assign process. ///
always @ (parser2dpi_V_data_V1_status or dpiDetectState_load_reg_252 or tmp_4_reg_276 or tmp_2_reg_280 or tmp_9_reg_288 or tmp_1_reg_292 or tmp_7_reg_296) begin
    ap_sig_bdd_102 = (((parser2dpi_V_data_V1_status == ap_const_logic_0) & (dpiDetectState_load_reg_252 == ap_const_lv2_3) & ~(ap_const_lv1_0 == tmp_4_reg_276)) | ((parser2dpi_V_data_V1_status == ap_const_logic_0) & (ap_const_lv2_2 == dpiDetectState_load_reg_252) & ~(ap_const_lv1_0 == tmp_2_reg_280) & ~(ap_const_lv1_0 == tmp_9_reg_288)) | ((parser2dpi_V_data_V1_status == ap_const_logic_0) & (ap_const_lv2_1 == dpiDetectState_load_reg_252) & ~(ap_const_lv1_0 == tmp_1_reg_292) & ~(ap_const_lv1_0 == tmp_7_reg_296)));
end

/// ap_sig_bdd_108 assign process. ///
always @ (ap_CS_fsm1) begin
    ap_sig_bdd_108 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_1]);
end

/// ap_sig_bdd_115 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_63 or ap_sig_bdd_102 or ap_sig_cseq_ST_st2_fsm1_1) begin
    ap_sig_bdd_115 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_63 | (ap_sig_bdd_102 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))));
end

/// ap_sig_bdd_197 assign process. ///
always @ (grp_nbreadreq_fu_76_p6 or dpiDetectState or grp_fu_135_p1) begin
    ap_sig_bdd_197 = ((dpiDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & ~(ap_const_lv1_0 == grp_fu_135_p1));
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm0) begin
    ap_sig_bdd_23 = (ap_CS_fsm0[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_34 assign process. ///
always @ (ap_CS_fsm1) begin
    ap_sig_bdd_34 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_0]);
end

/// ap_sig_bdd_52 assign process. ///
always @ (grp_nbreadreq_fu_76_p6 or dpiDetectState) begin
    ap_sig_bdd_52 = (~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & (dpiDetectState == ap_const_lv2_1));
end

/// ap_sig_bdd_56 assign process. ///
always @ (grp_nbreadreq_fu_76_p6 or dpiDetectState) begin
    ap_sig_bdd_56 = (~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & (dpiDetectState == ap_const_lv2_0));
end

/// ap_sig_bdd_63 assign process. ///
always @ (ap_start or ap_done_reg or inData_TVALID or grp_nbreadreq_fu_76_p6 or dpiDetectState) begin
    ap_sig_bdd_63 = (((inData_TVALID == ap_const_logic_0) & (dpiDetectState == ap_const_lv2_2) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0)) | ((inData_TVALID == ap_const_logic_0) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & (dpiDetectState == ap_const_lv2_1)) | ((inData_TVALID == ap_const_logic_0) & ~(grp_nbreadreq_fu_76_p6 == ap_const_lv1_0) & (dpiDetectState == ap_const_lv2_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign dpiDetectState_load_load_fu_163_p1 = dpiDetectState;
assign grp_fu_118_p2 = (dmp_macType_V == ap_const_lv16_800? 1'b1: 1'b0);
assign grp_fu_135_p1 = inData_TLAST;
assign grp_nbreadreq_fu_76_p6 = inData_TVALID;
assign p_Result_4_fu_200_p4 = {{inData_TDATA[ap_const_lv32_2F : ap_const_lv32_28]}};
assign p_Result_6_fu_210_p4 = {{inData_TDATA[ap_const_lv32_27 : ap_const_lv32_20]}};
assign p_Result_s_fu_220_p3 = {{p_Result_6_fu_210_p4}, {p_Result_4_fu_200_p4}};
assign parser2dpi_V_data_V1_status = (parser2dpi_V_data_V_full_n & parser2dpi_V_strb_V_full_n & parser2dpi_V_user_V_full_n & parser2dpi_V_last_V_full_n);
assign parser2dpi_V_data_V_din = tmp_data_V_3_reg_256;
assign parser2dpi_V_data_V_write = parser2dpi_V_data_V1_update;
assign parser2dpi_V_last_V_din = tmp_last_V_3_reg_271;
assign parser2dpi_V_last_V_write = parser2dpi_V_data_V1_update;
assign parser2dpi_V_strb_V_din = tmp_strb_V_3_reg_261;
assign parser2dpi_V_strb_V_write = parser2dpi_V_data_V1_update;
assign parser2dpi_V_user_V_din = tmp_user_V_3_reg_266;
assign parser2dpi_V_user_V_write = parser2dpi_V_data_V1_update;
assign tmp_7_fu_234_p2 = (p_Result_s_fu_220_p3 == ap_const_lv16_800? 1'b1: 1'b0);


endmodule //hlsDPI_ethernetDetection

