// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "hlsDPI_ethernetDetection.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic hlsDPI_ethernetDetection::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic hlsDPI_ethernetDetection::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> hlsDPI_ethernetDetection::ap_ST_st1_fsm0_0 = "1";
const sc_lv<2> hlsDPI_ethernetDetection::ap_ST_st2_fsm1_1 = "10";
const sc_lv<2> hlsDPI_ethernetDetection::ap_ST_st0_fsm1_0 = "1";
const sc_lv<32> hlsDPI_ethernetDetection::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> hlsDPI_ethernetDetection::ap_const_lv1_1 = "1";
const sc_lv<2> hlsDPI_ethernetDetection::ap_const_lv2_2 = "10";
const sc_lv<1> hlsDPI_ethernetDetection::ap_const_lv1_0 = "0";
const sc_lv<2> hlsDPI_ethernetDetection::ap_const_lv2_1 = "1";
const sc_lv<2> hlsDPI_ethernetDetection::ap_const_lv2_0 = "00";
const sc_lv<2> hlsDPI_ethernetDetection::ap_const_lv2_3 = "11";
const sc_lv<32> hlsDPI_ethernetDetection::ap_const_lv32_1 = "1";
const sc_lv<16> hlsDPI_ethernetDetection::ap_const_lv16_800 = "100000000000";
const sc_lv<32> hlsDPI_ethernetDetection::ap_const_lv32_28 = "101000";
const sc_lv<32> hlsDPI_ethernetDetection::ap_const_lv32_2F = "101111";
const sc_lv<32> hlsDPI_ethernetDetection::ap_const_lv32_20 = "100000";
const sc_lv<32> hlsDPI_ethernetDetection::ap_const_lv32_27 = "100111";

hlsDPI_ethernetDetection::hlsDPI_ethernetDetection(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( ap_sig_cseq_ST_st0_fsm1_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( ap_sig_bdd_63 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_ap_sig_bdd_102);
    sensitive << ( parser2dpi_V_data_V1_status );
    sensitive << ( dpiDetectState_load_reg_252 );
    sensitive << ( tmp_4_reg_276 );
    sensitive << ( tmp_2_reg_280 );
    sensitive << ( tmp_9_reg_288 );
    sensitive << ( tmp_1_reg_292 );
    sensitive << ( tmp_7_reg_296 );

    SC_METHOD(thread_ap_sig_bdd_108);
    sensitive << ( ap_CS_fsm1 );

    SC_METHOD(thread_ap_sig_bdd_115);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( ap_sig_bdd_63 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_ap_sig_bdd_197);
    sensitive << ( grp_nbreadreq_fu_76_p6 );
    sensitive << ( dpiDetectState );
    sensitive << ( grp_fu_135_p1 );

    SC_METHOD(thread_ap_sig_bdd_23);
    sensitive << ( ap_CS_fsm0 );

    SC_METHOD(thread_ap_sig_bdd_34);
    sensitive << ( ap_CS_fsm1 );

    SC_METHOD(thread_ap_sig_bdd_52);
    sensitive << ( grp_nbreadreq_fu_76_p6 );
    sensitive << ( dpiDetectState );

    SC_METHOD(thread_ap_sig_bdd_56);
    sensitive << ( grp_nbreadreq_fu_76_p6 );
    sensitive << ( dpiDetectState );

    SC_METHOD(thread_ap_sig_bdd_63);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( inData_TVALID );
    sensitive << ( grp_nbreadreq_fu_76_p6 );
    sensitive << ( dpiDetectState );

    SC_METHOD(thread_ap_sig_cseq_ST_st0_fsm1_0);
    sensitive << ( ap_sig_bdd_34 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm0_0);
    sensitive << ( ap_sig_bdd_23 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm1_1);
    sensitive << ( ap_sig_bdd_108 );

    SC_METHOD(thread_dpiDetectState_load_load_fu_163_p1);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( dpiDetectState );

    SC_METHOD(thread_grp_fu_118_p2);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( dpiDetectState_load_load_fu_163_p1 );
    sensitive << ( grp_nbreadreq_fu_76_p6 );
    sensitive << ( ap_sig_bdd_63 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( dpiDetectState );
    sensitive << ( dmp_macType_V );

    SC_METHOD(thread_grp_fu_135_p1);
    sensitive << ( inData_TLAST );

    SC_METHOD(thread_grp_nbreadreq_fu_76_p6);
    sensitive << ( inData_TVALID );

    SC_METHOD(thread_inData_TREADY);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( grp_nbreadreq_fu_76_p6 );
    sensitive << ( ap_sig_bdd_63 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( dpiDetectState );

    SC_METHOD(thread_p_Result_4_fu_200_p4);
    sensitive << ( inData_TDATA );

    SC_METHOD(thread_p_Result_6_fu_210_p4);
    sensitive << ( inData_TDATA );

    SC_METHOD(thread_p_Result_s_fu_220_p3);
    sensitive << ( p_Result_6_fu_210_p4 );
    sensitive << ( p_Result_4_fu_200_p4 );

    SC_METHOD(thread_parser2dpi_V_data_V1_status);
    sensitive << ( parser2dpi_V_data_V_full_n );
    sensitive << ( parser2dpi_V_strb_V_full_n );
    sensitive << ( parser2dpi_V_user_V_full_n );
    sensitive << ( parser2dpi_V_last_V_full_n );

    SC_METHOD(thread_parser2dpi_V_data_V1_update);
    sensitive << ( ap_done_reg );
    sensitive << ( dpiDetectState_load_reg_252 );
    sensitive << ( tmp_4_reg_276 );
    sensitive << ( tmp_2_reg_280 );
    sensitive << ( tmp_9_reg_288 );
    sensitive << ( tmp_1_reg_292 );
    sensitive << ( tmp_7_reg_296 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_parser2dpi_V_data_V_din);
    sensitive << ( ap_done_reg );
    sensitive << ( dpiDetectState_load_reg_252 );
    sensitive << ( tmp_4_reg_276 );
    sensitive << ( tmp_2_reg_280 );
    sensitive << ( tmp_9_reg_288 );
    sensitive << ( tmp_1_reg_292 );
    sensitive << ( tmp_7_reg_296 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( tmp_data_V_3_reg_256 );

    SC_METHOD(thread_parser2dpi_V_data_V_write);
    sensitive << ( parser2dpi_V_data_V1_update );

    SC_METHOD(thread_parser2dpi_V_last_V_din);
    sensitive << ( ap_done_reg );
    sensitive << ( dpiDetectState_load_reg_252 );
    sensitive << ( tmp_4_reg_276 );
    sensitive << ( tmp_2_reg_280 );
    sensitive << ( tmp_9_reg_288 );
    sensitive << ( tmp_1_reg_292 );
    sensitive << ( tmp_7_reg_296 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( tmp_last_V_3_reg_271 );

    SC_METHOD(thread_parser2dpi_V_last_V_write);
    sensitive << ( parser2dpi_V_data_V1_update );

    SC_METHOD(thread_parser2dpi_V_strb_V_din);
    sensitive << ( ap_done_reg );
    sensitive << ( dpiDetectState_load_reg_252 );
    sensitive << ( tmp_4_reg_276 );
    sensitive << ( tmp_2_reg_280 );
    sensitive << ( tmp_9_reg_288 );
    sensitive << ( tmp_1_reg_292 );
    sensitive << ( tmp_7_reg_296 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( tmp_strb_V_3_reg_261 );

    SC_METHOD(thread_parser2dpi_V_strb_V_write);
    sensitive << ( parser2dpi_V_data_V1_update );

    SC_METHOD(thread_parser2dpi_V_user_V_din);
    sensitive << ( ap_done_reg );
    sensitive << ( dpiDetectState_load_reg_252 );
    sensitive << ( tmp_4_reg_276 );
    sensitive << ( tmp_2_reg_280 );
    sensitive << ( tmp_9_reg_288 );
    sensitive << ( tmp_1_reg_292 );
    sensitive << ( tmp_7_reg_296 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( tmp_user_V_3_reg_266 );

    SC_METHOD(thread_parser2dpi_V_user_V_write);
    sensitive << ( parser2dpi_V_data_V1_update );

    SC_METHOD(thread_tmp_7_fu_234_p2);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( grp_nbreadreq_fu_76_p6 );
    sensitive << ( ap_sig_bdd_63 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( dpiDetectState );
    sensitive << ( p_Result_s_fu_220_p3 );

    SC_METHOD(thread_ap_NS_fsm1);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( ap_CS_fsm1 );
    sensitive << ( ap_sig_bdd_63 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_ap_NS_fsm0);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm0 );
    sensitive << ( ap_sig_bdd_63 );
    sensitive << ( ap_sig_bdd_102 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm0 = "1";
    ap_CS_fsm1 = "01";
    dpiDetectState = "00";
    dmp_prevWord_data_V = "0000000000000000000000000000000000000000000000000000000000000000";
    dmp_prevWord_strb_V = "00000000";
    dmp_prevWord_user_V = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    dmp_prevWord_last_V = "0";
    dmp_macType_V = "0000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "hlsDPI_ethernetDetection_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, inData_TVALID, "(port)inData_TVALID");
    sc_trace(mVcdFile, inData_TDATA, "(port)inData_TDATA");
    sc_trace(mVcdFile, inData_TREADY, "(port)inData_TREADY");
    sc_trace(mVcdFile, inData_TSTRB, "(port)inData_TSTRB");
    sc_trace(mVcdFile, inData_TUSER, "(port)inData_TUSER");
    sc_trace(mVcdFile, inData_TLAST, "(port)inData_TLAST");
    sc_trace(mVcdFile, parser2dpi_V_data_V_din, "(port)parser2dpi_V_data_V_din");
    sc_trace(mVcdFile, parser2dpi_V_data_V_full_n, "(port)parser2dpi_V_data_V_full_n");
    sc_trace(mVcdFile, parser2dpi_V_data_V_write, "(port)parser2dpi_V_data_V_write");
    sc_trace(mVcdFile, parser2dpi_V_strb_V_din, "(port)parser2dpi_V_strb_V_din");
    sc_trace(mVcdFile, parser2dpi_V_strb_V_full_n, "(port)parser2dpi_V_strb_V_full_n");
    sc_trace(mVcdFile, parser2dpi_V_strb_V_write, "(port)parser2dpi_V_strb_V_write");
    sc_trace(mVcdFile, parser2dpi_V_user_V_din, "(port)parser2dpi_V_user_V_din");
    sc_trace(mVcdFile, parser2dpi_V_user_V_full_n, "(port)parser2dpi_V_user_V_full_n");
    sc_trace(mVcdFile, parser2dpi_V_user_V_write, "(port)parser2dpi_V_user_V_write");
    sc_trace(mVcdFile, parser2dpi_V_last_V_din, "(port)parser2dpi_V_last_V_din");
    sc_trace(mVcdFile, parser2dpi_V_last_V_full_n, "(port)parser2dpi_V_last_V_full_n");
    sc_trace(mVcdFile, parser2dpi_V_last_V_write, "(port)parser2dpi_V_last_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm0, "ap_CS_fsm0");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm0_0, "ap_sig_cseq_ST_st1_fsm0_0");
    sc_trace(mVcdFile, ap_sig_bdd_23, "ap_sig_bdd_23");
    sc_trace(mVcdFile, ap_CS_fsm1, "ap_CS_fsm1");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st0_fsm1_0, "ap_sig_cseq_ST_st0_fsm1_0");
    sc_trace(mVcdFile, ap_sig_bdd_34, "ap_sig_bdd_34");
    sc_trace(mVcdFile, dpiDetectState_load_load_fu_163_p1, "dpiDetectState_load_load_fu_163_p1");
    sc_trace(mVcdFile, grp_nbreadreq_fu_76_p6, "grp_nbreadreq_fu_76_p6");
    sc_trace(mVcdFile, ap_sig_bdd_63, "ap_sig_bdd_63");
    sc_trace(mVcdFile, parser2dpi_V_data_V1_status, "parser2dpi_V_data_V1_status");
    sc_trace(mVcdFile, dpiDetectState_load_reg_252, "dpiDetectState_load_reg_252");
    sc_trace(mVcdFile, tmp_4_reg_276, "tmp_4_reg_276");
    sc_trace(mVcdFile, tmp_2_reg_280, "tmp_2_reg_280");
    sc_trace(mVcdFile, tmp_9_reg_288, "tmp_9_reg_288");
    sc_trace(mVcdFile, tmp_1_reg_292, "tmp_1_reg_292");
    sc_trace(mVcdFile, tmp_7_reg_296, "tmp_7_reg_296");
    sc_trace(mVcdFile, ap_sig_bdd_102, "ap_sig_bdd_102");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm1_1, "ap_sig_cseq_ST_st2_fsm1_1");
    sc_trace(mVcdFile, ap_sig_bdd_108, "ap_sig_bdd_108");
    sc_trace(mVcdFile, dpiDetectState, "dpiDetectState");
    sc_trace(mVcdFile, dmp_prevWord_data_V, "dmp_prevWord_data_V");
    sc_trace(mVcdFile, dmp_prevWord_strb_V, "dmp_prevWord_strb_V");
    sc_trace(mVcdFile, dmp_prevWord_user_V, "dmp_prevWord_user_V");
    sc_trace(mVcdFile, dmp_prevWord_last_V, "dmp_prevWord_last_V");
    sc_trace(mVcdFile, dmp_macType_V, "dmp_macType_V");
    sc_trace(mVcdFile, tmp_data_V_3_reg_256, "tmp_data_V_3_reg_256");
    sc_trace(mVcdFile, tmp_strb_V_3_reg_261, "tmp_strb_V_3_reg_261");
    sc_trace(mVcdFile, tmp_user_V_3_reg_266, "tmp_user_V_3_reg_266");
    sc_trace(mVcdFile, tmp_last_V_3_reg_271, "tmp_last_V_3_reg_271");
    sc_trace(mVcdFile, grp_fu_118_p2, "grp_fu_118_p2");
    sc_trace(mVcdFile, grp_fu_135_p1, "grp_fu_135_p1");
    sc_trace(mVcdFile, tmp_7_fu_234_p2, "tmp_7_fu_234_p2");
    sc_trace(mVcdFile, parser2dpi_V_data_V1_update, "parser2dpi_V_data_V1_update");
    sc_trace(mVcdFile, p_Result_s_fu_220_p3, "p_Result_s_fu_220_p3");
    sc_trace(mVcdFile, p_Result_6_fu_210_p4, "p_Result_6_fu_210_p4");
    sc_trace(mVcdFile, p_Result_4_fu_200_p4, "p_Result_4_fu_200_p4");
    sc_trace(mVcdFile, ap_NS_fsm0, "ap_NS_fsm0");
    sc_trace(mVcdFile, ap_NS_fsm1, "ap_NS_fsm1");
    sc_trace(mVcdFile, ap_sig_bdd_197, "ap_sig_bdd_197");
    sc_trace(mVcdFile, ap_sig_bdd_52, "ap_sig_bdd_52");
    sc_trace(mVcdFile, ap_sig_bdd_56, "ap_sig_bdd_56");
    sc_trace(mVcdFile, ap_sig_bdd_115, "ap_sig_bdd_115");
#endif

    }
}

hlsDPI_ethernetDetection::~hlsDPI_ethernetDetection() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void hlsDPI_ethernetDetection::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm0 = ap_ST_st1_fsm0_0;
    } else {
        ap_CS_fsm0 = ap_NS_fsm0.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm1 = ap_ST_st0_fsm1_0;
    } else {
        ap_CS_fsm1 = ap_NS_fsm1.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && 
                    !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_102.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if (ap_sig_bdd_115.read()) {
        if (ap_sig_bdd_56.read()) {
            dpiDetectState = ap_const_lv2_1;
        } else if (ap_sig_bdd_52.read()) {
            dpiDetectState = ap_const_lv2_2;
        } else if (ap_sig_bdd_197.read()) {
            dpiDetectState = ap_const_lv2_3;
        } else if (esl_seteq<1,2,2>(dpiDetectState_load_load_fu_163_p1.read(), ap_const_lv2_3)) {
            dpiDetectState = ap_const_lv2_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_1) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
        dmp_macType_V = p_Result_s_fu_220_p3.read();
        tmp_7_reg_296 = tmp_7_fu_234_p2.read();
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
  esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_2) && 
  !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && 
  !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
  !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && 
  esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_1) && 
  !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
  !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && 
  esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_0) && 
  !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))))) {
        dmp_prevWord_data_V = inData_TDATA.read();
        dmp_prevWord_last_V = inData_TLAST.read();
        dmp_prevWord_strb_V = inData_TSTRB.read();
        dmp_prevWord_user_V = inData_TUSER.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
        dpiDetectState_load_reg_252 = dpiDetectState.read();
        tmp_data_V_3_reg_256 = dmp_prevWord_data_V.read();
        tmp_last_V_3_reg_271 = dmp_prevWord_last_V.read();
        tmp_strb_V_3_reg_261 = dmp_prevWord_strb_V.read();
        tmp_user_V_3_reg_266 = dmp_prevWord_user_V.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_1) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
        tmp_1_reg_292 = grp_nbreadreq_fu_76_p6.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_2) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
        tmp_2_reg_280 = grp_nbreadreq_fu_76_p6.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))) && esl_seteq<1,2,2>(dpiDetectState_load_load_fu_163_p1.read(), ap_const_lv2_3))) {
        tmp_4_reg_276 = grp_fu_118_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_2) && !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
        tmp_9_reg_288 = grp_fu_118_p2.read();
    }
}

void hlsDPI_ethernetDetection::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_102.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void hlsDPI_ethernetDetection::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st0_fsm1_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void hlsDPI_ethernetDetection::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
         !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void hlsDPI_ethernetDetection::thread_ap_sig_bdd_102() {
    ap_sig_bdd_102 = ((esl_seteq<1,1,1>(parser2dpi_V_data_V1_status.read(), ap_const_logic_0) && 
  esl_seteq<1,2,2>(dpiDetectState_load_reg_252.read(), ap_const_lv2_3) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_4_reg_276.read())) || (esl_seteq<1,1,1>(parser2dpi_V_data_V1_status.read(), ap_const_logic_0) && 
  esl_seteq<1,2,2>(ap_const_lv2_2, dpiDetectState_load_reg_252.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_2_reg_280.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_reg_288.read())) || (esl_seteq<1,1,1>(parser2dpi_V_data_V1_status.read(), ap_const_logic_0) && 
  esl_seteq<1,2,2>(ap_const_lv2_1, dpiDetectState_load_reg_252.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_1_reg_292.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_7_reg_296.read())));
}

void hlsDPI_ethernetDetection::thread_ap_sig_bdd_108() {
    ap_sig_bdd_108 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm1.read().range(1, 1));
}

void hlsDPI_ethernetDetection::thread_ap_sig_bdd_115() {
    ap_sig_bdd_115 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))));
}

void hlsDPI_ethernetDetection::thread_ap_sig_bdd_197() {
    ap_sig_bdd_197 = (esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_2) && !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && !esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_135_p1.read()));
}

void hlsDPI_ethernetDetection::thread_ap_sig_bdd_23() {
    ap_sig_bdd_23 = esl_seteq<1,1,1>(ap_CS_fsm0.read().range(0, 0), ap_const_lv1_1);
}

void hlsDPI_ethernetDetection::thread_ap_sig_bdd_34() {
    ap_sig_bdd_34 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm1.read().range(0, 0));
}

void hlsDPI_ethernetDetection::thread_ap_sig_bdd_52() {
    ap_sig_bdd_52 = (!esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_1));
}

void hlsDPI_ethernetDetection::thread_ap_sig_bdd_56() {
    ap_sig_bdd_56 = (!esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_0));
}

void hlsDPI_ethernetDetection::thread_ap_sig_bdd_63() {
    ap_sig_bdd_63 = ((esl_seteq<1,1,1>(inData_TVALID.read(), ap_const_logic_0) && 
  esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_2) && 
  !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0)) || (esl_seteq<1,1,1>(inData_TVALID.read(), ap_const_logic_0) && 
  !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && 
  esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_1)) || (esl_seteq<1,1,1>(inData_TVALID.read(), ap_const_logic_0) && 
  !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && 
  esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_0)) || esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void hlsDPI_ethernetDetection::thread_ap_sig_cseq_ST_st0_fsm1_0() {
    if (ap_sig_bdd_34.read()) {
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_0;
    }
}

void hlsDPI_ethernetDetection::thread_ap_sig_cseq_ST_st1_fsm0_0() {
    if (ap_sig_bdd_23.read()) {
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_0;
    }
}

void hlsDPI_ethernetDetection::thread_ap_sig_cseq_ST_st2_fsm1_1() {
    if (ap_sig_bdd_108.read()) {
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    }
}

void hlsDPI_ethernetDetection::thread_dpiDetectState_load_load_fu_163_p1() {
    dpiDetectState_load_load_fu_163_p1 = dpiDetectState.read();
}

void hlsDPI_ethernetDetection::thread_grp_fu_118_p2() {
    grp_fu_118_p2 = (!dmp_macType_V.read().is_01() || !ap_const_lv16_800.is_01())? sc_lv<1>(): sc_lv<1>(dmp_macType_V.read() == ap_const_lv16_800);
}

void hlsDPI_ethernetDetection::thread_grp_fu_135_p1() {
    grp_fu_135_p1 = inData_TLAST.read();
}

void hlsDPI_ethernetDetection::thread_grp_nbreadreq_fu_76_p6() {
    grp_nbreadreq_fu_76_p6 =  (sc_lv<1>) ((inData_TVALID.read()));
}

void hlsDPI_ethernetDetection::thread_inData_TREADY() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
          esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_2) && 
          !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
          !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && 
          esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_1) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
          !esl_seteq<1,1,1>(grp_nbreadreq_fu_76_p6.read(), ap_const_lv1_0) && 
          esl_seteq<1,2,2>(dpiDetectState.read(), ap_const_lv2_0) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))))) {
        inData_TREADY = ap_const_logic_1;
    } else {
        inData_TREADY = ap_const_logic_0;
    }
}

void hlsDPI_ethernetDetection::thread_p_Result_4_fu_200_p4() {
    p_Result_4_fu_200_p4 = inData_TDATA.read().range(47, 40);
}

void hlsDPI_ethernetDetection::thread_p_Result_6_fu_210_p4() {
    p_Result_6_fu_210_p4 = inData_TDATA.read().range(39, 32);
}

void hlsDPI_ethernetDetection::thread_p_Result_s_fu_220_p3() {
    p_Result_s_fu_220_p3 = esl_concat<8,8>(p_Result_6_fu_210_p4.read(), p_Result_4_fu_200_p4.read());
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_data_V1_status() {
    parser2dpi_V_data_V1_status = (parser2dpi_V_data_V_full_n.read() & parser2dpi_V_strb_V_full_n.read() & parser2dpi_V_user_V_full_n.read() & parser2dpi_V_last_V_full_n.read());
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_data_V1_update() {
    if (((esl_seteq<1,2,2>(dpiDetectState_load_reg_252.read(), ap_const_lv2_3) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_4_reg_276.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_102.read())) || 
         (esl_seteq<1,2,2>(ap_const_lv2_2, dpiDetectState_load_reg_252.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_2_reg_280.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_reg_288.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_102.read())) || 
         (esl_seteq<1,2,2>(ap_const_lv2_1, dpiDetectState_load_reg_252.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_1_reg_292.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_7_reg_296.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_102.read())))) {
        parser2dpi_V_data_V1_update = ap_const_logic_1;
    } else {
        parser2dpi_V_data_V1_update = ap_const_logic_0;
    }
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_data_V_din() {
    parser2dpi_V_data_V_din = tmp_data_V_3_reg_256.read();
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_data_V_write() {
    parser2dpi_V_data_V_write = parser2dpi_V_data_V1_update.read();
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_last_V_din() {
    parser2dpi_V_last_V_din = tmp_last_V_3_reg_271.read();
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_last_V_write() {
    parser2dpi_V_last_V_write = parser2dpi_V_data_V1_update.read();
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_strb_V_din() {
    parser2dpi_V_strb_V_din = tmp_strb_V_3_reg_261.read();
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_strb_V_write() {
    parser2dpi_V_strb_V_write = parser2dpi_V_data_V1_update.read();
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_user_V_din() {
    parser2dpi_V_user_V_din = tmp_user_V_3_reg_266.read();
}

void hlsDPI_ethernetDetection::thread_parser2dpi_V_user_V_write() {
    parser2dpi_V_user_V_write = parser2dpi_V_data_V1_update.read();
}

void hlsDPI_ethernetDetection::thread_tmp_7_fu_234_p2() {
    tmp_7_fu_234_p2 = (!p_Result_s_fu_220_p3.read().is_01() || !ap_const_lv16_800.is_01())? sc_lv<1>(): sc_lv<1>(p_Result_s_fu_220_p3.read() == ap_const_lv16_800);
}

void hlsDPI_ethernetDetection::thread_ap_NS_fsm1() {
    switch (ap_CS_fsm1.read().to_uint64()) {
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_102.read()) && !ap_sig_bdd_63.read())) {
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            } else if ((!(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_102.read()) && (!esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) || 
  (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
   ap_sig_bdd_63.read())))) {
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            } else {
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            }
            break;
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_63.read() || (ap_sig_bdd_102.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            } else {
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            }
            break;
        default : 
            ap_NS_fsm1 =  (sc_lv<2>) ("XX");
            break;
    }
}

void hlsDPI_ethernetDetection::thread_ap_NS_fsm0() {
    switch (ap_CS_fsm0.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm0 = ap_ST_st1_fsm0_0;
break;
        default : 
            ap_NS_fsm0 = "X";
            break;
    }
}

}
